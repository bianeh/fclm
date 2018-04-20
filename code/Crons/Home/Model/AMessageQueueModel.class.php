<?php
namespace Home\Model;

use Think\Model;

class AMessageQueueModel extends Model {
    
    public function getList($type){
        if(!$type || !in_array($type, ['email','phone'])){
            return false;
        }
        if($type == 'email'){
            $whereStr = "sendstatus IN('0000','0001','0010') AND sendtype IN ('010','111')";
            $limit = C('MSG_E_TOGETHER_NUM')*2;
        }elseif($type == 'phone'){
            $whereStr = "sendstatus IN('0000','1000','0100') AND sendtype IN ('100','111')";
            $limit = C('MSG_M_TOGETHER_NUM')*2;
        }
        $whereStr .= ' AND '.time().'>starttime';
        $list = $this->where($whereStr)->order('weight DESC')->LIMIT($limit)->select();//Email:010, SMS:100 一起:111
        return $list;
    }
    
    public function getLevelRange($param) {
        $list = [];
        $result_list = M('a_user')->field("email,phone")->where("status=1 AND userlevel$param")->select();
        foreach ($result_list as $value) {
            $list['email'][] = $value['email'];
            $list['phone'][] = $value['phone'];
        }
        return $list;
    }
    
    public function getRecieverByUer($key,$value) {
        $list = [];
        $field = $key == 'userid' ? 'id' : 'username';
        $inValue = is_array($value) ? implode("','", $value) : $value;
        $res = M('a_user')->field("email,phone")->where("$field IN('$inValue')")->select();
        foreach ($res as $value) {
            $list['email'][] = $value['email'];
            $list['phone'][] = $value['phone'];
        }
        return $list;
    }
    
    public function updateStatus($id, $res,$pushTime,$msgType = 'email') {
        $data = [];
        $lastStatus = $this->field('sendstatus')->where("id=$id")->find();
        if($msgType == 'email'){
            if($lastStatus['sendstatus'] == '0000'){
                $data['sendstatus'] = $res == 1 ? '0100' : '1000';
            }elseif($lastStatus['sendstatus'] == '0010'){
                $data['sendstatus'] = $res == 1 ? '0110' : '1010';
            }elseif($lastStatus['sendstatus'] == '0001'){
                $data['sendstatus'] = $res == 1 ? '0101' : '1001';
            }
            $data['emailoktime'] = time();
        }else{
            if($lastStatus['sendstatus'] == '0000'){
                $data['sendstatus'] = $res == 1 ? '0001' : '0010';
            }elseif($lastStatus['sendstatus'] == '1000'){
                $data['sendstatus'] = $res == 1 ? '1001' : '1010';
            }elseif($lastStatus['sendstatus'] == '0100'){
                $data['sendstatus'] = $res == 1 ? '0101' : '0110';
            }
            $data['smsoktime'] = time();
        }
        $data['alloktime'] = $pushTime;
        $this->where("id=$id")->save($data);
    }
    
    public function queueCount($sendtype) {
        $w = implode(",", $sendtype);
        return $this->where("sendtype IN ($w) AND sendstatus IN('0000','1000','0100','0010','0001')")->count();
    }
    
    public function isLocked() {
        $res = $this->lockParam();
        if($res['value'] == 'lock'){
            return true;
        }
        return false;
    }
    
    private function lockParam() {
        return M("param")->field('value')->where("name='cronsLock'")->find();
    }
    
    public function Lock() {
        file_put_contents(CRONS_PATH.'cron-switch','true');
        $res = $this->lockParam();
        if($res['value'] != 'lock'){
            return M("param")->where("name='cronsLock'")->data(['value'=>'lock']);
        }elseif($res['value'] == 'lock'){
            return true;
        }
        return false;
    }
    
    public function unLock() {
        file_put_contents(CRONS_PATH.'cron-switch','die');
        $res = $this->lockParam();
        if($res['value'] != 'unlock'){
            return M("param")->where("name='cronsLock'")->data(['value'=>'unlock']);
        }elseif($res['value'] == 'unlock'){
            return true;
        }
        return false;
    }
    
    public function InitLimit($theDayBefore,$type = 'email') {
        $timeStamp = strtotime("-$theDayBefore day");//$theDayBefore*24小时前
        $d =strtotime(date('Y-m-d',$timeStamp));//晚上整点XX-XX-XX 00:00:00
        $sendtype = '';
        if($type == 'email'){
            $sendtype = " AND sendtype IN('21','22')";
        }  else {
            $sendtype = " AND sendtype='31'";
        }
        $r = M("a_message_log")->where("sendtime>$d$sendtype")->count();
        return $r;
    }
    
    public function log($msg,$fileName = 'log') {
        date_default_timezone_set('Asia/Shanghai'); //时对时错，只能加这
        $fileExt = '.txt';
        $line = count(file(CRONS_PATH .$fileName.$fileExt));
        if($line >2000){
            $this->fileRename($fileName,$fileExt);
        }
        $file = $fileName.$fileExt;
        return file_put_contents(CRONS_PATH.$file,date("Y-m-d H:i:s",time()).' '.$msg."\r\n".file_get_contents(CRONS_PATH.$file));
    }
    
    private function fileRename($fileName,$fileExt) {
        for($i = 1; $i<100000;$i++){
            $toFileName = $fileName.$i.$fileExt;
            $toPathFile = CRONS_PATH.date("Y-m-d")."/".$toFileName;
            if(!file_exists(CRONS_PATH.date("Y-m-d")."/")){
                mkdir((CRONS_PATH.date("Y-m-d")."/"));
            }
            if(!file_exists($toPathFile)){
                break;
            }
        }
        rename(CRONS_PATH.$fileName.$fileExt,$toPathFile);
    }
    
    public function filterReciever($RecieverList,$queueId,$msgType) {
        $RecieverList = array_unique($RecieverList);
        $r = M("a_message_log")->field('reciever,sendstatus')->where("queueid=$queueId")->select();
        $existsList = [];$_existsStatus= [];
        foreach ($r as $value) {
            $existsList[] = $value['reciever'];
            $_existsStatus[$value['reciever']] = $value['sendstatus'];
        }
        $existsList = array_unique($existsList);
        foreach ($RecieverList as $k => $val) {
            if(in_array($val, $existsList)){
                $compare = array_diff($RecieverList,$existsList);
                if(empty($compare)){
                   $this->updateStatus($queueId,($_existsStatus[$val] == 1 ? 1: 0), '0', $msgType);//防止无用死循环 
                }
                unset($RecieverList[$k]);
            }
        }
        return $RecieverList;
    }
    
    public function checkForceStop($fileName = 'status') {
        file_put_contents(CRONS_PATH.$fileName,date('Y-m-d H:i:s'));
        if(file_get_contents(CRONS_PATH.'cron-switch') == 'die'){
            $this->unLock();
            $this->statInfo();
            exit;
        }
    }
    
    public function statInfo() {
        echo '<meta charset="utf-8">
                <center><h2>';
        echo '今天已发送邮件数量：'.$this->InitLimit(0),"<br/>";
        echo '今天已发送短信数量：'.$this->InitLimit(0,'sms'),"<br/>";
        echo '本月已发送邮件数量：'.$this->InitLimit(29),"<br/>";
        echo '本月已发送短信数量：'.$this->InitLimit(29,'sms'),"<br/>";
        echo "</h2></center>";
    }
    
    public function ACCESS_CHECK() {
        if($_GET['sign'] != C('ACCESS_SIGN')){
            exit('<center><h1>forbidden!</h1></center>');
        }
    }
}