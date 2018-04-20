<?php
namespace Trans\Model;
use Think\Model;

class ContractModel extends Model {

	protected $tableName = 'fm_contracts';

	protected $_validate = array(
		
   	);
	
	public function makeContract($index)
	{
		$contract = array(
				'contractsno' => 'HT'.date('YmdHis').rand(0,999),
				'firstparty'  => $index['firstparty'],
				'firstpartytype'=> $index['firstpartytype'],
				'firstparty'  => $index['secondparty'],
				'firstpartytype'=> $index['secondpartytype'],
				'orderno'  => $index['orderno'],
				'status'=> 0,
				'createtime'  => time(),
			);
		
		if(!$this->create($contract, 1)) {
			return false;
		}else{
			return $this->add();
		}
	}
	
	public function index(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$contracts = $this->where($index["where"])
						->order($index["order"])
						->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
						->select();
		return $contracts;
	}
	
	public function showContract(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$contract = $this->where($index)->find();
		return $contract;
	}
	
	public function searchContract(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		
		$contract = $this->where($index["where"])
					->order($index["order"])
					->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
					->select();
		return $contract;
	}
	
	public function markStatus(Array $index)
	{
		$data['status'] = $index['status'];
		if(!$this->create($data, 2)) {
			return false;
		}else{
			return $this->save();
		}		
	}
}