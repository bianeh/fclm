<?php

namespace AgentProduct\Model;

use AgentProduct\Model\AgentMarketLogicModel;
use Common\Model\AProductModel;
use AgentProduct\Model\OrderModel;
use AgentProduct\Model\CAssetModel;

class BuyLogicModel extends AgentMarketLogicModel {

    /**
     * 是否可以购买
     * @param $id
     * @return bool|string
     */
    public function canBuy($id) {
        //是否已代理 or 购买
        $ret = $this->deputyOrBubStatus($id);
        if ($ret !== true) {
            return $ret;
        }

        //是否可以代理 or 购买
        $result = $this->canDeputyOrBuy($id);
        if (!$result) {
            return '您不可以购买该产品';
        }

        return true;
    }

    /**
     * 获取要购买产品的信息
     * @param $id
     * @return mixed
     */
    public function getProductBuyInfo($id) {
        $productModel = new AProductModel();
        $product = $productModel->find($id);
        $product['usedShare'] = $productModel->getUsedShare($id);
        $product['leftShare'] = $product['share'] - $product['usedShare'];
        $product['maxBuyAmount'] = round($product['leftShare'] * $product['networth'] / (1 - $product['commissionratio'] - C("BUY_FEE")));
        return $product;
    }

    /**
     * 购买某产品
     * @param $id
     * @return boolean or string(error msg)
     */
    public function buy($id) {
        //id是否正确
        $id = (int)$id;
        if (empty($id)) {
            return '参数错误';
        }

        //是否已代理 or 购买
        $ret = $this->deputyOrBubStatus($id);
        if ($ret !== true) {
            return $ret;
        }

        //是否可以代理 or 购买
        $result = $this->canDeputyOrBuy($id);
        if (!$result) {
            return '您不可以购买该产品';
        }

        //代理产品
        return $this->makeOrder();
    }

    /**
     * 计算手续费
     * @param $amount
     */
    public function getBuyFee($product,$amount){
        return round($amount*C("BUY_FEE"));
    }

    /**
     * 计算佣金
     * @param $amount
     */
    public function getCommissionFee($product,$amount){
        return round($amount*$product['commissionratio']);
    }

    /**
     * 根据金额计算份额
     * @param $networth
     * @param $totalAmount
     */
    public function getShare($product,$totalAmount){
        //根据金额计算买入份额（金额×（1－买入佣金率－手续费率）÷净值，取整）
        return round($totalAmount *(1 -  $product['commissionratio'] - C('BUY_FEE')) / $product['networth']);
    }

    /**
     * b用户购买下单
     * @param $aProductId
     * @param $totalAmount
     */
    public function makeOrder($aProductId, $totalAmount) {
        $product = $this->getProductBuyInfo($aProductId);
        //检查购买是否符合标准
        $ret = $this->isAmountOk($product,$totalAmount);
        if($ret !== true){
            return $ret;
        }
        //手续费
        $buyFee = $this->getBuyFee($product,$totalAmount);
        //佣金
        $commissionFee = $this->getCommissionFee($product,$totalAmount);
        //计算份额
        $share = $this->getShare($product,$totalAmount);
        //下单
        $orderModel = new OrderModel();
        $orderModel->newOrder($product,$totalAmount,$buyFee,$commissionFee,$share);


        return true;
    }


    /**
     * 检查购买金额是否符合标准
     * @param $product
     * @param $totalAmount
     */
    public function isAmountOk($product,$totalAmount){
        //最小金额限制
        if($product['minimuminvestmentamount'] > $totalAmount){
            return '小于最少投资金额，请填写正确的购买金额';
        }

        //剩余购买最大金额限制
        if($product['maxBuyAmount'] < $totalAmount){
            return '超过最大购买金额，请刷新页面后重试';
        }

        //TODO:: 购买递增单位检查

        return true;
    }

    /**
     * 确认b->a订单，验证库存等信息，存入资产表
     * @param $id int 订单id
     * @return bool|string|void
     */
    public function confirmDeal($id){
        //获取订单信息
        $orderModle = new OrderModel();
        $order = $orderModle->find($id);
        if(empty($order)){
            return '订单不存在';
        }

        //获取产品信息
        $product = $this->getProductBuyInfo($order['aproductid']);
        //检查剩余用量
        $result = $this->isAmountOk($product,$order['amount']);
        if( $result !==true ) {
            return $result;
        }

        //能否购买
        $ret = $this->deputyOrBubStatus($order['aproductid'],$order['agentid']);
        if($ret !== true){
            return $ret;
        }

        //导入库存
        $assetModel = new CAssetModel();
        $ret = $assetModel->addAssetByOrder($order);
        if($ret !== true){
            return $ret;
        }
        //在b产品表中标注用户已购买产品
        $this->doBuy($order);

        return true;
    }

    /**
     * 代理产品，执行代理逻辑
     * @param $id
     * @return boolean or string(error info)
     */
    private function doBuy($order) {
        //复制A产品信息到b_product中，并设置isdeputy = 1 isbuy = 0;
        $product = $this->AProductModel->getProductById($order['aproductid']);
        $product['productid'] = $product['id'];
        unset($product['id']);
        $product['isdeputy'] = 0;
        $product['isbuy'] = 1;
        $product['agentid'] = $order['agentid'];
        $product['buserid'] = null;
        if (!$this->BProductModel->create($product)) {
            return $this->BProductModel->getError();
        }

        if ($this->BProductModel->add()) {
            return true;
        } else {
            return $this->BProductModel->getError();
        }
    }

}