<?php

namespace Admin\Model;
use Think\Model;

class ANodeModel extends Model {

	protected $tableName = 'a_node';

	protected $_validate = array(

   	);
	
	public function index(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$node = $this->order("sort")->select();
		return $node;
	}
	

	
	public function deleteNode(Array $node)
	{
		
	}
}