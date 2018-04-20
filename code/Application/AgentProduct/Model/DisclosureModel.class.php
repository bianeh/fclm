<?php

namespace AgentProduct\Model;
use Think\Model;
use Common\Model\AProductDisclosureModel;
use AgentProduct\Model\BAgentProductModel;

class DisclosureModel extends Model {

	protected $tableName = 'b_agent_product_disclosure';

	protected $_validate = array(
      ['comment','require','披露说明必须填写',self::EXISTS_VALIDATE],
      ['agentid','require','agentid必须填写',self::EXISTS_VALIDATE],
      ['aproductdisclosureid','require','产品id必须填写',self::EXISTS_VALIDATE],
    );

	protected $_auto = array (
		['createtime','time',self::MODEL_INSERT,'function'],
        ['agentid','getAgentId',self::MODEL_INSERT,'callback'],
    );

    public function getAgentId(){
        return session(C("AGENT_USER_AUTH_DATA"))['agentid'];
    }

    /**
     * 根据产品id， 获取产品披露信息列表
     */
    public function getDisclosureList($id){
        return $this->where(['productid'=>$id,'isdeleted'=>0])->select();
    }

    /**
     * @param $id返回产品所有的产品披露信息和解读
     */
    public function allInfo($id){
        $product = (new BAgentProductModel())->getProductById($id);
        $aProductId = $product['productid'];

        $aProductDisclosureModel = new AProductDisclosureModel();
        $infos = $aProductDisclosureModel->getAllDisclosureInfo($aProductId,session(C("AGENT_USER_AUTH_DATA"))['agentid']);
        return $infos;
    }


    /**
     * 添加产品披露信息附加信息动作
     * @param $aProductDisclosureId
     * @param $agentid
     * @param $comment
     * @return bool
     */
    public function addDisclosureInfo($aProductDisclosureId,$agentId,$comment){
        $this->where(['aproductdisclosureid'=>$aProductDisclosureId,'agentid'=>$agentId])->delete();
        $data = [
            'aproductdisclosureid'=>$aProductDisclosureId,
            'agentid'   =>$agentId,
            'commennt'  =>$comment
        ];

        if(!$this->create()){
            return $this->getError();
        }
        if($this->add()){
            return true;
        }else{
            return $this->getError();
        }
    }

    /**
     * 获取记录的详细信息
     * @param $id
     * @return mixed
     */
    public function getDisclosureInfoById($id){
        return $this->where( ['agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid'],'id'=>$id] )->find();
    }

    /**
     * 编辑动作
     * @param $id
     * @param $comment
     * @return bool|string
     */
    public function edit($id,$comment){
        $data = $this->getDisclosureInfoById($id);
        if(empty($data)){
            return '没有此记录';
        }
        $data['comment'] = $comment;
        $data['createtime'] = time();
        if(!$this->create($data)){
            return $this->getError();
        }

        if($this->save()!==false){
            return true;
        }
        return $this->getError();

    }

}