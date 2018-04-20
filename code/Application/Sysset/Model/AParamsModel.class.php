<?php

namespace Sysset\Model;
use Think\Model;

class AParamsModel extends Model {

    protected $tableName = 'param';

    protected $_validate = array(

    );


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
    /**
     * 添加参数极其内容
    */
    public function addNumber(Array $number)
    {
        if(!is_array($number)) {
            return false;
        }
        if (!$this->create($number, 1)) {
            return false;
        }else{
            return $this->add();
        }
    }


/**
 * 对参数数据进行编辑
 * 参数是数组
 */
    public function editParam(Array $data)
    {
        if(!is_array($data)) {
            return false;
        } else{
            $id = $data['id'];
            return $this->where("id = $id")->save($data);
        }
    }


    /**
     *删除参数信息数据方法
     * 参数$id
     */
    public function deleteNuminfo($id)
    {
        if(!$id)
        {
            return false;
        }
        else{
            $data['isdeleted'] = 1;
            $result = $this -> where("id = $id")->save($data);
            return $result;
        }
    }

}