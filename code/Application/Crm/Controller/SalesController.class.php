<?php
namespace Crm\Controller;
use Think\Controller;

use Common\Model\AMarketingStrategyItemModel;
use Common\Util\Util;

class SalesController extends Controller {

	/**
	 * 列表页面
	 */
    public function index(){
    	$where = Util::getSearchWhere('id','name');

    	$model = new AMarketingStrategyItemModel;
    	$count      = $model->count();// 查询满足要求的总记录数

		$Page       = new \Think\Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$Page->setConfig('theme',C('PAGE_THEME'));
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$agents = $model->where($where)->order('createtime')->limit($Page->firstRow.','.$Page->listRows)->select();

		foreach($agents as &$agent){
			$agent['createtime'] = date('Y-m-d H:i:s',$agent['createtime']);
			$agent = $model->formatType($agent);
		}

		$this->assign('title','策略项管理');
		$this->assign('totalAgents',$count);
		$this->assign('agents',$agents);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display(); // 输出模板
    }

    /**
	 * 查看详情页
	 */
	public function showPage($id){
		$model = new AMarketingStrategyItemModel;
		$detail = $model->find($id);

		$this->assign('detail',$detail);
		$this->assign('title','策略项详情');
		$this->display();
	}

	/**
	 * 添加内容页面
	 */
	public function addPage(){
		$this->assign('title','添加策略项');
		$this->display();
	}

	/**
	 * 添加动作
	 */
	public function add(){
		$model = new AMarketingStrategyItemModel;
		if(!$model->create()){
			$this->error($model->getError());
		}
		if($model->add()){
			$this->success('添加成功');
		}else{
			$this->error($model->getError());
		}
	}

	/**
	 * 修改内容页面
	 */
	public function editPage($id){
		$model = new AMarketingStrategyItemModel;
		$detail = $model->find($id);
		if(!$detail){
			$this->error('没有找到该项');
		}
		$this->assign('detail',$model);
		$this->assign('title','策略项修改页面');
		$this->display();
	}

	/**
	 * 修改信息动作
	 */
	public function edit(){
		$model = new AMarketingStrategyItemModel;
		if(!$model->create()){
			$this->error($model->getError());
		}

		$res = $model->save();
		if($res===false){
			$this->error($model->getError());
		}

		$this->success('修改成功');

	}

	/**
	 * 删除
	 */
	public function delete(){
		$this->error('策略项不能删除');
	}

}