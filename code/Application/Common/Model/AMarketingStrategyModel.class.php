<?php

namespace Common\Model;
use Think\Model;
use Common\Model\AMarketingStrategyItemModel as Item;
use Common\Model\AMarketingStrategyRelationModel as Relation;

class AMarketingStrategyModel extends Model {

	protected $tableName = 'a_marketing_strategy';

	protected $_validate = array(
		['name','','策略已存在',self::EXISTS_VALIDATE,'unique',self::MODEL_BOTH],	//新增的时候验证email
		['name','require','需要填写策略名称'],
      ['description','require','没有添加描述'],
		/*['createuser','require','创建人需要添加',self::MUST_VALIDATE],
		['createuserid','require','创建人需要添加',self::MUST_VALIDATE],
		['updateuser','require','修改人需要添加',self::EXISTS_VALIDATE,'',self::MODEL_INSERT],
		['updateuserid','require','修改人需要添加',self::EXISTS_VALIDATE,'',self::MODEL_INSERT],*/
   	);

   	protected $_auto = array (
   		['createtime','time',self::MODEL_INSERT,'function'],
   		['updatetime','time',self::MODEL_UPDATE,'function'],
     );

   	/**
	 * 修改关系 1 删除原有对应关系，2添加新的对应关系
   	 * @param id ,int
   	 * @param items array strategyitems
   	 * return Boolean
   	 */
   	public function changeRelation($id,Array $items){
   		$relationModel = new Relation;
   		$relationModel->where(['strategyid'=>$id])->delete();
   		$data = [];
   		foreach($items as $itemid){
   			$data[] = ['strategyid'=>$id,'itemid'=>$itemid];
   		}

   		$res = $relationModel->addAll($data);
   		return !!$res;
   	}

      /**
       * 获取策略组对应的策略项列表
       * @param id strategyid
       * @return array list 
       */
      public function getStrategyItemsList($id=null){
         if($id===null){
            $id = $this->id;
         }

         $relationModel = new Relation;
         $itemlist = $relationModel->where(['strategyid'=>$id])->getField('itemid',true);
         return $itemlist;
      }

      /**
       * 获取策略组对应的策略项列表 + 内容详情
       * @param id strategyid
       * @return array list 
       */
      public function getStrategyItemsListDetail($id=null){
         $itemlist = $this->getStrategyItemsList($id);
         if(empty($itemlist)){
            return false;
         }

         $itemModel = new Item;
         $itemDetails = $itemModel->where(['id'=>['in',$itemlist]])->select();
         return $itemDetails;
      }

}