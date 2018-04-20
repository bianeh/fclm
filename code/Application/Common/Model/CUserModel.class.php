<?php

namespace Common\Model;
use Think\Model;

class CUserModel extends Model {

	protected $tableName = 'c_user';

	protected $_validate = array(
		['username','require','客户姓名必须填写!'],
		['email','/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/','Email不正确'],
		['email','','Email已存在',self::EXISTS_VALIDATE,'unique',self::MODEL_INSERT],	//新增的时候验证email
		['phone','number','手机号码不正确'],
		['phone','','手机已存在',self::EXISTS_VALIDATE,'unique',self::MODEL_INSERT],	//新增的时候验证phone
		['status',[0,1,2,3,4],'值的范围不正确'],
		['password','6,18','密码需在6-18位',self::EXISTS_VALIDATE,'length']
   	);

   	protected $_auto = array ( 
   		['status',0],
   		['createtime','time',self::MODEL_INSERT,'function'],
        ['password','getPassword',3,'callback'] , // 对password字段在新增和编辑的时候使md5函数处理
     );

   	/**
   	 * 密码加盐
   	 */
   	public function getPassword($pwd){
   		return md5($pwd.C('PWD_SALT'));
   	}

   	/**
   	 * 给agent用户添加附属customer账户
   	 */
   	public function addAgentSubAccount($agentModel){
   		$data = [
   			'phone'	=>$agentModel->phone,
   			'email'	=>$agentModel->email,
   			'credientialnu'	=>$agentModel->credientialnu,
   			'username'	=>$agentModel->username,
   			'password'	=>'123456',
   			'agentid'	=>$agentModel->id,
   			'isbelongtoagent'	=>1,	//属于agent
   		];
   		$this->create($data);
   		return $this->add();
   	}

   	/**
   	 * 手动添加customer账户
   	 */
   	public function addNewCustomer(){
   		if(!$this->create()){
   			return $this->getError();
   		}

   		if($this->add()){
   			return true;
   		}else{
   			return '添加失败';
   		}
   	}

}