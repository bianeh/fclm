<?php
namespace Crm\Controller;
use Think\Controller;
use Crm\Model\AFeedbackModel;

class FeedbackController extends Controller {
	
	protected $instance = NULL;
	
	public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new AFeedbackModel;
		}		
	}
	/**
		func: 意见反馈列表
		params: null
	*/
    public function index()
	{	
    	$count      = $this->instance->where("1")->count();	
		$Page       = new \Think\Page($count,5);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Pageshow       = $Page->show();		
		$index = [
					"where" => "1",
					"order" => "createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
		$feeds = $this->instance->index($index);
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
			return $this->index();
		}
		$data['phone']  = I('get.phone');
		$data['createtime'] = I('get.createtime');
		$search = [
					"where" => $data,
					"order" => "createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
		$feeds = $this->instance->searchFeed($search);
		$count      = $feeds["count"];
		$Page       = new \Think\Page($count,5);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Pageshow       = $Page->show();
		$this->assign('feeds',$feeds["feeds"]);
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
			return $this->success('显示失败', U('Crm/Feedback/index'));
		}
		$this->assign('feeds',$feed);
		$this->display();
	}
	
	
	public function reply()
	{
		$data["replycontent"] = I('post.replycontent');
		$data["id"] 		  = I('post.id');
		$data["replyid"]	  = session(C("USER_AUTH_KEY"));
		$data["replytime"]	  = time();
		$data["isdone"]	  	  = 1;
		$status = $this->instance->replyFeed($data);
		if($status !== false) {
			return $this->success('回复成功', U('Crm/Feedback/index'));
		}			
		else{
			return $this->success('回复失败', U('Crm/Feedback/replyPage', ['id'=>$data["id"]]));
		}
	}
}