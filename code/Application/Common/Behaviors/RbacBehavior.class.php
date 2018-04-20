<?php
namespace Common\Behaviors;
use Think\Org\Util\Rbac;
use Think\Org\Util\RbacIFA;

class RbacBehavior extends \Think\Behavior{
    
    public function run(&$param)
	{
		return $this->_rbacCheck();
    }
	
	private function _rbacCheck()
	{
		$module = ltrim( __MODULE__ , "/");
		if($module === 'Auth' ||  $module === 'Home') {	
			return true;
		}
		
		$isAgentModule = strpos($module, 'Agent');
		
		if($isAgentModule === false) {
			session(C('AGENT_USER_AUTH_KEY'),null);
			session(C('AGENT_USER_AUTH_DATA'),null);
			if(session(C('USER_AUTH_KEY')) != NUll) {
				$RBAC = new \Org\Util\Rbac;		
				if(!$RBAC::AccessDecision()) {
					$redirectUrl = U("Auth/Index/noAccess");
					return redirect($redirectUrl);
				}
			}else{
				$redirectUrl = U("Auth/Login/user");
				return redirect($redirectUrl);
			}
		}else{
			session(C('USER_AUTH_KEY'),null);
			session(C('USER_AUTH_DATA'),null);
			if(session(C('AGENT_USER_AUTH_KEY')) != NUll) {
				$RBAC = new \Org\Util\RbacIFA;		
				if(!$RBAC::AccessDecision()) {
					$redirectUrl = U("Auth/Index/noAccess");
					return redirect($redirectUrl);
				}
			}else{
				$redirectUrl = U("Auth/Login/user");
				return redirect($redirectUrl);
			}
		}
	}	
}
