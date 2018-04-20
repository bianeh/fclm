<?php

namespace Product\Model;
use Common\Model\FmProductRecommendModel;

class RecommendModel extends FmProductRecommendModel {

    private $type = 2;  //b推荐给a的

    public function index($where,$Page){
        $where[] = ['type'=>$this->type];
        $lists = $this->field("fm_product_recommend.*,b.username as bagentname,c.username as busername")->where($where)
            ->join('LEFT JOIN b_agent as b on b.id=fm_product_recommend.agentid')
            ->join('LEFT JOIN b_agent_user c on c.id=fm_product_recommend.buserid')
            ->order('fm_product_recommend.id desc')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        return $lists;
    }

    /**
     * a平台用户标记已读状态
     * @param $id
     * @return bool|string
     */
    public function read($id){
        $data = [
            'status'=>self::STATUS_READ,
            'auserid'=>session(C("USER_AUTH_DATA"))['id'],
        ];

        $res = $this->where(['id'=>$id])->save($data);
        if($res !== false){
            return true;
        }else{
            return $this->getError();
        }
    }

}