<?php

namespace Common\Model;
use Think\Model;

class InviteModel extends Model {

   Const TYPE_A_TO_B = 1;  //类型定义
	Const TYPE_B_TO_B = 2;	//类型定义
	Const TYPE_B_TO_C = 3;	//类型定义
   Const TYPE_C_TO_C = 4;  //类型定义

   Const VALIDATE = 86400;  //有效期1天

	protected $tableName = 'invite';

	protected $_validate = array(
      ['credientialno','require','身份证必须填写'],
      ['phone','require','手机号码必须填写'],
      ['email','require','邮箱必须填写'],
      ['credientialno','NUMBER','身份证必须是数字',self::MUST_VALIDATE],
      ['credientialno','18','身份证长度不正确',self::MUST_VALIDATE,'length'],
      ['phone','/^1(3[0-9]|4[57]|5[0-35-9]|7[01678]|8[0-9])\\d{8}$/','手机号码不正确',self::MUST_VALIDATE],
      ['email','email','Email不正确',self::MUST_VALIDATE],
      ['username','require','需要填写姓名',self::MUST_VALIDATE],
   	);

   protected $_auto = array (
   	['createtime','time',self::MODEL_INSERT,'function'],
   );

   /**
    * 根据模型，生成邀请附属信息
    */
   public function genarateInviteInfo(){
      //有效期
      $this->validate = time()+self::VALIDATE;
      //inviteCode
      $this->invitecode = mt_rand(100000,999999);
      //hash
      $this->hash = substr(md5(uniqid()),0,8);
   }

   /**
    * 获取邀请的链接
    */
   public function getInviteLink(){
      switch($this->type){
         //IFA 注册链接
         case self::TYPE_A_TO_B:
         case self::TYPE_B_TO_B:
            return U('Auth/Register/user@'.C('MAIN_DOMAIN'),['passport'=>$this->hash]);
         break;
         //customer 注册链接
         case self::TYPE_B_TO_C:
         case self::TYPE_C_TO_C:
            return U('Auth/Register/user@'.C('MAIN_DOMAIN'),['passport'=>$this->hash]);
         break;
      }
   }

   /**
    * 检测被邀请用户是否已注册
    */
   public function isRegisted(){
      //有被邀请id，说明已注册
      if($this->invitedid!=null){
         return true;  
      }
      return false;
   }

   /**
    * 检测是否超过有效期
    */
   public function isOverTime(){
      if(time()<$this->validate){
         return false;
      }
      return true;
   }

   /**
    * 检测验证码是否正确
    */
   public function isInviteCodeRight($code){
      if(!isset($this->id)){
         return false;
      }

      if($this->invitecode!=$code){
         return false;
      }

      return true;
   }

   /**
    * 检测用户可否注册IFA
    */
   public function canRegisterIFA(){
      if($this->type == self::TYPE_A_TO_B ||
         $this->type == self::TYPE_B_TO_B){
         return true;
      }
      return false;
   }

   /**
    * 检查用户注册信息是否匹配
    * @param $phone
    * @param $email
    * @param $credientialno
    * @return bool
    */
   public function userInfoCheck($name,$phone,$email,$credientialno){
      if($this->username != $name || $this->phone != $phone || $this->email!=$email || $this->credientialno != $credientialno){
         return false;
      }else{
         return true;
      }
   }


}