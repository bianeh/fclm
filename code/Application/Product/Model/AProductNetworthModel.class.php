<?php

namespace Product\Model;
use Think\Model;

class AProductNetworthModel extends Model {

	protected $tableName = 'a_product_networth';

	protected $_validate = array(
	);

	protected $_auto = [
		  ['createtime','time',self::MODEL_INSERT,'function'],
      ['createuser','getUser',self::MODEL_INSERT,'callback'],
      ['createuserid','getUserid',self::MODEL_INSERT,'callback'],
      ['updatetime','time',self::MODEL_UPDATE,'function'],
      ['updateuser','getUser',self::MODEL_UPDATE,'callback'],
      ['updateuserid','getUserid',self::MODEL_UPDATE,'callback'],
	];

   /**
    * 获取操作人的姓名
    */
   public function getUser(){
      return session(C("USER_AUTH_DATA"))['username'];
   }

   /**
    *  获取操作人的id
    */
   public function getUserid(){
      return session(C("USER_AUTH_KEY"));
   }
}