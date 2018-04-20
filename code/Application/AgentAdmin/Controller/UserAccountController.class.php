<?php
namespace AgentAdmin\Controller;
use Think\Controller;

use Common\Model\BAgentModel;
use Common\Util\Util;

class UserAccountController extends Controller {

	/**
	 * c customer 列表页面
	 */
    public function index(){
    	$agentid = session(C('AGENT_USER_AUTH_DATA'))['agentid'];
    	$bAgentModel = new BAgentModel;
    	$agent = $bAgentModel->find($agentid);


    	$this->assign('agent',$agent);
		$this->display(); // 输出模板
    }

}