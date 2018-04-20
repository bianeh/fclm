<?php
return array(
    /* 数据库设置 */
    'DB_TYPE'               =>  'mysql',     // 数据库类型
    'DB_HOST'               =>  '139.224.27.12', // 服务器地址
    'DB_NAME'               =>  'Fengchao',          // 数据库名
    'DB_USER'               =>  'root',      // 用户名
    'DB_PWD'                =>  '76bb7e8e66',          // 密码
    'DB_PORT'               =>  '3306',        // 端口
    'DB_PREFIX'             =>  '',    // 数据库表前缀
    'DB_PARAMS'          	=>  array(), // 数据库连接参数    
    'DB_DEBUG'  			=>  TRUE, // 数据库调试模式 开启后可以记录SQL日志
    'DB_FIELDS_CACHE'       =>  true,        // 启用字段缓存
    'DB_CHARSET'            =>  'utf8',      // 数据库编码默认采用utf8
    'DB_DEPLOY_TYPE'        =>  0, // 数据库部署方式:0 集中式(单一服务器),1 分布式(主从服务器)
    'DB_RW_SEPARATE'        =>  false,       // 数据库读写是否分离 主从式有效
    'DB_MASTER_NUM'         =>  1, // 读写分离后 主服务器数量
    'DB_SLAVE_NO'           =>  '', // 指定从服务器序号
    
    /* 阿里云API配置信息*/
    'ALI_KEY_ID'            => 'LTAIcYAreVTo8F5V',//接口ID
    'ALI_KEY_SECRET'        => 'IUyAawu55UMrp1o7zhLd4ueR5X4oC3',//密钥
    'ALI_EMAIL_ACCOUNT_NAME'=> 'mail@postmaster.cellsunion.com',//阿里邮箱默认发件人
    'ALI_EMAIL_REGION_ID'   => 'cn-hangzhou',//"cn-hangzhou","cn-beijing","cn-qingdao","cn-hongkong","cn-shanghai","us-west-1","cn-shenzhen","ap-southeast-1"
    'ALI_EMAIL_REPLY_ADDR'  => 'true',//是否使用管理控制台中配置的回信地址（状态必须是验证通过）
    'ALI_EMAIL_SUBJECT'     => '蜂巢联盟邮件，请查阅！', //默认主题
    'ALI_EMAIL_FROM_ALIAS'  => '蜂巢联盟',
    'ALI_EMAIL_ADDRESS_TYPE'=> 1,
    'ALI_EMAIL_TAG_NAME'    => 'Notice',
    
    'ACCESS_SIGN'  =>  '123456',
    //计划任务 邮箱
    'MSG_LIMIT_E_DAY_NUM'     =>  '15',//天限额
    'MSG_LIMIT_E_MONTH_NUM'   =>  '6000',//月限额
    'MSG_E_TOGETHER_NUM'      =>  '22', //连续发送数量（并发）
    'MSG_E_INTERVAL'          =>  '1',//间隔时间 秒为单位 WATCH监视程序需要保持相同
    
    //计划任务 短信
    'MSG_LIMIT_M_DAY_NUM'     =>  '15',//天限额
    'MSG_LIMIT_M_MONTH_NUM'   =>  '6000',//月限额
    'MSG_M_TOGETHER_NUM'      =>  '21', //连续发送数量（并发）
    'MSG_M_INTERVAL'          =>  '1',//间隔时间 秒为单位 WATCH监视程序需要保持相同
);