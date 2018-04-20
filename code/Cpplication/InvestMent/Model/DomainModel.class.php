<?php
namespace Home\Model;
use Think\Model;

class DomainModel extends Model {

	protected $tableName = 'a_domain';

	protected $_validate = array(

   	);
	
	public function findAgent(Array $index)
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
	
	
	
}