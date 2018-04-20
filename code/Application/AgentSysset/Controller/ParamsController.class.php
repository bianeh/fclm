<?php
namespace AgentSysset\Controller;
use Think\Controller;
use Sysset\Model\AParamsModel;
class ParamsController extends Controller {
    public function __construct()
    {
        parent::__construct();
        if($this->instance == NULL) {
            $this->instance = new AParamsModel();
        }
    }
    public function index()
    {
        $createruserf = session(C('AGENT_USER_AUTH_DATA'))['username'];
        $count      = $this->instance->where("1=1 AND createuser = '".$createruserf."'")->count();
        $Page       = new \Think\Page($count,5);
        $Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Pageshow       = $Page->show();
        $index = [
            "where" => " 1=1 AND createuser = '".$createruserf."'",
            "order" => "createtime DESC,isdeleted DESC",
            "limit"	=> array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
                ),
        ];


        $numbersinfo = $this->instance->index($index);
        $this->assign('pageSize', $Page->listRows);
        $this->assign('numbersinfo',$numbersinfo);
        $this->assign('Pageshow',$Pageshow);
        $this->display();
    }
    public function addparam()
    {
        $this->display();
    }
    /*
     * 添加参数信息;
     * 字段 name,value,createtime,createuser,createuserid,type;
     * 平台方添加
     */
    public function add()
    {
        $data['name'] = I('post.name');
        $data['value'] = I('post.value');
        if($data['name'] == '' )
        {
            return $this->error('参数名称不能为空！', U('AgentSysset/Params/addparam'));
            exit;
        }
        if($data['value'] == '' )
        {
            return $this->error('参数值不能为空！', U('AgentSysset/Params/addparam'));
            exit;
        }
        $data['createtime'] = strtotime(date('Y-m-d H:i:s', time()));
        $createruserf = session(C('AGENT_USER_AUTH_DATA'))['username'];
        $idf = session(C('AGENT_USER_AUTH_DATA'))['id'];
        $data['createuser'] = $createruserf;
        $data['createuserid'] = $idf;
        $data['agentid'] = $idf;
        $data['type'] = 1;
        $resulut = $this->instance->addNumber($data);
        if($resulut)
        {
            return $this->success('添加成功', U('AgentSysset/Params/index'));
        }
        else{
            return $this->error('添加失败', U('AgentSysset/Params/index'));
        }

    }
    /*
     * 编辑参数数据
     */
    public function editparam()
    {
        $dataparam['name'] = I('get.name');
        $dataparam['id'] = I('get.id');
        $dataparam['value'] = I('get.value');
        $dataparam['isdeleted'] = I('get.isdeleted');
        $this->assign('dataparam',$dataparam);
        $this->display();

    }
    /**
     * 对添加的参数数据进行删除
     */
    public function delete()
    {
        $id = I('id');
        $result = $this->instance->deleteNuminfo($id);
        if($result)
        {
            return $this->success('删除成功！', U('AgentSysset/Params/index'));
            exit();
        }
    }

    /**
     * 对参数进行编辑
     */
    public function edit()
    {
        $editparam['id'] = I('post.id');
        $editparam['name'] = I('post.name');
        $editparam['value'] = I('post.value');
        $editparam['updatetime'] = strtotime(date('Y-m-d H:i:s', time()));
        $createruserf = session(C('AGENT_USER_AUTH_DATA'))['username'];
        $idf = session(C('AGENT_USER_AUTH_DATA'))['id'];
        $editparam['updateuser'] = $createruserf;
        $editparam['updateuserid'] = $idf;
        $result = $this->instance->editParam($editparam);
        if($result)
        {
            return $this->success('修改成功！', U('AgentSysset/Params/index'));
            exit();
        }
    }

    public function start()
    {
        $id = I('id');
        $data['isdeleted'] = '';
        $result = $this->instance->where("id = $id")->save($data);
        if($result)
        {
            return $this->success('启动成功！', U('AgentSysset/Params/index'));
        }
        else
        {
            return $this->success('启动失败！', U('AgentSysset/Params/index'));
        }
    }
    /**
     * 批量删除
     */
    public function batchDelete() {
        $ids = I('post.request');
        if(empty($ids)){
            redirect(U('AgentSysset/Params/index'));
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
}