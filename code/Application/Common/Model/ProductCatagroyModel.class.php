<?php

namespace Common\Model;
use Think\Model;

class ProductCatagroyModel extends Model {

	 protected $tableName = 'a_product_catagroy_a';

   /**
    * 获取一级分类列表
    */
   public function getAList(){
     return $this->select();
   }

   /**
    * 根据a，获取b级分类
    */
   public function getBList($a_id){
    if(empty($a_id)){
      return [];
    }
    $abRelationModel = M('AProductCatagroyRelationAb');
    return $abRelationModel->where(['a_id'=>$a_id])->join('LEFT JOIN a_product_catagroy_b ON a_product_catagroy_b.id=a_product_catagroy_relation_ab.b_id')->select();
   }

   /**
    * 根据a b，获取c级分类
    */
   public function getCList($a_id,$b_id){
    if(empty($a_id)){
      return [];
    }
    $abRelationModel = M('AProductCatagroyRelationBc');
    return $abRelationModel->where(['a_id'=>$a_id,'b_id'=>$b_id])->join('LEFT JOIN a_product_catagroy_c ON a_product_catagroy_c.id=a_product_catagroy_relation_bc.c_id')->select();
   }

}