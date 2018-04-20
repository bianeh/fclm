<?php

namespace Org\Util;

/**
 * 短信息服务类
 * @author LiuJie
 */

class Sms extends MessageBase{
    
    /**
     * @param type $RecNum          目标手机号
     * @param type $TemplateCode    模板code
     * @param type $SignName        签名名称
     * @param type $ParamString     模板变量，数字一定要转换为字符串
     * @param type $queueId         发送来路的标识，可能对应a_message_queue的Id，也可能是其他标识
     */
    public function send($RecNum, $TemplateCode, $SignName, $ParamString,$queueId = '') {
        $id = $this->log(['body'=>$TemplateCode.'=>'.$ParamString,'sendtype'=>31,'reciever'=>$RecNum,'queueid'=>$queueId]);
        if($id === false || empty($id)){
            return false;
        }
        
        $this->request = new \Request\V20160927\SingleSendSmsRequest();
        $this->request->setSignName($SignName);
        $this->request->setTemplateCode($TemplateCode);
        $this->request->setRecNum($RecNum);
        $this->request->setParamString($ParamString);
        $response = $this->client->getAcsResponse($this->request);
        $rsCode = isset($response->httpStatus) ? 2:1;
        $this->updateStatus($id, ['sendtime'=>time(),'response'=>serialize($response),'sendstatus'=>$rsCode]);
        if($rsCode == 1){
            return true;
        }  else {
            return false;
        }
    }
}