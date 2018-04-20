<?php
namespace AgentProduct\Controller;
use Think\Controller;
use Common\Util\Util;
use AgentProduct\Model\BAgentProductModel;
use Common\Model\ProductCatagroyModel;

class MineController extends Controller {
	
	/**
	 * 购买or代理的产品列表页面
	 */
    public function index(){
		$where = Util::getSearchWhere(['b_agent_product.productno'=>'productno'],['b_agent_product.name'=>'name']);
		$where[] = ['b_agent_product.productstatus'=>BAgentProductModel::PRODUCT_STATUS_UP];
		$where[] = ['b_agent_product.agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid']];
		$bAgentProductModel = new BAgentProductModel();
    	$count      = $bAgentProductModel->where($where)->count();// 查询满足要求的总记录数

		$Page       = new \Think\Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$Page->setConfig('theme',C("PAGE_THEME"));
		$show       = $Page->show();// 分页显示输出
		$products = $bAgentProductModel->index($where,$Page);

		$this->assign('totalProducts',$count);
		$this->assign('products',$products);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display(); // 输出模板
    }


	/**
	 * 修改展示页面
	 * @param $id int 的 id
	 */
	public function editPage($id){
		$productModel = new BAgentProductModel();
		$product = $productModel->getAgentProductDetail($id);
		if(empty($product)){
			$this->error('错误产品');
		}

		$catagroyModel = new ProductCatagroyModel;
		$this->assign('aCatagroyList',$catagroyModel->getAList());
		$this->assign('product',$product);
		$this->display();
	}

	/**
	 * 产品编辑动作
	 */
	public function edit(){
		$productModel = new BAgentProductModel();
		$ret = $productModel->editProduct();
        if($ret !== true){
            return $this->error($ret);
        }else{
            return $this->success('修改成功');
        }
	}

    /**
     * 平台用户上架某产品
     * @param $id
     */
	public function publish($id){
        $productModel = new BAgentProductModel();
        $ret = $productModel->getAgentProductDetail($id);
        if(!$ret){
            return $this->error('未找到该产品');
        }

        $res = $productModel->publish($id);

        if($res!==true){
            return $this->error($res);
        }else{
            return $this->success('上架成功');
        }
    }

    /**
     * 平台用户下架产品
     * @param $id
     */
    public function unPublish($id){
        $productModel = new BAgentProductModel();
        $ret = $productModel->getAgentProductDetail($id);
        if(!$ret){
            return $this->error('未找到该产品');
        }

        $res = $productModel->unPublish($id);

        if($res!==true){
            return $this->error($res);
        }else{
            return $this->success('下架成功');
        }
    }

}