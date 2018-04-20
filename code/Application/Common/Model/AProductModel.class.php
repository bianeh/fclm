<?php

namespace Common\Model;

use Think\Model;
use Common\Model\CAssetModel;

class AProductModel extends Model {

    Const PRODUCT_STATUS_INIT = 0;  //产品编辑,初始化状态
    Const PRODUCT_STATUS_UP = 1;  //产品上架状态
    Const PRODUCT_STATUS_DOWN = 2;  //产品下架状态

    protected $tableName = 'a_product';

    protected $_validate = [
        ['name', 'require', '产品名称不能为空'],
        ['name', '5,100', '产品名称长度应在5字到100字之间', self::MUST_VALIDATE, 'length'],
        //['tradingstructure','require','交易结构不能为空'],
        ['tradingstructure', '0,100', '交易结构长度应在0字到100字之间', self::MUST_VALIDATE, 'length'],
        ['productform', '0,100', 'productform长度应在0字到100字之间', self::MUST_VALIDATE, 'length'],
        ['publisher', '0,30', '发行人长度应在0字到30字之间', self::MUST_VALIDATE, 'length'],
        ['custodian', '0,30', '托管人长度应在0字到30字之间', self::MUST_VALIDATE, 'length'],
        ['distributionmethod', '0,100', '收益分配方式长度应在0字到100字之间', self::MUST_VALIDATE, 'length'],
        ['tradingrivals', '0,500', '交易对手长度应在0字到500字之间', self::MUST_VALIDATE, 'length'],
        ['investmenttargets', '0,500', '投资标的长度应在0字到500字之间', self::MUST_VALIDATE, 'length'],
        ['assetguarantee', '0,500', '资产保证长度应在0字到500字之间', self::MUST_VALIDATE, 'length'],
        ['establishedconditions', '0,100', '成立条件长度应在0字到100字之间', self::MUST_VALIDATE, 'length'],
        ['note', '0,500', '备注长度应在0字到500字之间', self::MUST_VALIDATE, 'length'],
        ['investmentteam', '0,500', '投资团队长度应在0字到500字之间', self::MUST_VALIDATE, 'length'],
        ['investmentstrategy', '0,500', '投资策略长度应在0字到500字之间', self::MUST_VALIDATE, 'length'],
        ['investmentprocess', '0,500', '投资流程长度应在0字到500字之间', self::MUST_VALIDATE, 'length'],
        ['investmentperformance', '0,500', '投资业绩长度应在0字到500字之间', self::MUST_VALIDATE, 'length'],
        ['productscale', '/([+-]?)\\d*\\.\\d+$/', '产品规模应该是包含2位小数的数字'],
        ['issuesize', '/([+-]?)\\d*\\.\\d+$/', '发行规模应该是包含2位小数的数字'],
        ['minimuminvestmentamount', '/([+-]?)\\d*\\.\\d+$/', '最低投资额应该是包含2位小数的数字'],
        ['increasingunit', '/([+-]?)\\d*\\.\\d+$/', '递增单位应该是包含2位小数的数字'],
        ['producttermmonth', 'number', '产品期限(月)必须是数字'],
        ['producttermday', 'number', '产品期限(日)必须是数字'],
        ['ror', '/([+-]?)\\d*\\.\\d+$/', '预期收益应该是包含2位小数的数字'],
        ['commissionratio', '/([+-]?)\\d*\\.\\d+$/', '佣金应该是包含2位小数的数字'],
        ['subscriptionfee', '/([+-]?)\\d*\\.\\d+$/', '认购费应该是包含2位小数的数字'],
        ['managementexpense', '/([+-]?)\\d*\\.\\d+$/', '管理费应该是包含2位小数的数字'],
        ['redemptionfee', '/([+-]?)\\d*\\.\\d+$/', '赎回费应该是包含2位小数的数字'],
        ['performancereward', '/([+-]?)\\d*\\.\\d+$/', '业绩报酬应该是包含2位小数的数字'],


    ];

    protected $_auto = [
        ['createtime', 'time', self::MODEL_INSERT, 'function'],
        ['createuser','getCreateUser',self::MODEL_INSERT,'callback'],
        ['createuserid','getCreateUserId',self::MODEL_INSERT,'callback'],
        ['productno', 'getProductno', self::MODEL_INSERT, 'callback'],
        ['onlinedate', 'getFormatdate', self::MODEL_BOTH, 'callback'],
        ['establishmentday', 'getFormatdate', self::MODEL_BOTH, 'callback'],
        ['openday', 'getFormatdate', self::MODEL_BOTH, 'callback'],
        ['duedate', 'getFormatdate', self::MODEL_BOTH, 'callback'],
        ['terminationday', 'getFormatdate', self::MODEL_BOTH, 'callback'],
        ['ror','getRate',self::MODEL_BOTH,'callback'],
        ['commissionratio','getRate',self::MODEL_BOTH,'callback']
    ];

    public function getCreateUser(){
        return session(C("USER_AUTH_DATA"))['username'];
    }

    public function getCreateUserId(){
        return session(C("USER_AUTH_DATA"))['id'];
    }

    /**
     * 收益率处理
     * @param $rate (传入的值可能是 20.00 代表 20,00%
     * @return float
     */
    public function getRate($rate){
        if($rate > 1){
            return $rate/100;
        }else{
            return $rate;
        }
    }

    /**
     * 获取日期时间戳
     * @param $date string 'yyyy-mm-dd'
     * @return int
     */
    public function getFormatdate($date) {
        return strtotime($date);
    }

    /**
     * 添加产品时，自动添加产品编号
     * 规则： CP+年月日+随机3位数字
     */
    public function getProductno() {
        return 'CP' . date('ymd') . mt_rand(0, 9) . mt_rand(0, 9) . mt_rand(0, 9);
    }

    /**
     * 状态文字性描述
     */
    static public function formatProductStatus($status) {
        $arr = [
            self::PRODUCT_STATUS_INIT => '编辑状态',
            self::PRODUCT_STATUS_UP => '已上架',
            self::PRODUCT_STATUS_DOWN => '已下架',
        ];
        if (array_key_exists($status, $arr)) {
            return $arr[$status];
        }
        return '错误状态';
    }

    /**
     * 返回该产品是否为浮动类产品
     * @return bool
     */
    public function isFloatProduct() {
        if ($this->catagroyida == 2 || $this->catagroyida == 3) {
            return true;
        }

        return false;
    }

    /**
     * 返回产品是否已经到期结束
     * @return bool
     */
    public function isDue() {
        if ($this->duedate < time()) {
            //过期
            return true;
        } else {
            return false;
        }
    }

    /**
     * 获取产品详情
     * @param $id
     */
    public function getProductInfoById($id) {
        return $this->find($id);
    }

    /**
     * 获取已购买的份额数目
     * @param $id
     * @return int
     */
    public function getUsedShare($id) {
        $AssetModel = new CAssetModel;
        $usedShare = $AssetModel->where(['aproductid' => $id])->getField("sum(`share`) as totalShare");
        return $usedShare==null?0:$usedShare;
    }

    /**
     * 按产品编号获取产品
     * @param $productno
     */
    public function getProdctByProductNo($productno){
        return $this->where(['productno'=>$productno])->find();
    }

}