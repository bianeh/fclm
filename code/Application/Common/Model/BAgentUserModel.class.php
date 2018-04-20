<?php

namespace Common\Model;
use Think\Model;
use Common\Model\BAgentModel;

class BAgentUserModel extends Model {

  const STATUS_REGISTER = 0;//用户刚刚注册时的状态
  const STATUS_PASS = 1;//用户通过审核，可用
  const STATUS_NOTPASS = 2;//用户没有通过审核，不可用
  const STATUS_FREEZE = 3;//用户被冻结，不可用
  const STATUS_UNFREEZE = 4; //用户取消冻结，可用

	protected $tableName = 'b_agent_user';

	protected $_validate = array(
		['username','require','用户名必须!'],
		['email','/^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/','Email不正确'],
		['email','','Email已存在',self::EXISTS_VALIDATE,'unique',self::MODEL_INSERT],	//新增的时候验证email
		['phone','number','手机号码不正确'],
		['phone','','手机已存在',self::EXISTS_VALIDATE,'unique',self::MODEL_INSERT],	//新增的时候验证phone
		['status',[0,1,2,3,4],'值的范围不正确'],
   	);

   	protected $_auto = array ( 
   		['status',1],
        ['password','getPassword',3,'callback'] , // 对password字段在新增和编辑的时候使md5函数处理
        ['createtime','time',self::MODEL_INSERT,'function'] ,
        ['validatetime','addValidatetime',self::MODEL_INSERT,'callback'],	//在新增的时候添加validatetime
     );

   	/**
   	 * 密码加盐
   	 */
   	public function getPassword($pwd){
   		return md5($pwd.C('PWD_SALT'));
   	}

   	/**
   	 * 添加账户有效期 ，1年
   	 */
   	public function addValidatetime(){
   		return time()+86400*365;
   	}

   	/**
   	 * 创建主用户
   	 */
   	public function addMainAgentUser(BAgentModel $bAgentModel,$password){
   		$data['agentid'] = $bAgentModel->id;
   		$data['username'] = $bAgentModel->username;
   		$data['email'] = $bAgentModel->email;
   		$data['phone'] = $bAgentModel->phone;
   		$data['password'] = $password;
   		$this->create($data);
   		return $this->add();
   	}

    /**
     * 用户是否可以登陆
     */
    public function canLogin(){
      if($this->status==self::STATUS_PASS || $this->status==self::STATUS_UNFREEZE){
        return true;
      }

      return false;
    }

}