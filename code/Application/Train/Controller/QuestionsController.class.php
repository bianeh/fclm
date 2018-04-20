<?php
namespace Train\Controller;
use Think\Controller;
use Train\Model\AQuestionsModel;
class QuestionsController extends Controller {
    protected $instance = NULL;
    public function __construct()
    {
        parent::__construct();
        if($this->instance == NULL) {
            $this->instance = new AQuestionsModel;
        }
    }

    /**
     * 题库管理主页面
     */
    public function index()
    {
        $keyword = trim(I('get.keyword'));
        if($keyword){
            $where = " 1 = 1 AND question LIKE '%".$keyword."%' ";
        }
        $count      = $this->instance->where($where)->count();
        $Page       = new \Think\Page($count,5);
        $Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Pageshow       = $Page->show();
        $index = [
            "where" => "1=1",
            "order" => "createtime DESC",
            "limit"	=> array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];
        if($keyword){
            $index['where'] .= " AND question LIKE '%".$keyword."%'";
        }
        $questions = $this->instance->index($index);
        foreach ($questions as $k => $v) {
            $res = $questions[$k]['answerlist'];
            $dres = json_decode($res);
            $eres = implode(";",$dres);
            $questions[$k]['answerlist'] = $eres;
        }
        $this->assign('questions',$questions);
        $this->assign('Pageshow',$Pageshow);
        $this->assign('pageSize', $Page->listRows);
        $this->display();
    }

    /**题库管理主页面添加题目
     * @return mixed
     */
    public function add()
    {
        $a = "A:";
        $b = "B:";
        $c = "C:";
        $d = "D:";
        $e = "E:";
        $f = "F:";
        $g = "G:";
        $h = "H:";
        $data['question'] = I('post.question');
        $question = $data['question'];
        $rightanswer =  I('post.radio')+1;
        $mytext = I('post.mytext');
        $length = count($mytext);
        if($length == 2)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
        }
        if($length == 3)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
        }
        if($length == 4)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
        }
        if($length == 5)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
            $mytext['4'] = $e.$mytext['4'];
        }
        if($length == 6)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
            $mytext['4'] = $e.$mytext['4'];
            $mytext['5'] = $f.$mytext['5'];
        }
        if($length == 7)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
            $mytext['4'] = $e.$mytext['4'];
            $mytext['5'] = $f.$mytext['5'];
            $mytext['6'] = $g.$mytext['6'];
        }
        if($length == 8)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
            $mytext['4'] = $e.$mytext['4'];
            $mytext['5'] = $f.$mytext['5'];
            $mytext['6'] = $g.$mytext['6'];
            $mytext['7'] = $h.$mytext['7'];
        }
        if($question == '')
        {
            return $this->error('问题不能为空！', U('Train/Questions/index'));
        }
        if($mytext == '')
        {
            return $this->error('答案不能为空！', U('Train/Questions/index'));
        }
        $data['rightanswer'] = $rightanswer;
        $data['answerlist'] = json_encode($mytext);
        $data['createtime'] = strtotime(date('Y-m-d H:i:s', time()));
        $data['type'] = 1;//1:单选，2：双选，3：多选
        $result = $this->instance->add($data);
        if($result)
        {
            return $this->success('题目添加成功！', U('Train/Questions/index'));
        }
    }

    /**题库管理主页面删除试题
     * @return mixed
     */
    public function delete()
    {
        $id = I('get.id');
        $data['isdeleted'] = 1;
        $result = $this->instance->where("id = $id")->save($data);
        if($result)
        {
            return $this->success('题目删除成功！',U('Train/Questions/index'));
        }
    }

    /**
     *进入题库管理主页面修改页面
     */
    public function editpage()
    {


        $id = I('get.id');
        $questions = M('questions');
        $dtquestions = $questions ->where(" id = $id")->find();
        $isdelted = $dtquestions['isdeleted'];
        $question = $dtquestions['question'];
        $answer = $dtquestions['answerlist'];
        $rightanswer = $dtquestions['rightanswer'];
        $radioanswer = $rightanswer -1;
        $answers = json_decode($answer);
        foreach ($answers as $k => $v) {
            $res = $answers[$k];
            $eres = substr($res,2);
            $answers[$k] = $eres;
        }
        $this->assign('id',$id);
        $this->assign('isdeleted',$isdelted);
        $this->assign('radioanswer',$radioanswer);
        $this->assign('answers',$answers);
        $this->assign('rightanswer',$rightanswer);
        $this->assign('question',$question);
        $this->display();
    }

    /**题库管理主页面修改编辑题目
     * @return mixed
     */
    public function edit()
    {
        $a = "A:";
        $b = "B:";
        $c = "C:";
        $d = "D:";
        $e = "E:";
        $f = "F:";
        $g = "G:";
        $h = "H:";
        $id = I('post.id');
        $data['question'] = I('post.question');
        $question = $data['question'];
        $rightanswer =  I('post.radio')+1;
        $mytext = I('post.mytext');
        $length = count($mytext);
        if($length == 2)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
        }
        if($length == 3)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
        }
        if($length == 4)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
        }
        if($length == 5)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
            $mytext['4'] = $e.$mytext['4'];
        }
        if($length == 6)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
            $mytext['4'] = $e.$mytext['4'];
            $mytext['5'] = $f.$mytext['5'];
        }
        if($length == 7)
        {
            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
            $mytext['4'] = $e.$mytext['4'];
            $mytext['5'] = $f.$mytext['5'];
            $mytext['6'] = $g.$mytext['6'];
        }
        if($length == 8)
        {

            $mytext['0'] = $a.$mytext['0'];
            $mytext['1'] = $b.$mytext['1'];
            $mytext['2'] = $c.$mytext['2'];
            $mytext['3'] = $d.$mytext['3'];
            $mytext['4'] = $e.$mytext['4'];
            $mytext['5'] = $f.$mytext['5'];
            $mytext['6'] = $g.$mytext['6'];
            $mytext['7'] = $h.$mytext['7'];
        }

        if($question == '')
        {
            return $this->error('问题不能为空！', U('Train/Questions/index'));
        }
        if($mytext == '')
        {
            return $this->error('答案不能为空！', U('Train/Questions/index'));
        }
        $data['rightanswer'] = $rightanswer;
        $data['answerlist'] = json_encode($mytext);
        $data['createtime'] = strtotime(date('Y-m-d H:i:s', time()));
        $data['type'] = 1;//1:单选，2：双选，3：多选
        $result = $this->instance->where("id=$id")->save($data);
        if($result)
        {
            return $this->success('题目修改成功！', U('Train/Questions/index'));
        }
    }
    /**
     * 题库管理主页面批量删除题目
     */
    public function batchDelete() {
        $ids = I('post.request');
        if(empty($ids)){
            redirect(U('Train/Questions/index'));
        }
        $return = ['status'=>0,'msg'=>'删除失败！'];
        $result = $this->instance->delete2($ids);
        if($result)
        {
            $return['status'] = 1;
            $return['msg'] = '删除成功!';
            exit(json_encode($return));
        }
        else{
            exit(json_encode($return));
        }
    }
    public function start()
    {
        $id = I('id');
        $data['isdeleted'] = 0;
        $result = $this->instance->where("id = $id")->save($data);
        if($result)
        {
            return $this->success('启动成功！', U('Train/Questions/index'));
        }
        else
        {
            return $this->success('启动失败！', U('Train/Questions/index'));
        }
    }
}