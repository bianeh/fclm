<?php
namespace Home\Controller;
use Think\Controller;
use Admin\Model\AFeedbackModel;

class IndexController extends Controller {

	/**
	 * 平台用户首页
	 */
    public function index()
	{
        $this->redirect("News/Index");
    }
}