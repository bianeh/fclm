<?php

namespace Crm\Model;
use Think\Model;
use Common\Model\BaseConst;

class AMessageModel extends Model {

	protected $tableName = 'a_message';

	protected $_validate = array(
		['content','require','内容不能为空!'],
   	);
	
	protected $_auto = array ( 
         array('createtime','time',1,'function'),
    );
	
	public function index(Array $index) 
	{
		if(!is_array($index)) {
			return false;
		}
		$message = $this->where($index["where"])
				->order($index["order"])
				->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
				->select();
		return $this->_formatData($message);
	}
	
	
	public function addMessage(Array $message)
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
	
	
	public function showMessage(Array $message)
	{
		$message = $this->find($message["find"]);
		if(empty($message)) {
			return false;
		}
		return $message;
	}
	
	public function editMessage(Array $message)
	{
		if(!is_array($message)) {
			return false;
		}		
		if (!$this->create($message,2)) {
			return false;
		}else{
			return $this->save();
		}
	}
	
	public function sendMessage(Array $message)
	{
		$message = $this->find($message["find"]);
		if(empty($message)) {
			return false;
		}
		$queueMessage['class'] = 100;
		$queueMessage['type']  = 101;
		$queueMessage['reciever']  = $this->_recieverInfo($message);
		$queueMessage['senderid']  = $message['senderid'];
		$queueMessage['messageid'] = $message['id'];
		$queueMessage['message']   = $message['content'];
		$queueMessage['body']      = $message['content'];
		$queueMessage['sendtype']  = $message['sendtype'];		

		$Queue = M('a_message_queue');
		$rules = array ();
		if (!$Queue->auto($rules)->create($queueMessage,1)) {
			return false;
		}else{
			$queue_id = $Queue->add();
			if($queue_id) {
				$updateMessage['status'] = 1;
				$updateMessage['golisttime'] = time();
				$updateMessage['id'] = $message['id'];
				$rules = array();
				$this->auto($rules)->create($updateMessage,2);
				$this->save();
				return true;
			}
			return false;
		}
	}
	
	private function _recieverInfo(Array $message)
	{
		switch($message['levelmatch']) {
			case '0' : $levelmatch = ' = ';
						break;
			case '1' : $levelmatch = ' > ';
						break;
            case '2' : $levelmatch = ' >= ';
						break;
            case '3' : $levelmatch = ' < ';
						break;
			case '4' : $levelmatch = ' <= ';
						break;						
		}
		$user_condition = array(
								'userlevel' => $levelmatch.$message['level'],
							);
		return json_encode($user_condition);
		
	}
	
	public function deleteMessage(Array $message)
	{
		if(!is_array($message)) {
			return false;
		}		
		if (!$this->create($message,2)) {
			return false;
		}else{
			return $this->save();
		}
	}
	/**
		func: 数据格式化
		params: array
	*/
	private function _formatData(Array $data){
		foreach($data as $list) {
			if($list["status"] == 0) {
				$list["status_title"] = "未发送";
			}		
			if($list["status"] == 1) {
				$list["status_title"] = "进入发送队列";
			}
			if($list["status"] == 2) {
				$list["status_title"] = "已发送";
			}
			if($list["sendtime"]) {
				$list["sendtime"] = date("Y-m-d H:i:s", $list["sendtime"]);
			}
			switch($list["level"]) {
				case BaseConst::IFA_LEVEL_1: $list["level_title"] = BaseConst::IFA_LEVEL_1_TITLE;
											break;
				case BaseConst::IFA_LEVEL_2: $list["level_title"] = BaseConst::IFA_LEVEL_2_TITLE;
									        break;
				case BaseConst::IFA_LEVEL_3: $list["level_title"] = BaseConst::IFA_LEVEL_3_TITLE;
									        break;
				case BaseConst::IFA_LEVEL_4: $list["level_title"] = BaseConst::IFA_LEVEL_4_TITLE;
									        break;
				case BaseConst::IFA_LEVEL_5: $list["level_title"] = BaseConst::IFA_LEVEL_5_TITLE;
									        break;
				case BaseConst::IFA_LEVEL_6: $list["level_title"] = BaseConst::IFA_LEVEL_6_TITLE;
									        break;
				default:$list["level_title"]=BaseConst::IFA_LEVEL_0_TITLE;
			}
			$list["time"] = date("Y-m-d H:i:s", $list["createtime"]);
			$ret[] = $list;
		}
		
		return $ret;
	}

}