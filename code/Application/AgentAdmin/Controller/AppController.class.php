<?php
namespace AgentAdmin\Controller;
use Think\Controller;
class AppController extends Controller {
    /**
     * App申请页面
     */
    public function index()
    {
        $this->display();
    }
    public function applypage()
    {
        $this->display();
    }

    /**
     * App申请提交处理
     */
    public function apply()
    {
        $note = I('post.note');
        $time = I('post.expiredate');
        $agentid = session(C('AGENT_USER_AUTH_DATA'))['agentid'];
        if(!$note)
        {
            return $this->error('提交内容不能为空！', U('AgentAdmin/App/applypage'));

        }
        if(!$time)
        {
            return $this->error('需要上线时间不能为空！', U('AgentAdmin/App/applypage'));

        }
        $data['requireonlinetime'] = strtotime($time);
        $data['agentid'] = $agentid;
        $data['note'] = $note;
        $data['createtime'] = strtotime(date('Y-m-d H:i:s'),time());
        $app = M('b_agent_app_apply');
        $res = $app ->add($data);
        if($res)
        {
            return $this->success('已经向后台提交您的申请！', U('AgentAdmin/App/applypage'));
        }
        else{
            return $this->error('您的申请提交出现错误！', U('AgentAdmin/App/applypage'));
        }

    }

}