<?php

namespace Common\Model;
use Think\Model;

class ABUserModel extends Model {

	Const A_USER = 'a_user';
	Const B_AGENT_USER = 'b_agent_user';

	protected $tableName = 'a_b_user';

	/**
	 * 获取用户归属那个平台
	 * return 'a_user' or 'b_agent_user';
	 */
	public function getUserBelongByPhone($phone){
		$user = $this->findUserByPhone($phone);	
		return $this->getBelong($user);
	}

	/**
	 * 获取用户归属那个平台
	 * return 'a_user' or 'b_agent_user';
	 */
	public function getUserBelongByEmail($email){
		$user = $this->findUserByEmail($email);	
		return $this->getBelong($user);
	}


	/**
	 * 根据用户获取归属
	 */
	public function getBelong($user){
		if(!$user){
			//没有找到用户
			return false;
		}

		switch ($user['flag']) {
			case self::A_USER:
				return self::A_USER;
				break;
			case self::B_AGENT_USER:
				return self::B_AGENT_USER;
				break;
			default:
				return false;
				break;	
		}
	}

	/**
	 * 从视同中找用户
	 */
	public function findUserByPhone($phone){
		return $this->where(['phone'=>$phone])->find();
	}

	/**
	 * 从视同中找用户
	 */
	public function findUserByEmail($email){
		return $this->where(['email'=>$email])->find();
	}

	/**
	 * 手机号码是否存在
	 */
	public function isPhoneExists($phone){
		return (Boolean)$this->findUserByPhone($phone);
	}

	/**
	 * 手机号码是否存在
	 */
	public function isEmailExists($email){
		return (Boolean)$this->findUserByEmail($email);
	}

}