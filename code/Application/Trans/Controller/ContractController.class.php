<?php
namespace Trans\Controller;

use Think\Controller;
use Trans\Model\ContractModel;

class ContractController extends Controller {
	
	protected $instance = NULL;

    public function __construct() {
        parent::__construct();
        if ($this->instance == NULL) {
            $this->instance = new ContractModel;
        }
    }
	
	/**
		func：合同列表
	*/
    public function index()
	{
		$index = [
            "where" => '1 = 1',
            "order" => "fm_contracts.createtime DESC",
            "limit" => array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];
		
        $Page = new \Think\Page($count, 10);
        $Page->setConfig('theme', "<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Pageshow = $Page->show();
        
        $contracts = $this->instance->index($index);
        $count  = $this->instance->where($where)->count();

        $this->assign('contracts', $contracts);
        $this->assign('count', $count);
        $this->assign('Pageshow', $Pageshow);
        $this->display();
    }
	
	/**
		func：合同列表
	*/
    public function search()
	{
		$contractsno = I('get.contractsno');
		$status 	 = I('get.status');
		if(!empty($contractsno)) {
			$where = array('contractsno' => $contractsno);
		}elseif(!empty($status)) {
			if($status == 'all') {
				return redirect(U('Trans/Contract/index'));
			}
			$where = array('status' => $status);
		}else{
			return redirect(U('Trans/Contract/index'));
		}
		$index = [
            "where" => $where,
            "order" => "fm_contracts.createtime DESC",
            "limit" => array(
                "firstRow" => $Page->firstRow,
                "listRows" => $Page->listRows,
            ),
        ];
		
		$count  = $this->instance->where($where)->count();
        $Page = new \Think\Page($count, 10);
        $Page->setConfig('theme', "<ul class='pagination'></li><li>%FIRST%</li><li>%UP_PAGE%</li><li>%LINK_PAGE%</li><li>%DOWN_PAGE%</li><li>%END%</li><li><span> %HEADER%  %NOW_PAGE%/%TOTAL_PAGE% 页 </span></li></ul>");
        $Pageshow = $Page->show();
        
        $contracts = $this->instance->searchContract($index);

        $this->assign('contracts', $contracts);
        $this->assign('count', $count);
        $this->assign('Pageshow', $Pageshow);
        $this->display();
    }
	
	/**
		func：订单完成支付完成生成合同
		params $orderno 订单编号
	*/
	public function make(Array $index)
	{
		$status = $this->instance->makeContract($index);
		if($status) {
			return true;
		}
		return false;
	}
	
	/**
		func：查看合同
	*/
	public function view()
	{
		$data["fm_contracts.id"] = I('get.id');
        $contract = $this->instance->showContract($data);
        if ($contract === false) {
            return $this->success('显示失败', U('Trans/Contract/index'));
        }
        $this->assign('contract', $contract);
        $this->display();
	}
	
	/**
		func：修改合同状态
		params: 0 乙方合同未申请
				1 乙方合同已申请
				2 甲方合同确认并打印
				3 甲方合同已邮寄
				4 乙方合同已确认				
				-1 合同作废
	*/
	public function markStatus()
	{
		$data["id"]     = I('get.id');
		$data["status"] = I('get.status');	
		
		$status = $this->instance->markStatus($data);
		if($status !== false) {
			return $this->success('状态变更成功', U('Trans/Contract/index'));
		}			
		else{
			return $this->success('状态变更失败', U('Trans/Contract/index'));
		}
	}
}