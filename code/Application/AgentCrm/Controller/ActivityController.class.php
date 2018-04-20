<?php
namespace AgentCrm\Controller;
use Think\Controller;
use AgentCrm\Model\AActivityModel;

class ActivityController extends Controller {
	
	protected $instance = NULL;
	
	public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new AActivityModel;
		}		
	}
	/**
		func: 活动列表
		params: null
	*/
    public function index()
	{	
		$index = [
					"where" => array(
							'agentid' => session(C('AGENT_USER_AUTH_DATA'))['agentid'],
						),
					"order" => "createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
    	$count      = $this->instance->where($index['where'])->count();	
		$Page       = new \Think\Page($count,5);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Pageshow       = $Page->show();		
		$Activity = $this->instance->index($index);
		
		$this->assign('Activity',$Activity);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
	}
	
	/**
		func: 显示添加活动页
		params: null
	*/
	public function addPage()
	{
		return $this->display();
	}
	
	/**
		func: 添加活动
		params: null
	*/
	public function add()
	{
		$data["name"] 		 = I('post.name');
		$data["begintime"]   = strtotime(I('post.begintime'));
		$data["endtime"] 	 = strtotime(I('post.endtime'));
		$data["isforce"] 	 = I('post.isforce');
		$data["content"] 	 = I('post.content');			
		$data["publisher"]   = session(C('AGENT_USER_AUTH_KEY'));
		$data["agentid"]	 = session(C('AGENT_USER_AUTH_DATA'))['agentid'];
		$data["pubishertype"] = 2;
		$data["publishtatus"] = 0;
		$data["notify"] = 5;
		if( I('post.needhelp') ) {
			$data["needhelp"] = I('post.needhelp');	
		}
		
		$status = $this->instance->addActivity($data);
		if($status) {
			return $this->success('添加成功', U('AgentCrm/Activity/index'));
		}			
		else{
			return $this->success('添加失败', U('AgentCrm/Activity/addPage'));
		}
	}
	
	/**
		func: 显示修改活动页
		params: null
	*/
	public function editPage()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('显示失败', U('AgentCrm/Activity/index'));
		}
		$data["find"] = $id;		
		$Activity = $this->instance->showActivity($data);
		if( $Activity=== false) {
			return $this->success('显示失败', U('AgentCrm/Activity/index'));
		}
		$this->assign('activity',$Activity);
		$this->display();
	}
	
	/**
		func: 修改活动
		params: null
	*/
	public function edit()
	{
		$data["id"] = I('post.id');
		$data["name"] 		 = I('post.name');
		$data["begintime"]   = strtotime(I('post.begintime'));
		$data["endtime"] 	 = strtotime(I('post.endtime'));
		$data["isforce"] 	 = I('post.isforce');
		$data["content"] 	 = I('post.content');
		if( I('post.needhelp') ) {
			$data["needhelp"] = I('post.needhelp');	
		}
		
		$status = $this->instance->editActivity($data);
		if($status !== false) {
			return $this->success('修改成功', U('AgentCrm/Activity/index'));
		}			
		else{
			return $this->success('修改失败', U('AgentCrm/Activity/editPage', ['id'=>$data["id"]]));
		}
	}
		
	/**
		func: 查看活动
		params: null
	*/	
	public function view()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('显示失败', U('AgentCrm/Activity/index'));
		}
		$data["find"] = $id;		
		$Activity = $this->instance->view($data);
		if( $Activity=== false) {
			return $this->success('显示失败', U('AgentCrm/Activity/index'));
		}
		$this->assign('activity',$Activity);
		$this->display();
	}
	
	/**
		func: 活动发布
		params: null
	*/
	public function publish()
	{
		return $this->success('加入发送队列, 即将发送...', U('AgentCrm/Activity/index'));
		exit;
		//
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('发送失败', U('AgentCrm/Activity/index'));
		}		
		$data["find"] = $id;
		$status = $this->instance->publishActivity($data);
		if(!$status) {
			return $this->success('发送失败', U('AgentCrm/Activity/index'));
		}
		return $this->success('加入发送队列, 即将发送...', U('AgentCrm/Activity/index'));
	}
}