<?php
namespace Workbench\Controller;
use Think\Controller;
use Crm\Model\AFeedbackModel;

class IndexController extends Controller {

	/**
	 * 平台用户首页
	 */
    public function index()
	{
		$feeds = $this->_notReadCount();
		$this->assign('feeds',$feeds);
        $this->display();
    }

    /**
     * 平台用户工作台页面
     */
    public function dashboard()
	{
    	$this->display();
    }
	
	public function _notReadCount()
	{
		$feed = new AFeedbackModel;
		$count = $feed->where("isdone != 1")->count();
		if(!$count) {
			return false;
		}
		$feeds["count"] = $count;
		$data = $feed->where("isdone != 1")->order("createtime DESC")->find();		
		$feeds["time"] = (int)((time()-$data["createtime"])/60);
		
		return $feeds;
	}
}