<?php

namespace Train\Model;
use Think\Model;

class ARiskquestionsModel extends Model {

    protected $tableName = 'questionsrisk';

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

    /**风险承受测试题库添加题目
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

    /**批量删除风险承受测试题库题目
     * @param $ids
     * @return bool
     */
    public function delete2($ids) {
        $str = implode(',', $ids);
        return $this->where('id IN('.$str.')')->save(['isdeleted' => '1']);
    }

}