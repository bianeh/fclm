<?php

namespace AgentCrm\Model;
use Think\Model;
use Common\Model\BaseConst;

class AgentFeedbackModel extends Model {

	protected $tableName = 'a_feedback';

	protected $_validate = array(
		['content','require','内容不能为空!'],
   	);
	
	public function index(Array $index) 
	{
		if(!is_array($index)) {
			return false;
		}
		$feeds = $this->where($index["where"])
				->order($index["order"])
				->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
				->select();
		return $feeds;
	}
	
	public function markRead(Array $handle)
	{
		if(!is_array($handle)) {
			return false;
		}
		$map["id"] = array("in", $handle);
		$ret = $this->where($map)->setField('isread',1);
		if(is_int($ret)) {
			return true;
		}else {
			return false;
		}
	}
	
	public function addFeedback(Array $message)
	{
		if(!is_array($message)) {
			return false;
		}		
		if (!$this->create($message,1)) {
			return false;
		}else{
			return $this->add();
		}
	}
	
	public function indexCustomer(Array $index) 
	{
		if(!is_array($index)) {
			return false;
		}
		$feeds = $this->join("LEFT JOIN c_user ON a_feedback.sendid = c_user.id")
				->where($index["where"])
				->order($index["order"])
				->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
				->field('a_feedback.*, c_user.username, c_user.phone, c_user.userlevel')
				->select();
		return $feeds;
	}

	
	public function replyFeed(Array $index)
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
	
	public function searchFeed(Array $search)
	{
		if(!is_array($search)) {
			return false;
		}
		if(!$search["where"]["a_feedback.createtime"]) {
			unset($search["where"]["a_feedback.createtime"]);
		}
		
		if(!$search["where"]["c_user.phone"]) {
			unset($search["where"]["c_user.phone"]);
		}
		
		if($search["where"]["a_feedback.createtime"]) {
			$startTime = strtotime($search["where"]["a_feedback.createtime"]);
			$endtime   = $startTime + 86400;
			$search["where"]["a_feedback.createtime"] = array(array('gt',$startTime),array('lt',$endtime));		
		}
		
		$feeds = $this->join("LEFT JOIN c_user ON a_feedback.sendid = c_user.id")
				->where($search["where"])
				->order($search["order"])
				->limit($search["limit"]["firstRow"].','.$search["limit"]["listRows"])
				->field('a_feedback.*, c_user.username, c_user.phone, c_user.userlevel')
				->select();
		return $feeds;
	}
	
	
	public function searchCount(Array $search)
	{
		if(!is_array($search)) {
			return false;
		}
		if(!$search["where"]["a_feedback.createtime"]) {
			unset($search["where"]["a_feedback.createtime"]);
		}
		
		if(!$search["where"]["c_user.phone"]) {
			unset($search["where"]["c_user.phone"]);
		}
		
		if($search["where"]["a_feedback.createtime"]) {
			$startTime = strtotime($search["where"]["a_feedback.createtime"]);
			$endtime   = $startTime + 86400;
			$search["where"]["a_feedback.createtime"] = array(array('gt',$startTime),array('lt',$endtime));		
		}
		
		$count =  $this->join("LEFT JOIN c_user ON a_feedback.sendid = c_user.id")
				->where($search["where"])
				->count();
		return $count;
	}
	
	
	public function handle(Array $handle)
	{
		if(!is_array($handle)) {
			return false;
		}
		$map["id"] = array("in", $handle);
		$ret = $this->where($map)->setField('isdone',1);
		if(is_int($ret)) {
			return true;
		}else {
			return false;
		}
	}
	
	public function showFeed(Array $index)
	{
		$feed = $this->find($index["find"]);
		if(empty($feed)) {
			return false;
		}
		return $feed;
	}
	
}