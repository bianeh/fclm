<?php
namespace Train\Controller;
use Think\Controller;
use Train\Model\AKnowledgesModel;
use Train\Model\AKnowledgereplyModel;

class KnowledgesController extends Controller {
    protected $instance = NULL;
    public function __construct()
    {
        parent::__construct();
        if($this->instance == NULL) {
            $this->instance = new AKnowledgesModel;
        }
    }

    /**
     * 知识管理主页面
     */
    public function index() {
        $count      = $this->instance->where(" isdeleted=0 ")->count();
        $Page       = new \Think\Page($count,10);
        $Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Page->listRows = 15;
        $Pageshow       = $Page->show();
        $index = [
            "where" => " isdeleted=0 ",
            "order" => "id DESC",
            "limit"	=> array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];
        $keyword = trim(I('get.keyword'));
        if($keyword){
            $index['where'] .= " AND title LIKE '%".$keyword."%'";
        }
        $newsList = $this->instance->index($index);

        foreach ($newsList as $k =>$v)
        {
            $id = $v['id'];
            $reply = M('knowledge_reply');
            $numbers = $reply ->where(" knowledgeid=$id AND usertype = 0 AND replytype = 0 ")->select();
            $count = count($numbers);
            if(!$count)
            {
                $count = 0;
            }
            $newsList[$k]['count'] = $count;

        }
        $this->assign('news', $newsList);
        $this->assign('pageSize', $Page->listRows);
        $this->assign('Pageshow',$Pageshow);
        $this->display();
    }

    /**
     * 添加知识页面
     */

    public function addPage() {
        $obj = new  \Train\Model\AKnowledgecatModel;
        $Category       = $obj->index();
        $Tree   = new \Org\Util\Tree;
        $CategoryList   = $Tree::create($obj->_formatLine($Category), 0);
        $this->assign('category',$CategoryList);
        $this->display();
    }

    /**
     * 知识添加
     * @return mixed
     */

    public function add() {
        $data["title"] = I('post.title');
        $data["categoryid"]     = I('post.categoryid') ? I('post.categoryid') : 0;
        $data["author"]     = I('post.author');
        $data["source"]     = I('post.source');
        $data["keyword"]     = I('post.keyword');
        $data["weight"]     = I('post.weight',0,number_int);
        $data['isdeleted'] = 0;
        $data["style"]     = I('post.style',0,number_int);
        $data["description"]     = I('post.description');
        $data["publishstatus"]     = I('post.publishstatus') ? 1 : 0;
        $data["publisher"]     = $_SESSION['adata']['username'] ? $_SESSION['adata']['username'] : '';
        $data["publisherid"]     = $_SESSION['adata']['id'] ? $_SESSION['adata']['id'] : 0;
        $thumb = I('post.thumb');
        $content = I('post.editorValue') ? I('post.editorValue') : '';
        $status = $this->instance->addNews($data,$content,$thumb);
        if($status) {
            return $this->success('添加成功', U('Train/Knowledges/index'));
        }
        else{
            return $this->success('添加失败', U('Train/Knowledges/addPage'));
        }
    }

    /**
     * 修改页面
     * @return mixed
     */
    public function editPage() {
        $id = I("get.id", 0, 'intval');
        if(!$id) {
            return $this->success('显示失败', U('Train/Knowledges/index'));
        }
        $data["find"] = $id;
        $news = $this->instance->showNews($data);
        if( $news === false) {
            return $this->success('显示失败', U('Train/Knowledges/index'));
        }
        $obj = new  \Train\Model\AKnowledgecatModel;
        $Category       = $obj->index();
        $Tree   = new \Org\Util\Tree;
        $CategoryList   = $Tree::create($obj->_formatLine($Category), 0);
        $this->assign('category',$CategoryList);
        $this->assign('news',$news);
        $this->display();
    }

