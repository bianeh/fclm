<?php
namespace Admin\Controller;
use Think\Controller;
use Admin\Model\AUserModel;
use Admin\Model\ARoleModel;
use Admin\Model\AUserRoleModel;

class UserController extends Controller {
	
	protected $instance = NULL;
	
	public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new AUserModel;
		}		
	}
	/**
		func: 系统用户列表
		params: null
	*/
    public function index()
	{
		$count      = $this->instance->where("isdeleted = 0")->count();	
		$Page       = new \Think\Page($count,5);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Pageshow       = $Page->show();		
		$index = [
					"where" => "isdeleted = 0",
					"order" => "createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
		$users = $this->instance->index($index);
		$this->assign('users',$users);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
    }
	
	/**
		func: 添加系统用户
		params: null
	*/
	public function addPage()
	{
		$roleTree   = new \Org\Util\Tree;
		$index 		= [
						"user_id" => session(C("USER_AUTH_KEY")),
					  ];
		$objRole 	= new ARoleModel;
		$role       = $objRole->select();
		//$roleList   = $roleTree::createIndent($role, 0);
		$this->assign('expiredate',strtotime("next year"));
		$this->assign('role',$role);
		$this->display();
	}
	
	public function add()
	{
		$data["username"]    = I('post.username');
		$data["jobnumber"]   = I('post.jobnumber');
		$data["email"] 		 = I('post.email');	
		$data["phone"] 		 = I('post.phone');
		$data["expiredate"]  = strtotime(I('post.expiredate'));

		//TODO::添加测试密码123456
		$data['password'] = 123456;

		$user_id = $this->instance->addUser($data);
		if($user_id) {
			$roleList  	 = I('post.role');
			$userRoleObj = new AUserRoleModel;
			$n = 0;
			foreach($roleList as $role_id) {
				$userRole[$n]["user_id"] = $user_id;
				$userRole[$n]["role_id"] = $role_id;
				$n++;
			}
			$status = $userRoleObj->addUserRole($userRole);
			if($status){
				return $this->success('添加成功', U('Admin/User/index'));
			}
			return $this->success('用户添加成功, 但角色分配失败, 请编辑分配角色！', U('Admin/User/index'));
		}			
		else{
			return $this->success('添加失败', U('Admin/User/addPage'));
		}
	}
	
	/**
		func: 编辑系统用户
		params: null
	*/
	public function editPage()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('显示失败', U('Admin/User/index'));
		}
		$data["find"] = $id;		
		$user = $this->instance->showUser($data);
		if( $user=== false) {
			return $this->success('显示失败', U('Admin/User/index'));
		}
		
		$objRole 	= new ARoleModel;
		$allRole    = $objRole->where("status =1")->select();
		
		$objUserRole   = new AUserRoleModel;
		$userRole   = $objUserRole->showUserRole(array("user_id" => $id));
		
		foreach($allRole as $list) {
			foreach($userRole as $val) {
				if($list["id"] == $val["role_id"]) {
					$list["checked"] = 1;
				}				
			}
			$roleList[] = $list;
		}
		$this->assign('user',$user);
		$this->assign('role',$roleList);
		$this->display();
	}
	
	/**
		func: 保存系统用户
		params: null
	*/
	public function edit()
	{
		$data["username"]    = I('post.username');
		$data["jobnumber"]   = I('post.jobnumber');
		$data["email"] 		 = I('post.email');	
		$data["phone"] 		 = I('post.phone');
		$data["expiredate"] = strtotime(I('post.expiredate')) + 86400;
		$data["id"] 		= I('post.id');
		$roleList  	 		= I('post.role');
		$status = $this->instance->editUser($data);
		if($status !== false) {
			$userRoleObj = new AUserRoleModel;
			$n = 0;
			foreach($roleList as $role_id) {
				$userRole[$n]["user_id"] = $data["id"];
				$userRole[$n]["role_id"] = $role_id;
				$n++;
			}
			$delete = $userRoleObj->delUserRole(Array("user_id" =>$data["id"] ));
			//if(!$delete) {
			//	return $this->success('修改失败', U('Admin/User/editPage', ['id'=>$data["id"]]));
			//}
			$status = $userRoleObj->addUserRole($userRole);
			if(!$status) {
				return $this->success('修改失败', U('Admin/User/editPage', ['id'=>$data["id"]]));
			}
			return $this->success('修改成功', U('Admin/User/index'));
		}			
		else{
			return $this->success('修改失败', U('Admin/User/editPage', ['id'=>$data["id"]]));
		}
	}
	
	public function enable()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('启用失败', U('Admin/User/index'));
		}
		$data["id"] = $id;
		$data["status"] = 1;
		$status = $this->instance->enableUser($data);
		if($status !== false) {
			return $this->success('启用成功', U('Admin/User/index'));
		}			
		else{
			return $this->success('启用失败', U('Admin/User/index'));
		}
	}
	
	/**
		func: 临时禁用系统用户
		params: null
	*/
	public function temporaryDisable()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('临时禁用失败', U('Admin/User/index'));
		}
		$data["id"] = $id;
		$data["status"] = 2;
		$status = $this->instance->temporaryDisableUser($data);
		if($status !== false) {
			return $this->success('临时禁用成功', U('Admin/User/index'));
		}			
		else{
			return $this->success('临时禁用失败', U('Admin/User/index'));
		}
		
	}
	
	/**
		func: 禁用系统用户
		params: null
	*/
	public function disable()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('禁用失败', U('Admin/User/index'));
		}
		$data["id"] = $id;
		$data["status"] = 3;
		$status = $this->instance->disableUser($data);
		if($status !== false) {
			return $this->success('禁用成功', U('Admin/User/index'));
		}			
		else{
			return $this->success('禁用失败', U('Admin/User/index'));
		}
	}
	
	/**
		func: 删除系统用户
		params: null
	*/
	public function delete()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('删除失败', U('Admin/User/index'));
		}
		$data["id"] = $id;
		$data["isdeleted"] = 1;
		$status = $this->instance->disableUser($data);
		if($status !== false) {
			return $this->success('删除成功', U('Admin/User/index'));
		}			
		else{
			return $this->success('删除失败', U('Admin/User/index'));
		}
	}
	
}