<?php

namespace AgentProduct\Model;

use Common\Model\CAssetModel as AssetModel;

class CAssetModel extends AssetModel {

    protected $tableName = 'c_asset';

    protected $_validate = [

    ];

    protected $_auto = [

    ];

    /**
     * b->a 的订单
     * 将订单信息记录转变为资产信息
     * @param $order array 订单信息记录
     * @return bool|string
     */
    public function addAssetByOrder($order){
        $data = [
            'orderno'   =>$order['orderno'],
            'aproductid'    =>$order['aproductid'],
            'status'    =>1,
            'createtime'=>time(),
            'networth'  =>$order['networth'],
            'share'     =>$order['share'],
            'amount'    =>$order['productamount'],
            'cuserid'   =>$order['buyerid'],
        ];
        if(!$this->create($data)){
            return $this->getError();
        }

        $addRes = $this->add();
        if($addRes!==false){
            return true;
        }else{
            return $this->getError();
        }
    }

}