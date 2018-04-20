<?php
namespace Admin\Controller;
use Think\Controller;
use Admin\Model\ARoleModel;

class RoleController extends Controller {
	
	protected $instance = NULL;
	
	public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new ARoleModel;
		}		
	}

	/**
		func: 角色列表
		params: null
	*/
    public function index(){
		$roleTree   = new \Org\Util\Tree;
		$index 		= [
						"where" => "1",
					  ];
		$role       = $this->instance->index($index);	
		$roleList   = $roleTree::create($role, 0);	
		$this->assign('role',$roleList);
		$this->display();
	}
	
	/**
		func: 添加角色
		params: null
	*/
	public function addPage()
	{
		$roleTree   = new \Org\Util\Tree;
		$index 		= [
						"where" => "1",
					  ];
		$role       = $this->instance->index($index);	
		$roleList   = $roleTree::createIndent($role, 0);
		$this->assign('role',$roleList);
		$this->display();
	}
	
	public function add()
	{
		$data["name"] 	 = I('post.name');
		$data["level"]   = I('post.level');
		$data["remark"]  = I('post.remark');
		$data["pid"]     = I('post.pid');
		if(!I('post.status')) {
			$data["status"] = 0;
		}else{
			$data["status"] = I('post.status');
		}
		$status = $this->instance->addRole($data);
		if($status) {
			return $this->success('添加成功', U('Admin/Role/index'));
		}			
		else{
			return $this->success('添加失败', U('Admin/Role/addPage'));
		}
	}
	
	/**
		func: 修改角色
		params: null
	*/
	public function editPage()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('显示失败', U('Admin/Role/index'));
		}
		$data["find"] = $id;		
		$role = $this->instance->showRole($data);
		if( $role=== false) {
			return $this->success('显示失败', U('Admin/Role/index'));
		}
		
		$roleTree   = new \Org\Util\Tree;
		$index 		= [
						"where" => "1",
					  ];
		$roleList   = $this->instance->index($index);	
		$roleList   = $roleTree::createIndent($roleList, 0);

		$this->assign('role',$role);
		$this->assign('roleList',$roleList);
		$this->display();
	}
	
	public function edit()
	{
		$data["id"] 	 = I('post.id');
		$data["name"] 	 = I('post.name');
		$data["level"]   = I('post.level');
		$data["remark"]  = I('post.remark');
		$data["pid"]     = I('post.pid');
		if(!I('post.status')) {
			$data["status"] = 0;
		}else{
			$data["status"] = I('post.status');
		}
		$status = $this->instance->editRole($data);
		if($status !== false) {
			return $this->success('修改成功', U('Admin/Role/index'));
		}	
		else{
			return $this->success('修改失败', U('Admin/Role/editPage', ['id'=>$data["id"]]));
		}
	}
	
	public function enable()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('启用失败', U('Admin/Role/index'));
		}
		$data["id"] = $id;
		$data["status"] = 1;
		$status = $this->instance->enableRole($data);
		if($status !== false) {
			return $this->success('启用成功', U('Admin/Role/index'));
		}			
		else{
			return $this->success('启用失败', U('Admin/Role/index'));
		}
	}
	
	public function disable()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('禁用失败', U('Admin/Role/index'));
		}
		$data["id"] = $id;
		$data["status"] = 0;
		$status = $this->instance->disableRole($data);
		if($status !== false) {
			return $this->success('禁用成功', U('Admin/Role/index'));
		}			
		else{
			return $this->success('禁用失败', U('Admin/Role/index'));
		}
	}
	
	/**
		func: 删除角色
		params: null
	*/
	public function delete()
	{
		
	}
	
}