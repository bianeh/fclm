<?php

namespace AgentProduct\Model;
use AgentProduct\Model\AgentMarketLogicModel;

class DeputyLogicModel extends AgentMarketLogicModel {

    /**
     * 代理某产品
     * @param $id
     * @return boolean or string(error msg)
     */
    public function deputy($id){
        //id是否正确
        $id = (int)$id;
        if(empty( $id )){
            return '参数错误';
        }

        //是否已代理 or 购买
        $ret = $this->deputyOrBubStatus($id);
        if($ret !== true){
            return $ret;
        }

        //是否可以代理
        $result = $this->canDeputyOrBuy($id);
        if(!$result){
            return '您不可以代理该产品';
        }

        //代理产品
        return $this->doDeputy($id);
    }

    /**
     * 代理产品，执行代理逻辑
     * @param $id
     * @return boolean or string(error info)
     */
    private function doDeputy($id){
        //复制A产品信息到b_product中，并设置isdeputy = 1 isbuy = 0;
        $product = $this->AProductModel->getProductById($id);
        $product['productid'] = $product['id'];
        unset($product['id']);
        $product['isdeputy'] = 1;
        $product['isbuy'] = 0;
        $product['agentid'] = session(C("AGENT_USER_AUTH_DATA"))['agentid'];
        $product['buserid'] = session(C("AGENT_USER_AUTH_KEY"));
        if(!$this->BProductModel->create($product)){
            return $this->BProductModel->getError();
        }

        if($this->BProductModel->add()){
            return true;
        }else{
            return $this->BProductModel->getError();
        }

    }

}