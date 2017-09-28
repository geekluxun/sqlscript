######################### base库 start!!! #####################
desc lo_loan_order;
desc t_customer_bankcard;
desc t_user_shares;
desc t_user_customer_ykqj;        # 一刻千金用户与客户关联表, 多对一关系
desc t_user_ykqj_extend;          # 一刻千金的用户表！！！
desc t_user_registry_log;
desc t_mer_branch_person;
desc t_sms_template;              # 短信模板
desc t_user_registry_log;
desc t_customer_sub_account;      # 会员子账户
desc t_user_device;               # 用户设备表 注册时候插入
desc t_account_application;       # 账户表
desc t_customer_risk_log;         # 风控日志表
desc t_customer_bankcard;         # 银行卡
desc t_customer_ykqj;             # 这个是真正的一刻千金的客户表!!!
desc lo_loan_order;               # 交易系统的订单表
desc lo_credit_record;            # 信用卡授信记录表
desc lo_preauth_flow;             # 预授权流水
desc t_notify_push;               # 站内信
desc t_notify_unicast;
desc t_notify_custom_template;    # 短信模板
desc t_notify_custom;
desc lo_repay_info;               # 还款信息总表
desc lo_repay_plan_exe;           # 还款计划执行表
desc lo_loan_refund;              # 退款订单
desc t_code_library;
desc t_partner_account;
desc t_gate_bank_bin;             # 银行卡bin表

#交易系统
desc lo_pay_record;               # 放款和扣款记录表
desc lo_preauth_info;
desc lo_receivable_record;        # 应收款记录表
desc lo_sales_strategy;
desc lo_trans_limit;
desc lo_repay_late_detail;        # 逾期详情
desc lo_loan_overdue_record;      # 逾期记录
desc lo_repay_app_detail;         # 还款
desc lo_sms_notify;
desc lo_verification;

#账户系统
desc t_customer_account_trans;


#采购平台相关表
desc t_elect_req_order_bak;
desc t_elect_skus;
desc t_elect_operation;
desc t_elect_req_order;
desc t_elect_req_orderInfo;
desc t_elect_balance_detail;
desc t_elect_res_order;
desc t_base_area;
desc t_elect_order_return;

USE base;



#count 和 join 性能 比较
USE base;
EXPLAIN
select count(u.user_id)
from t_user_ykqj_extend u
    left join t_user_customer_ykqj q on u.user_id = q.user_id
    left join t_customer_ykqj y on q.customer_id = y.id
    where y.phone = 13917621838;

#慢查询？？？
EXPLAIN
SELECT COUNT(*) FROM t_user_registry_log a
    INNER JOIN t_user_customer_ykqj b ON a.user_id = b.user_id
    WHERE a.prod_code = #{prodCode,jdbcType=VARCHAR}
        AND a.invitation_code = #{invitationCode,jdbcType=VARCHAR}
        AND a.channel IN ('2017ykqj@0913')
        AND DATE_FORMAT(a.create_time,'%Y-%m')=DATE_FORMAT(NOW(),'%Y-%m')
        AND EXISTS (SELECT 1 FROM t_customer_sub_account c WHERE b.customer_id = c.user_id AND c.product_code = 'YKQJ');


######################### base库 end!!! #####################