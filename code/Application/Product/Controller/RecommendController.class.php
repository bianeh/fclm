<?php
namespace Product\Controller;
use Think\Controller;
use Common\Util\Util;
use Product\Model\RecommendModel;

class RecommendController extends Controller {
	
    public function index(){
        $where = Util::getSearchWhere();

        $recommendModel = new RecommendModel();
        $count      = $recommendModel->where($where)->count();// 查询满足要求的总记录数

        $Page       = new \Think\Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $Page->setConfig('theme',C("PAGE_THEME"));
        $show       = $Page->show();// 分页显示输出
        $lists = $recommendModel->index($where,$Page);

        $this->assign('lists',$lists);// 赋值数据集
        $this->assign('page',$show);// 赋值分页输出
        $this->display(); // 输出模板
    }


    /**
     * 标记推荐信息为已读
     * @param $id int 标记id
     */
    public function read($id){
        $recommendModel = new RecommendModel();
        $ret = $recommendModel->read($id);
        if($ret!==true){
            $this->error($ret);
        }else{
            $this->success('标记已读成功');
        }
    }
	
}