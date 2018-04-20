<?php

namespace Train\Model;
use Think\Model;
class ARiskinviteModel extends Model {

    protected $tableName = 'b_agent_user';

    protected $_validate = array(
    );

    /**
     * @param array $index
     * @return bool
     */
    public function index(Array $index)
    {
        if(!is_array($index)) {
            return false;
        }
        $users = $this->where($index["where"])
            ->order($index["order"])
            ->limit($index["limit"]["firstRow"].','.$index["limit"]["listRows"])
            ->select();
        return $users;
    }

    /**添加题目
     * @param array $question
     * @return bool|mixed
     */
    public function addquestion(Array $question)
    {
        if(!is_array($question)) {
            return false;
        }
        if (!$this->create($question, 1)) {
            return false;
        }else{
            return $this->add();
        }
    }

    /**批量删除题目
     * @param $ids
     * @return bool
     */
    public function invite($ids) {
        foreach( $ids as $v )
        {
            $id = $v;
            $res = $this->where(" id = $id ")->find();
            $agentid = $res['agentid'];
            $inviteid  = session(C('USER_AUTH_DATA'))['id'];
            $data['agentid'] = $agentid;
            $data['inviteid'] = $inviteid;
            $data['type'] = 1;
            $data['invitedid'] = $id;
            $data['createtime'] = strtotime(date('Y-m-d H:i:s',time()));
            $rquestioninvite = M('question_invite');
            $rquestioninvite ->add($data);
        }
        $str = implode(',', $ids);
        return $this->where('id IN('.$str.')')->save(['riskinvited' => '1']);
    }

}