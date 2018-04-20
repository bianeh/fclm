<?php
namespace AgentTrain\Controller;
use Think\Controller;
use Train\Model\AKnowledgesModel;

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
        $where = " isdeleted =0 ";
        $keyword = trim(I('get.keyword'));
        if($keyword){
            $where = " isdeleted = 0 AND title LIKE '%".$keyword."%'";
        }
        $count      = $this->instance->where($where)->count();
        $Page       = new \Think\Page($count,10);
        $Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Page->listRows = 15;
        $Pageshow       = $Page->show();
        $index = [
            "where" => $where,
            "order" => "id DESC",
            "limit"	=> array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];
        $newsList = $this->instance->index($index);
        $this->assign('news', $newsList);
        $this->assign('pageSize', $Page->listRows);
        $this->assign('Pageshow',$Pageshow);
        $this->display();
    }


    /**
     * 小B端评论
     */
    public function comment()
    {
        $comment = I("get.comment");
        $id = I("get.newsid");
        if(!$comment)
        {
            return $this->success('评论内容不能为空！', U('AgentTrain/Knowledges/editPage', ['id'=>$id]));
        }
        $data['userid'] = session(C('AGENT_USER_AUTH_DATA'))['id'];
        $data['username'] = session(C('AGENT_USER_AUTH_DATA'))['username'];
        $data['knowledgeid'] = $id;
        $data['usertype'] = 0;
        $data['content'] = $comment;
        $data['replytype'] = 0;
        $data['createtime'] = strtotime(date('Y-m-d H:i:s'),time());
        $reply = M('knowledge_reply');
        $result = $reply->add($data);

        if($result)
        {
            return $this->success('评论内容成功！',U('AgentTrain/Knowledges/editPage',['id'=>$id]));
        }
        else{
            return $this->error('评论内容不成功！',U('AgentTrain/Knowledges/editPage',['id'=>$id]));
        }
    }

    /**
     * 点赞处理
     */
    public function zan()
    {
        $id = $_POST['id'];
        if($id)
        {
            $knowledge = M('knowledge');
            $result = $knowledge->where("id=$id")->find();
            $data['clickcount'] = $result['clickcount'] + 1;
            $res = $knowledge->where("id=$id")->save($data);
            if($res)
            {
                echo 1;
            }
        }
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
        $data["title"] 	 = I('post.title');
        $data["categoryid"]     = I('post.categoryid') ? I('post.categoryid') : 0;
        $data["author"]     = I('post.author');
        $data["source"]     = I('post.source');
        $data["keyword"]     = I('post.keyword');
//        $data["weight"]     = I('post.weight',0,number_int);
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
            return $this->success('显示失败', U('AgentTrain/Knowledges/index'));
        }
        $data["find"] = $id;
        $news = $this->instance->showNews($data);
        if( $news === false) {
            return $this->success('显示失败', U('AgentTrain/Knowledges/index'));
        }
        $obj = new  \Train\Model\AKnowledgecatModel;
        $Category       = $obj->index();
        $Tree   = new \Org\Util\Tree;
        $CategoryList   = $Tree::create($obj->_formatLine($Category), 0);
        $reply = M('knowledge_reply');
        $replys = $reply->where("knowledgeid=$id AND usertype = 0")->select();
        $requests = $reply->where("knowledgeid=$id AND usertype = 1")->select();
        $this->assign('requests',$requests);
        $this->assign('replys',$replys);
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


//    public function clear() {
//        $id = I('get.id');
//        if(empty($id)){
//            redirect(U('News/Newscon/index'));
//        }
//
//        if($this->instance->deleteById($id)) {
//            return $this->success('删除成功', U('Train/Knowledges/recycle'));
//        }
//        else{
//            return $this->error('删除失败', U('Train/Knowledges/recycle'));
//        }
//    }

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
}