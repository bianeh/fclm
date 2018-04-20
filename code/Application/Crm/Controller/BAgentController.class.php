<?php
namespace Crm\Controller;
use Think\Controller;

use Think\Model;
use Common\Model\BAgentModel;
use Common\Model\BAgentConst;
use Common\Model\InviteModel;
use Common\Model\ABUserModel;
use Common\Util\Util;

use AgentAdmin\Model\BAgentAttachmentModel;

class BAgentController extends Controller {

	/**
	 * IFA列表
	 */
	public function index(){

    	$where = Util::getSearchWhere('id','phone');

    	$AgentModel = new BAgentModel;
    	$count      = $AgentModel->count();// 查询满足要求的总记录数
    	$passCount = $AgentModel->where([
    			'reviewstatus'=>[
    						'not in',[BAgentConst::REVIEW_INIT,BAgentConst::REVIEW_NOTPASS]
    					]
    				])->count();	//查询通过审核的用户总数

		$Page       = new \Think\Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$agents = $AgentModel->where($where)->order('createtime')->limit($Page->firstRow.','.$Page->listRows)->select();

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
     * 添加IFA会员页面
     */
    public function addPage(){
    	$this->display();
    }

    /**
     * 添加IFA会员动作
     */
    public function add(){
    	$phone = I('phone');
    	$email = I('email');
    	$aBUserModel = new ABUserModel;
    	if($aBUserModel->isPhoneExists($phone)){
    		$this->error('已存在用户电话');
    	}
    	if($aBUserModel->isEmailExists($email)){
    		$this->error('已存在用户邮箱');
    	}
    	$bAgentModel = new BAgentModel;
    	$result = $bAgentModel->addNewAgent();
    	if($result === true){
    		$this->success('添加用户成功');
    	}else{
    		$this->error($result);
    	}

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
	 * IFA审核页面
	 */
	public function review($id){
		$agent = $this->findUser($id);

		//TODO:: 查找该用户下的资产记录
		$BAgentAttachmentModel = new BAgentAttachmentModel;
		$imgs = $BAgentAttachmentModel->findUsersReviewImgs($id);
		foreach($imgs as &$img){
			if($img['type']==1){
				$img['typename'] = '身份证';
			}
			if($img['type']==2){
				$img['typename'] = '企业唯一信用证';
			}
		}

		$this->assign('reviewImgs',$imgs);
		$this->assign('agent',$agent);
		$this->assign('title','用户审核');
		$this->display();
	}

	/**
	 * 修改用户信息
	 */
	public function edit(){
		$agent = new BAgentModel;
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
		$agent->reviewstatus = BAgentConst::REVIEW_PASS;
		if( $agent->save() !== false ){
			$this->success('审核成功','/Crm/BAgent/index');
		}else{
			$this->error('操作错误');
		}

    }

    /**
	 * 用户审核不通过
	 */
    public function reviewNotPass($id){
		$agent = $this->findUser($id);
		$agent->reviewnote = I('reviewnote');
		$agent->reviewstatus = BAgentConst::REVIEW_NOTPASS;
		if( $agent->save() !== false ){
			$this->success('操作成功','/Crm/BAgent/index');
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
		$agent = new BAgentModel;
		$res = $agent->find($id);
		if(!$res){
			$this->error('没有此用户');
		}

		return $agent;
    }

    /**
     * 邀请bagent注册页面
     */
    public function inviteUser(){
    	$this->display();
    }

    /**
     * 提交邀请资料页面
	 * TODO:: 添加通知方式
     */
    public function doInvite(){
    	$inviteModel = new InviteModel;
    	if(!$inviteModel->create()){
    		$this->error($inviteModel->getError());
    	}
    	$inviteModel->type = InviteModel::TYPE_A_TO_B;
    	$inviteModel->genarateInviteInfo();
    	$insertId = $inviteModel->add();
    	if($insertId){
    		$inviteModel->find($insertId);
    		$link = $inviteModel->getInviteLink();
    		$this->assign('link',$link);
    		$this->display();
    	}else{
    		$this->error('操作出错');
    	}
    }

}