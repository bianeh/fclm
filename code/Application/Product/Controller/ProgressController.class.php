<?php
namespace Product\Controller;
use Think\Controller;
use Common\Model\AProductDisclosureModel;
use Common\Model\ProductCatagroyModel;
use Common\Model\AProductModel;
use Common\Util\Util;

class ProgressController extends Controller {
	
    public function index(){
        $where = Util::getSearchWhere(['a_product.productno'=>'productno'],['a_product.name'=>'name']);
        $where[] = ['productstatus'=>AProductModel::PRODUCT_STATUS_UP];
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
            $product['usedShare'] = $aProductModel->getUsedShare($product['id']);
            $product['progress'] = !!$product['share']?($product['usedShare']/$product['share'] * 100):0;
        }

        $this->assign('totalProducts',$count);
        $this->assign('products',$products);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->display(); // 输出模板
    }
	
}