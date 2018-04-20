<?php
namespace Malls\Controller;
use Think\Controller;
use Malls\Model\AthemeModel;
use Common\Util\Util;
class ThemeController extends Controller {
    protected $instance = NULL;
    public function __construct()
    {
        parent::__construct();
        if($this->instance == NULL) {
            $this->instance = new AthemeModel;
        }
    }
    /**
     *  管理页面
    */
    public function index()
    {



        $where = Util::getSearchWhere('code','name');
        $id = I('get.id');
        if($id == 0)
        {
            $where = ' 1=1 ';
        }
        if($id == 1)
        {
            $where = ' 1=1 AND isfree = 1 ';
        }
        if($id == 2)
        {
            $where = ' 1=1 AND isfree = 0 ';
        }
        $count      = $this->instance->where($where)->count();
        $Page       = new \Think\Page($count,5);
        $Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Pageshow       = $Page->show();
        $index = [
            "where" => $where,
            "order" => "id DESC",
            // "limit"	=> array(
            //     "firstRow" => $Page->firstRow,
            //     "listRows" => $Page->listRows,
            // ),
        ];
        $domains = $this->instance->index($index);
        $this->assign('id',$id);
        $this->assign('domains',$domains);
        $this->assign('Pageshow',$Pageshow);
        $this->display();
    }
    /**
     *  添加页面
    */
    public function addpage()
    {
        $this->display();
    }
    /**
     *  添加
    */
    public function add()
    { 

        $code = I('post.code');
        $name = I('post.name');
        $filename = I('post.thumb');
        $englishname = I('post.englishname');
        $isfree = I('post.isfree');
        if($isfree == 'on')
        {
            $data['isfree'] = 1;
        }
        
         $data['isfree'] = 0;
   
        if(!$code)
        {
           return $this->success('主题编码不能为空！', U('Malls/Theme/index'));
        }
        if(!$name)
        {
           return $this->success('主题名称不能为空！', U('Malls/Theme/index'));
        }
        if(!$englishname)
        {
           return $this->success('主题英文名称不能为空！', U('Malls/Theme/index'));
        }
        $data['code'] = $code;
        $data['name'] = $name;
        $data['path'] = $englishname;
        $data['thumburl'] = $filename;
        $data['createtime'] = strtotime(date('Y-m-d H:i:s', time()));
        $theme = M('a_agent_template');
        $result = $theme->add($data);
        if($result)
        {
            return $this->success('成功添加主题！', U('Malls/Theme/index'));
        }
        else
        {
            return $this->success('添加主题失败！', U('Malls/Theme/index'));
        }
        $this->display();
    }
    /**
     *  修改页面
    */
    public function editpage()
    {   

        $id = I('get.id');
        $templates = M('a_agent_template');
        $results = $templates->where("id = $id")->find();
        $this->assign('results',$results);
        $this->display();
    }
   /**
     *  修改
    */
    public function edit()
    { 

        $code = I('post.code');
        $name = I('post.name');
        $id = I('post.id');
        $filename = I('post.thumb');
        $englishname = I('post.englishname');
        $isfree = I('post.isfree');
        if($isfree == 'on')
        {
            $data['isfree'] = 1;
        }
        if($isfree !='on')
        {
        $data['isfree'] = 0;
        }

        if(!$code)
        {
           return $this->success('主题编码不能为空！', U('Malls/Theme/index'));
        }
        if(!$name)
        {
           return $this->success('主题名称不能为空！', U('Malls/Theme/index'));
        }
        if(!$englishname)
        {
           return $this->success('主题英文名称不能为空！', U('Malls/Theme/index'));
        }
        $data['code'] = $code;
        $data['name'] = $name;
        $data['path'] = $englishname;
        $data['thumburl'] = $filename;
        $theme = M('a_agent_template');
        $result = $theme->where("id = $id")->save($data);
        if($result)
        {
            return $this->success('成功修改主题！', U('Malls/Theme/index'));
        }
        else
        {
            return $this->success('修改主题失败！', U('Malls/Theme/index'));
        }
        $this->display();
    }
   

   /**
     * POST 异步上传文件
    */
    public function upload() {
        $upload = new \Think\Upload();
        $return = ['error' => 1, 'msg' => '缩略图上传失败！', 'imgurl' => ''];
        $upload->maxSize = 10000000000;
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg');
        $upload->rootPath = './Uploads/';
        $upload->savePath = '/templates/';
        $info = $upload->upload();
        if (!$info) {
            $this->error($upload->getError());
        } else {
            $return['error'] = 0;
            $return['msg'] = '缩略图上传成功！';
            $return['imgurl'] = '/Uploads' . $info['file']['savepath'] . $info['file']['savename'];
        }
        $this->ajaxReturn($return,'json');
    }
}