<?php
namespace AgentTrans\Controller;
use Think\Controller;
use AgentTrans\Model\OrderModel;

class MyOrderController extends Controller {
	
	protected $instance = NULL;
	
	protected $cuserid;
	
	public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new OrderModel;
		}
		
		$this->cuserid = session(C("AGENT_USER_AUTH_DATA"))["cuserid"];
	}
	
	public function index()
	{
		$status = I("get.status");
		if(I("get.status") == null || $status == -1) {
			$where = array("fm_order.buyerid" => $this->cuserid);
			$status = -1;
		}else{
			$where = array(
					"fm_order.buyerid" => $this->cuserid,
					"fm_order.status"  => $status,
					); 
		}		
		$count      = $this->instance->where($where)->count();
		$Page       = new \Think\Page($count,10);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Pageshow       = $Page->show();		
		$index = [
					"where" => $where,
					"order" => "fm_order.createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
		$orders = $this->instance->index($index);
		$count  = $this->instance->countMyOrder($where);
		
		$this->assign('status',$status);
		$this->assign('count',$count);
		$this->assign('orders',$orders);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
    }
	
	public function search()
	{
		if(I('get.createtime') == null) {
			return $this->redirect("AgentTrans/MyOrder/index");
		}
		$data['fm_order.createtime'] = I('get.createtime');
		$data['fm_order.buyerid']  = $this->cuserid;
		$search = [
					"where" => $data,
					"order" => "fm_order.createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
		$orders = $this->instance->searchMyOrder($search);
		$this->assign('orders',$orders);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
	}
	
	
	public function view()
	{
		$data["fm_order.id"]    = I('get.id');
		$data['fm_order.buyerid']  = $this->cuserid;
		$order = $this->instance->showMyOrder($data);
		if($order === false) {
			return $this->redirect("AgentTrans/MyOrder/index");
		}
		$this->assign('order',$order);
		$this->display();
	}
}