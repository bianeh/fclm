<?php
namespace AgentProduct\Controller;
use AgentProduct\Model\DisclosureModel;
use Think\Controller;
use Common\Util\Util;
use AgentProduct\Model\BAgentProductModel;

class DisclosureController extends Controller {
	
	/**
	 * 产品披露展示页面
	 */
    public function disclosurePage($id){
	    $productModel = new BAgentProductModel();
        $product = $productModel->getAgentProductDetail($id);
        if(!$product){
            return $this->error('error');
        }

        $disclosureModel = new DisclosureModel();
        $lists = $disclosureModel->allInfo($id);

        $this->assign('bproductid',$id);
        $this->assign('lists',$lists);
        $this->assign('product',$product);
        $this->display();
    }

    /**
     * 产品披露添加页面
     */
    public function addPage($id,$bProductId){
        $this->assign('bproductid',$bProductId);
        $this->assign('disclosureid',$id);
        $this->display();
    }

    /**
     * 添加产品披露信息动作
     */
    public function add(){
        $disclosureModel = new DisclosureModel();
        $aProductDisclosureId = I('aproductdisclosureid');
        $agentId = session(C("AGENT_USER_AUTH_DATA"))['agentid'];
        $comment = I('comment');
        if(empty($aProductDisclosureId) || empty($agentId) || empty($comment)){
            $this->error('参数错误');
        }
        $ret = $disclosureModel->addDisclosureInfo($aProductDisclosureId,$agentId,$comment);

        if($ret === true){
            $this->success('添加成功',U('AgentProduct/Disclosure/disclosurePage',['id'=>I('bproductid')]));
        }else{
            $this->error($ret);
        }
    }

    /**
     * 编辑产品披露信息页面
     * @param $id
     * @param $bproductid
     */
    public function editPage($id,$bproductid){
        $disclosureModel = new DisclosureModel();
        $disclosureInfo = $disclosureModel->getDisclosureInfoById($id);
        if(empty($disclosureInfo)){
            $this->error('没有该记录，请重试');
        }

        $this->assign('disclosureInfo',$disclosureInfo);
        $this->assign('bproductid',$bproductid);
        $this->assign('id',$id);
        $this->display();
    }

    /**
     * 披露信息编辑动作
     */
    public function edit(){
        $disclosureModel = new DisclosureModel();
        $ret = $disclosureModel->edit(I('id'),I('comment'));
        if($ret === true){
            $this->success('修改成功',U("AgentProduct/Disclosure/disclosurePage",['id'=>I('bproductid')]));
        }else{
            $this->error($ret);
        }
    }

}