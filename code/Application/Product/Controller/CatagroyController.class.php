<?php
namespace Product\Controller;
use Think\Controller;
use Common\Model\ProductCatagroyModel;

class CatagroyController extends Controller {
	
	/**
	 * 根据a，获取b分类列表
	 */
    public function getBList(){
        $catagroyModel = new ProductCatagroyModel;
        $list = $catagroyModel->getBList( I('a_id') );
        return $this->ajaxReturn(['status'=>1,'data'=>$list]);
    }
	

    /**
     * 根据a b，获取c分类列表
     */
    public function getCList(){
        $catagroyModel = new ProductCatagroyModel;
        $list = $catagroyModel->getCList( I('a_id'),I('b_id') );
        return $this->ajaxReturn(['status'=>1,'data'=>$list]);
    }
}