<?php

namespace Common\Model;
use Think\Model;

class FmOrderModel extends Model {

    Const PRODUCT_STATUS_INIT = 0;  //产品编辑,初始化状态
    Const PRODUCT_STATUS_UP = 1;  //产品上架状态
    Const PRODUCT_STATUS_DOWN = 2;  //产品下架状态

    protected $tableName = 'fm_order';

    protected $_validate = [

    ];

    protected $_auto = [
       ['createtime','time',self::MODEL_INSERT,'function'],
       ['orderno','makeOrderNo',self::MODEL_INSERT,'callback'],
    ];

    /**
     * 生成订单号
     * @return string
     */
    public function makeOrderNo(){
        return 'DD'.date('ymd',time()).uniqid();
    }

    /**
     * 状态文字性描述
     */
    static public function formatProductStatus($status){
        $arr = [
            self::PRODUCT_STATUS_INIT=>'编辑状态',
            self::PRODUCT_STATUS_UP=>'已上架',
            self::PRODUCT_STATUS_DOWN=>'已下架',
        ];
        if(array_key_exists($status, $arr)){
            return $arr[$status];
        }
        return '错误状态';
    }

    /**
     * 计算订单hash
     * md5(a产品id，订单号，份额，净值，总额(amount))
     * @return string
     */
    public function makeHash(){
        return md5($this->aproductid.$this->orderno.$this->share.$this->networth.$this->amount);
    }


}