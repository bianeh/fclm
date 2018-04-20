<?php

namespace Admin\Model;
use Think\Model\RelationModel;

class AUserRoleModel extends RelationModel {
	
	protected $tableName = 'a_role_user';
	
	protected $_link = array(
         'ARole'  =>  array(
             'mapping_type'      =>  self::MANY_TO_MANY,
			 'foreign_key'       =>  'user_id',
			 'relation_foreign_key'  =>  'role_id',
			 'relation_table'    =>  'a_role_user',
			 'mapping_fields' => 'id, name',
         ),
	);
	
	public function addUserRole(Array $userRole)
	{
		if(!is_array($userRole)) {
			return false;
		}		
		if (!$this->create($userRole, 1)) {
			return false;
		}else{
			return $this->addAll($userRole);
		}
	}
	
	public function delUserRole(Array $userRole)
	{
		if(!is_array($userRole)) {
			return false;
		}		
		if($this->where("user_id = ".$userRole["user_id"])->delete() ) {
			return true;
		}else {
			return false;
		}
	}
	
	public function showUserRole(Array $userRole)
	{
		if(!is_array($userRole)) {
			return false;
		}
		$map["user_id"] = $userRole["user_id"];
		$data = $this->where($map)->select();
		if(empty($data)) {
			return false;
		}
		return $data;
	}
}