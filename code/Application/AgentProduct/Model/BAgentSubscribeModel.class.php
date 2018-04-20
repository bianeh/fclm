<?php

namespace AgentProduct\Model;

use Think\Model;
use Common\Model\AProductDisclosureModel;
use AgentProduct\Model\BAgentProductModel;

class BAgentSubscribeModel extends Model {

    protected $tableName = 'b_agent_subscribe';

    protected $_validate = array(
        ['productid', 'require', '披露说明必须填写', self::EXISTS_VALIDATE],
        ['agentid', 'validateAgentId', '用户错误', self::EXISTS_VALIDATE, 'function'],
        ['status','validateStatus','参数错误',self::EXISTS_VALIDATE,'function']
    );

    protected $_auto = array(
        ['createtime', 'time', self::MODEL_INSERT, 'function'],
        ['updatetime', 'time', self::MODEL_UPDATE, 'function'],
        ['status', 1, self::MODEL_INSERT],
        ['agentid', 'getAgentId', self::MODEL_INSERT, 'callback'],
        ['userid', 'getUserId', self::MODEL_BOTH, 'callback'],
    );

    /**
     * 验证status参数
     * @param $status
     * @return bool
     */
    public function validateStatus($status){
        if( $status !== 1 || $status !== 0 ){
            return false;
        }else{
            return true;
        }
    }

    /**
     * 验证agentid
     */
    public function validateAgentId($agentid) {
        if ($agentid !== session(C("AGENT_USER_AUTH_DATA"))['agentid']) {
            return true;
        } else {
            return false;
        }
    }

    public function getUserId() {
        return session(C("AGENT_USER_AUTH_DATA"))['id'];
    }

    public function getAgentId() {
        return session(C("AGENT_USER_AUTH_DATA"))['agentid'];
    }

    public function edit($productid,$status) {
        $agentid = session(C("AGENT_USER_AUTH_DATA"))['agentid'];
        $res = $this->where(['productid'=>$productid,'agentid'=>$agentid])->find();
        if(empty($res)){
            return $this->addRecord($productid,$status);
        }

        $res['status'] = $status;
        return $this->saveRecord($res);
    }

    /**
     * 没有用户的订阅记录，增加订阅记录
     * @param $productid
     * @param $status
     * @return bool|string
     */
    public function addRecord($productid,$status){
        //add
        $data = ['agentid'=>$agentid,'productid'=>$productid,'status'=>$status];
        if(!$this->create($data)){
            return $this->getError();
        }
        if($this->add()){
            return true;
        }else{
            return $this->getError();
        }
    }

    /**
     * 用户修改订阅，保存修改的订阅状态
     * @param $res
     * @return bool|string
     */
    public function saveRecord($res){
        if(!$this->create($res)){
            return $this->getError();
        }

        if($this->save()!== false){
            return true;
        }else{
            return $this->getError();
        }
    }

    /**
     * b平台 产品订阅列表页面
     */
    public function index($where,$Page){
        $where[] = ['agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid']];
        $lists = $this->field('b_agent_subscribe.*,b.name,b.productno')->where($where)->join('LEFT JOIN a_product as b on b_agent_subscribe.productid=b.id ')->order('b_agent_subscribe.id')->limit($Page->firstRow . ',' . $Page->listRows)->select();

        return $lists;
    }

    /**
     *  返回产品是否被agent订阅
     * @param $aproductid int a产品id
     */
    public function isSubscribe($aproductid){
        $res = $this->where(['agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid'],'productid'=>$aproductid])->find();
        if(empty($res) || $res['status']!=1){
            return false;
        }else{
            return true;
        }
    }

}