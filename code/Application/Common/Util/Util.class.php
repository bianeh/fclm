<?php

namespace Common\Util;

class Util {

	/**
	 * 转换搜索字段为where 条件	
	 * params   'id','name','description'
	 * or params ['a.id'=>'id','b_user.name'=>'name','c_user.description'=>'descrpition']
	 * or params 'id',['b_user.name'=>'name']
	 */
	public static function getSearchWhere(){
		$args = func_get_args();
		$where = [];
		foreach($args as $arg){
			if(is_array($arg) && I(current($arg))){
				$where[key($arg)] = I(current($arg));
				continue;
			}
			if(I($arg)){
				$where[$arg] = I($arg);
			}
		}
		return $where;
	}	
}