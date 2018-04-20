<?php
namespace Home\Controller;
use Think\Controller;
class NewsController extends Controller{
    protected $instance = NULL;
    
    function __construct() {
        parent::__construct();
        if($this->instance == NULL){
            $this->instance = new \Home\Model\NewsModel;
        }
    }
    
    public function index(){
        $count      = $this->instance->where("isdeleted = 0")->count();
        $PageSize = 6;
		$Page       = new \Think\Page($count,$PageSize);
		$Page->setConfig('theme',"<ul class='pagination'><li class='hidden-xs'>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li class='hidden-xs'>%END%</li><li class='hidden-xs'><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Page->listRows = $PageSize;
        $Pageshow       = $Page->show();
        $index = [
					'where' => '',
                    'limit'	=> array(
							'firstRow' => $Page->firstRow,
                            'listRows' => $Page->listRows,
						),
					];
        $keyword = trim(I('get.keyword'));
        if($keyword){
            $index['where'] .= " AND title LIKE '%".$keyword."%'";
        }
        $list = $this->instance->getList($index);
        $hotRecommend = $this->instance->hotRecommend();
        $this->assign('Pageshow',$Pageshow);
        $this->assign("hotRecommend", $hotRecommend);
        $this->assign("list", $list);
        $this->display();
    }
    
    public function Detail(){
        $newsId = I("get.id");
        $detail = $this->instance->getDetail($newsId);
        $ambo = $this->instance->getAmbo($newsId);
        $this->instance->increase($newsId);
        $this->assign('ambo', $ambo);
        $this->assign('detail', $detail);
        $this->display('detail');
    }
    
    public function thumb() {
        $newsId = I("post.id");
        $res = $this->instance->thumb($newsId);
        $return = ['msg'=>'点赞失败！'];
        if($res !== false){
            $return = ['msg'=>isset($res['msg']) ? $res['msg']:'点赞成功！'];
        }
        $this->ajaxReturn($return,'JSON');
    }
}