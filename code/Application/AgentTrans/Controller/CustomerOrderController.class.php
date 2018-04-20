<?php
namespace AgentTrans\Controller;
use Think\Controller;
use AgentTrans\Model\OrderModel;

class CustomerOrderController extends Controller {
	
	protected $instance = NULL;
	
	public function __construct()
	{
		parent::__construct();
		if($this->instance == NULL) {
			$this->instance = new OrderModel;
		}

		$this->cuserid = session(C("AGENT_USER_AUTH_DATA"))["cuserid"];
		
		$this->agentid = session(C("AGENT_USER_AUTH_DATA"))["agentid"];
	}
	
	public function index()
	{
		$status = I("get.status");
		if(I("get.status") == null || $status == -1) {
			$where["fm_order.agentid"]  = $this->agentid;
			$where["fm_order.sellerid"] = $this->cuserid;
			$where['_logic'] = 'or';
			$map['_complex'] = $where;
			$status = -1;
		}else{
			$where["fm_order.agentid"]  = $this->agentid;
			$where["fm_order.sellerid"] = $this->cuserid;
			$where['_logic'] = 'or';
			$map['_complex'] = $where;
			$map['fm_order.status'] = $status;
		}		
		$count      = $this->instance->where($map)->count();

		$Page       = new \Think\Page($count,10);
		$Page->setConfig('theme',"<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
		$Pageshow       = $Page->show();		
		$index = [
					"where" => $map,
					"order" => "fm_order.createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
		$orders = $this->instance->index($index);
		$count  = $this->instance->countCustomerOrder($map);
		$this->assign('status',$status);
		$this->assign('count',$count);
		$this->assign('orders',$orders);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
    }
	
	public function search()
	{
		if(I('get.createtime') == null) {
			return $this->redirect("AgentTrans/CustomerOrder/index");
		}
		
		$data["fm_order.agentid"]  = $this->agentid;
		$data["fm_order.sellerid"] = $this->cuserid;
		$data['_logic'] = 'or';
		$map['_complex'] = $data;
		$map['fm_order.createtime'] = I('get.createtime');

		$search = [
					"where" => $map,
					"order" => "fm_order.createtime DESC",
					"limit"	=> array(
							"firstRow" => $Page->firstRow,
							"listRows" => $Page->listRows,
						),
					];
		$order = $this->instance->searchCustomerOrder($search);
		$this->assign('order',$order);
		$this->assign('Pageshow',$Pageshow);
		$this->display();
	}
	
	
	public function view()
	{
		$data["fm_order.agentid"]  = $this->agentid;
		$data["fm_order.sellerid"] = $this->cuserid;
		$data['_logic'] = 'or';
		$map['_complex'] = $data;
		
		$map["fm_order.id"]    = I('get.id');
		
		$order = $this->instance->showCustomerOrder($data);
		if($order === false) {
			return $this->success('显示失败', U('AgentTrans/CustomerOrder/index'));
		}
		$this->assign('order',$order);
		$this->display();
	}
	
	
	
	
}