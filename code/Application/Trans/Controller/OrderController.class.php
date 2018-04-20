<?php
namespace Trans\Controller;

use Think\Controller;
use Trans\Model\OrderModel;
use AgentProduct\Model\BuyLogicModel;

class OrderController extends Controller {

    protected $instance = NULL;

    public function __construct() {
        parent::__construct();
        if ($this->instance == NULL) {
            $this->instance = new OrderModel;
        }
    }

    public function index() {
        $status = I("get.status");
        if (I("get.status") == null || $status == -1) {
            $where = array('fm_order.sellerid' => 1);
            $status = -1;
        } else {
            $where = array('fm_order.sellerid' => 1, 'fm_order.status' => $status);
        }

        $index = [
            "where" => $where,
            "order" => "fm_order.createtime DESC",
            "limit" => array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];
		$Page = new \Think\Page($count, 10);
        $Page->setConfig('theme', "<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Pageshow = $Page->show();
		$count = $this->instance->countOrder($where);
        
		$orders = $this->instance->index($index);
        
        $this->assign('status', $status);
        $this->assign('orders', $orders);
        $this->assign('count', $count);
        $this->assign('Pageshow', $Pageshow);
        $this->display();
    }

    public function search() {
        if (I('get.orderno') == null) {
            return $this->redirect("Trans/Order/index");
        }
        $data['fm_order.orderno'] = I('get.orderno');
        $search = [
            "where" => $data,
            "order" => "fm_order.createtime DESC",
            "limit" => array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];
        $order = $this->instance->searchOrder($search);
        $this->assign('order', $order);
        $this->assign('Pageshow', $Pageshow);
        $this->display();
    }


    public function view() {
        $data["fm_order.id"] = I('get.id');
        $order = $this->instance->showOrder($data);
        if ($order === false) {
            return $this->success('显示失败', U('Trans/Order/index'));
        }
        $this->assign('order', $order);
        $this->display();
    }

	public function finish() {
		$data["id"]     = I('get.id');
		$data['status'] = 1;
		$data['paytime'] 	= time();
		$data['paystatus']  = 1;
		
		$status = $this->instance->finishOrder($data);
		if($status !== false) {
			$confirmStatus = $this->_confirmDeal($data["id"]);
			if($confirmStatus !== true) {
				return $this->success('订单状态变更成功, 但客户资产变更失败！', U('Trans/Order/index'));
			}
			return $this->success('订单状态变更成功', U('Trans/Order/index'));
		}			
		else{
			return $this->success('订单状态变更失败', U('Trans/Order/index'));
		}
	}

    /**
     * 确认订单支付成功后，使用如下方法
     * @param $id int 订单id
     */
    private function _confirmDeal($id) {
        //确认订单，添加到用户库存
        $bBuyLogicModel = new BuyLogicModel();
        $result = $bBuyLogicModel->confirmDeal($id);
        return $result;
    }

}