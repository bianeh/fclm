<?php

namespace Auth\Model;
use Common\Model\BAgentUserModel;
use Common\Model\BAgentModel;
use Common\Model\AUserModel;
use Common\Model\ABUserModel;


/**
 * 提供登陆的一系列服务
 * @vestin
 * 2016-9-20
 */
class LoginLogic extends \Think\Model {

	protected $tableName = 'a_b_user';

	private $userBelong;	//用户登陆到哪里去

	/**
	 * 主登陆逻辑
	 */
	public function login($account,$password){
		$this->account = $account;
		$this->password = $password;
		$this->initModels();
		if($this->isPhone()){
            $res = $this->loginByPhone();
        }else{
            $res = $this->loginByEmail();
        }
        return $res;
	}

	/**
	 * 初始化一些需要用到的
	 */
	private function initModels(){
		$this->ABUserModel = new ABUserModel;
		$this->BAgentUserModel = new BAgentUserModel;
		$this->AUserModel = new AUserModel;
	}

	/**
	 * 检测账户是否是手机号码
	 */
	public function isPhone(){
		if(stripos($this->account, '@')){
			return false;
		}else{
			return true;
		}
	}

	/**
	 * 按电话登陆
	 */
	public function loginByPhone(){
		$belong = $this->ABUserModel->getUserBelongByPhone($this->account);
		$this->userBelong = $belong;
		if($belong=='a_user'){
			//a平台登陆逻辑
			$auser = $this->AUserModel->where(['phone'=>$this->account])->find();

			return $this->loginAuser($auser);
		}else{
			//b平台登陆逻辑
			$buser = $this->BAgentUserModel->where(['phone'=>$this->account])->find();

			return $this->loginIFAUser($buser);
		}
	}

	/**
	 * 按邮箱登陆
	 */
	public function loginByEmail(){
		$belong = $this->ABUserModel->getUserBelongByEmail($this->account);
		$this->userBelong = $belong;
		if($belong=='a_user'){
			//a平台登陆逻辑
			$auser = $this->AUserModel->where(['email'=>$this->account])->find();

			return $this->loginAuser($auser);
		}else{
			//b平台登陆逻辑
			$buser = $this->BAgentUserModel->where(['email'=>$this->account])->find();

			return $this->loginIFAUser($buser);
		}
	}

	/**
	 * 登陆检测
	 */
	public function loginIFAUser($buser){
		if(!$buser){
			return '用户不存在';
		}

		//验证密码
		if( $this->BAgentUserModel->getPassword($this->password) != $buser['password'] ){
			return '密码错误';
		}

		//校验有效期
		if($this->isIFAOverTime()){
			//超过有效期
			return '用户超过有效期，请练习管理员';
		}

		//检验用户是否可以登陆
		if(!$this->BAgentUserModel->canLogin()){
			return '用户被冻结，暂不能登陆';
		}

		//检测agent 是否被冻结or没通过审核
		$agentModel = new BAgentModel;
		$agent = $agentModel->where(['id'=>$this->BAgentUserModel->agentid])->find();
		
		if(!$agent){
			return 'IFA 不存在';
		}

		//检测平台是否能被登陆
		if(!$agentModel->canLogin()){
			return 'IFA 平台因未通过审核或被冻结不能登陆';
		}

		$this->saveIFALoginInfo($agentModel);
		return true;
	}

	/**
	 * a登陆检测
	 */
	public function loginAUser($auser){
		if(!$auser){
			return '用户不存在';
		}

		//验证密码
		if( $this->AUserModel->getPassword($this->password) != $auser['password'] ){
			return '密码错误';
		}

		//校验有效期
		if($this->isAOverTime()){
			//超过有效期
			return '用户超过有效期，请练习管理员';
		}

		//检验用户是否可以登陆
		if(!$this->AUserModel->canLogin()){
			return '用户被冻结，暂不能登陆';
		}

		$this->saveALoginInfo();
		return true;
	}

	/**
	 * 判断IFA用户是否超过有效期
	 */

	public function isIFAOverTime(){
		if(time()<$this->BAgentUserModel->validatetime){
			//没有超过有效期
			return false;
		}
		//超过有效期
		return true;
	}

	/**
	 * 判断A用户是否超过有效期
	 */

	public function isAOverTime(){
		if(time()<$this->AUserModel->expiredate){
			//没有超过有效期
			return false;
		}
		//超过有效期
		return true;
	}

	/**
	 * 获取用户跳转登陆成功后的跳转链接
	 */
	public function getLoginRedirect(){
		if($this->userBelong == 'a_user'){
			//跳转到a平台的链接
			return U("Workbench/Index/index");
		}else{
			//跳转到IFA平台的链接
			return U('AgentHome/index/index@'.C("MAIN_DOMAIN"));
		}
	}

	/**
	 * 保存IFA用户登陆的信息
	 */
	public function saveIFALoginInfo($agentModel){
		session(C('AGENT_USER_AUTH_KEY'),$this->BAgentUserModel->id);
		session(C('AGENT_USER_AUTH_DATA'),[
				'id'	=>$this->BAgentUserModel->id,
				'agentid'	=>$this->BAgentUserModel->agentid,
				'username'	=>$this->BAgentUserModel->username,
				'email'		=>$this->BAgentUserModel->email,
				'phone'		=>$this->BAgentUserModel->phone,
				'validatetime'	=>$this->BAgentUserModel->validatetime,
				'cuserid'	=>$agentModel->cuserid,
			]);
		$this->BAgentUserModel->ipaddr = get_client_ip();
		$this->BAgentUserModel->lastlogintime = time();
		$this->BAgentUserModel->save();
	}

	/**
	 * 保存A用户登陆的信息
	 */
	public function saveALoginInfo(){
		session(C('USER_AUTH_KEY'),$this->AUserModel->id);
		session(C('USER_AUTH_DATA'),[
				'id'	=>$this->AUserModel->id,
				'username'	=>$this->AUserModel->username,
				'email'		=>$this->AUserModel->email,
				'phone'		=>$this->AUserModel->phone,
				'validatetime'	=>$this->AUserModel->expiredate,
			]);
		$this->AUserModel->ipaddr = get_client_ip();
		$this->AUserModel->lastlogintime = time();
		$this->AUserModel->save();
	}

	
}