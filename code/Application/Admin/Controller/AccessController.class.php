<?php
namespace Admin\Controller;

use Think\Controller;
use Admin\Model\ARoleModel;
use Admin\Model\AUserRoleModel;
use Admin\Model\AAccessModel;

class AccessController extends Controller {
	
	protected $instance = NULL;
	
	public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new AAccessModel;
		}		
	}
	
	/**
		func: 分配角色权限
		params: null
	*/
	public function allotNodePage()
	{
		$id = I("get.id", 0, 'intval');
		if(!$id) {
			return $this->success('显示失败', U('Admin/Role/index'));
		}
		$data["user_id"] = session(C("USER_AUTH_KEY"));
		
		$userRoleObj = new AUserRoleModel;
		$userRole = $userRoleObj->showUserRole($data);
		if($userRole === false) {
			return $this->success('您无权进行此角色的权限配置', U('Admin/Role/index'));
		}
		
		$roleObj     = new  ARoleModel;
		$role = $roleObj->showRole(array("find"=>$id));
		
		foreach($userRole as $value) {
			if($isSubRole = $roleObj->isSubRole($id, $value["role_id"])) {
				$p_role_id = $role["pid"];
				break;
			}
			return $this->success('您无权进行此角色的权限配置', U('Admin/Role/index'));
		}
		
		$index      = [
						"role_id" => $p_role_id,
					  ];
		$parentNodeList = $this->instance->parentAccessNode($index);
		
		$index["role_id"] = $id;
		$accessNodeList = $this->instance->parentAccessNode($index);
		$nodeList = array();
		$minLevel;
		foreach($parentNodeList as $parent) {
			foreach($accessNodeList as $access) {
				if($parent["id"] == $access["id"]) {
					$parent["access"] = "1";
				}
			}
			$nodeList[] = $parent;
		}

		$nodeTree   = new \Org\Util\Tree;
		$nodeList   = $nodeTree::create($nodeList, 1);
		$this->assign('role',$role);
		$this->assign('nodeList',$nodeList);
		$this->display();
	}
	
	public function allotNode()
	{
		$access  = I("post.access");
		$role_id = I("post.role_id", -1, 'intval');
		
		$accessList = array();
		foreach($access as $value) {
			$valueList = explode("@", $value);
			$accessList[] = [
								"role_id" => $role_id,
								"node_id" => $valueList[0],
								"level"   => $valueList[1],
							];
		}
		$status = $this->instance->deleteAccess($role_id);
		if(!$status) {
			return $this->success('权限配置发生错误', U('Admin/Access/allotNodePage', ['id'=>$role_id]));
		}
		$data["role_id"]    = $role_id;
		$data["accessList"] = $accessList;		
		$result = $this->instance->addAccess($data);
		if(!$result) {
			return $this->success('权限配置发生错误', U('Admin/Access/allotNodePage', ['id'=>$role_id]));
		}elseif($result != count($data["accessList"])) {
			return $this->success('权限配置发生错误', U('Admin/Access/allotNodePage', ['id'=>$role_id]));
		}
		return $this->success('权限配置成功', U('Admin/Role/index'));
	}
	
}