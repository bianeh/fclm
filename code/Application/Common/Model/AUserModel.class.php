<?php

namespace Common\Model;
use Think\Model;

class AUserModel extends Model {

	protected $tableName = 'a_user';

	const STATUS_NORMAL = 1;	//正常
	const STATUS_TEM_FREEZE = 2;	//临时禁用
	const STATUS_FREEZE = 3;	//临时禁用

	/**
   	 * 密码加盐
   	 */
   	public function getPassword($pwd){
   		return md5($pwd.C('PWD_SALT'));
   	}

   	 /**
     * 用户是否可以登陆
     */
    public function canLogin(){
		if($this->status==self::STATUS_NORMAL || $this->status==self::STATUS_TEM_FREEZE){
			return true;
		}

		return false;
    }
}