<?php
namespace Sysset\Controller;
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
        $createruserp = session(C('USER_AUTH_DATA'))['username'];
        $count      = $this->instance->where("1=1 AND createuser = '".$createruserp."'")->count();
        $Page       = new \Think\Page($count,5);
        $Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Pageshow       = $Page->show();
        $index = [
            "where" => " 1=1 AND createuser = '".$createruserp."'",
            "order" => "createtime DESC",
            "limit"	=> array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
                ),
        ];

        $numbersinfo = $this->instance->index($index);
        $this->assign('numbersinfo',$numbersinfo);
        $this->assign('Pageshow',$Pageshow);
        $this->display();
    }
    public function addparam()
    {
        $this->display();
    }
    /**
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
            return $this->error('参数名称不能为空！', U('Sysset/Params/addparam'));
            exit;
        }
        if($data['value'] == '' )
        {
            return $this->error('参数值不能为空！', U('Sysset/Params/addparam'));
            exit;
        }
        $data['createtime'] = strtotime(date('Y-m-d H:i:s', time()));
        $createruserp = session(C('USER_AUTH_DATA'))['username'];
        $idp = session(C('USER_AUTH_DATA'))['id'];
        $data['createuser'] = $createruserp;
        $data['createuserid'] = $idp;
        $data['type'] = 0;
        $resulut = $this->instance->addNumber($data);
        if($resulut)
        {
            return $this->success('添加成功', U('Sysset/Params/index'));
        }
        else{
            return $this->error('添加失败', U('Sysset/Params/index'));
        }

    }
    /**
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
            return $this->success('删除成功！', U('Sysset/Params/index'));
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
        $isdeleted = I('post.isdeleted');
        $editparam['updatetime'] = strtotime(date('Y-m-d H:i:s', time()));
        $createruserp = session(C('USER_AUTH_DATA'))['username'];
        $idp = session(C('USER_AUTH_DATA'))['id'];
        $editparam['updateuser'] = $createruserp;
        $editparam['updateuserid'] = $idp;
        if($isdeleted == 'on')
        {
            $editparam['isdeleted'] = 1;
        }
        else
        {
            $editparam['isdeleted'] = '';
        }
        $result = $this->instance->editParam($editparam);
        if($result)
        {
            return $this->success('修改成功！', U('Sysset/Params/index'));
            exit();
        }
    }
}