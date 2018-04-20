<?php

namespace AgentProduct\Model;

use Think\Model;
use AgentProduct\Model\AProductModel;

class BAgentProductModel extends Model {

    Const PRODUCT_STATUS_INIT = 0;  //产品编辑,初始化状态
    Const PRODUCT_STATUS_UP = 1;  //产品上架状态
    Const PRODUCT_STATUS_DOWN = 2;  //产品下架状态

    Const B_PRODUCT_STATUS_INIT = 1; //b产品初始状态
    Const B_PRODUCT_STATUS_UP = 1;  //b产品上架状态
    Const B_PRODUCT_STATUS_DOWN = 2; //b产品下架状态

    protected $tableName = 'b_agent_product';

    protected $_validate = [
        ['ror', '/([+-]?)\\d*\\.\\d+$/', '预期收益应该是包含2位小数的数字']
    ];

    protected $_auto = [
        ['createtime', 'time', self::MODEL_INSERT, 'function'],
        ['ror', 'getRor', self::MODEL_BOTH, 'callback']
    ];

    public function getRor($ror) {
        return $ror / 100;
    }

    public function getProductById($id) {
        return $this->where(['id' => $id, 'agentid' => session(C("AGENT_USER_AUTH_DATA"))['agentid']])->find();
    }

    /**
     * b平台 产品管理，已购买or代理的产品列表
     * @param $where array
     * @param \Think\Page $Page
     * @return mixed
     */
    public function index($where, \Think\Page $Page) {
        //var_dump($where);
        //$where = array_merge($where,$rules);
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $products = $this->field([
            'b_agent_product.*',
            'a_product_catagroy_a.name as cata_a_name',
            'a_product_catagroy_b.name as cata_b_name',
            'a_product_catagroy_c.name as cata_c_name',
            'b_agent_product.isbuy',
            'b_agent_product.isdeputy',
        ])->where($where)->join('LEFT JOIN a_product_catagroy_a on a_product_catagroy_a.id=b_agent_product.catagroyida')->join('LEFT JOIN a_product_catagroy_b on a_product_catagroy_b.id=b_agent_product.catagroyidb')->join('LEFT JOIN a_product_catagroy_c on a_product_catagroy_c.id=b_agent_product.catagroyidc')->order('b_agent_product.createtime')->limit($Page->firstRow . ',' . $Page->listRows)->select();

        foreach ($products as &$product) {
            $product['createtime'] = date('Y-m-d H:i:s', $product['createtime']);
            $product['catagroyDes'] = $product['cata_a_name'] . '/' . $product['cata_b_name'] . '/' . $product['cata_c_name'];
            $product['productstatusDes'] = 'null';
            $product['productimg'] = empty($product['productimg']) ? '/Public/img/productimg.jpg' : $product['productimg'];
        }

        return $products;
    }

    /**
     * 获取产品的详细信息
     * @param $id int 表中id
     */
    public function getAgentProductDetail($id) {
        $agentid = session(C("AGENT_USER_AUTH_DATA"))['agentid'];
        $bProduct = $this->where(['id' => $id, 'agentid' => $agentid])->find();
        if (empty($bProduct)) {
            return false;
        }
        //获取产品的原始信息
        $aProductModel = new AProductModel();
        $bProduct['a_product_info'] = $aProductModel->getProductInfoById($bProduct['productid']);
        return $bProduct;
    }

    /**
     * 编辑产品，在此校验数据，过滤数据
     */
    public function editProduct() {
        if (!$this->create()) {
            return $this->getError();
        }
        $bProductModel = new self;
        $bProductModel->find(I("id"));

        $oldror = (new AProductModel())->where(['id' => $bProductModel->productid])->getField('ror');
        if ($oldror < $this->ror) {
            return '预期收益率不能高于原设定值';
        }

        if ($this->save()) {
            return true;
        } else {
            return $this->getError();
        }
    }

    /**
     * b平台用户发布产品
     * @param $id
     * @return true or error msg string
     */
    public function publish($id) {
        $product = $this->getProductById($id);
        //TODO::发布产品流程校验
        $product['bproductstatus'] = self::B_PRODUCT_STATUS_UP;
        $this->create($product);
        if ($this->save() !== false) {
            return true;
        } else {
            return '上架状态保存失败';
        }
    }

    public function unPublish($id) {
        $product = $this->getProductById($id);
        //TODO::产品下架流程校验
        $product['bproductstatus'] = self::B_PRODUCT_STATUS_DOWN;
        $this->create($product);

        if ($this->save() !== false) {
            return true;
        } else {
            return '下架状态保存失败';
        }
    }

}