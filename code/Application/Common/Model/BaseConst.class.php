<?php

namespace Common\Model;

class BaseConst {

	/*
        status for feedback
        table: a_feedback
        column: isdone
    */
    CONST FEEDBACK_NOT_DONE             	 = 0;  // 未处理
	CONST FEEDBACK_NOT_DONE_TITLE			 = "未处理";
    CONST FEEDBACK_DONE          			 = 1;  // 已处理
	CONST FEEDBACK_DONE_TITLE			 	 = "已处理";
	
	
	/*
        status for message
        table: a_message
        column: status
    */
    CONST MESSAGE_NOT_SEND             	 = 0;  // 未发送
	CONST MESSAGE_NOT_SEND_TITLE			 = "未发送";
    CONST MESSAGE_SEND          			 = 1;  // 已发送
	CONST MESSAGE_SEND_TITLE			 	 = "已发送";
	CONST MESSAGE_SENDING          			 = 2;  // 正在发送...
	CONST MESSAGE_SENDING_TITLE			 	 = "正在发送...";
	
	/*
        levelname for IFA
        table: b_agent, a_message
        column: status
    */
	CONST IFA_LEVEL_0_TITLE					 = "无定义";
	CONST IFA_LEVEL_1           	 		 = 1; 
    CONST IFA_LEVEL_1_TITLE             	 = "新秀"; 
	CONST IFA_LEVEL_2						 = 2;
	CONST IFA_LEVEL_2_TITLE			 	 	 = "少侠";
	CONST IFA_LEVEL_3						 = 3;
    CONST IFA_LEVEL_3_TITLE          		 = "大侠";
	CONST IFA_LEVEL_4						 = 4;
	CONST IFA_LEVEL_4_TITLE			 	     = "掌门";
	CONST IFA_LEVEL_5						 = 5;
	CONST IFA_LEVEL_5_TITLE          		 = "宗师";
	CONST IFA_LEVEL_6 						 = 6;
	CONST IFA_LEVEL_6_TITLE			 	     = "盟主";

}