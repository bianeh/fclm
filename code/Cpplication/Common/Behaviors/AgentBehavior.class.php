<?php
namespace Common\Behaviors;

class AgentBehavior extends \Think\Behavior{
    
    public function run(&$param)
	{
		$this->_agentIndentify();
		$this->_agentTemplate();
		return true;
    }
	
	private function _agentIndentify()
	{
		if(session(C('AGENT_KEY')) != null) {
			return true;
		}
		
		$domianObj = M("a_domain");		
		$Host = I('server.HTTP_HOST');
		$where['subdomain']  = $Host;
		$where['userdomain'] = $Host;
		$where['_logic'] = 'or';
		$map['_complex'] = $where;
		$map['status']  = 1;		
		$agentDomain = $domianObj->where($map)->find();		
		return session(C('AGENT_KEY'), $agentDomain['agentid']);
	}
	
	private function _agentTemplate()
	{
		if(session(C('AGENT_TEMP_KEY')) != null) {
			return true;
		}
		
		$tempObj = M('b_agent_template');		
		$where['agentid'] = session(C('AGENT_KEY'));
		$where['isused'] = 1;		
		$temp = $tempObj->where($where)->find();
		if(empty($temp)) {
			return session(C('AGENT_TEMP_KEY'),'Default');
		}
		return session(C('AGENT_TEMP_KEY'), $temp['path']);
	}
}
