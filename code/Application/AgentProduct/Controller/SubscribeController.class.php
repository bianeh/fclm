<?php
namespace AgentProduct\Controller;

use Common\Model\AProductModel;
use AgentProduct\Model\BAgentProductModel;
use Think\Controller;
use Common\Util\Util;
use AgentProduct\Model\BAgentSubscribeModel;

class SubscribeController extends Controller {

    /**
     * b平台 订阅列表页面
     */
    public function index() {
        //按产品编号查询
        $productno = I('param.productno');
        if(!empty($productno)){
            $productModel = new AProductModel();
            $product = $productModel->getProdctByProductNo($productno);
            if($product){
                $where[] = ['productid'=>$product['id']];
            }
        }

        $where[] = ['agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid']];
        $subscribeModel = new BAgentSubscribeModel();
        $count = $subscribeModel->where(['agentid'=>session(C("AGENT_USER_AUTH_DATA"))['agentid']])->count();// 查询满足要求的总记录数

        $Page = new \Think\Page($count, 20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $Page->setConfig('theme', C("PAGE_THEME"));
        $show = $Page->show();// 分页显示输出
        $lists = $subscribeModel->index($where, $Page,$on);

        $this->assign('count', $count);
        $this->assign('lists', $lists);// 赋值数据集
        $this->assign('page', $show);// 赋值分页输出
        $this->display(); // 输出模板
    }

    /**
     * 订阅产品or取消订阅产品
     */
    public function subscribe(){
        $subscribeModel = new BAgentSubscribeModel();
        $ret = $subscribeModel->edit(I('productid'),I('status'));
        if($ret !== true){
            if(IS_AJAX){
                $this->ajaxReturn(['status'=>0,'errorinfo'=>$ret]);
            }else{
                $this->error($ret);
            }
        }else{
            if(IS_AJAX){
                $this->ajaxReturn(['status'=>1]);
            }else{
                $this->success('操作成功');
            }
        }
    }

}