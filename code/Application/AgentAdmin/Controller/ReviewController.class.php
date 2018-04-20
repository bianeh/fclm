<?php
namespace AgentAdmin\Controller;
use Think\Controller;

use Common\Model\BAgentModel;
use AgentAdmin\Model\BAgentAttachmentModel;

class ReviewController extends Controller {

	/**
	 * c customer 列表页面
	 */
    public function editPage(){
    	$agentid = session(C('AGENT_USER_AUTH_DATA'))['agentid'];
        $bAgentModel = new BAgentModel;
        $agent = $bAgentModel->find($agentid);


        $reviewImgs = (new BAgentAttachmentModel)->findUsersReviewImgs($agentid);

        $type1src = '';
        $type2src = '';
        foreach($reviewImgs as $img){
            if($img['type']==1){
                $type1src = $img['path'];
            }
            if($img['type']==2){
                $type2src = $img['path'];
            }
        }

        $this->assign('type1src',$type1src);
        $this->assign('type2src',$type2src);
        $this->assign('reviewImgs',$reviewImgs);
        $this->assign('agent',$agent);
		$this->display(); // 输出模板
    }

    /**
     * 添加图片文件,用于审核
     */
    public function addImg(){

        $upload = new \Think\Upload();
        $return = ['status' => 0, 'msg' => '上传失败！', 'imgurl' => ''];
        $upload->maxSize = 3145728;
        $upload->exts = array('jpg', 'gif', 'png', 'jpeg');
        $upload->rootPath = './Uploads/';
        $upload->savePath = '/bagent/';
        $info = $upload->upload();
        if (!$info) {
            $this->error($upload->getError());
        } else {
            $return['status'] = 1;
            $return['msg'] = '缩略图上传成功！';
            $return['imgurl'] = '/Uploads' . $info['file']['savepath'] . $info['file']['savename'];
        }

        //保存文件
        $type = $_GET['type'];
        $bAgentAttachmentModel = new BAgentAttachmentModel;
        $agentid = session(C('AGENT_USER_AUTH_DATA'))['agentid'];
        $bAgentAttachmentModel->addNewFile($agentid,$type,$return['imgurl']);

        //返回成功信息
        $this->ajaxReturn($return);
    }

}