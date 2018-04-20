<?php
namespace AgentTrain\Controller;
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
     * 在线考试
     */
    public function index()
    {


        $userid = session(C('AGENT_USER_AUTH_DATA'))['id'];
        $invite = M('question_invite');
        $results = $invite -> where(" invitedid = $userid AND type = 0 ")->find();
        if(!$results)
        {
            return $this->error('你的在线考试还没有收到邀请！',U('Home/index/dashboard'));
        }
        $qtrt = M('questions_result_score');
        $result = $qtrt -> where("userid = $userid AND type=0")->find();
        if($result)
        {
            return $this->error('你已经做过在线考试的问题！请查看你的结果！', U('AgentTrain/Testonline/resultpage'));
        }

        $questions = M('questions');
        $res = $questions->where('1=1')->select();
        foreach($res as $k => $v)
        {
            $rightanswer = $v['rightanswer'];
            $answerlist = $v['answerlist'];
            $kid = $v['id'];
            $lists = json_decode($answerlist);
            foreach($lists as $ke => $slist)
            {
                $checkbox = "<input type='radio' name='name$k'value='$ke'/>&nbsp;";
                $nbsp = "&nbsp;&nbsp;&nbsp;";
                $lists[$ke] = $checkbox.$slist.$nbsp;
            }
            $hidden = "<input type='hidden' name='rightanswer$k' value='$rightanswer'/>";
            $hiddenkid = "<input type='hidden' name='konwledgeid$k' value='$kid'/>";
            $res[$k]['answerlist'] = $lists;
            $res[$k]['hidden'] = $hidden;
            $res[$k]['hiddenkid'] = $hiddenkid;
        }
        $this->assign('res',$res);
        $this->display();
    }

    /**
     * 邀请页面
     */
    public function invite()
    {
        $userid = session(C('AGENT_USER_AUTH_DATA'))['id'];
        $invite = M('question_invite');
        $results = $invite -> where(" invitedid = $userid AND type = 0 ")->find();

        $id = $results['inviteid'];
        if(!$id)
        {
            $this->display();
        }
        else {
            $inv = M('a_user');
            $params = $inv->where("  id = $id ")->find();
            $username = $params['username'];
            $jobnumber = $params['jobnumber'];
            $this->assign('jobnumber', $jobnumber);
            $this->assign('username', $username);
            $this->display();
        }
    }
    /**
     * 小B端在线考试结果处理
     */
    public function deal()
    {
        $v =  $_GET;
        $totalscore = 0;
        $scorepquestion = 3;
        $length = count($v)-24;
        $date = strtotime(date('Y-m-d H:i:s'),time());
        $qtresult = M('questions_result');
        $userid = session(C('AGENT_USER_AUTH_DATA'))['id'];
        $agentid = session(C('AGENT_USER_AUTH_DATA'))['agentid'];
        for($i=0;$i<$length;$i++)
        {
            $namei = $v["name$i"];
            if(!$namei)
            {
                $v["name$i"] = 1;
            }
            if($v["rightanswer$i"] == $v["name$i"]+1)
            {
                $totalscore = $totalscore + $scorepquestion;
                $data['youranswer'] = $v["name$i"]+1;
                $data['rightanswer'] = $v["rightanswer$i"];
                $data['questionid'] = $v["konwledgeid$i"];
                $data['createtime'] = $date;
                $data['isright'] = 1;
                $data['type'] = 0;
                $data['buserid'] = $userid;
                $result = $qtresult->add($data);
                if(!$result)
                {
                    return $this->error('保存数据出现错误！请联系开发人员！', U('AgentTrain/Testonline/index'));
                }
             }else
            {
                $data['youranswer'] = $v["name$i"]+1;
                $data['rightanswer'] = $v["rightanswer$i"];
                $data['questionid'] = $v["konwledgeid$i"];
                $data['createtime'] = $date;
                $data['isright'] = 0;
                $data['buserid'] = $userid;
                $result = $qtresult->add($data);
                if(!$result)
                {
                    return $this->error('保存数据出现错误！请联系开发人员！', U('AgentTrain/Testonline/index'));
                }
            }
        }
        $qtresultsc = M('questions_result_score');
        $param['score'] = $totalscore;
        $param['userid'] = $userid;
        $param['agentid'] = $agentid;
        $param['createtime'] = $date;
        $qtresultsc ->add($param);
        if(!$result)
        {
            return $this->error('保存数据出现错误！请联系开发人员！', U('AgentTrain/Testonline/index'));
        }
        else{
            return $this->success('将显示你的考试结果！请耐心等待！', U('AgentTrain/Testonline/resultpage'));
        }
    }

    /**
     * 小B端在线考试结果的显示页面
     */
    public function resultpage()
    {
        $userid = session(C('AGENT_USER_AUTH_DATA'))['id'];
        $qtsc = M('questions_result_score');
        $result = $qtsc ->where("userid = $userid")->order("id desc")->find();
        $this->assign('result', $result);
        $this->display();
    }

}