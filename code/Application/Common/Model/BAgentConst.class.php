<?php

namespace Common\Model;

class BAgentConst {

	const STATUS_NORMAL = 1;//用户刚刚注册时的状态
	const STATUS_FREEZE = 3;//用户被冻结，不可用
	const STATUS_UNFREEZE = 4; //用户取消冻结，可用

	const REVIEW_INIT = 0;	//待审核状态
	const REVIEW_PASS	= 1;//用户通过审核，可用
	const REVIEW_NOTPASS = 2;//用户没有通过审核，不可用

	public static function getDes($value){
		switch ($value){
			case self::STATUS_NORMAL :
				return '正常';
				break;
			case self::STATUS_FREEZE :
				return '被冻结';
				break;
			case self::STATUS_UNFREEZE :
				return '结束冻结';
				break;
		}
	}

}