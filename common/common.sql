######################### 通用指令 start!!! #####################

#索引区分度公式 (0.1以上)
SELECT count(distinct user_id)/count(*) FROM t_user_customer_ykqj;

#显示表的索引信息
SHOW INDEX FROM t_user_customer_ykqj;


#慢查询时间
SHOW variables LIKE 'long%';

#慢查询记录
SHOW variables LIKE 'slow%';

SHOW VARIABLES LIKE 'log%';

#查询缓存
SHOW VARIABLES LIKE 'have_query_cache';

#缓存性能
SHOW STATUS LIKE 'Qcache%';

#数据库
SHOW DATABASES ;

#通过global_variables查询 系统全局变量
SELECT VARIABLE_NAME,variable_value FROM information_schema.global_variables WHERE variable_name LIKE '%long%';

DESC information_schema.GLOBAL_VARIABLES;


#动态设置系统变量 重启失效 ！！为啥有时候不起作用？？
SET GLOBAL LONG_QUERY_TIME  = 5;


SHOW VARIABLES ;

#所有关于时间的系统变量
show variables like '%time%';



SELECT @@global.sql_mode;

SELECT @@session.sql_mode;

#查看互斥量
SHOW ENGINE innodb MUTEX ;

SHOW ENGINE innodb STATUS ;

#查看事务表
SELECT * FROM information_schema.innodb_trx;
#查看innodb 表上的锁情况
SELECT * FROM information_schema.INNODB_LOCKS;
#查看锁等待情况
SELECT * FROM information_schema.INNODB_LOCK_WAITS;

#自增长
SHOW VARIABLES LIKE 'innodb_auto%';

#锁等待超时时间
SHOW VARIABLES LIKE 'innodb_lock%';
#超时是否事务回滚
SHOW VARIABLES LIKE 'innodb_rollback_on_timeout';
#查看自动提交
SHOW VARIABLES LIKE 'auto%';
#查看行锁
show status like 'innodb_row_lock%';

SHOW ENGINE INNODB STATUS;

##mysql 各种日志
#general 查询日志
SHOW VARIABLES LIKE 'general_log%';
#错误日志
SHOW VARIABLES LIKE 'log_error%';
#慢查询日志
SHOW VARIABLES LIKE 'slow_query_log%';
#二进制日志
SHOW VARIABLES LIKE 'log_bin%';
#查看当前的binlog日志
show master status;
show slave status ;

#mysqldumpslow 命令
#mysqlbinlog 命令

#mysqlbinlog --no-defaults mysql-bin.000004

# 查询剖析
show profiles ;
show  variables  like  'profil%';
# 查看句柄计数器
show status  where Variable_name like  'handler%';
show global status  where Variable_name like  'handler%';

# 查看当前所有连接线程
show processlist ;

check table dd;
optimize  table  dd;

show master status ;
show slave status ;

flush logs ;


show status  where Variable_name like 'thread%';




######################### 通用指令 end!!! #####################

