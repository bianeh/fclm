<?php
namespace Train\Controller;
use Think\Controller;
use Train\Model\AKnowledgecatModel;
class KnowledgecatController extends Controller {
    protected $instance = NULL;

    public function __construct()
    {
        parent::__construct();
        if($this->instance == NULL) {
            $this->instance = new AKnowledgecatModel;
        }
    }

    /**
     * 知识分类管理
     */
    public function index(){
        $Tree   = new \Org\Util\Tree;
        $Category = $this->instance->index();
        $CategoryList   = $Tree::create($Category, 0);
        $CategoryList   = $Tree::addNodeClass($CategoryList);
        $this->assign('category',$CategoryList);
        $this->assign('pageSize', count($CategoryList));
        $this->display();
    }

    /**
     * 添加知识分类页面
     */
    public function addPage() {
        $Tree   = new \Org\Util\Tree;
        $Category       = $this->instance->index();
        $CategoryList   = $Tree::create($this->instance->_formatLine($Category), 0);
        $this->assign('category',$CategoryList);
        $this->display();
    }

    /**
     * 添加知识分类
     * @return mixed
     */
    public function add() {
        $data["name"] 	 = I('post.name');
        $data["pid"]     = I('post.pid') ? I('post.pid') : 0;
        $data["code"]     = I('post.code');
        $data["level"]     = I('post.level');
        $status = $this->instance->addCategory($data);
        if($status) {
            return $this->success('添加成功！', U('Train/Knowledgecat/index'));
        }
        else{
            return $this->success('添加失败！', U('Train/Knowledgecat/addPage'));
        }
    }

    /**
     * 修改知识分类页面
     * @return mixed
     */
    public function editPage() {
        $id = I("get.id", 0, 'intval');
        if(!$id) {
            return $this->success('鏄剧ず澶辫触', U('Train/Knowledgecat/index'));
        }
        $data["find"] = $id;
        $category = $this->instance->showCategory($data);
        if( $category === false) {
            return $this->success('鏄剧ず澶辫触', U('Train/Knowledgecat/index'));
        }
        $Tree   = new \Org\Util\Tree;
        $Category       = $this->instance->index();
        $CategoryList   = $Tree::create($this->instance->_formatLine($Category), 0);
        $this->assign('categoryList',$CategoryList);
        $this->assign('category',$category);

        $this->display();
    }

    /**
     * 修改知识分类
     * @return mixed
     */
    public function edit() {
        $data["id"] 	 = I('post.id');
        $data["name"] 	 = I('post.name');
        $data["level"]   = I('post.level');
        $data["pid"]     = I('post.pid');
        $data["code"]     = I('post.code');
        $status = $this->instance->editCategory($data);
        if($status !== false) {
            return $this->success('修改成功！', U('Train/Knowledgecat/index'));
        }
        else{
            return $this->success('修改失败！', U('Train/Knowledgecat/editPage', ['id'=>$data["id"]]));
        }
    }

    /**
     * 删除知识分类
     * @return mixed
     */
    public function delete(){
        $id = I('get.id');
        if(empty($id)){
            redirect(U('Train/Knowledgecat/index'));
        }

        if($this->instance->deleteById($id)) {
            return $this->success('删除成功！', U('Train/Knowledgecat/index'));
        }
        else{
            return $this->error('删除失败！', U('Train/Knowledgecat/index'));
        }
    }
}