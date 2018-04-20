<?php
namespace AgentCrm\Model;

use Think\Model;

class AActivityModel extends Model {

	protected $tableName = 'fm_activity';

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
		$Activity = $this->where($index["where"])
				->order($index["order"])
				->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
				->select();
		return $Activity;
	}
	
	
	public function addActivity(Array $Activity)
	{
		if(!is_array($Activity)) {
			return false;
		}		
		if (!$this->create($Activity,1)) {
			return false;
		}else{
			return $this->add();
		}
	}
	
	
	public function showActivity(Array $Activity)
	{
		$Activity = $this->find($Activity["find"]);
		if(empty($Activity)) {
			return false;
		}
		return $Activity;
	}
	
	public function editActivity(Array $Activity)
	{
		if(!is_array($Activity)) {
			return false;
		}
		if (!$this->create($Activity,2)) {
			return false;
		}else{
			return $this->save();
		}
	}
	
	public function publishActivity(Array $Activity)
	{
		$activity = $this->find($Activity["find"]);
		if(empty($activity)) {
			return false;
		}
		$queueMessage['class'] = 100;
		$queueMessage['type']  = 101;
		$queueMessage['reciever']  = json_encode(array('userlevel' => '>= 1'));
		$queueMessage['senderid']  = $activity['publisher'];
		$queueMessage['messageid'] = $activity['id'];
		$queueMessage['message']   = $activity['content'];
		$queueMessage['body']      = $activity['content'];
		$queueMessage['sendtype']  = 6;		

		$Queue = M('a_message_queue');
		$rules = array ();
		if (!$Queue->auto($rules)->create($queueMessage,1)) {
			return false;
		}else{
			$queue_id = $Queue->add();
			if($queue_id) {
				return true;
			}
			return false;
		}
	}

	
	public function view(Array $Activity)
	{
		$Activity = $this->join("LEFT JOIN b_agent ON fm_activity.agentid = b_agent.id")
				->field('fm_activity.*, b_agent.username, b_agent.phone')
				->where("fm_activity.id =".$Activity["find"])
				->find();
				
		if(empty($Activity)) {
			return false;
		}
		return $Activity;
	}
}