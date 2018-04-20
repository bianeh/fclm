<?php

namespace Admin\Model;
use Think\Model;

class ARoleModel extends Model {

	protected $tableName = 'a_role';

	protected $_validate = array(

   	);
	
	public function index(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$role = $this->select();
		return $role;
	}
	
	public function addRole(Array $role)
	{
		if(!is_array($role)) {
			return false;
		}		
		if (!$this->create($role, 1)) {
			return false;
		}else{
			return $this->add();
		}
	}
	
	public function showRole(Array $role)
	{
		$role = $this->find($role["find"]);
		if(empty($role)) {
			return false;
		}
		return $role;
	}
	

	public function editRole(Array $role)
	{
		if(!is_array($role)) {
			return false;
		}		
		if (!$this->create($role,2)) {
			return false;
		}else{
			return $this->save();
		}
	}
	
	public function enableRole(Array $role) 
	{
		if(!is_array($role)) {
			return false;
		}		
		if (!$this->create($role,2)) {
			return false;
		}else{
			return $this->save();
		}	
	}
	
	public function disableRole(Array $role) 
	{
		if(!is_array($role)) {
			return false;
		}		
		if (!$this->create($role,2)) {
			return false;
		}else{
			return $this->save();
		}	
	}
	
	public function deleteRole(Array $role)
	{
		
	}
	
	/**
		func: 判断一个角色是否是另一角色的子孙角色
		params: array(
						"subRoleId" 	 => 子孙角色ID
						"roleId"         => 角色ID
					 )
	*/
	public function isSubRole(int $subRoleId, int $roleId)
	{
		$role = $this->showRole(array("find" => $subRoleId));
		if( $role["pid"] ==  $roleId) {
			return true;
		}else {
			if($role["pid"] == 0) {
				return false;
			}else{
				return $this->isSubRole($role["pid"], $roleId);
			}			
		}
	}
}