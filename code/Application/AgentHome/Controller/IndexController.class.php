<?php
namespace AgentHome\Controller;
use Think\Controller;
class IndexController extends Controller {

	/**
	 * 平台用户首页
	 */
    public function index(){
    	$userinfo = session(C("AGENT_USER_AUTH_DATA"));
    	$username = $userinfo['username'];
    	$this->assign('username',$username);
        $this->display();
    }

    /**
     * 平台用户工作台页面
     */
    public function dashboard(){
    	//$this->display();
    }
}