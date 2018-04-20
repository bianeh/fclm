<?php

namespace Crm\Model;
use Think\Model;
use Common\Model\BaseConst;

class AFeedbackModel extends Model {

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

		$fetchSendUserData  = $this->_fetchSendUser($feeds);	
		$b_data         	= $this->_getSenderData($fetchSendUserData["b_user"], 2);
		$c_data      		= $this->_getSenderData($fetchSendUserData["c_user"], 1);
		$data = $this->_remergeData($feeds, $b_data, $c_data);
		return $feeds = $this->_formatData($data);
	}
	
	public function showFeed(Array $index)
	{
		$feed = $this->find($index["find"]);
		if(empty($feed)) {
			return false;
		}
		return $feed;
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
		if($search["where"]["phone"] && $search["where"]["createtime"]) {
			$b_sender = $this->table("b_agent_user")
							 ->where("phone = ".$search["where"]["phone"])
							 ->field("id")
							 ->select();
			$c_sender = $this->table("c_user")
							 ->where("phone = ".$search["where"]["phone"])
							 ->field("id")
							 ->select();
			if(!empty($b_sender)) {
				$sendId[] = $b_sender[0]["id"];
			}
			if(!empty($c_sender)) {
				$sendId[] = $c_sender[0]["id"];
			}
			$map['sendid']  	   = array('in', $sendId);			
			$startTime = strtotime($search["where"]["createtime"]);
			$endtime   = $startTime + 86400;
			$map["createtime"] = array(array('gt',$startTime),array('lt',$endtime));		
			return $this->_searchHandle($map, $search);
		}
		
		if($search["where"]["phone"]) {
			$b_sender = $this->table("b_agent_user")
							 ->where("phone = ".$search["where"]["phone"])
							 ->field("id")
							 ->select();
			$c_sender = $this->table("c_user")
							 ->where("phone = ".$search["where"]["phone"])
							 ->field("id")
							 ->select();
			if(!empty($b_sender)) {
				$sendId[] = $b_sender[0]["id"];
			}
			if(!empty($c_sender)) {
				$sendId[] = $c_sender[0]["id"];
			}
			$map['sendid']  	   = array('in', $sendId);
			return $this->_searchHandle($map, $search);
		}
		
		if($search["where"]["createtime"]) {
			$startTime = strtotime($search["where"]["createtime"]);
			$endtime   = $startTime + 86400;
			$map["createtime"] = array(array('gt',$startTime),array('lt',$endtime));		
			return $this->_searchHandle($map, $search);
		}
		
		return false;
	}
	
	private function _searchHandle(Array $map, Array $search)
	{		
		$data["count"] = $this->where($map)->count();
		if(!$data["count"]) {
			return false;
		}			
		$feeds = $this->where($map)
					  ->order($search["order"])
					  ->limit($search["limit"]["firstRow"].','.$search["limit"]["listRows"])
					  ->select();
		$fetchSendUserData  = $this->_fetchSendUser($feeds);			
		$b_data         	= $this->_getSenderData($fetchSendUserData["b_user"], 2);
		$c_data      		= $this->_getSenderData($fetchSendUserData["c_user"], 1);
		$data["feeds"]		= $this->_remergeData($feeds, $b_data, $c_data);
		$data["feeds"]      = $this->_formatData($data["feeds"]);
		return $data;
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
	
	private function _fetchSendUser(Array $data)
	{
		foreach($data as $list) {
			if($list['type'] == 1) { 
				$c_user[] =  $list['sendid'];
			}else{
				$b_user[] = $list['sendid'];
			}
		}
		return $fetchData = ["c_user"=>$c_user, "b_user"=>$b_user];
	}
	
	private function _getSenderData(Array $sender, int $type)
	{		
		if(empty($sender)) {
			return array();
		}
		if($type == 1) {
			$map["id"] = array("in", $sender);
			$data = $this->table('c_user')
			->field('id, username, userlevel, phone')
			->where($map)->select();
		}
		if($type == 2) {
			$map["b_agent_user.id"] = array("in", $sender);
			$data = $this->table('b_agent_user')
			->join('LEFT JOIN b_agent ON b_agent_user.agentid = b_agent.id')
			->where($map)->field('b_agent_user.id, b_agent_user.username, b_agent_user.phone, b_agent.userlevel')->select();			
		}
		return $data;
	}
	
	private function _remergeData(Array $original, Array $b_data, Array $c_data)
	{	
		foreach($original as $list) {
			if($list["type"] == 1 && !empty($c_data)) {
				foreach($c_data as $item) {
					if($item["id"] == $list["sendid"]) {
						$list["level"] = $item["userlevel"];
						$list["phone"] = $item["phone"];
						$list["username"] = $item["username"];
					}
				}			
			}
			if($list["type"] == 2 && !empty($b_data)) {
				foreach($b_data as $item) {
					if($item["id"] == $list["sendid"]) {
						$list["level"] = $item["userlevel"];
						$list["phone"] = $item["phone"];
						$list["username"] = $item["username"];
					}
				}
			}
			$data[] = $list;
		}
		return $data;
	}
	 
	private function _checkArray($arr)
	{
		if(!is_array($arr)) {
			return $msg = [
							"status" => 0,
							"msg"	 => "数据类型不合法",
							];
		}
	}
	
	/**
		func: 数据格式化
		params: array
	*/
	private function _formatData(Array $data){
		foreach($data as $list) {
			if($list["isdone"] == BaseConst::FEEDBACK_NOT_DONE) {
				$list["isdone_title"] = BaseConst::FEEDBACK_NOT_DONE_TITLE;
			}		
			if($list["isdone"] == BaseConst::FEEDBACK_DONE) {
				$list["isdone_title"] = BaseConst::FEEDBACK_DONE_TITLE;
			}
			$list["time"] = date("Y-m-d H:i:s", $list["createtime"]);
			$ret[] = $list;
		}
		return $ret;
	}
	
}