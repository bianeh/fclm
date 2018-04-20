<?php
namespace AgentCrm\Controller;
use Think\Controller;
use AgentCrm\Model\AgentFeedbackModel;

class FeedbackController extends Controller {
	
	protected $instance = NULL;
	
	public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new AgentFeedbackModel;
		}		
	}
	
	/**
		func: 我的意见反馈列表
		params: null
	*/
	public function index()
	{
		$index = [
					"where" => array(
							'sendid' => session(C("AGENT_USER_AUTH_KEY")),
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
		$feeds = $this->instance->index($index);
		$this->assign('feeds',$feeds);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
	}
	
	/**
		func: 标记已读
		params: array
	*/
	public function markRead()
	{
		// TODO数据过滤
		$request = I('post.request');
		$update = $this->instance->markRead($request);
		if($update) {
			$ret = array("status"=>"1", "msg"=>"操作成功！");
			echo json_encode($ret);
		}else{
			$ret = array("status"=>"0", "msg"=>"操作失败！");
			echo json_encode($ret);
		}
		return;
	}
	
	/**
		func: 反馈页面
		params: array
	*/
	public function addPage()
	{
		return $this->display();
	}
	
	/**
		func: 反馈提交
		params: null
	*/
	public function add()
	{
		$data["content"] = I('post.content');
		$data["sendid"]  = session(C("AGENT_USER_AUTH_KEY"));
		$data["recieveid"]  = 1;
		$data["type"] = 2;
		$data['createtime'] = time();
		
		$status = $this->instance->addFeedback($data);
		if($status) {
			return $this->success('添加成功', U('AgentCrm/Feedback/index'));
		}			
		else{
			return $this->success('添加失败', U('AgentCrm/Feedback/addPage'));
		}
	}
	
	/**
		func: 客户意见反馈列表
		params: null
	*/
    public function indexCustomer()
	{	
		$index = [
					"where" => array(
							'a_feedback.agentid' => session(C("AGENT_USER_AUTH_DATA"))['agentid'],
						),
					"order" => "a_feedback.createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
    	$count      = $this->instance->where($index["where"])->count();	
		$Page       = new \Think\Page($count,5);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Pageshow       = $Page->show();
		$feeds = $this->instance->indexCustomer($index);
		$this->assign('feeds',$feeds);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
	}
	
	
	/**
		func: 搜索查询
		params: array
	*/
	public function search()
	{
		if( !I('get.phone') && !I('get.createtime') ) {
			return $this->indexCustomer();
		}
		$data['c_user.phone']  = I('get.phone');
		$data['a_feedback.createtime'] = I('get.createtime');
		$search = [
					"where" => $data,
					"order" => "a_feedback.createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
		$feeds      = $this->instance->searchFeed($search);
		$count      = $this->instance->searchCount($search);
		$Page       = new \Think\Page($count,5);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Pageshow       = $Page->show();
		$this->assign('feeds',$feeds);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
	}
	
	
	/**
		func: 处理意见反馈
		params: array
	*/
	public function handle()
	{
		// TODO数据过滤	
		$request = I('post.request');
		$update = $this->instance->handle($request);
		if($update) {
			$ret = array("status"=>"1", "msg"=>"操作成功！");
			echo json_encode($ret);
		}else{
			$ret = array("status"=>"0", "msg"=>"操作失败！");
			echo json_encode($ret);
		}
		return;
	}
	
	public function replyPage()
	{
		$data["find"]    = I('get.id');		
		$feed = $this->instance->showFeed($data["find"]);
		if($feed === false) {
			return $this->success('显示失败', U('AgentCrm/Feedback/index'));
		}
		$this->assign('feeds',$feed);
		$this->display();
	}
	
	
	public function reply()
	{
		$data["replycontent"] = I('post.replycontent');
		$data["id"] 		  = I('post.id');
		$data["replyid"]	  = session(C("AGENT_USER_AUTH_KEY"));
		$data["replytime"]	  = time();
		$data["isdone"]	  	  = 1;
		$status = $this->instance->replyFeed($data);
		if($status !== false) {
			return $this->success('回复成功', U('AgentCrm/Feedback/indexCustomer'));
		}			
		else{
			return $this->success('回复失败', U('AgentCrm/Feedback/replyPage', ['id'=>$data["id"]]));
		}
	}
}