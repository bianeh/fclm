<?php

namespace Admin\Model;
use Think\Model;

class AUserModel extends Model {

	protected $tableName = 'a_user';

	protected $_validate = array(

   	);

   	protected $_auto = [
   		['password','getPassword',self::MODEL_INSERT,'callback'],
		['createtime','time','1','function'],
   	];

   	public function getPassword($pwd){
   		return md5($pwd.C('PWD_SALT'));
   	}
	
	public function index(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$users = $this->where($index["where"])
				->order($index["order"])
				->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
				->select();
		return $users;
	}
	
	public function addUser(Array $user)
	{
		if(!is_array($user)) {
			return false;
		}		
		if (!$this->create($user, 1)) {
			return false;
		}else{
			return $this->add();
		}
	}
	
	public function showUser(Array $user)
	{
		$user = $this->find($user["find"]);
		if(empty($user)) {
			return false;
		}
		return $user;
	}
	

	public function editUser(Array $user)
	{
		if(!is_array($user)) {
			return false;
		}		
		if (!$this->create($user,2)) {
			return false;
		}else{
			return $this->save();
		}
	}
	
	public function enableUser(Array $user) 
	{
		if(!is_array($user)) {
			return false;
		}		
		if (!$this->create($user,2)) {
			return false;
		}else{
			return $this->save();
		}	
	}
	
	public function temporaryDisableUser(Array $user) 
	{
		if(!is_array($user)) {
			return false;
		}		
		if (!$this->create($user,2)) {
			return false;
		}else{
			return $this->save();
		}	
	}
	
	public function disableUser(Array $user) 
	{
		if(!is_array($user)) {
			return false;
		}		
		if (!$this->create($user,2)) {
			return false;
		}else{
			return $this->save();
		}	
	}
	
	public function deleteUser(Array $user)
	{
		if(!is_array($user)) {
			return false;
		}		
		if (!$this->create($user,2)) {
			return false;
		}else{
			return $this->save();
		}
	}
}