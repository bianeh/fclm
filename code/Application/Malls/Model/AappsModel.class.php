<?php

namespace Malls\Model;
use Think\Model;

class AappsModel extends Model {

    protected $tableName = 'fm_application';

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

}