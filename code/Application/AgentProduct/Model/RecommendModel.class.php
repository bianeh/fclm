<?php

namespace AgentProduct\Model;

use Common\Model\FmProductRecommendModel;

class RecommendModel extends FmProductRecommendModel {

    private $type = 1;  //c推荐给b的

    public function index($where, $Page) {
        $where[] = ['type' => $this->type];
        $lists = $this->field("fm_product_recommend.*,b.username as cusername")->where($where)->join('LEFT JOIN c_user b on b.id=fm_product_recommend.cuserid')->order('fm_product_recommend.id desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        return $lists;
    }

    /**
     * a平台用户标记已读状态
     * @param $id
     * @return bool|string
     */
    public function read($id) {
        $data = [
            'status' => self::STATUS_READ,
            'auserid' => session(C("USER_AUTH_DATA"))['id'],
        ];

        $res = $this->where(['id' => $id])->save($data);
        if ($res !== false) {
            return true;
        } else {
            return $this->getError();
        }
    }

    /**
     * b平台向a推荐产品，添加动作
     * @param $content
     * @return bool|string
     */
    public function addRecord($content) {
        $data = [
            'content' => $content,
            'agentid' => session(C("AGENT_USER_AUTH_DATA"))['agentid'],
            'buserid' => session(C("AGENT_USER_AUTH_DATA"))['id'],
            'type'  =>2,
        ];

        if (!$this->create($data)) {
            return $this->getError();
        }

        if ($this->add() !== false) {
            return true;
        } else {
            return $this->getError();
        }
    }

}