<?php

namespace Sysset\Model;
use Think\Model;

class ADomainModel extends Model {

    protected $tableName = 'a_domain';

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
     * 添加申请域名到域名管理列表中
     */
    public function adddomain(Array $domain)
    {
        if(!is_array($domain)) {
            return false;
        }
        if (!$this->create($domain, 1)) {
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
    /**
     *
     */
    public function checkapply($id)
    {
        if(!$id)
        {
            return false;
        }
        else{
            $result = $this -> where("agentid = $id")->find();
           return $result;
        }
    }

}