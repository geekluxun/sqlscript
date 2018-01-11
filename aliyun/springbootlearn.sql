
CREATE DATABASE springbootdb_cluster;

USE springbootdb_cluster;
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '城市编号',
    `province_id` int(10) unsigned NOT NULL COMMENT '省份编号',
    `city_name` varchar(25) DEFAULT NULL COMMENT '城市名称',
    `description` varchar(25) DEFAULT NULL COMMENT '描述',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT city VALUES (1 ,1,'温岭市','BYSocket 的家在温岭。');


DROP TABLE user;


CREATE DATABASE springbootdb;

USE springbootdb;
DROP TABLE IF EXISTS `user`;
CREATE TABLE user
(
    id INT(10) unsigned PRIMARY KEY NOT NULL COMMENT '用户编号' AUTO_INCREMENT,
    user_name VARCHAR(25) COMMENT '用户名称',
    description VARCHAR(25) COMMENT '描述'
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


INSERT user VALUES (1 ,'泥瓦匠','他有一个小网站 bysocket.com');
