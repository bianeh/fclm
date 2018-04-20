<?php

namespace Auth\Controller;

use Think\Controller;
use Common\Model\InviteModel;
use Common\Model\BAgentModel;


class RegisterController extends Controller {

	/**
	 * 注册IFA 用户页面
	 */
    public function user(){
        $passport = I('passport');
        if(!$passport){
            //没有passport 的用户，直接跳转到主页
            $this->redirect('Home/Index/index');
        }
        $inviteModel = new InviteModel;
        $inviteInfo = $inviteModel->where(['hash'=>$passport])->find();
        if($inviteInfo===null){
            //passport没找到,5秒后跳到主页
            $this->redirect('Home/Index/index',[],5,'校验出错');
        }

        //检测是否超过有效期
        if($inviteModel->isOverTime()){
            $this->redirect('Home/Index/index',[],5,'邀请记录超过有效期');
        }

        //确认用户可以注册IFA
        if(!$inviteModel->canRegisterIFA()){
            $this->redirect('Home/Index/index',[],5,'不可注册IFA账户');
        }

        //检测用户是否已经注册，已经注册，跳转到登陆界面
        if($inviteModel->isRegisted()){
            $this->redirect('Home/Login/user');
        }

        $this->assign('inviteInfo',$inviteModel);
        $this->display();
    }

    /**
     * 检验inviteCode是否正确
     * passport & invitecode
     */
    public function checkInvitecode(){
        $invitecode = I('invitecode');
        $passport = I('passport');
        if(!$invitecode || !$passport){
            $this->ajaxReturn(['status'=>0]);
        }
        $inviteModel = new InviteModel;
        $inviteModel->where(['hash'=>$passport])->find();
        //邀请记录不存在 or 邀请码不匹配 
        if(!$inviteModel->isInviteCodeRight($invitecode)){
            $this->ajaxReturn(['status'=>0]);
        }
        $this->ajaxReturn(['status'=>1]);
    }

    /**
     * 上传密码，创建用户
     */
    public function doRegister(){
        $invitecode = I('invitecode');
        $passport = I('passport');
        if(!$invitecode || !$invitecode){
            $this->ajaxReturn(['status'=>0]);
        }
        $inviteModel = new InviteModel;
        $inviteInfo = $inviteModel->where(['hash'=>$passport])->find();
        //邀请记录不存在 or 邀请码不匹配 
        if(!$inviteModel->isInviteCodeRight($invitecode)){
            $this->ajaxReturn(['status'=>0,'errorinfo'=>'邀请码不匹配']);
        }

        //注册信息是否匹配
        if(!$inviteModel->userInfoCheck(I('name'),I('phone'),I('email'),I('credientialno'))){
            $this->ajaxReturn(['status'=>0,'errorinfo'=>'用户注册信息不匹配']);
        }

        //确认用户可以注册IFA
        if(!$inviteModel->canRegisterIFA()){
            $this->ajaxReturn(['status'=>0,'errorinfo'=>'不可注册IFA账户']);
        }

        //注册用户
        $agentModel = new BAgentModel;
        $newAgentId = $agentModel->registerNewAgentByInvite($inviteModel,I('password'));
        if($newAgentId == false){
            $this->ajaxReturn(['status'=>0,'errorinfo'=>'注册失败']);
        }

        $this->ajaxReturn(['status'=>1,'data'=>['agentid'=>$newAgentId]]);
    }

    /**
     * 用户协议界面
     */
    public function useragreement(){
        $this->display();
    }

}