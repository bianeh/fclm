<?php
namespace News\Controller;
use Think\Controller;
use News\Model\ANewsModel;

class NewsconController extends Controller {
    
    protected $instance = NULL;

    public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new ANewsModel;
		}		
	}
    
    /*
     * 新闻内容列表
     */
    public function index() {
        $count      = $this->instance->where("isdeleted = 0")->count();	
        $PageSize = 15;
		$Page       = new \Think\Page($count,$PageSize);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Page->listRows = $PageSize;
        $Pageshow       = $Page->show();
        $index = [
					"where" => "isdeleted = 0",
					"order" => "weight DESC",
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
        $this->assign('news', $newsList);
        $this->assign('pageSize', $Page->listRows);
        $this->assign('Pageshow',$Pageshow);
        $this->display();
    }
     /*
      * 新闻回收站
      */
    public function recycle() {
        $count      = $this->instance->where("isdeleted = 1")->count();	
		$Page       = new \Think\Page($count,10);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Page->listRows = 15;
        $Pageshow       = $Page->show();
        $index = [
					"where" => "isdeleted = 1",
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
    
    /*
     * 添加新闻内容操作页面
     */

    public function addPage() {
        $obj = new  \News\Model\ACategoryModel;
        $Category       = $obj->index();
        $Tree   = new \Org\Util\Tree;
        $CategoryList   = $Tree::create($obj->_formatLine($Category), 0);
        $this->assign('category',$CategoryList);
        $this->display();
    }

    /*
     * 添加新闻内容程序实现
     */

    public function add() {
        $data["title"] 	 = I('post.title');
		$data["categoryid"]     = I('post.categoryid') ? I('post.categoryid') : 0;
		$data["author"]     = I('post.author');
        $data["source"]     = I('post.source');
        $data["keyword"]     = I('post.keyword');
        $data["style"]     = I('post.style',0,number_int);
        $data["description"]     = I('post.description');
        $data["publishstatus"]     = I('post.publishstatus') ? 1 : 0;
        
        $data["publisher"]     = $_SESSION['adata']['username'] ? $_SESSION['adata']['username'] : '';
        $data["publisherid"]     = $_SESSION['adata']['id'] ? $_SESSION['adata']['id'] : 0;
        
        $thumb = I('post.thumb');
        $content = I('post.editorValue') ? I('post.editorValue') : '';
        
        $status = $this->instance->addNews($data,$content,$thumb);
		if($status) {
			return $this->success('添加成功', U('News/Newscon/index'));
		}			
		else{
			return $this->success('添加失败', U('News/Newscon/addPage'));
		}
    }
    
    /*
     * 修改新闻内容操作页面
     */
    public function editPage() {
        $id = I("get.id", 0, 'intval');
        if(!$id) {
			return $this->success('显示失败', U('News/Newscon/index'));
		}
        $data["find"] = $id;		
		$news = $this->instance->showNews($data);
        if( $news === false) {
			return $this->success('显示失败', U('News/Newscon/index'));
		}
        $obj = new  \News\Model\ACategoryModel;
        $Category       = $obj->index();
        $Tree   = new \Org\Util\Tree;
        $CategoryList   = $Tree::create($obj->_formatLine($Category), 0);
        $this->assign('category',$CategoryList);
        $this->assign('news',$news);
        $this->display();
    }

    /*
     * 修改新闻内容程序实现
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
			return $this->success('修改成功', U('News/Newscon/index'));
		}
		else{
			return $this->success('修改失败', U('News/Newscon/editPage', ['id'=>$data["id"]]));
		}
    }

    /*
     * 删除新闻 彻底
     */
    public function clear() {
        $id = I('get.id');
        if(empty($id)){
            redirect(U('News/Newscon/index'));
        }
        
        if($this->instance->deleteById($id)) {
			return $this->success('删除成功', U('News/Newscon/recycle'));
		}			
		else{
			return $this->error('删除失败', U('News/Newscon/recycle'));
		}
    }
    
    /*
     * 删除新闻，进回收站
     */
    public function delete() {
        $id = I('get.id');
        if(empty($id)){
            redirect(U('News/Newscon/index'));
        }
        $ids[] = $id;
        if($this->instance->delete($ids)) {
			return $this->success('删除成功', U('News/Newscon/index'));
		}			
		else{
			return $this->error('删除失败', U('News/Newscon/index'));
		}
    }
    
    /*
     * 批量删除新闻，进回收站
     */
    public function batchDelete() {
        $ids = I('post.request');
        if(empty($ids)){
            redirect(U('News/Newscon/index'));
        }
        $return = ['status'=>0,'msg'=>'删除失败！'];
        if($this->instance->delete($ids)) {
			$return['status'] = 1;
            $return['msg'] = '删除成功!';
            exit(json_encode($return));
		}			
		else{
			exit(json_encode($return));
		}
    }
    
    /*
     * 批量删除 彻底
     */
    public function clears(){
        $ids = I('post.request');
        if(empty($ids)){
            redirect(U('News/Newscon/recycle'));
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
    /**
     * 调整排序位置地址
     */
    public function positionMove(){
        $json_str = filter_var(trim($_POST['jsontxt']));
        $arg = json_decode($json_str,true);
        $r = $this->instance->updatePostion($arg);
        exit($r);
    }

    public function recovery(){
        $id = I('get.id');
        if(empty($id)){
            redirect(U('News/Newscon/recycle'));
        }
        $ids[] = $id;
        if($this->instance->recovery($ids)) {
			return $this->success('恢复成功', U('News/Newscon/recycle'));
		}			
		else{
			return $this->error('恢复失败', U('News/Newscon/recycle'));
		}
    }

    public function batchRecovery()
    {
    	$ids = I('post.request');
        $return = ['status'=>0,'msg'=>'恢复失败！'];
        if(empty($ids)){
            exit(json_encode($return));
        }
        if($this->instance->recovery($ids)) {
			$return['status'] = 1;
            $return['msg'] = '恢复成功!';
            exit(json_encode($return));
		}			
		else{
			exit(json_encode($return));
		}
    }
    
}