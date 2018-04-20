<?php

namespace AgentCrm\Model;
use Think\Model;
use Common\Model\BaseConst;

class AgentServiceModel extends Model {

	protected $tableName = 'fm_service';

	protected $_validate = array(
		['note','require','内容不能为空!'],
   	);
	
	protected $_auto = array ( 
         array('createtime','time',1,'function'),
    );
	
	public function index(Array $index) 
	{
		if(!is_array($index)) {
			return false;
		}
		$service = $this->where($index["where"])
				->order($index["order"])
				->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
				->select();
		return $service;
	}
	
	
	public function addservice(Array $service)
	{
		if(!is_array($service)) {
			return false;
		}		
		if (!$this->create($service,1)) {
			return false;
		}else{
			return $this->add();
		}
	}
	
	
	public function showservice(Array $service)
	{
		$service = $this->find($service["find"]);
		if(empty($service)) {
			return false;
		}
		return $service;
	}
	
	public function editservice(Array $service)
	{
		if(!is_array($service)) {
			return false;
		}		
		if (!$this->create($service,2)) {
			return false;
		}else{
			return $this->save();
		}
	}
}