<?php
namespace Home\Controller;
use Think\Controller;
use Org\Util\Sms;
use Org\Util\Email;

/**
 * /watch.php   可以长时间监视状态。
 * /crons.php/Home/Index/sms?sign=123456 crontab调用后发送短信
 * /crons.php/Home/Index/email?sign=123456 crontab调用后发送邮件
 */
class IndexController extends Controller {
    
    protected $instance = NULL;
    
    protected $sendtype = ['email'=>'010','sms'=>'100','merge'=>'111'];
    
    protected $emaiLimitDay;//邮件天限额
    
    protected $emaiLimitMonth;
    
    protected $smsLimitDay;
    
    protected $smsLimitMonth;//短信月限额
    
    protected $emailSender =NULL;
    
    protected $smsSender =NULL;
          
    function __construct() {
        parent::__construct();
        if($this->instance == NULL){
            $this->instance = new \Home\Model\AMessageQueueModel;
        }
        $this->instance->ACCESS_CHECK();
        if($this->emailSender == NULL){
            $this->emailSender = new Email();
        }
        if($this->smsSender == NULL){
            $this->smsSender = new Sms();
        }
        if($this->instance->isLocked()){
            $this->error('后台任务被锁住！');
        }
        $this->emaiLimitDay = $this->instance->InitLimit(0);
        $this->smsLimitDay = $this->instance->InitLimit(0,'sms');
        $this->emaiLimitMonth = $this->instance->InitLimit(29);
        $this->smsLimitMonth = $this->instance->InitLimit(29,'sms');
    }
    
    public function index() {
        $this->instance->Lock();
        do {
            //$queueCount = $this->instance->queueCount($this->sendtype);
            $this->TaskEmail();
            $this->TaskSms();
            $this->instance->checkForceStop();
        } while (true);
        $this->instance->statInfo();
        $this->instance->unLock();
    }
    
    public function email() {
        $this->TaskEmail();
    }
    
    public function sms() {
        $this->TaskSms();
    }
    
    private function TaskEmail() {
        if($this->emaiLimitDay> C('MSG_LIMIT_E_DAY_NUM') || $this->emaiLimitMonth>C('MSG_LIMIT_E_MONTH_NUM')){
            $this->instance->log("邮件任务数量已经达到上限! {邮件天限制：".C('MSG_LIMIT_E_DAY_NUM')." 天已发：$this->emaiLimitDay | 邮件月限制：".C('MSG_LIMIT_E_MONTH_NUM')." 月已发：$this->emaiLimitMonth} ");
        }else{
            $msgType = 'email';
            do {
                $list = $this->instance->getList($msgType);
                $this->handleQueue($list, $msgType);
            }while(count($list)>0 && $this->emaiLimitDay <= C('MSG_LIMIT_E_DAY_NUM') && $this->emaiLimitMonth <= C('MSG_LIMIT_E_MONTH_NUM'));
        }
    }
    
    private function TaskSms() {
        
        if($this->smsLimitDay> C('MSG_LIMIT_M_DAY_NUM') || $this->smsLimitMonth>C('MSG_LIMIT_M_MONTH_NUM')){
            $this->instance->log("短信任务数量已经达到上限! {短信天限制：".C('MSG_LIMIT_M_DAY_NUM')." 天已发：$this->smsLimitDay | 短信月限制：".C('MSG_LIMIT_M_MONTH_NUM')." 月已发：$this->smsLimitMonth} ");
        }else{
            $msgType = 'phone';
            do {
                $list = $this->instance->getList($msgType);
                $this->handleQueue($list, $msgType);
            }while(count($list)>0 && $this->smsLimitDay <= C('MSG_LIMIT_M_DAY_NUM') && $this->smsLimitMonth <= C('MSG_LIMIT_M_MONTH_NUM'));
        }
    }
    
    private function handleQueue($list,$msgType = 'email') {
        $sendobj = $msgType == 'email' ? $this->emailSender : $this->smsSender;
        $i = 0;$succesI = 0;$failI = 0;
        foreach ($list as $value) {
            $_RecieverList = $this->Reciever2List($value['reciever'],$msgType);
            $RecieverList = $this->instance->filterReciever($_RecieverList,$value['id'],$msgType);
            foreach ($RecieverList as $reciever) {
                $this->instance->checkForceStop();
                $pushTime = time();
                if($msgType == 'email'){
                    $res = $sendobj->send($reciever, $value['message'], $value['body'],($value['bodytype'] ? $value['bodytype'] : 'html'),$value['id']);
                }else{
                    $res = $sendobj->send($reciever, $value['templatecode'], $value['message'],$value['smsbody'],$value['id']);
                }
                $this->instance->updateStatus($value['id'],$res,$pushTime,$msgType);
                $i++; $res ? $succesI++ : $failI++;
                $iisNum = $msgType == 'email' ? ('MSG_E_TOGETHER_NUM') : C('MSG_M_TOGETHER_NUM');
                $waitTime =$msgType == 'email'? C('MSG_E_INTERVAL') : C('MSG_M_INTERVAL');
                is_int($i/$iisNum) ? $this->setWait($waitTime) : '';
            }
        }
        
        if(count($list) && $msgType == 'email'){
            $this->instance->log("本次共推送{$i}封邮件, 成功{$succesI}封,失败{$failI}封 分为".ceil($i/C('MSG_E_TOGETHER_NUM'))."次推送，并发".C('MSG_E_TOGETHER_NUM')."封，间隔".C('MSG_E_INTERVAL')."封",'email_push_log');
        }
        elseif(count($list) && $msgType == 'phone'){
            $this->instance->log("本次共推送{$i}条短信, 成功{$succesI}条,失败{$failI}条 分为".ceil($i/C('MSG_E_TOGETHER_NUM'))."次推送，并发".C('MSG_M_TOGETHER_NUM')."条，间隔".C('MSG_M_INTERVAL')."秒",'msg_push_log');
        }
        $this->instance->checkForceStop();
    }
    
    private function Reciever2List($reciever,$msgType = 'email') {
        $j = json_decode($reciever,true);
        $list =[];
        if($j == null || (isset($j['email']) && empty($j['email']))){
            return $list;
        }
        foreach ($j as $key => $value) {
            if($key == 'userlevel'){
                $list = array_merge($this->instance->getLevelRange(trim($value))[$msgType],$list);
            }elseif($key == 'userid' || $key == 'username'){
                $list = array_merge($list,$this->instance->getRecieverByUer($key, $value)[$msgType]);
            }elseif($key == $msgType && is_array($value)){
                $list = array_merge($list,$value);
            }elseif($key == $msgType && !is_array($value)) {
                $list = array_merge($list,[$value]);
            }
        }
        return $list;
    }
    
    private function setWait($waitTime) {
        $i = 0;
        do {
            sleep(1);
            file_put_contents(CRONS_PATH . 'status', date('Y-m-d H:i:s'));
            $i++;
        } while ($i <= $waitTime);
    }
}