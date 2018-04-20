<?php

namespace Org\Util;

/**
 * 邮件，短信 消息处理基础
 * @author LiuJie
 */
class MessageBase {
    
    protected $client;
    protected $request;
    
    function __construct() {
        vendor('AliApi.Core.Config');
        $iClientProfile = \DefaultProfile::getProfile("cn-hangzhou", C('ALI_KEY_ID'), C('ALI_KEY_SECRET'));
        $this->client = new \DefaultAcsClient($iClientProfile);
    }
    
    /**
     * 数据库记录
     * @param array $data
     * @return boolean
     */
    public function log($data) {
        return M('a_message_log')->add($data);
    }
    
    /**
     * 更新状态和其他信息
     * @param int $id
     * @param array $data
     * @return boolean
     */
    public function updateStatus($id, $data) {
        return M('a_message_log')->where("id=$id")->save($data);
    }
    
    /**
     * 进入邮件短信 缓存表【a_message_queue】
     * @param array     $reciever       收件人列表         可以存放邮件收件人和短信收件人，将会转换为JSON保存到表reciever字段
     *| array(
     *|     'email'=>array('ttttt@qq.com','fdsfdsa@163.com')//批量
     *|     )
     *| array(
     *|     'phone'=>array('13088030454','13017481750') //批量
     *|     )
     *| array(
     *|     'phone'=>'13088030454' //单条
     *|     )
     *| array(
     *|     'userlevel'=>'>= 3' //用户等级范围
     *|     )
     *| array(//组合
     *|     'userlevel' => '>= 3',
     *|     'phone'     => '13088030454'
     *|     )
     * @param string    $message        短信签名或邮件主题  比如短信签名【蜂巢联盟】 短信签名需要在阿里等级审核
     * @param string    $body           短信内容或邮件内容  短信内容需要json标准格式,邮件内容有text和html两种
     *| 短信内容匹配 JSON格式
     *| 短信模板{你在${webname}申请的验证码:${rand_number},请在五分钟内使用！请勿告知他人，工作人员也不会向你索取。}
     *| JSON：{"webname":"蜂巢网络","rand_number":"543268"}
     * @param integer   $sendtype       enum:010|100|111   Email:010, SMS:100,SMS&EMAI:111
     * @param string    $templatecode   短信模板|邮件模板   批量邮件API接口需要模板，单条邮件不需要；短信需要模板,比如：SMS_22080057
     * @param string    $bodytype       enum：html|text
     * @param array     $more           其他               如：array('senderid'=>'123','agentid'=>'');
     * @return boolean                  更多需要插入数据库的字段 
     */
    public function JoinQueue($reciever,$message,$body = '',$smsbody = '', $sendtype,$templatecode='',$bodytype='0',$more = []) {
        if(empty($reciever) || empty($message) || (empty($body) && $sendtype == '010' ) || empty($sendtype) || (!is_array($reciever)) || (!is_string($body)) || (($sendtype == '100' || $sendtype == '111') && json_decode($smsbody) == null) || (!in_array($bodytype, ['','0','html','text'])) || (!in_array(strval($sendtype), ['010','100','111']))){
            return false;
        }
        $data = [
            'class'         => '100',
            'type'          => '101',
            'reciever'      => json_encode($reciever),
            'message'       => $message,
            'body'          => $body,
            'sendtype'      => strval($sendtype),
            'templatecode'  => $templatecode,
            'smsbody'      => $smsbody,
            'bodytype'      => $bodytype,
            'sendstatus'    => '0000',
        ];
        return M('a_message_queue')->add(array_merge($data, $more));
    }
}
