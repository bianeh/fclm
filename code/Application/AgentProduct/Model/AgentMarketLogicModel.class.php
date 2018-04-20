<?php

namespace AgentProduct\Model;
use Common\Model\BAgentModel;
use AgentProduct\Model\AProductModel;
use AgentProduct\Model\BAgentProductModel;

class AgentMarketLogicModel {

    public $BAgentModel;
    public $AProductModel;
    public $BProductModel;

    /**
     * 初始化需要到的模型
     */
    public function __construct(){
        $this->BAgentModel = new BAgentModel();
        $this->AProductModel = new AProductModel();
        $this->BProductModel = new BAgentProductModel();
    }


    /**
     * 检查代理状态（已代理 or 未代理）
     * @param $id
     * @return bool [false:未代理，true:已代理]
     */
    public function deputyOrBubStatus($id,$agentid=null){
        if($agentid==null){
            $agentid = session(C("AGENT_USER_AUTH_DATA"))['agentid'];
        }
        $res = $this->BProductModel->where(['agentid'=>$agentid,'productid'=>$id])->find();
        if(empty($res)){
            return true;
        }elseif($res['isbuy']==1){
            return '已经购买了产品，不能再次购买或代理';
        }elseif($res['isdeputy']==1){
            return '已经代理了产品，不能再次购买或代理';
        }else{
            return 'unknow error';
        }
    }

    /**
     * 客户是否可以代理or购买该产品
     * @param $id
     * @return bool
     */
    public function canDeputyOrBuy($id){
        if($this->AProductModel->canDeputyOrBuy($id)){
            return true;
        }

        return false;
    }

}