    /**
     * 对知识进行修改
     * @return mixed
     */
    public function edit() {
        $data["id"] 	 = I('post.id');
        $data["title"] 	 = I('post.title');
        $data["categoryid"]   = I('post.categoryid');
        $data["author"]     = I('post.author');
        $data["source"]     = I('post.source');
        $data["keyword"]     = I('post.keyword');
        $data["weight"]     = I('post.weight',0,number_int);
        $data["style"]     = I('post.style',0,number_int);
        $data["description"]     = I('post.description');
        $data["publishstatus"]     = I('post.publishstatus') ? 1 : 0;
        $thumb = I('post.thumb');
        $content     = I('post.editorValue');
        $status = $this->instance->editNews($data,$content,$thumb);
        if($status !== false) {
            return $this->success('修改成功', U('Train/Knowledges/index'));
        }
        else{
            return $this->success('修改失败', U('Train/Knowledges/editPage', ['id'=>$data["id"]]));
        }
    }
    /**
     * 知识删除
     * @return mixed
     */
    public function delete() {
        $id = I('get.id');
        if(empty($id)){
            redirect(U('Train/Knowledges/index'));
        }
        $ids[] = $id;
        if($this->instance->delete2($ids)) {
            return $this->success('删除成功', U('Train/Knowledges/index'));
        }
        else{
            return $this->error('删除失败', U('Train/Knowledges/index'));
        }
    }
    /**
     * 批量知识删除
     */
    public function batchDelete() {
        $ids = I('post.request');
        if(empty($ids)){
            redirect(U('Train/Knowledges/index'));
        }
        $return = ['status'=>0,'msg'=>'删除失败！'];
        if($this->instance->delete2($ids)) {
            $return['status'] = 1;
            $return['msg'] = '删除成功!';
            exit(json_encode($return));
        }
        else{
            exit(json_encode($return));
        }
    }

    /*
     * 批量删除
     */
    public function clears(){
        $ids = I('post.request');
        if(empty($ids)){
            redirect(U('Train/Knowledges/recycle'));
        }
        $return = ['status'=>0,'msg'=>'删除失败！'];
        if($this->instance->batchDelete($ids)) {
            $return['status'] = 1;
            $return['msg'] = '删除成功!';
            exit(json_encode($return));
        }
        else{
            exit(json_encode($return));
        }
    }

    /*
     * POST 异步上传文件
     */
    public function upload() {
        $upload = new \Think\Upload();
        $return = ['error' => 1, 'msg' => '缩略图上传失败！', 'imgurl' => ''];
        $upload->maxSize = 3145728;
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg');
        $upload->rootPath = './Uploads/';
        $upload->savePath = '/news/';
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
    public function replyPage()
    {
        $id = I("get.id", 0, 'intval');
        if(!$id) {
            return $this->success('显示失败', U('Train/Knowledges/index'));
        }

        $reply = M('knowledge_reply');
        $count      = $reply->where(" knowledgeid=$id AND usertype=0 ")->count();
        $Page       = new \Think\Page($count,10);
        $Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Page->listRows = 10;
        $Pageshow       = $Page->show();
        $index = [
            "where" => " knowledgeid=$id AND usertype=0 ",
            "order" => "replytype asc",
            "limit"	=> array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];
        $replyModel = new AKnowledgereplyModel;
        $newsList = $replyModel->index($index);
        $data["find"] = $id;
        $news = $this->instance->showNews($data);
        if( $news === false) {
            return $this->success('显示失败', U('Train/Knowledges/index'));
        }
        $reply = M('knowledge_reply');
        $replys = $newsList;
        $requests = $reply->where(" knowledgeid=$id AND usertype=1 ")->order("replytype asc")->select();
        $this->assign('replys',$replys);
        $this->assign('requests',$requests);
        $this->assign('news',$news);
        $this->assign('pageSize', $Page->listRows);
        $this->assign('Pageshow',$Pageshow);
        $this->display();
    }
    public function reply()
    {
        $id = I('get.newsid','0','intval');
        $knowledgeid = I('get.knowledgeid','0','intval');
        $request = I('get.reply');
        if(!$request)
        {
            return $this->error('回复内容不能为空！',U('Train/Knowledges/replyPage',['id'=>$knowledgeid]));
        }
        $data['usertype'] = 1;
        $data['content'] = $request;
        $data['replytime'] = strtotime(date('Y-m-d H:i:s'),time());
        $data['followid'] = $id;
        $data['userid'] = session(C('USER_AUTH_DATA'))['id'];
        $data['username'] = session(C('USER_AUTH_DATA'))['username'];
        $data['knowledgeid'] = $knowledgeid;
        $reply = M('knowledge_reply');
        $result = $reply->add($data);
        $replycomment['replytype'] = 1;
        $reply->where("id = $id")->save($replycomment);
        if($result)
        {
            return $this->success('回复成功！',U('Train/Knowledges/replyPage',['id'=>$knowledgeid]));
        }
        else{
            return $this->error('回复失败！',U('Train/Knowledges/replyPage',['id'=>$knowledgeid]));
        }
    }
}