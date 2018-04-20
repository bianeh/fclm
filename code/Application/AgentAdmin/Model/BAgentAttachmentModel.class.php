<?php

namespace AgentAdmin\Model;
use Think\Model;

class BAgentAttachmentModel extends Model {

	protected $tableName = 'b_agent_attachment';

	const TYPE_ID = 1;	//身份证
	const TYPE_COMPANY_ID = 2;	//企业唯一信用代码照

  protected $_auto = [
    ['createtime','time',self::MODEL_INSERT,'function'],
  ];

  /**
   * 找出用户上传的审核图片文件
   */
  public function findUsersReviewImgs($agent){
    $res = $this->where(
        [
          'agentid'=>$agent,
          'type'=>[
            'in',
            [self::TYPE_ID,self::TYPE_COMPANY_ID]
          ]
        ]
        )->select();
    return $res;
  }

  /**
   * 对IFA用户 添加审核图片
   */
  public function addNewFile($agentid,$type,$imgurl){
    $data = [
      'agentid'=>$agentid,
      'type'  =>$type,
      'path'=>$imgurl,
    ];
    $this->create($data);
    $res = $this->add();
    if($res){
      return true;
    }else{
      return false;
    }
  }
}