/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : house rental system

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 05/01/2023 17:14:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bari
-- ----------------------------
DROP TABLE IF EXISTS `bari`;
CREATE TABLE `bari`  (
  `rnum` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quyu` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mianji` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `zhuangxiu` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sheshi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jiage` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `zhuangtai` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `beizhu` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rnum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bari
-- ----------------------------
INSERT INTO `bari` VALUES ('1', 'A区', '60', '精装修', '齐全', '800', '空闲', NULL);
INSERT INTO `bari` VALUES ('10', 'C区', '80', '精装修', '齐全', '700', '已租', '有车位');
INSERT INTO `bari` VALUES ('2', 'A区', '70', '毛坯', '无', '400', '已租', '可能存在漏水');
INSERT INTO `bari` VALUES ('3', 'B区', '55', '毛坯', '齐全', '600', '已租', NULL);
INSERT INTO `bari` VALUES ('4', 'C区', '89', '半装修', '仅有空调', '700', '空闲', NULL);
INSERT INTO `bari` VALUES ('5', 'B区', '110', '精装修', '齐全', '1200', '空闲', '采光不好');
INSERT INTO `bari` VALUES ('6', 'B区', '88', '精装修', '齐全', '700', '空闲', NULL);
INSERT INTO `bari` VALUES ('7', 'A区', '80', '毛坯', '无', '780', '已租', NULL);
INSERT INTO `bari` VALUES ('8', 'B区', '100', '精装修', '多数已损坏', '900', '已租', '有车位');
INSERT INTO `bari` VALUES ('9', 'C区', '70', '毛坯', '无', '600', '空闲', NULL);

-- ----------------------------
-- Table structure for eii
-- ----------------------------
DROP TABLE IF EXISTS `eii`;
CREATE TABLE `eii`  (
  `gonghao` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `eleixing` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ename` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `exingbie` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enianling` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `edianhua` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `zongshu` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`gonghao`) USING BTREE,
  INDEX `eleixing`(`eleixing`) USING BTREE,
  CONSTRAINT `eii_ibfk_1` FOREIGN KEY (`eleixing`) REFERENCES `spove` (`leixing`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eii
-- ----------------------------
INSERT INTO `eii` VALUES ('1', '实习生', '范义荣', '男', '24', '17283822932', '0');
INSERT INTO `eii` VALUES ('2', '营销专员', '刘力', '女', '33', '18272828281', '2');
INSERT INTO `eii` VALUES ('3', '营销专员', '王玉龙', '男', '26', '12781371278', '0');
INSERT INTO `eii` VALUES ('4', '营销专员', '陈益民', '男', '35', '17392937932', '1');
INSERT INTO `eii` VALUES ('5', '营销专员', '胡亚仙', '女', '42', '13073838824', '1');
INSERT INTO `eii` VALUES ('6', '营销专员', '陈国道', '男', '35', '16282879323', '0');
INSERT INTO `eii` VALUES ('7', '营销主管', '胡娟娟', '女', '44', '16727636277', '1');
INSERT INTO `eii` VALUES ('8', '营销主管', '李根有', '男', '45', '18063827289', '0');
INSERT INTO `eii` VALUES ('9', '总经理', '方伟', '男', '47', '18203939942', '0');

-- ----------------------------
-- Table structure for lcfiaes
-- ----------------------------
DROP TABLE IF EXISTS `lcfiaes`;
CREATE TABLE `lcfiaes`  (
  `fnum` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fleixing` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fdate` date NOT NULL,
  `fjine` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fbeizhu` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fnum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lcfiaes
-- ----------------------------
INSERT INTO `lcfiaes` VALUES ('1', '支出', '2022-08-03', '20000', '发工资');
INSERT INTO `lcfiaes` VALUES ('2', '支出', '2022-08-08', '2500', '办公耗材');
INSERT INTO `lcfiaes` VALUES ('3', '收入', '2022-08-09', '500', '存款利息');
INSERT INTO `lcfiaes` VALUES ('4', '支出', '2022-08-09', '200', '公司水费');
INSERT INTO `lcfiaes` VALUES ('5', '收入', '2022-08-10', '2500', '电梯广告费');

-- ----------------------------
-- Table structure for sarr
-- ----------------------------
DROP TABLE IF EXISTS `sarr`;
CREATE TABLE `sarr`  (
  `rnum` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sfznum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gonghao` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `starttime` date NOT NULL,
  `monthnum` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rent` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`rnum`) USING BTREE,
  INDEX `sfznum`(`sfznum`) USING BTREE,
  INDEX `gonghao`(`gonghao`) USING BTREE,
  CONSTRAINT `sarr_ibfk_1` FOREIGN KEY (`rnum`) REFERENCES `bari` (`rnum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sarr_ibfk_2` FOREIGN KEY (`sfznum`) REFERENCES `tii` (`sfznum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sarr_ibfk_3` FOREIGN KEY (`gonghao`) REFERENCES `eii` (`gonghao`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sarr
-- ----------------------------
INSERT INTO `sarr` VALUES ('10', '263729199003147732', '4', '2020-12-05', '36', '25200');
INSERT INTO `sarr` VALUES ('2', '330227196812124414', '2', '2021-10-04', '25', '10000');
INSERT INTO `sarr` VALUES ('3', '220104199808087280', '2', '2021-11-11', '40', '24000');
INSERT INTO `sarr` VALUES ('7', '330273200209038392', '7', '2022-01-01', '15', '11700');
INSERT INTO `sarr` VALUES ('8', '220104199808087280', '5', '2021-11-12', '10', '9000');

-- ----------------------------
-- Table structure for spove
-- ----------------------------
DROP TABLE IF EXISTS `spove`;
CREATE TABLE `spove`  (
  `leixing` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `egongzi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ewaibuzhu` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`leixing`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spove
-- ----------------------------
INSERT INTO `spove` VALUES ('实习生', '3000', '1000');
INSERT INTO `spove` VALUES ('总经理', '10000', '2000');
INSERT INTO `spove` VALUES ('营销专员', '4000', '1500');
INSERT INTO `spove` VALUES ('营销主管', '5000', '2000');

-- ----------------------------
-- Table structure for tii
-- ----------------------------
DROP TABLE IF EXISTS `tii`;
CREATE TABLE `tii`  (
  `sfznum` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `txingbie` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tnianling` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tdianhua` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`sfznum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tii
-- ----------------------------
INSERT INTO `tii` VALUES ('220104199808081839', '李四', '男', '39', '19537838282');
INSERT INTO `tii` VALUES ('220104199808087280', '王五', '女', '39', '13782737827');
INSERT INTO `tii` VALUES ('263729199003147732', '任峰杰', '男', '32', '17282823728');
INSERT INTO `tii` VALUES ('330225197312052029', '杨圆圆', '女', '49', '13738292992');
INSERT INTO `tii` VALUES ('330227196812124414', '金楚灵', '男', '54', '15637283727');
INSERT INTO `tii` VALUES ('330227198803025891', '张三', '男', '39', '13094283872');
INSERT INTO `tii` VALUES ('330273200209038392', '孙常龙', '男', '20', '17292272247');
INSERT INTO `tii` VALUES ('372827197307173357', '池文芳', '女', '49', '13037828732');

-- ----------------------------
-- Table structure for waecup
-- ----------------------------
DROP TABLE IF EXISTS `waecup`;
CREATE TABLE `waecup`  (
  `leixing` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `danjia` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`leixing`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waecup
-- ----------------------------
INSERT INTO `waecup` VALUES ('水费', '4');
INSERT INTO `waecup` VALUES ('电费', '0.6');

-- ----------------------------
-- Table structure for waei
-- ----------------------------
DROP TABLE IF EXISTS `waei`;
CREATE TABLE `waei`  (
  `danhao` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rnum` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `leixing` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nowdate` date NOT NULL,
  `predushu` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nowdushu` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jine` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`danhao`) USING BTREE,
  INDEX `rnum`(`rnum`) USING BTREE,
  INDEX `leixing`(`leixing`) USING BTREE,
  CONSTRAINT `waei_ibfk_1` FOREIGN KEY (`rnum`) REFERENCES `bari` (`rnum`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `waei_ibfk_2` FOREIGN KEY (`leixing`) REFERENCES `waecup` (`leixing`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waei
-- ----------------------------
INSERT INTO `waei` VALUES ('1', '2', '水费', '2022-08-07', '25', '37', '48');
INSERT INTO `waei` VALUES ('2', '2', '电费', '2022-08-07', '80', '100', '12');
INSERT INTO `waei` VALUES ('3', '7', '水费', '2022-08-08', '44', '76', '128');
INSERT INTO `waei` VALUES ('4', '7', '电费', '2022-08-08', '34', '89', '33');
INSERT INTO `waei` VALUES ('5', '10', '水费', '2022-08-10', '36', '66', '120');
INSERT INTO `waei` VALUES ('6', '10', '电费', '2022-08-10', '55', '100', '36');

-- ----------------------------
-- View structure for dabizhichu
-- ----------------------------
DROP VIEW IF EXISTS `dabizhichu`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `dabizhichu` AS select `lcfiaes`.`fnum` AS `fnum`,`lcfiaes`.`fleixing` AS `fleixing`,`lcfiaes`.`fdate` AS `fdate`,`lcfiaes`.`fjine` AS `fjine`,`lcfiaes`.`fbeizhu` AS `fbeizhu` from `lcfiaes` where ((`lcfiaes`.`fleixing` = '支出') and (`lcfiaes`.`fjine` >= '2000'));

-- ----------------------------
-- View structure for kongfang
-- ----------------------------
DROP VIEW IF EXISTS `kongfang`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `kongfang` AS select `bari`.`rnum` AS `rnum`,`bari`.`quyu` AS `quyu`,`bari`.`mianji` AS `mianji`,`bari`.`zhuangxiu` AS `zhuangxiu`,`bari`.`sheshi` AS `sheshi`,`bari`.`jiage` AS `jiage`,`bari`.`zhuangtai` AS `zhuangtai`,`bari`.`beizhu` AS `beizhu` from `bari` where (`bari`.`zhuangtai` = '空闲');

-- ----------------------------
-- Procedure structure for tsum
-- ----------------------------
DROP PROCEDURE IF EXISTS `tsum`;
delimiter ;;
CREATE PROCEDURE `tsum`(in sfznum varchar(20))
BEGIN
	#Routine body goes here...
select count(sfznum)
from sarr
where sarr.sfznum=sfznum;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for zongzhichu
-- ----------------------------
DROP PROCEDURE IF EXISTS `zongzhichu`;
delimiter ;;
CREATE PROCEDURE `zongzhichu`(qishi date,jieshu date)
BEGIN
	select sum(fjine)
	from lcfiaes
	where fdate>=qishi and fdate<jieshu and fleixing='支出';
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table sarr
-- ----------------------------
DROP TRIGGER IF EXISTS `tri_eii`;
delimiter ;;
CREATE TRIGGER `tri_eii` AFTER INSERT ON `sarr` FOR EACH ROW begin
update eii
set zongshu=zongshu+1
where new.gonghao=eii.gonghao;
update bari
set zhuangtai='已租'
where new.rnum=bari.rnum;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
