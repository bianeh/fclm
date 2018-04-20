<?php
namespace Product\Controller;
use Think\Controller;
use Common\Model\AProductDisclosureModel;
use Common\Model\ProductCatagroyModel;
use Common\Model\AProductModel;
use Common\Util\Util;

class ProductController extends Controller {
	
	/**
	 * 产品列表页面
	 */
    public function index(){

    	$where = Util::getSearchWhere(['a_product.productno'=>'productno'],['a_product.name'=>'name']);

    	$aProductModel = new AProductModel;
    	$count      = $aProductModel->count();// 查询满足要求的总记录数

		$Page       = new \Think\Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$Page->setConfig('theme',C("PAGE_THEME"));
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$products = $aProductModel->field([
				'a_product.*',
				'a_product_catagroy_a.name as cata_a_name',
				'a_product_catagroy_b.name as cata_b_name',
				'a_product_catagroy_c.name as cata_c_name',
				])->where($where)
			->join('LEFT JOIN a_product_catagroy_a on a_product_catagroy_a.id=a_product.catagroyida')
			->join('LEFT JOIN a_product_catagroy_b on a_product_catagroy_b.id=a_product.catagroyidb')
			->join('LEFT JOIN a_product_catagroy_c on a_product_catagroy_c.id=a_product.catagroyidc')
			->order('a_product.createtime')->limit($Page->firstRow.','.$Page->listRows)->select();

		foreach($products as &$product){
			$product['createtime'] = date('Y-m-d H:i:s',$product['createtime']);
			$product['catagroyDes'] = $product['cata_a_name'].'/'.$product['cata_b_name'].'/'.$product['cata_c_name'];
			$product['productstatusDes'] = AProductModel::formatProductStatus($product['productstatus']);
            $product['productimg'] = empty($product['productimg'])?'/Public/img/productimg.jpg':$product['productimg'];
		}

		$this->assign('totalProducts',$count);
		$this->assign('products',$products);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display(); // 输出模板
    }

    /**
     * 添加产品界面
     */
    public function addPage(){
    	$catagroyModel = new ProductCatagroyModel;
    	$this->assign('aCatagroyList',$catagroyModel->getAList());
    	$this->display();
    }

    /**
     * 添加产品动作
     */
    public function add(){
    	$productModel = new AProductModel;
    	if(!$productModel->create()){
    		$this->error($productModel->getError());
    	}
    	$res = $productModel->add();
    	if($res){
    		$this->success('添加产品成功',U('Product/Product/index'));
    	}else{
        	$this->error('添加产品失败');
        }
    }

    /**
     * 产品上架
     */
    public function publish($id){
    	$productModel = new AProductModel;
    	$product = $productModel->where(['id'=>$id])->find();
    	if(!$product){
    		$this->error('没有此产品');
    	}

    	//TODO::产品上架前置检查工作
    	$productModel->productstatus = AProductModel::PRODUCT_STATUS_UP;
    	$res = $productModel->save();
    	if($res !== false){
    		$this->success('产品上架成功');
    	}else{
        	$this->error('产品上架失败');
        }
    }

    /**
     * 产品上架
     */
    public function unPublish($id){
    	$productModel = new AProductModel;
    	$product = $productModel->where(['id'=>$id])->find();
    	if(!$product){
    		$this->error('没有此产品');
    	}

    	//TODO::产品上架前置检查工作
    	$productModel->productstatus = AProductModel::PRODUCT_STATUS_DOWN;
    	$res = $productModel->save();
    	if($res !== false){
    		$this->success('产品下架成功');
    	}else{
        	$this->error('产品下架失败');
        }
    }

    /**
     * 产品编辑页面
     */
    public function editPage($id){
    	$productModel = new AProductModel;
    	$product = $productModel->where(['id'=>$id])->find();

    	$catagroyModel = new ProductCatagroyModel;
    	$this->assign('aCatagroyList',$catagroyModel->getAList());
    	$this->assign('product',$product);
    	$this->display();
    }


    /**
     * 产品编辑
     */
    public function edit(){
    	$productModel = new AProductModel;
    	if(!$productModel->create()){
    		$this->error($productModel->getError());
    	}
    	$res = $productModel->save();
    	if($res!==false){
    		$this->success('编辑产品成功',U('Product/Product/index'));
    	}else{
        	$this->error('编辑产品失败'.$productModel->getError());
        }
    }

    /**
     * 产品信息披露页面
     */
    public function productInfoDisclosurePage($id){
        $productDisClosure = new AProductDisclosureModel;
        $lists = $productDisClosure->getDisclosureList($id);

        foreach($lists as &$list){
            $list['createtime'] = date('Y-m-d H:i:s',$list['createtime']);
        }

        $this->assign('title','产品披露');
        $this->assign('productid',$id);
        $this->assign('lists',$lists);
        $this->display();
    }

    /**
     * 添加信息披露信息
     */
    public function addDisclosureInfo(){
        $productDisClosure = new AProductDisclosureModel;
        if(!$productDisClosure->create()){
            $this->error($productDisClosure->getError());
        }
        $res = $productDisClosure->add();
        if($res){
            $this->success('添加成功');
        }else{
            $this->error('添加失败');
        }
    }

    /**
     * 添加披露附件
     * ajax return
     */
    public function addFile(){
        $upload = new \Think\Upload();
        $return = ['status' => 0, 'msg' => '上传失败！', 'url' => ''];
        $upload->maxSize = 3145728;
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg','xls','doc','docx','xlsx');
        $upload->rootPath = './Uploads/';
        $upload->savePath = '/disclosure/';
        $info = $upload->upload();
        if (!$info) {
            $this->error($upload->getError());
        } else {
            $return['status'] = 1;
            $return['msg'] = '文件上传成功！';
            $return['url'] = '/Uploads' . $info['file']['savepath'] . $info['file']['savename'];
            $return['filename'] = $info['file']['name'];
        }

        //返回成功信息
        $this->ajaxReturn($return);
    }

    /**
     * 删除产品披露信息
     */
    public function deletedDisclosureInfo($id){
        $productDisClosure = new AProductDisclosureModel;
        $productDisClosure->where(['id'=>1])->save(['isdeleted'=>1]);
        $this->success('删除成功');
    }

    /**
     * 产品状态页面
     */
    public function statusPage($id){
        $productModel = new AProductModel();
        $product = $productModel->find($id);
        if(empty($product)){
            $this->error('没有该产品');
        }
        $isDue = $productModel->isDue();
        $product['dueStatusDes'] = $isDue?'已经到期':'未到期';

        $this->assign('product',$product);
        $this->display();
    }

    /**
     * ajax 上传图片，保存后返回图片路径
     */
    public function uploadProductImg(){
        $upload = new \Think\Upload();
        $return = ['status' => 0, 'msg' => '上传失败！', 'url' => ''];
        $upload->maxSize = 3145728;
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg');
        $upload->rootPath = './Uploads/';
        $upload->savePath = '/product/';
        $info = $upload->upload();
        if (!$info) {
            $this->error($upload->getError());
        } else {
            $return['status'] = 1;
            $return['msg'] = '文件上传成功！';
            $return['url'] = '/Uploads' . $info['file']['savepath'] . $info['file']['savename'];
            $return['filename'] = $info['file']['name'];
        }

        //返回成功信息
        $this->ajaxReturn($return);
    }
	
}