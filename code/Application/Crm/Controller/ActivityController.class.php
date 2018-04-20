<?php
namespace Crm\Controller;
use Think\Controller;
use Crm\Model\AActivityModel;

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
					"where" => "agentid is null",
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
		$data["publisher"] = session(C('USER_AUTH_KEY'));
		$data["pubishertype"] = 1;
		$data["publishtatus"] = 0;
		$data["notify"] = 5;
		
		$status = $this->instance->addActivity($data);
		if($status) {
			return $this->success('添加成功', U('Crm/Activity/index'));
		}			
		else{
			return $this->success('添加失败', U('Crm/Activity/addPage'));
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
			return $this->success('显示失败', U('Crm/Activity/index'));
		}
		$data["find"] = $id;		
		$Activity = $this->instance->showActivity($data);
		if( $Activity=== false) {
			return $this->success('显示失败', U('Crm/Activity/index'));
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
		
		$status = $this->instance->editActivity($data);
		if($status !== false) {
			return $this->success('修改成功', U('Crm/Activity/index'));
		}			
		else{
			return $this->success('修改失败', U('Crm/Activity/editPage', ['id'=>$data["id"]]));
		}
	}
	
	/**
		func: 活动发布
		params: null
	*/
	public function publish()
	{
		return $this->success('加入发送队列, 即将发送...', U('Crm/Activity/index'));
		exit;
		//===
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('发送失败', U('Crm/Activity/index'));
		}		
		$data["find"] = $id;
		$status = $this->instance->publishActivity($data);
		if(!$status) {
			return $this->success('发送失败', U('Crm/Activity/index'));
		}
		return $this->success('加入发送队列, 即将发送...', U('Crm/Activity/index'));
	}
	
	/**
		func: IFA申请的活动
		params: null
	*/
	public function indexIFA()
	{
		$index = [
					"where" => "fm_activity.agentid is not null",
					"order" => "fm_activity.createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
    	$count      = $this->instance->where($index['where'])->count();	
		$Page       = new \Think\Page($count,5);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Pageshow       = $Page->show();		
		$Activity = $this->instance->indexIFA($index);
		
		$this->assign('Activity',$Activity);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
	}
	
	/**
		func: 查看IFA活动
		params: null
	*/	
	public function viewIFA()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('显示失败', U('Crm/Activity/indexIFA'));
		}
		$data["find"] = $id;		
		$Activity = $this->instance->viewIFA($data);
		if( $Activity=== false) {
			return $this->success('显示失败', U('Crm/Activity/indexIFA'));
		}
		$this->assign('activity',$Activity);
		$this->display();
	}
	
	/**
		func: 审核
		params: null
	*/
	public function approveIFA()
	{
		$data["id"]    = I('post.id');
		$data["approvestatus"]   = I('post.approvestatus');
		$data["approvenote"]   = I('post.approvenote');
		
		$status = $this->instance->approveIFA($data);
		if($status !== false) {
			return $this->success('修改成功', U('Crm/Activity/indexIFA'));
		}			
		else{
			return $this->success('修改失败', U('Crm/Activity/viewIFA', ['id'=>$data["id"]]));
		}
	}
		
}