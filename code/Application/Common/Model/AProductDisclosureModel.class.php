<?php

namespace Common\Model;
use Think\Model;

class AProductDisclosureModel extends Model {

	protected $tableName = 'a_product_disclosure';

	protected $_validate = array(
      ['path','require','需要上传披露文件',self::EXISTS_VALIDATE],
      ['name','require','披露文件描述必须填写',self::EXISTS_VALIDATE],
      ['productid','require','产品id必须填写',self::EXISTS_VALIDATE],
   );

	protected $_auto = array (
		['createtime','time',self::MODEL_INSERT,'function'],
        ['isdeleted','0',self::MODEL_INSERT],
   );

   /**
    * 根据产品id， 获取产品披露信息列表
    */
   public function getDisclosureList($productId){
      return $this->where(['productid'=>$productId,'isdeleted'=>0])->select();
   }

    public function getAllDisclosureInfo($productId,$agentId){
        return $this->field('a_product_disclosure.*,b.id as bid,b.comment,b.createtime as bcreatetime')
            ->where(['productid'=>$productId,'isdeleted'=>0])
            ->join('LEFT JOIN b_agent_product_disclosure as b on b.aproductdisclosureid=a_product_disclosure.id and agentid='.$agentId)
            ->select();
    }

}