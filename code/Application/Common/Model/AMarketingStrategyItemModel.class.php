<?php

namespace Common\Model;
use Think\Model;

class AMarketingStrategyItemModel extends Model {

	Const TYPE_DISCOUNT = 1;	//类型定义 打折
	Const TYPE_CASH = 2;	//类型定义 反现金

	protected $tableName = 'a_marketing_strategy_item';

	protected $_validate = array(
		['name','','策略项已存在',self::EXISTS_VALIDATE,'unique',self::MODEL_BOTH],	//新增的时候验证email
		['type','require','需要填写主策略项类别'],
		['value','require','需要设置策略项值'],
		['name','require','需要填写策略项名称'],
   		['description','require','没有添加描述'],
   	);

   	protected $_auto = array (
   		['createtime','time',self::MODEL_INSERT,'function'],
     );

   	/**
   	 * 格式化输出item 的 type 和value
   	 */
   	public function formatType($item){
   		switch($item['type']){
   			case self::TYPE_DISCOUNT :
   				$item['typeDes'] = '打折';
   				$item['valueDes'] = $this->formatDiscountValue($item['value']);
   				break;
   			case self::TYPE_CASH :
   				$item['typeDes'] = '返现金';
   				$item['valueDes'] = $this->formatCashValue($item['value']);
   				break;
   		}
   		return $item;
   	}

   	/**
   	 * 格式化打折value
   	 */
   	public function formatDiscountValue($value){
   		return $value.'折';
   	}

   	/**
   	 * 格式化返现value
   	 */
   	public function formatCashValue($value){
   		return '返现'.$value.'元';
   	}
}