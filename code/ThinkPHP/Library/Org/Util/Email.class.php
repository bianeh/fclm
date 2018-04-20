<?php

namespace Org\Util;

/**
 * 发送邮件类
 * @author LiuJie
 */

class Email extends MessageBase{
    
    function __construct() {
        parent::__construct();
        $this->request = new \Request\V20151123\SingleSendMailRequest();
        $this->request->setAccountName(C('ALI_EMAIL_ACCOUNT_NAME'));
        $this->request->setFromAlias(C('ALI_EMAIL_FROM_ALIAS'));
        $this->request->setAddressType(C('ALI_EMAIL_ADDRESS_TYPE'));
        $this->request->setTagName(C('ALI_EMAIL_TAG_NAME'));
        $this->request->setReplyToAddress(C('ALI_EMAIL_REPLY_ADDR'));
    }
    
    /**
     * 发送邮件
     * @param string $ToAddress 收信地址
     * @param string $Subject 邮件主题
     * @param string $Body 邮件内容
     * @param string $BodyType html|text
     * @param type $queueId         发送来路的标识，可能对应a_message_queue的Id，也可能是其他标识
     */
    public function send($ToAddress, $Subject, $Body = '' , $BodyType = 'html',$queueId = '') {
        $args = func_get_args();
        $id = $this->log(['title'=>$Subject,'body'=>$Body,'sendtype'=>($BodyType == "html" ? 22 : 21),'reciever'=>$ToAddress,'queueid'=>$queueId]);
        
        if($id === false || empty($id)){
            return false;
        }
        
        $this->request->setToAddress($ToAddress);
        $this->request->setSubject($Subject);
        if ($BodyType == 'html') {
            $this->request->setHtmlBody($Body);
        } else {
            $this->request->setTextBody($Body);
        }
        $response = $this->client->getAcsResponse($this->request);
        
        $rsCode = isset($response->httpStatus) ? 2:1;
        $this->updateStatus($id, ['sendtime'=>time(),'response'=>serialize($response),'sendstatus'=>$rsCode]);
        if($rsCode == 1){
            return true;
        }  else {
            return false;
        }
        return true;
    }
}
