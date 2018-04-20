<?php

namespace Auth\Controller;

use Think\Controller;
use Common\Model\InviteModel;
use Common\Model\BAgentModel;
use Auth\Model\LoginLogic;
use Think\Org\Util\Rbac;
use Think\Org\Util\RbacIFA;

class LoginController extends Controller {

	/**
	 * 注册IFA 平台用户登陆页面
	 */
    public function user()
	{			
		$this->_checkLoged();
        $this->display();
    }
	
	/**
	 * 检查用户是否已登陆
	 */
	public function _checkLoged() {
		if(session(C('USER_AUTH_KEY')) != null ) {
			$this->success("已登陆, 跳转至管理主页", U("Workbench/Index/index"));
			exit();
		}
		
		if(session(C('AGENT_USER_AUTH_KEY')) != null) {
			$this->success("已登陆, 跳转至管理主页", U("AgentHome/Index/index"));
			exit();
		}
	}

    /**
     * 登陆操作
     */
    public function doLogin(){
        $account = I('account');
        $password = I('password');

        $loginLogic = new LoginLogic;
        $res = $loginLogic->login($account,$password);

        if($res === true){
            //登陆成功,跳转到对应页面
			$this->_access();
            return redirect($loginLogic->getLoginRedirect());
        }
        return $this->error($res);
    }
	
	private function _access()
	{
		
		if(session(C('USER_AUTH_KEY')) != null) {
			$Rbac = new \Org\Util\Rbac;	
			return $Rbac::saveAccessList(session(C('USER_AUTH_KEY')));
		}
		
		if(session(C('AGENT_USER_AUTH_KEY')) != null) {
			$RbacIFA = new \Org\Util\RbacIFA;	
			return $RbacIFA::saveAccessList(session(C('AGENT_USER_AUTH_KEY')));
		}
	}

    /**
     * 登出操作
     */
    public function logout(){
        //清空session信息
        session(C('USER_AUTH_KEY'),null);
        session(C('USER_AUTH_DATA'),null);
        session(C('AGENT_USER_AUTH_KEY'),null);
        session(C('AGENT_USER_AUTH_DATA'),null);

        $this->redirect('Auth/Login/user');
    }

}