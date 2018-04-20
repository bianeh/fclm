<?php
namespace Trans\Model;
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
	
	public function showOrder(Array $index)
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
	
	public function searchOrder(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}
		
		$order = $this->join('LEFT JOIN a_product ON a_product.id = fm_order.aproductid')
					->where($index["where"])
					->order($index["order"])
					->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
					->field('fm_order.*, a_product.productno')
					->select();
		return $order;
	}
	
	public function countOrder(Array $index)
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
	
	
	public function finishOrder(Array $index)
	{
		if(!is_array($index)) {
			return false;
		}		
		if (!$this->create($index,2)) {
			return false;
		}else{
			return $this->save();
		}
	}
}