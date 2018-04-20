<?php
class cate{

    public function __construct()
    {

    }
    public function index()
    {

    }
    /**
     * 递归处理无限极分类问题
     * @param $id
     */
    public function deal( $id = 0 )
{
    $knowledge = M('knowlegecategroy');
    $knowledge = $knowledge -> where(" pid = $id ")->find();
    print_r($knowledge);
    foreach ($knowledge as $key=>$value) {
        $knowledgeid = $knowledge[$key][$id];
        $this->deal($knowledgeid);
    }
}
}