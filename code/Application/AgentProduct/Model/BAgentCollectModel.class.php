<?php

namespace AgentProduct\Model;

use Think\Model;

class BAgentCollectModel extends Model {

    protected $tableName = 'b_agent_collect';

    protected $_validate = array(
        ['productid', 'require', '披露说明必须填写', self::EXISTS_VALIDATE],
        ['agentid', 'validateAgentId', '用户错误', self::EXISTS_VALIDATE, 'function']
    );

    protected $_auto = array(
        ['createtime', 'time', self::MODEL_INSERT, 'function'],
        ['agentid', 'getAgentId', self::MODEL_INSERT, 'callback'],
        ['userid', 'getUserId', self::MODEL_BOTH, 'callback'],
    );

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

    /**
     * 取消收藏
     * @param $productid
     * @return bool|string
     */
    public function deleteRecord($productid) {
        $agentid = session(C("AGENT_USER_AUTH_DATA"))['agentid'];
        $res = $this->where(['productid' => $productid, 'agentid' => $agentid])->delete();
        if ($res !== false) {
            return true;
        } else {
            return $this->getError();
        }
    }

    /**
     * 没有用户的订阅记录，增加订阅记录
     * @param $productid
     * @param $status
     * @return bool|string
     */
    public function addRecord($productid) {
        //add
        $data = ['agentid' => $agentid, 'productid' => $productid];
        if (!$this->create($data)) {
            return $this->getError();
        }
        if ($this->add()) {
            return true;
        } else {
            return $this->getError();
        }
    }

    /**
     * b平台 产品收藏列表页面
     */
    public function index($where, $Page) {
        $where[] = ['agentid' => session(C("AGENT_USER_AUTH_DATA"))['agentid']];
        $lists = $this->field('b_agent_collect.*,b.name,b.productno')->where($where)->join('LEFT JOIN a_product as b on b_agent_collect.productid=b.id ')->order('b_agent_collect.id')->limit($Page->firstRow . ',' . $Page->listRows)->select();

        return $lists;
    }

    /**
     *  返回产品是否被agent订阅
     * @param $aproductid int a产品id
     */
    public function isCollected($aproductid) {
        $res = $this->where([
            'agentid' => session(C("AGENT_USER_AUTH_DATA"))['agentid'],
            'productid' => $aproductid
        ])->find();
        if (empty($res)) {
            return false;
        } else {
            return true;
        }
    }

}