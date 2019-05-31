/*
Navicat MySQL Data Transfer

Source Server         : r
Source Server Version : 50131
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50131
File Encoding         : 65001

Date: 2018-02-01 15:21:27
*/

-- SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE ipnet.patent MODIFY COLUMN patent_type VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE ipnet.patent MODIFY COLUMN patent_name VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE ipnet.patent MODIFY COLUMN url VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE ipnet.patent MODIFY COLUMN profile VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

ALTER TABLE ipnet.pool MODIFY COLUMN description VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE ipnet.pool MODIFY COLUMN name VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE ipnet.pool MODIFY COLUMN profile VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;

-- ----------------------------
-- Records of personal_user
-- ----------------------------
# INSERT INTO `personal_user` VALUES ('853870308@qq.com',	0,	'121d5faf244100bcc84c14e01fe29cba',	0, null, 0, null, '853870308@qq.com', null, null, null ,1,null, '123456l',null, null, '2019-05-31 16:54:54', null,null,null,0	,null,	'0x6f241e0207d2a163769fa89fcf313ee117e7728b');

# -- ----------------------------
# -- Records of personal_user
# -- ----------------------------
# 111	1111	1025149919@qq.com	测试专利1	发明	""	测试专利1简介	1111	0	http://ipnet10.oss-cn-beijing.aliyuncs.com/image/托福1.jpg	1025149919@qq.com	2
