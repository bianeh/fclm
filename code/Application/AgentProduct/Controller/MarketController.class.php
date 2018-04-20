<?php
namespace AgentProduct\Controller;

use Think\Controller;
use AgentProduct\Model\AProductModel;
use Common\Util\Util;
use Common\Model\BAgentModel;
use AgentProduct\Model\BAgentProductModel;
use AgentProduct\Model\DeputyLogicModel;
use AgentProduct\Model\BuyLogicModel;

class MarketController extends Controller {

    /**
     * 市场上产品列表页面
     */
    public function index() {
        $where = Util::getSearchWhere(['a_product.productno' => 'productno'], ['a_product.name' => 'name']);
        $where[] = ['a_product.productstatus' => AProductModel::PRODUCT_STATUS_UP];
        $aProductModel = new AProductModel;
        $count = $aProductModel->where($where)->count();// 查询满足要求的总记录数

        $Page = new \Think\Page($count, 20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $Page->setConfig('theme', C("PAGE_THEME"));
        $show = $Page->show();// 分页显示输出
        $products = $aProductModel->index($where, $Page);

        $this->assign('totalProducts', $count);
        $this->assign('products', $products);// 赋值数据集
        $this->assign('page', $show);// 赋值分页输出
        $this->display(); // 输出模板
    }

    /**
     * 产品详情页面
     * @param $id
     */
    public function detail($id) {
        $result = (new AProductModel())->getProductDetail($id);
        if (!$result) {
            $this->error('出错');
        }

        $this->assign('product', $result);
        $this->display();
    }

    /**
     * b平台 代理某产品
     * @param $id
     */
    public function deputy($id) {
        $DeputyLogic = new DeputyLogicModel();
        $result = $DeputyLogic->deputy($id);
        if ($result !== true) {
            $this->error($result);
        } else {
            $this->success('代理产品成功');
        }
    }

    /**
     * b平台 购买某产品页面
     * @param $id
     */
    public function buyPage($id) {
        $buyLogic = new BuyLogicModel();
        $result = $buyLogic->canBuy($id);
        if ($result !== true) {
            $this->error($result);
        }

        $product = $buyLogic->getProductBuyInfo($id);
        $product['process'] = $product['usedShare'] / $product['share'] * 100;

        $product['buy_fee'] = C("BUY_FEE");
        $product['sale_fee'] = C("SALE_FEE");

        //产品信息
        $this->assign('product', $product);
        $this->display();
    }

    /**
     * 下订单
     */
    public function makeOrder() {
        $buyLogic = new BuyLogicModel();
        $aproductId = I('aproductid');

        //检查是否可以购买
        $result = $buyLogic->canBuy($aproductId);
        if ($result !== true) {
            $this->error($result);
        }

        //下订单
        $buyResult = $buyLogic->makeOrder($aproductId, I('totalamount'));
        if ($buyResult !== true) {
            $this->error($buyResult);
        } else {
            $this->success('购买成功');
        }
    }

    /**
     * 支付信息页面
     * @param $orderno string 订单编号
     */
    public function payInfo($orderno) {

    }

}