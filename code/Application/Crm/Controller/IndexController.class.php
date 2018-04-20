<?php
namespace Crm\Controller;
use Think\Controller;

use Common\Model\BAgentModel;
use Common\Model\BAgentConst;
use Common\Util\Util;

class IndexController extends Controller {
	
    public function index(){

    	$where = Util::getSearchWhere('id','phone');

    	$AgentModel = new BAgentModel;
    	$count      = $AgentModel->count();// 查询满足要求的总记录数
    	$passCount = $AgentModel->where([
    			'status'=>[
    						'not in',[BAgentConst::STATUS_REGISTER,BAgentConst::STATUS_NOTPASS]
    					]
    				])->count();	//查询通过审核的用户总数

		$Page       = new \Think\Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$agents = $AgentModel->where($where)->order('createtime')->limit($Page->firstRow.','.$Page->listRows)->select();

		foreach($agents as &$agent){
			$agent['createtime'] = date('Y-m-d H:i:s',$agent['createtime']);
			$agent['statusDes'] = BAgentConst::getDes($agent['status']);
		}

		$this->assign('totalAgents',$count);
		$this->assign('totalPassAgents',$passCount);
		$this->assign('agents',$agents);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display(); // 输出模板
    }
}