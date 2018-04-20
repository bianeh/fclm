<?php
namespace AgentCrm\Controller;
use Think\Controller;
use AgentCrm\Model\AgentServiceModel;

class ServiceController extends Controller {
	
	protected $instance = NULL;
	
	public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new AgentServiceModel;
		}		
	}
	/**
		func: 消息列表
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
		$service = $this->instance->index($index);
		
		$this->assign('service',$service);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
	}
	
	/**
		func: 显示添加服务记录页
		params: null
	*/
	public function addPage()
	{
		return $this->display();
	}
	
	/**
		func: 添加服务记录
		params: null
	*/
	public function add()
	{
		$data["note"] 	= I('post.note');
		$data["type"]   = I('post.type');
		$data["customertype"] = 2;			
		$data["servicerid"] = session(C('AGENT_USER_AUTH_KEY'));
		$data["agentid"] = session(C('AGENT_USER_AUTH_DATA'))['agentid'];
		
		$status = $this->instance->addservice($data);
		if($status) {
			return $this->success('添加成功', U('AgentCrm/Service/index'));
		}			
		else{
			return $this->success('添加失败', U('AgentCrm/Service/addPage'));
		}
	}
	
	/**
		func: 显示修改服务页
		params: null
	*/
	public function editPage()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('显示失败', U('AgentCrm/Service/index'));
		}
		$data["find"] = $id;		
		$service = $this->instance->showservice($data);
		if( $service=== false) {
			return $this->success('显示失败', U('AgentCrm/Service/index'));
		}
		$this->assign('service',$service);
		$this->display();
	}
	
	/**
		func: 修改服务记录内容
		params: null
	*/
	public function edit()
	{
		$data["id"] = I('post.id');
		$data["note"] 	= I('post.note');
		$data["type"]   = I('post.type');
		
		$status = $this->instance->editservice($data);
		if($status !== false) {
			return $this->success('修改成功', U('AgentCrm/Service/index'));
		}			
		else{
			return $this->success('修改失败', U('AgentCrm/Service/editPage', ['id'=>$data["id"]]));
		}
	}
}