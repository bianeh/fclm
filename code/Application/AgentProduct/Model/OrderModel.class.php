<?php

namespace AgentProduct\Model;

use Think\Model;
use Common\Model\FmOrderModel;
use Common\Model\BAgentModel;

class OrderModel extends FmOrderModel {

    protected $_validate = [

    ];

    protected $_auto = [
        ['createtime','time',self::MODEL_INSERT,'function'],
        //['agentid','getAgentId',self::MODEL_INSERT,'callback'],
        ['buyerid','getBuyerId',self::MODEL_INSERT,'callback'],
        ['type','getType',self::MODEL_INSERT,'callback'],
        ['status','0',self::MODEL_INSERT],  //待审核状态
        ['orderno','makeOrderNo',self::MODEL_INSERT,'callback'],
        ['sellerid','getSellerId',self::MODEL_INSERT,'callback']
    ];

    /**
     * b 用户购买 sellerid为1
     * @return int
     */
    public function getSellerId(){
        return 1;   //向a平台购买，sellerid为1
    }

    /**
     * b 用户购买，设置用户的agentid
     * @return mixed
     */
    /*public function getAgentId(){
        return session(C("AGENT_USER_AUTH_DATA"))['agentid'];
    }*/

    /**
     * b用户购买，buyerid 为b用户的c账户id
     * @return mixed
     */
    public function getBuyerId(){
        return session(C("AGENT_USER_AUTH_DATA"))['cuserid'];
    }

    /**
     * 设置订单type，b向a提交订单，订单类型为12
     * @return int
     */
    public function getType(){
        return 12;
    }

    /**
     * 创建新订单
     * @param array $product
     * @param $amount
     * @param $buyFee
     * @param $commissionFee
     * @param $share
     * @return bool|string
     */
    public function newOrder(Array $product,$amount,$buyFee,$commissionFee,$share){
        $data = [
            'aproductid'=>$product['id'],
            'amount'    =>$amount,
            'productamount' => ($amount-$buyFee-$commissionFee),
            'buyfee'    =>$buyFee,
            'commissionfee' =>$commissionFee,
            'share'     =>$share,
            'networth'  =>$product['networth'],
        ];
        if(!$this->create($data)){
            return $this->getError();
        }

        //生成hash
        $this->hash = $this->makeHash();
        $result = $this->add();
        if($result!==false){
            return true;
        }else{
            return $this->getError();
        }
    }

}