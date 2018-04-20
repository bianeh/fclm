<?php
namespace Home\Controller;
use Think\Controller;

class AuthController extends Controller {
	
    public $template;
	
	public function __construct()
	{
		parent::__construct();
		return $this->template = 'Templates@'.session(C('AGENT_TEMP_KEY'));
	}
		
    public function login()
	{
		return $this->display($this->template.'/Home/Auth/login');
	}
	
	/**
	func: 处理登陆
	*/
	public function doLogin()
	{
		
	}
	
	/**
	func: 生成验证码
	*/
	private function _makeCode()
	{
		
	}

	/**
	func：验证验证码
	*/
	private function _verifyCode()
	{
		
	}
	
	// 暂时并无注册功能，以下忽略
	//==============
	public function register()
	{
		
	}
	
	public function doRegister()
	{
		
	}

}