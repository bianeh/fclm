<?php

namespace Admin\Model;
use Think\Model\RelationModel;

class AAccessModel extends RelationModel {

	protected $tableName = 'a_access';

	protected $_validate = array(

   	);
	
	protected $_link = array(
         'ANode'  =>  array(
             'mapping_type'      =>  self::MANY_TO_MANY,
			 'foreign_key'       =>  'role_id',
			 'relation_foreign_key'  =>  'node_id',
			 'relation_table'    =>  'a_access',
			 'mapping_fields' 	 => 'id, name',
         ),
	);
	
	public function parentAccessNode(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$SQL = "SELECT b.* FROM a_access as a LEFT JOIN  a_node as b
				ON a.node_id = b.id
				WHERE a.role_id = ".$index["role_id"];
				
		$accessNode = $this->query($SQL);
		return $accessNode;
	}
	
	public function accessNode(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$SQL = "SELECT b.* FROM a_access as a LEFT JOIN  a_node as b
				ON a.node_id = b.id
				WHERE a.role_id = ".$index["role_id"];
				
		$accessNode = $this->query($SQL);
		return $accessNode;
	}

	public function addAccess(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$addAccess = $index["accessList"];
		$number = $this->addAll($addAccess);
		if($number) {
			return $number;
		}
		return false;
	}

	public function deleteAccess(int $role_id)
	{
		$this->where("role_id =".$role_id)->delete();
		$count = $this->where('role_id='.$role_id)->count();
		if($count) {
			return false;
		}
		return true;
	}
}