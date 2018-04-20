<?php
namespace AgentCrm\Controller;
use Think\Controller;

use Common\Model\CUserModel;
use Common\Model\BAgentConst;
use Common\Util\Util;

class CustomerController extends Controller {

	/**
	 * c customer 列表页面
	 */
    public function index(){
    	$where = Util::getSearchWhere(['c_user.id'=>'id'],['c_user.phone'=>'phone']);
    	$where['c_user.agentid'] = session(C("AGENT_USER_AUTH_DATA"))['agentid'];

    	$userModel = new CUserModel;
    	$count      = $userModel->where([
    			'agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid']])->count();// 查询满足要求的总记录数
    	$passCount = $userModel->where([
    			'agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid'],
    			'status'=>[
    						'not in',[BAgentConst::STATUS_REGISTER,BAgentConst::STATUS_NOTPASS]
    					]
    				])->count();	//查询通过审核的用户总数

		$Page       = new \Think\Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$agents = $userModel->field(['c_user.*','b_agent.username'=>'busername'])->where($where)->join('b_agent on b_agent.id=c_user.agentid')->order('c_user.createtime')->limit($Page->firstRow.','.$Page->listRows)->select();

		foreach($agents as &$agent){
			$agent['createtime'] = date('Y-m-d H:i:s',$agent['createtime']);
			$agent['statusDes'] = BAgentConst::getDes($agent['status']);
		}

		$this->assign('totalAgents',$count);
		$this->assign('totalPassAgents',$passCount);
		$this->assign('agents',$agents);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display(); // 输出模板
    }

    /**
     * 添加用户页面
     */
    public function testAdd(){
    	$this->display();
    }

    /**
     * 添加用户动作
     */
    public function doTestAdd(){
    	$userModel = new CUserModel;
    	if(!$userModel->create()){
    		$this->error($userModel->getError());
    	}

    	$res = $userModel->add();
    	if($res){
	    	$this->success('添加成功');
    	}
    	$this->error($userModel->getError());
    }

    /**
	 * 查看用户详情
	 */
	public function userDetail($id){
		$agent = $this->findUser($id);

		//TODO:: 查找该用户下的资产记录

		$this->assign('agent',$agent);
		$this->assign('title','用户详情');
		$this->display();
	}

	/**
	 * 修改用户信息
	 */
	public function edit(){
		$agent = new CUserModel;
		if(!$agent->create()){
			$this->error($agent->getError());
		}

		$res = $agent->save();
		if($res===false){
			$this->error($agent->getError());
		}

		$this->success('修改成功');

	}

	/**
	 * 用户审核通过
	 */
    public function reviewPass($id){
    	$agent = $this->findUser($id);
		$agent->status = BAgentConst::STATUS_PASS;
		if( $agent->save() !== false ){
			$this->success('审核成功');
		}else{
			$this->error('操作错误');
		}

    }

    /**
	 * 用户审核不通过
	 */
    public function reviewNotPass($id){
		$agent = $this->findUser($id);
		$agent->status = BAgentConst::STATUS_NOTPASS;
		if( $agent->save() !== false ){
			$this->success('操作成功');
		}else{
			$this->error('操作错误');
		}

    }

    /**
	 * 用户冻结
	 */
    public function freeze($id){
		$agent = $this->findUser($id);
		$agent->status = BAgentConst::STATUS_FREEZE;
		if( $agent->save() !== false ){
			$this->success('操作成功');
		}else{
			$this->error('操作错误');
		}

    }

    /**
	 * 用户取消冻结
	 */
    public function unFreeze($id){
		$agent = $this->findUser($id);
		if($agent->status != BAgentConst::STATUS_FREEZE){
			$this->error('操作错误');
		}
		$agent->status = BAgentConst::STATUS_UNFREEZE;
		if( $agent->save() !== false ){
			$this->success('操作成功');
		}else{
			$this->error('操作错误');
		}

    }

    /**
     * 获取用户模型
     */
    private function findUser($id){
		$agent = new CUserModel;
		$res = $agent->find($id);
		if(!$res){
			$this->error('没有此用户');
		}

		return $agent;
    }
}