######################### 通用指令 start!!! #####################

#索引区分度公式 (0.1以上)
SELECT count(distinct user_id)/count(*) FROM t_user_customer_ykqj;

#显示表的索引信息
SHOW INDEX FROM t_user_customer_ykqj;


#慢查询时间
SHOW variables LIKE 'long%';

#慢查询记录
SHOW variables LIKE 'slow%';

#查询缓存
SHOW VARIABLES LIKE 'have_query_cache';

#缓存性能
SHOW STATUS LIKE 'Qcache%';

#数据库
SHOW DATABASES ;

######################### 通用指令 end!!! #####################

