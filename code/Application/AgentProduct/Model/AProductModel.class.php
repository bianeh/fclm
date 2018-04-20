<?php

namespace AgentProduct\Model;
use Common\Model\AProductModel as ProductModel;
use Common\Model\BAgentModel;
use AgentProduct\Model\BAgentSubscribeModel;
use AgentProduct\Model\BAgentCollectModel;

class AProductModel extends ProductModel {

    /**
     * 购买限制规则
     * @var array
     */
    private $rulesForPay = [
        'sales_level'=>5,//销售等级限制，如果用户销售等级低于产品的销售等级，则用户不能购买
    ];

    private $BAgentModel;

    public function __construct(){
        parent::__construct();
        $this->BAgentModel = new BAgentModel();
    }

    /**
     * b平台 市场上的产品列表
     * @param $where array
     * @param \Think\Page $Page
     * @return mixed
     */
    public function index($where,\Think\Page $Page){
        //var_dump($where);
        $rules = $this->generateBuyRule();
        $where = array_merge($where,$rules);
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $products = $this->field([
            'a_product.*',
            'a_product_catagroy_a.name as cata_a_name',
            'a_product_catagroy_b.name as cata_b_name',
            'a_product_catagroy_c.name as cata_c_name',
            'b_agent_product.isbuy',
            'b_agent_product.isdeputy',
        ])->where($where)
            ->join('LEFT JOIN a_product_catagroy_a on a_product_catagroy_a.id=a_product.catagroyida')
            ->join('LEFT JOIN a_product_catagroy_b on a_product_catagroy_b.id=a_product.catagroyidb')
            ->join('LEFT JOIN a_product_catagroy_c on a_product_catagroy_c.id=a_product.catagroyidc')
            ->join('LEFT JOIN b_agent_product on a_product.id=b_agent_product.productid and b_agent_product.agentid='.session(C('AGENT_USER_AUTH_DATA'))['agentid'].' ')
            ->order('a_product.createtime')->limit($Page->firstRow.','.$Page->listRows)->select();

        foreach($products as &$product){
            $product['createtime'] = date('Y-m-d H:i:s',$product['createtime']);
            $product['catagroyDes'] = $product['cata_a_name'].'/'.$product['cata_b_name'].'/'.$product['cata_c_name'];
            $product['productstatusDes'] = self::formatProductStatus($product['productstatus']);
            $product['productimg'] = empty($product['productimg'])?'/Public/img/productimg.jpg':$product['productimg'];
        }

        return $products;
    }

    /**
     * 根据不同用户，生成不同的过滤条件
     * @return array
     */
    public function generateBuyRule(){
        $this->BAgentModel->find( session(C('AGENT_USER_AUTH_DATA'))['agentid'] );
        $where = [];
        //合格投资人限制
        if($this->BAgentModel->isqualifiedinvestor == 0){
            $where['a_product.qualifiedinvestors']=0;
        }
        //海外投资人限制
        if($this->BAgentModel->isoverseasinvestor == 1){
            $where['a_product.overseasinvestors'] = 1;
        }
        //销售等级限制
        $where['a_product.saleslevel'] = ['ELT',$this->BAgentModel->saleslevel];

        return $where;
    }

    /**
     * 客户是否可以代理or购买
     * @param $id
     */
    public function canDeputyOrBuy($id){
        $where = $this->generateBuyRule();
        $where['id']=$id;
        $where['agentid'] = session(C("AGENT_USER_AUTH_DATA")['agentid']);
        return (Boolean)$this->where($where)->find();
    }

    public function getProductById($id){
        return $this->find($id);
    }

    public function getProductDetail($id){
        //产品信息
        $product = $this->find($id);
        if(empty($product)){
            return false;
        }

        //购买，代理，订阅，收藏信息
        $BAgentProductModel = new BAgentProductModel();
        //TODO:: sql优化
        $product['isbuy'] = $BAgentProductModel->where([
            'agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid'],
            'productid'=>$id
            ])->getField('isbuy');
        $product['isdeputy'] = $BAgentProductModel->where([
            'agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid'],
            'productid'=>$id
        ])->getField('isdeputy');

        //是否订阅
        $subscribeModel = new BAgentSubscribeModel();
        $product['issubscribe'] = $subscribeModel->isSubscribe($id);
        //是否收藏
        $collectModel = new BAgentCollectModel();
        $product['iscollect'] = $collectModel->isCollected($id);

        return $product;
    }

}