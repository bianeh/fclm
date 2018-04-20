<?php
namespace Train\Controller;
use Think\Controller;
use Train\Model\ATestonlineModel;
class TestonlineController extends Controller {
    protected $instance = NULL;
    public function __construct()
    {
        parent::__construct();
        if($this->instance == NULL) {
            $this->instance = new ATestonlineModel;
        }
    }
    /**
     * 题库管理主页面
     */
    public function index()
    {
        $keyword = trim(I('get.keyword'));
        if($keyword){
            $where = " 1 = 1 AND username LIKE '%".$keyword."%' ";
        }
        $count      = $this->instance->where($where)->count();
        $Page       = new \Think\Page($count,5);
        $Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Pageshow       = $Page->show();
        $index = [
            "where" => "1=1",
            "order" => "createtime DESC",
            "limit" => array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];
        $questions = $this->instance->index($index);
        $this->assign('questions',$questions);
        $this->assign('Pageshow',$Pageshow);
        $this->assign('pageSize', $Page->listRows);
        print_r($this->display());
    }
    /**
     * 邀约小B用户在线测试
     */
    public function invite()
    {
        $invitedid = I('get.id');
        $agentid = I('get.agentid');
        $inviteid  = session(C('USER_AUTH_DATA'))['id'];
        $data['agentid'] = $agentid;
        $data['inviteid'] = $inviteid;
        $data['invitedid'] = $invitedid;
        $data['type'] = 0;
        $data['createtime'] = strtotime(date('Y-m-d H:i:s',time()));
        $rquestioninvite = M('question_invite');
        $result = $rquestioninvite ->add($data);
        $param['invited'] = 1;
        $res = $this->instance->where(" id = $invitedid ")->save($param);
        if($result && $res)
        {
            return $this->success('邀请成功！',U('Train/Testonline/index'));
        }
        else{
            return $this->error('邀请失败！',U('Train/Testonline/index'));
        }

    }
    /**
     * 批量邀请
     */
    public function batchInvite() {
        $ids = I('post.request');
        if(empty($ids)){
            redirect(U('Train/Testonline/index'));
        }
        $return = ['status'=>0,'msg'=>'邀约失败！'];
        $result = $this->instance->invite($ids);
        if($result)
        {
            $return['status'] = 1;
            $return['msg'] = '邀约成功!';
            exit(json_encode($return));
        }
        else{
            exit(json_encode($return));
        }
    }
}