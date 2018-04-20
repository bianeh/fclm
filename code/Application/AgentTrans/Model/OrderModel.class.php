<?php
namespace AgentTrans\Model;
use Think\Model;

class OrderModel extends Model {

	protected $tableName = 'fm_order';

	protected $_validate = array(

   	);
	
	public function index(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$orders = $this->join('LEFT JOIN a_product ON a_product.id = fm_order.aproductid')
						->where($index["where"])
						->order($index["order"])
						->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
						->field('fm_order.*, a_product.productno')
						->select();
		return $orders;
	}
	
	public function showMyOrder(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$order = $this->join('LEFT JOIN a_product ON a_product.id = fm_order.aproductid')
					->where($index)
					->field('fm_order.*, a_product.productno, a_product.name')
					->find();
		return $order;
	}
	
	public function showCustomerOrder(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$order = $this->join('LEFT JOIN a_product ON a_product.id = fm_order.aproductid')
					->where($index)
					->field('fm_order.*, a_product.productno, a_product.name')
					->find();
		return $order;
	}
	
	public function searchMyOrder(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$startTime = strtotime($index["where"]["fm_order.createtime"]);
		$endtime   = $startTime + 86400;
		$index["where"]["fm_order.createtime"] = array(array('gt',$startTime),array('lt',$endtime));			
		$order = $this->join('LEFT JOIN a_product ON a_product.id = fm_order.aproductid')
					->where($index["where"])
					->order($index["order"])
					->field('fm_order.*, a_product.productno, a_product.name')
					->select();
		return $order;
	}
	
	public function searchCustomerOrder(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		$startTime = strtotime($index["where"]["fm_order.createtime"]);
		$endtime   = $startTime + 86400;
		
		$index["where"]["fm_order.createtime"] = array(array('gt',$startTime),array('lt',$endtime));			
		$order = $this->join('LEFT JOIN a_product ON a_product.id = fm_order.aproductid')
					->where($index["where"])
					->order($index["order"])
					->field('fm_order.*, a_product.productno, a_product.name')
					->select();
		return $order;
	}
	
	public function countMyOrder(Array $index)
	{
		$totalCountWhere 	= array("buyerid"=> $index["fm_order.buyerid"]);
		$unpayCountWhere 	= array("status" => 0, "buyerid"=> $index["fm_order.buyerid"]);
		$payedCountWhere 	= array("status" => 1, "buyerid"=> $index["fm_order.buyerid"]);
		$invalidCountWhere  = array("status" => 2, "buyerid"=> $index["fm_order.buyerid"]);
		
		$count["totalCount"] = $this->where($totalCountWhere)->count();
		$count["unpayCount"] = $this->where($unpayCountWhere)->count();
		$count["payedCount"] = $this->where($payedCountWhere)->count();
		$count["invalidCountCount"] = $this->where($invalidCountWhere)->count();
		
		if(empty($count)) {
			return false;
		}
		return $count;
	}
	
	public function countCustomerOrder(Array $index)
	{
		unset($index['fm_order.status']);
		$count["totalCount"] = $this->where($index)->count();
		
		$index['fm_order.status'] = 0;
		$count["unpayCount"] = $this->where($index)->count();
		
		$index['fm_order.status'] = 1;
		$count["payedCount"] = $this->where($index)->count();
		
		$index['fm_order.status'] = 2;
		$count["invalidCountCount"] = $this->where($index)->count();
		
		if(empty($count)) {
			return false;
		}
		return $count;
	}
	
}