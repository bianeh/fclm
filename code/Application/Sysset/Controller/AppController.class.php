<?php
namespace Sysset\Controller;
use Think\Controller;
use Sysset\Model\AppModel;
class AppController extends Controller {
    public function __construct()
    {
        parent::__construct();
        if($this->instance == NULL) {
            $this->instance = new AppModel();
        }
    }
    public function index()
    {
        $count      = $this->instance->where("1=1")->count();
        $Page       = new \Think\Page($count,5);
        $Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Pageshow       = $Page->show();
        $index = [
            "where" => " 1=1 ",
            "order" => "createtime DESC",
            "limit"	=> array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];

        $applys = $this->instance->index($index);
        $this->assign('applys',$applys);
        $this->assign('Pageshow',$Pageshow);
        $this->display();
    }

}