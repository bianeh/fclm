<?php

namespace Common\Model;

use Think\Model;
use Common\Model\InviteModel;
use Common\Model\BAgentUserModel;
use Common\Model\BAgentConst;

class BAgentModel extends Model {

    protected $tableName = 'b_agent';

    protected $_validate = array(
        ['username', 'require', '用户名必须!'],
        ['email', 'email', 'Email不正确'],
        ['email', '', 'Email已存在', self::MUST_VALIDATE, 'unique'],    //新增的时候验证email
        ['phone', '/^1(3[0-9]|4[57]|5[0-35-9]|7[01678]|8[0-9])\\d{8}$/', '手机号码不正确'],
        ['phone', '', '手机已存在', self::MUST_VALIDATE, 'unique'],    //新增的时候验证phone
        ['credientialnu', '18', '身份证长度不正确', self::MUST_VALIDATE, 'length'], //新增的时候验证phone
        ['status', [0, 1, 2, 3, 4], '值的范围不正确'],
    );

    protected $_auto = [
        ['status', 1],
        ['reviewstatus', 0],
        ['createtime', 'time', self::MODEL_INSERT, 'function'],
    ];

    /**
     * 通过邀请注册IFA用户
     */
    public function registerNewAgentByInvite(InviteModel $inviteModel, $password) {
        $data['username'] = $inviteModel->username;
        $data['credientialnu'] = $inviteModel->credientialno;
        $data['phone'] = $inviteModel->phone;
        $data['email'] = $inviteModel->email;
        $validate = $this->validate($this->_validate)->create($data);
        if (!$validate) {
            return false;
        }
        $res = $this->add();
        if ($res) {
            $inviteModel->invitedid = $res;
            $inviteModel->save();
            //创建agent成功,创建agent user 账户
            $agentModel = new self;
            $agentModel->find($res);
            $agentUser = new BAgentUserModel;
            $agentUser->addMainAgentUser($agentModel, $password);
            return $res;
        } else {
            return false;
        }
    }

    /**
     * 检测agent是否被冻结
     */
    public function canLogin() {
        if ($this->status == BAgentConst::STATUS_FREEZE) {
            return false;
        } else {
            return true;
        }
    }

    /**
     * 手动添加IFA用户
     */
    public function addNewAgent() {
        $validate = $this->validate($this->_validate)->create();
        if (!$validate) {
            return $this->getError();
        }
        $res = $this->add();
        if ($res) {
            //创建agent成功,创建agent user 账户
            $agentModel = new self;
            $agentModel->find($res);
            $agentUser = new BAgentUserModel;
            $agentUser->addMainAgentUser($agentModel, I('password'));
            $agentCUserModel = new CUserModel;
            $agentCUserId = $agentCUserModel->addAgentSubAccount($agentModel);
            $agentModel->cuserid = $agentCUserId;
            $agentModel->save();
            return true;
        } else {
            return '添加错误';
        }
    }

    /**
     * 获取所有的IFA用户
     */
    public function getAllAgents() {
        return $this->select();
    }

}