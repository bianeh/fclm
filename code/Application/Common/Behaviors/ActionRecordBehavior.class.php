<?php
namespace Common\Behaviors;

/**
 * 动作记录器
 */
class ActionRecordBehavior extends \Think\Behavior{

    public function run(&$param){
    	$module = ltrim( __MODULE__ , "/");
		if($module === 'Auth' ) {	
			return true;
		}
		if($module === 'Home' ) {
			return true;
		}


    	if(session(C('USER_AUTH_KEY')) != NUll) {
			//a用户已登陆
			$this->type = 1;
			$this->userid = session(C('USER_AUTH_KEY'));
			$this->nodeModel = M(C('RBAC_NODE_TABLE'));
			$this->recordUserAction();
		}elseif(session(C('AGENT_USER_AUTH_KEY')) != NUll) {
			$this->type = 2;
			$this->userid = session(C('AGENT_USER_AUTH_KEY'));
			$this->nodeModel = M(C('AGENT_RBAC_NODE_TABLE'));
			//b用户登陆
			$this->recordUserAction();
		}else {
			//没有登陆,不做记录
			return true;
		}
    }

    private function recordUserAction(){
    	$fullAction = ltrim(__ACTION__,'/');
    	$arr = explode('/', $fullAction);
    	$module = $arr[0];
    	$controller = $arr[1];
    	$action = $arr[2];
    	$nodeModel = $this->nodeModel;



    	$moduleArr = $nodeModel->where(['level'=>1,'name'=>$module])->find();
    	$controllerArr = $nodeModel->where(['level'=>2,'name'=>$controller,'pid'=>$moduleArr['id']])->find();
    	$actionArr = $nodeModel->where(['level'=>3,'name'=>$action,'pid'=>$controllerArr['id']])->find();

		//过滤动作，不纪录参数
		if($this->canSaveParams($module,$controller,$action)){
			//合并保存参数
			$input = json_encode(array_merge($_GET,$_POST));
		}else{
			$input = '{"info":"参数不做记录"}';
		}

    	//保存数据
    	$data = [
    		'createtime'=>time(),
    		'method'	=>REQUEST_METHOD,
    		'params'	=>$input,
    		'actiondes'	=>$moduleArr['title'].'/'.$controllerArr['title'].'/'.$actionArr['title'],
    		'action'	=>$module.'/'.$controller.'/'.$action,
    		'userid'	=>$this->userid,
    		'type'		=>$this->type,
    	];
    	$res = M('FmActionRecord')->add($data);
    	return true;
    }


	/**
	 * 是否保存参数
	 * @param $module
	 * @param $controller
	 * @param $action
	 * @return bool
	 */
	private function canSaveParams($module,$controller,$action){
		$arr = C("ACTION_RECORD_NOT_SAVE");
		if(array_key_exists($module,$arr)){
			if($arr[$module]===true){
				//整个模块都不保存
				return false;
			}
			if(array_key_exists($controller,$arr[$module])){
				if($arr[$module][$controller]===true){
					//整个模块下控制器的方法都不保存
					return false;
				}
				if(in_array($action,$arr[$module][$controller])){
					//不保存方法
					return false;
				}
			}
		}

		//其他都保存
		return true;
	}
}
