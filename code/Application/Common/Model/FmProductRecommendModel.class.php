<?php

namespace Common\Model;

use Think\Model;

class FmProductRecommendModel extends Model {

    Const TYPE_C_TO_B = 1;  //c推荐给b的
    Const TYPE_B_TO_A = 2;  //b推荐给a的

    Const STATUS_INIT = 0;  //初始化状态
    COnst STATUS_READ = 1;  //已读状态

    protected $tableName = 'fm_product_recommend';

    protected $_validate = [
    ];

    protected $_auto = [
        ['createtime', 'time', self::MODEL_INSERT, 'function']
    ];
}