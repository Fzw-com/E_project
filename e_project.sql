/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : e_project

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-01-08 20:10:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `goodsId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '123', '1,2,2,2,6,6,6,6,6,6,6,6,1,1,1,1');
INSERT INTO `cart` VALUES ('2', '哇哇', '3,3,3,2,2,2,6,1,1,6');
INSERT INTO `cart` VALUES ('3', '啊啊啊', '3,3');
INSERT INTO `cart` VALUES ('8', '你好', '3,3,3,3,3,3,3,3,3,3,3');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `type_calss` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `standard` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `imgUrls` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `salePrice` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `keepDate` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `saleQty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '狗狗', '主粮', '进口狗粮', '欧帝亿', '6kg', '../img/stapleFood/1.jpg', '../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '30', '25', '300', '2017/3/3 星期五', '2018/3/3 星期六', '亚禾 钙奶磨牙骨 220g', '500');
INSERT INTO `goods` VALUES ('2', '狗狗', '主粮', '国产狗粮', '欧帝亿', '7kg', '../img/stapleFood/2.jpg', '../img/stapleFood/4.jpg,../img/stapleFood/2.jpg,../img/stapleFood/6.jpg,../img/stapleFood/9.jpg', '31', '26', '301', '2017/3/4 星期六', '2018/3/4 星期日', '海洋之星 三文鱼配方 成犬粮 小颗粒 7kg', '501');
INSERT INTO `goods` VALUES ('3', '狗狗', '主粮', '散装狗粮', '欧帝亿', '8kg', '../img/stapleFood/3.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/3.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '32', '27', '302', '2017/3/5 星期日', '2018/3/5 星期一', '海洋之星 三文鱼配方 成犬粮 小颗粒 8kg', '502');
INSERT INTO `goods` VALUES ('4', '狗狗', '主粮', '处方狗粮', '欧帝亿', '9kg', '../img/stapleFood/4.jpg', '../img/stapleFood/3.jpg,../img/stapleFood/1.jpg,../img/stapleFood/4.jpg,../img/stapleFood/5.jpg', '33', '28', '303', '2017/3/6 星期一', '2018/3/6 星期二', '海洋之星 三文鱼配方 成犬粮 小颗粒 9kg', '503');
INSERT INTO `goods` VALUES ('5', '狗狗', '主粮', '冻干狗粮', '欧帝亿', '10kg', '../img/stapleFood/5.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/3.jpg,../img/stapleFood/6.jpg', '34', '29', '304', '2017/3/7 星期二', '2018/3/7 星期三', '海洋之星 三文鱼配方 成犬粮 小颗粒 10kg', '504');
INSERT INTO `goods` VALUES ('6', '狗狗', '主粮', '进口狗粮', '欧帝亿', '11kg', '../img/stapleFood/6.jpg', '../img/stapleFood/6.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '35', '30', '305', '2017/3/8 星期三', '2018/3/8 星期四', '海洋之星 三文鱼配方 成犬粮 小颗粒 11kg', '505');
INSERT INTO `goods` VALUES ('7', '狗狗', '主粮', '进口狗粮', '欧帝亿', '12kg', '../img/stapleFood/7.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/7.jpg,../img/stapleFood/8.jpg', '36', '31', '306', '2017/3/9 星期四', '2018/3/9 星期五', '海洋之星 三文鱼配方 成犬粮 小颗粒 12kg', '506');
INSERT INTO `goods` VALUES ('8', '狗狗', '主粮', '进口狗粮', '欧帝亿', '13kg', '../img/stapleFood/8.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/9.jpg', '37', '32', '307', '2017/3/10 星期五', '2018/3/10 星期六', '海洋之星 三文鱼配方 成犬粮 小颗粒 13kg', '507');
INSERT INTO `goods` VALUES ('9', '狗狗', '主粮', '进口狗粮', '欧帝亿', '14kg', '../img/stapleFood/9.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/7.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '38', '33', '308', '2017/3/11 星期六', '2018/3/11 星期日', '海洋之星 三文鱼配方 成犬粮 小颗粒 14kg', '508');
INSERT INTO `goods` VALUES ('10', '狗狗', '服饰', '进口狗粮', '欧帝亿', '15kg', '../img/stapleFood/1.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '39', '34', '309', '2017/3/12 星期日', '2018/3/12 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '509');
INSERT INTO `goods` VALUES ('11', '狗狗', '服饰', '进口狗粮', '欧帝亿', '16kg', '../img/stapleFood/2.jpg', '../img/stapleFood/4.jpg,../img/stapleFood/2.jpg,../img/stapleFood/6.jpg,../img/stapleFood/9.jpg', '40', '35', '310', '2017/3/13 星期一', '2018/3/13 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '510');
INSERT INTO `goods` VALUES ('12', '狗狗', '服饰', '进口狗粮', '欧帝亿', '17kg', '../img/stapleFood/3.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/3.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '41', '36', '311', '2017/3/14 星期二', '2018/3/14 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '511');
INSERT INTO `goods` VALUES ('13', '狗狗', '服饰', '进口狗粮', '欧帝亿', '18kg', '../img/stapleFood/4.jpg', '../img/stapleFood/3.jpg,../img/stapleFood/1.jpg,../img/stapleFood/4.jpg,../img/stapleFood/5.jpg', '42', '37', '312', '2017/3/15 星期三', '2018/3/15 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '512');
INSERT INTO `goods` VALUES ('14', '狗狗', '服饰', '进口狗粮', '欧帝亿', '19kg', '../img/stapleFood/5.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/3.jpg,../img/stapleFood/6.jpg', '43', '38', '313', '2017/3/16 星期四', '2018/3/16 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '513');
INSERT INTO `goods` VALUES ('15', '狗狗', '服饰', '进口狗粮', '欧帝亿', '20kg', '../img/stapleFood/6.jpg', '../img/stapleFood/6.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '44', '39', '314', '2017/3/17 星期五', '2018/3/17 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '514');
INSERT INTO `goods` VALUES ('16', '狗狗', '服饰', '进口狗粮', '欧帝亿', '21kg', '../img/stapleFood/7.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/7.jpg,../img/stapleFood/8.jpg', '45', '40', '315', '2017/3/18 星期六', '2018/3/18 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '515');
INSERT INTO `goods` VALUES ('17', '狗狗', '服饰', '进口狗粮', '欧帝亿', '22kg', '../img/stapleFood/8.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/9.jpg', '46', '41', '316', '2017/3/19 星期日', '2018/3/19 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '516');
INSERT INTO `goods` VALUES ('18', '狗狗', '服饰', '进口狗粮', '欧帝亿', '23kg', '../img/stapleFood/9.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/7.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '47', '42', '317', '2017/3/20 星期一', '2018/3/20 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '517');
INSERT INTO `goods` VALUES ('19', '狗狗', '牵引', '进口狗粮', '欧帝亿', '24kg', '../img/stapleFood/1.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '48', '43', '318', '2017/3/21 星期二', '2018/3/21 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '518');
INSERT INTO `goods` VALUES ('20', '狗狗', '牵引', '进口狗粮', '欧帝亿', '25kg', '../img/stapleFood/2.jpg', '../img/stapleFood/4.jpg,../img/stapleFood/2.jpg,../img/stapleFood/6.jpg,../img/stapleFood/9.jpg', '49', '44', '319', '2017/3/22 星期三', '2018/3/22 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '519');
INSERT INTO `goods` VALUES ('21', '狗狗', '牵引', '进口狗粮', '欧帝亿', '26kg', '../img/stapleFood/3.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/3.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '50', '45', '320', '2017/3/23 星期四', '2018/3/23 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '520');
INSERT INTO `goods` VALUES ('22', '狗狗', '牵引', '进口狗粮', '欧帝亿', '27kg', '../img/stapleFood/4.jpg', '../img/stapleFood/3.jpg,../img/stapleFood/1.jpg,../img/stapleFood/4.jpg,../img/stapleFood/5.jpg', '51', '46', '321', '2017/3/24 星期五', '2018/3/24 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '521');
INSERT INTO `goods` VALUES ('23', '狗狗', '牵引', '进口狗粮', '欧帝亿', '28kg', '../img/stapleFood/5.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/3.jpg,../img/stapleFood/6.jpg', '52', '47', '322', '2017/3/25 星期六', '2018/3/25 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '522');
INSERT INTO `goods` VALUES ('24', '狗狗', '牵引', '进口狗粮', '欧帝亿', '29kg', '../img/stapleFood/6.jpg', '../img/stapleFood/6.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '53', '48', '323', '2017/3/26 星期日', '2018/3/26 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '523');
INSERT INTO `goods` VALUES ('25', '狗狗', '牵引', '进口狗粮', '欧帝亿', '30kg', '../img/stapleFood/7.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/7.jpg,../img/stapleFood/8.jpg', '54', '49', '324', '2017/3/27 星期一', '2018/3/27 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '524');
INSERT INTO `goods` VALUES ('26', '狗狗', '牵引', '进口狗粮', '欧帝亿', '31kg', '../img/stapleFood/8.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/9.jpg', '55', '50', '325', '2017/3/28 星期二', '2018/3/28 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '525');
INSERT INTO `goods` VALUES ('27', '狗狗', '牵引', '进口狗粮', '欧帝亿', '32kg', '../img/stapleFood/9.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/7.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '56', '51', '326', '2017/3/29 星期三', '2018/3/29 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '526');
INSERT INTO `goods` VALUES ('28', '狗狗', '美容', '进口狗粮', '欧帝亿', '33kg', '../img/stapleFood/1.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '57', '52', '327', '2017/3/30 星期四', '2018/3/30 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '527');
INSERT INTO `goods` VALUES ('29', '狗狗', '美容', '进口狗粮', '欧帝亿', '34kg', '../img/stapleFood/2.jpg', '../img/stapleFood/4.jpg,../img/stapleFood/2.jpg,../img/stapleFood/6.jpg,../img/stapleFood/9.jpg', '58', '53', '328', '2017/3/31 星期五', '2018/3/31 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '528');
INSERT INTO `goods` VALUES ('30', '狗狗', '美容', '进口狗粮', '欧帝亿', '35kg', '../img/stapleFood/3.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/3.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '59', '54', '329', '2017/4/1 星期六', '2018/4/1 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '529');
INSERT INTO `goods` VALUES ('31', '狗狗', '美容', '进口狗粮', '欧帝亿', '36kg', '../img/stapleFood/4.jpg', '../img/stapleFood/3.jpg,../img/stapleFood/1.jpg,../img/stapleFood/4.jpg,../img/stapleFood/5.jpg', '60', '55', '330', '2017/4/2 星期日', '2018/4/2 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '530');
INSERT INTO `goods` VALUES ('32', '狗狗', '美容', '进口狗粮', '欧帝亿', '37kg', '../img/stapleFood/5.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/3.jpg,../img/stapleFood/6.jpg', '61', '56', '331', '2017/4/3 星期一', '2018/4/3 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '531');
INSERT INTO `goods` VALUES ('33', '狗狗', '美容', '进口狗粮', '欧帝亿', '38kg', '../img/stapleFood/6.jpg', '../img/stapleFood/6.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '62', '57', '332', '2017/4/4 星期二', '2018/4/4 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '532');
INSERT INTO `goods` VALUES ('34', '狗狗', '美容', '进口狗粮', '欧帝亿', '39kg', '../img/stapleFood/7.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/7.jpg,../img/stapleFood/8.jpg', '63', '58', '333', '2017/4/5 星期三', '2018/4/5 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '533');
INSERT INTO `goods` VALUES ('35', '狗狗', '美容', '进口狗粮', '欧帝亿', '40kg', '../img/stapleFood/8.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/9.jpg', '64', '59', '334', '2017/4/6 星期四', '2018/4/6 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '534');
INSERT INTO `goods` VALUES ('36', '狗狗', '美容', '进口狗粮', '欧帝亿', '41kg', '../img/stapleFood/9.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/7.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '65', '60', '335', '2017/4/7 星期五', '2018/4/7 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '535');
INSERT INTO `goods` VALUES ('37', '狗狗', '周边', '进口狗粮', '欧帝亿', '42kg', '../img/stapleFood/1.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '66', '61', '336', '2017/4/8 星期六', '2018/4/8 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '536');
INSERT INTO `goods` VALUES ('38', '狗狗', '周边', '进口狗粮', '欧帝亿', '43kg', '../img/stapleFood/2.jpg', '../img/stapleFood/4.jpg,../img/stapleFood/2.jpg,../img/stapleFood/6.jpg,../img/stapleFood/9.jpg', '67', '62', '337', '2017/4/9 星期日', '2018/4/9 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '537');
INSERT INTO `goods` VALUES ('39', '狗狗', '周边', '进口狗粮', '欧帝亿', '44kg', '../img/stapleFood/3.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/3.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '68', '63', '338', '2017/4/10 星期一', '2018/4/10 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '538');
INSERT INTO `goods` VALUES ('40', '狗狗', '周边', '进口狗粮', '欧帝亿', '45kg', '../img/stapleFood/4.jpg', '../img/stapleFood/3.jpg,../img/stapleFood/1.jpg,../img/stapleFood/4.jpg,../img/stapleFood/5.jpg', '69', '64', '339', '2017/4/11 星期二', '2018/4/11 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '539');
INSERT INTO `goods` VALUES ('41', '狗狗', '周边', '进口狗粮', '欧帝亿', '46kg', '../img/stapleFood/5.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/3.jpg,../img/stapleFood/6.jpg', '70', '65', '340', '2017/4/12 星期三', '2018/4/12 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '540');
INSERT INTO `goods` VALUES ('42', '狗狗', '周边', '进口狗粮', '欧帝亿', '47kg', '../img/stapleFood/6.jpg', '../img/stapleFood/6.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '71', '66', '341', '2017/4/13 星期四', '2018/4/13 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '541');
INSERT INTO `goods` VALUES ('43', '狗狗', '周边', '进口狗粮', '欧帝亿', '48kg', '../img/stapleFood/7.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/7.jpg,../img/stapleFood/8.jpg', '72', '67', '342', '2017/4/14 星期五', '2018/4/14 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '542');
INSERT INTO `goods` VALUES ('44', '狗狗', '周边', '进口狗粮', '欧帝亿', '49kg', '../img/stapleFood/8.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/9.jpg', '73', '68', '343', '2017/4/15 星期六', '2018/4/15 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '543');
INSERT INTO `goods` VALUES ('45', '狗狗', '周边', '进口狗粮', '欧帝亿', '50kg', '../img/stapleFood/9.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/7.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '74', '69', '344', '2017/4/16 星期日', '2018/4/16 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '544');
INSERT INTO `goods` VALUES ('46', '狗狗', '玩具', '进口狗粮', '欧帝亿', '51kg', '../img/stapleFood/1.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '75', '70', '345', '2017/4/17 星期一', '2018/4/17 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '545');
INSERT INTO `goods` VALUES ('47', '狗狗', '玩具', '进口狗粮', '欧帝亿', '52kg', '../img/stapleFood/2.jpg', '../img/stapleFood/4.jpg,../img/stapleFood/2.jpg,../img/stapleFood/6.jpg,../img/stapleFood/9.jpg', '76', '71', '346', '2017/4/18 星期二', '2018/4/18 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '546');
INSERT INTO `goods` VALUES ('48', '狗狗', '玩具', '进口狗粮', '欧帝亿', '53kg', '../img/stapleFood/3.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/3.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '77', '72', '347', '2017/4/19 星期三', '2018/4/19 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '547');
INSERT INTO `goods` VALUES ('49', '狗狗', '玩具', '进口狗粮', '欧帝亿', '54kg', '../img/stapleFood/4.jpg', '../img/stapleFood/3.jpg,../img/stapleFood/1.jpg,../img/stapleFood/4.jpg,../img/stapleFood/5.jpg', '78', '73', '348', '2017/4/20 星期四', '2018/4/20 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '548');
INSERT INTO `goods` VALUES ('50', '狗狗', '玩具', '进口狗粮', '欧帝亿', '55kg', '../img/stapleFood/5.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/3.jpg,../img/stapleFood/6.jpg', '79', '74', '349', '2017/4/21 星期五', '2018/4/21 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '549');
INSERT INTO `goods` VALUES ('51', '狗狗', '玩具', '进口狗粮', '欧帝亿', '56kg', '../img/stapleFood/6.jpg', '../img/stapleFood/6.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '80', '75', '350', '2017/4/22 星期六', '2018/4/22 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '550');
INSERT INTO `goods` VALUES ('52', '狗狗', '玩具', '进口狗粮', '欧帝亿', '57kg', '../img/stapleFood/7.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/7.jpg,../img/stapleFood/8.jpg', '81', '76', '351', '2017/4/23 星期日', '2018/4/23 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '551');
INSERT INTO `goods` VALUES ('53', '狗狗', '玩具', '进口狗粮', '欧帝亿', '58kg', '../img/stapleFood/8.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/9.jpg', '82', '77', '352', '2017/4/24 星期一', '2018/4/24 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '552');
INSERT INTO `goods` VALUES ('54', '狗狗', '玩具', '进口狗粮', '欧帝亿', '59kg', '../img/stapleFood/9.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/7.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '83', '78', '353', '2017/4/25 星期二', '2018/4/25 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '553');
INSERT INTO `goods` VALUES ('55', '狗狗', '零食', '进口狗粮', '欧帝亿', '60kg', '../img/stapleFood/1.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '84', '79', '354', '2017/4/26 星期三', '2018/4/26 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '554');
INSERT INTO `goods` VALUES ('56', '狗狗', '零食', '进口狗粮', '欧帝亿', '61kg', '../img/stapleFood/2.jpg', '../img/stapleFood/4.jpg,../img/stapleFood/2.jpg,../img/stapleFood/6.jpg,../img/stapleFood/9.jpg', '85', '80', '355', '2017/4/27 星期四', '2018/4/27 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '555');
INSERT INTO `goods` VALUES ('57', '狗狗', '零食', '进口狗粮', '欧帝亿', '62kg', '../img/stapleFood/3.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/3.jpg,../img/stapleFood/3.jpg,../img/stapleFood/2.jpg', '86', '81', '356', '2017/4/28 星期五', '2018/4/28 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '556');
INSERT INTO `goods` VALUES ('58', '狗狗', '零食', '进口狗粮', '欧帝亿', '63kg', '../img/stapleFood/4.jpg', '../img/stapleFood/3.jpg,../img/stapleFood/1.jpg,../img/stapleFood/4.jpg,../img/stapleFood/5.jpg', '87', '82', '357', '2017/4/29 星期六', '2018/4/29 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '557');
INSERT INTO `goods` VALUES ('59', '狗狗', '零食', '进口狗粮', '欧帝亿', '64kg', '../img/stapleFood/5.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/3.jpg,../img/stapleFood/6.jpg', '88', '83', '358', '2017/4/30 星期日', '2018/4/30 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '558');
INSERT INTO `goods` VALUES ('60', '狗狗', '零食', '进口狗粮', '欧帝亿', '65kg', '../img/stapleFood/6.jpg', '../img/stapleFood/6.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '89', '84', '359', '2017/5/1 星期一', '2018/5/1 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '559');
INSERT INTO `goods` VALUES ('61', '狗狗', '零食', '进口狗粮', '欧帝亿', '66kg', '../img/stapleFood/7.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/5.jpg,../img/stapleFood/7.jpg,../img/stapleFood/8.jpg', '90', '85', '360', '2017/5/2 星期二', '2018/5/2 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '560');
INSERT INTO `goods` VALUES ('62', '狗狗', '零食', '进口狗粮', '欧帝亿', '67kg', '../img/stapleFood/8.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/2.jpg,../img/stapleFood/3.jpg,../img/stapleFood/9.jpg', '91', '86', '361', '2017/5/3 星期三', '2018/5/3 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '561');
INSERT INTO `goods` VALUES ('63', '狗狗', '零食', '进口狗粮', '欧帝亿', '68kg', '../img/stapleFood/9.jpg', '../img/stapleFood/1.jpg,../img/stapleFood/7.jpg,../img/stapleFood/3.jpg,../img/stapleFood/7.jpg', '92', '87', '362', '2017/5/4 星期四', '2018/5/4 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '562');
INSERT INTO `goods` VALUES ('64', '狗狗', '窝垫', '进口狗粮', '欧帝亿', '69kg', '../img/live/1.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/5.jpg', '93', '88', '363', '2017/5/5 星期五', '2018/5/5 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '563');
INSERT INTO `goods` VALUES ('65', '狗狗', '窝垫', '进口狗粮', '欧帝亿', '70kg', '../img/live/2.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/2.jpg,../img/live/6.jpg', '94', '89', '364', '2017/5/6 星期六', '2018/5/6 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '564');
INSERT INTO `goods` VALUES ('66', '狗狗', '窝垫', '进口狗粮', '欧帝亿', '71kg', '../img/live/3.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/3.jpg,../img/live/7.jpg', '95', '90', '365', '2017/5/7 星期日', '2018/5/7 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '565');
INSERT INTO `goods` VALUES ('67', '狗狗', '窝垫', '进口狗粮', '欧帝亿', '72kg', '../img/live/4.jpg', '../img/live/5.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/8.jpg', '96', '91', '366', '2017/5/8 星期一', '2018/5/8 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '566');
INSERT INTO `goods` VALUES ('68', '狗狗', '窝垫', '进口狗粮', '欧帝亿', '73kg', '../img/live/5.jpg', '../img/live/2.jpg,../img/live/3.jpg,../img/live/7.jpg,../img/live/9.jpg', '97', '92', '367', '2017/5/9 星期二', '2018/5/9 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '567');
INSERT INTO `goods` VALUES ('69', '狗狗', '窝垫', '进口狗粮', '欧帝亿', '74kg', '../img/live/6.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/6.jpg,../img/live/2.jpg', '98', '93', '368', '2017/5/10 星期三', '2018/5/10 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '568');
INSERT INTO `goods` VALUES ('70', '狗狗', '窝垫', '进口狗粮', '欧帝亿', '75kg', '../img/live/7.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/5.jpg', '99', '94', '369', '2017/5/11 星期四', '2018/5/11 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '569');
INSERT INTO `goods` VALUES ('71', '狗狗', '窝垫', '进口狗粮', '欧帝亿', '76kg', '../img/live/8.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/2.jpg,../img/live/6.jpg', '100', '95', '370', '2017/5/12 星期五', '2018/5/12 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '570');
INSERT INTO `goods` VALUES ('72', '狗狗', '窝垫', '进口狗粮', '欧帝亿', '77kg', '../img/live/9.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/3.jpg,../img/live/7.jpg', '101', '96', '371', '2017/5/13 星期六', '2018/5/13 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '571');
INSERT INTO `goods` VALUES ('73', '狗狗', '保健', '进口狗粮', '欧帝亿', '78kg', '../img/live/1.jpg', '../img/live/5.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/8.jpg', '102', '97', '372', '2017/5/14 星期日', '2018/5/14 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '572');
INSERT INTO `goods` VALUES ('74', '狗狗', '保健', '进口狗粮', '欧帝亿', '79kg', '../img/live/2.jpg', '../img/live/2.jpg,../img/live/3.jpg,../img/live/7.jpg,../img/live/9.jpg', '103', '98', '373', '2017/5/15 星期一', '2018/5/15 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '573');
INSERT INTO `goods` VALUES ('75', '狗狗', '保健', '进口狗粮', '欧帝亿', '80kg', '../img/live/3.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/6.jpg,../img/live/2.jpg', '104', '99', '374', '2017/5/16 星期二', '2018/5/16 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '574');
INSERT INTO `goods` VALUES ('76', '狗狗', '保健', '进口狗粮', '欧帝亿', '81kg', '../img/live/4.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/5.jpg', '105', '100', '375', '2017/5/17 星期三', '2018/5/17 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '575');
INSERT INTO `goods` VALUES ('77', '狗狗', '保健', '进口狗粮', '欧帝亿', '82kg', '../img/live/5.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/2.jpg,../img/live/6.jpg', '106', '101', '376', '2017/5/18 星期四', '2018/5/18 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '576');
INSERT INTO `goods` VALUES ('78', '狗狗', '保健', '进口狗粮', '欧帝亿', '83kg', '../img/live/6.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/3.jpg,../img/live/7.jpg', '107', '102', '377', '2017/5/19 星期五', '2018/5/19 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '577');
INSERT INTO `goods` VALUES ('79', '狗狗', '保健', '进口狗粮', '欧帝亿', '84kg', '../img/live/7.jpg', '../img/live/5.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/8.jpg', '108', '103', '378', '2017/5/20 星期六', '2018/5/20 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '578');
INSERT INTO `goods` VALUES ('80', '狗狗', '保健', '进口狗粮', '欧帝亿', '85kg', '../img/live/8.jpg', '../img/live/2.jpg,../img/live/3.jpg,../img/live/7.jpg,../img/live/9.jpg', '109', '104', '379', '2017/5/21 星期日', '2018/5/21 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '579');
INSERT INTO `goods` VALUES ('81', '狗狗', '保健', '进口狗粮', '欧帝亿', '86kg', '../img/live/9.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/6.jpg,../img/live/2.jpg', '110', '105', '380', '2017/5/22 星期一', '2018/5/22 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '580');
INSERT INTO `goods` VALUES ('82', '狗狗', '清洁', '进口狗粮', '欧帝亿', '87kg', '../img/live/1.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/5.jpg', '111', '106', '381', '2017/5/23 星期二', '2018/5/23 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '581');
INSERT INTO `goods` VALUES ('83', '狗狗', '清洁', '进口狗粮', '欧帝亿', '88kg', '../img/live/2.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/2.jpg,../img/live/6.jpg', '112', '107', '382', '2017/5/24 星期三', '2018/5/24 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '582');
INSERT INTO `goods` VALUES ('84', '狗狗', '清洁', '进口狗粮', '欧帝亿', '89kg', '../img/live/3.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/3.jpg,../img/live/7.jpg', '113', '108', '383', '2017/5/25 星期四', '2018/5/25 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '583');
INSERT INTO `goods` VALUES ('85', '狗狗', '清洁', '进口狗粮', '欧帝亿', '90kg', '../img/live/4.jpg', '../img/live/5.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/8.jpg', '114', '109', '384', '2017/5/26 星期五', '2018/5/26 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '584');
INSERT INTO `goods` VALUES ('86', '狗狗', '清洁', '进口狗粮', '欧帝亿', '91kg', '../img/live/5.jpg', '../img/live/2.jpg,../img/live/3.jpg,../img/live/7.jpg,../img/live/9.jpg', '115', '110', '385', '2017/5/27 星期六', '2018/5/27 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '585');
INSERT INTO `goods` VALUES ('87', '狗狗', '清洁', '进口狗粮', '欧帝亿', '92kg', '../img/live/6.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/6.jpg,../img/live/2.jpg', '116', '111', '386', '2017/5/28 星期日', '2018/5/28 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '586');
INSERT INTO `goods` VALUES ('88', '狗狗', '清洁', '进口狗粮', '欧帝亿', '93kg', '../img/live/7.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/5.jpg', '117', '112', '387', '2017/5/29 星期一', '2018/5/29 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '587');
INSERT INTO `goods` VALUES ('89', '狗狗', '清洁', '进口狗粮', '欧帝亿', '94kg', '../img/live/8.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/2.jpg,../img/live/6.jpg', '118', '113', '388', '2017/5/30 星期二', '2018/5/30 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '588');
INSERT INTO `goods` VALUES ('90', '狗狗', '清洁', '进口狗粮', '欧帝亿', '95kg', '../img/live/9.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/3.jpg,../img/live/7.jpg', '119', '114', '389', '2017/5/31 星期三', '2018/5/31 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '589');
INSERT INTO `goods` VALUES ('91', '狗狗', '医疗', '进口狗粮', '欧帝亿', '96kg', '../img/live/1.jpg', '../img/live/5.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/8.jpg', '120', '115', '390', '2017/6/1 星期四', '2018/6/1 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '590');
INSERT INTO `goods` VALUES ('92', '狗狗', '医疗', '进口狗粮', '欧帝亿', '97kg', '../img/live/2.jpg', '../img/live/2.jpg,../img/live/3.jpg,../img/live/7.jpg,../img/live/9.jpg', '121', '116', '391', '2017/6/2 星期五', '2018/6/2 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '591');
INSERT INTO `goods` VALUES ('93', '狗狗', '医疗', '进口狗粮', '欧帝亿', '98kg', '../img/live/3.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/6.jpg,../img/live/2.jpg', '122', '117', '392', '2017/6/3 星期六', '2018/6/3 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '592');
INSERT INTO `goods` VALUES ('94', '狗狗', '医疗', '进口狗粮', '欧帝亿', '99kg', '../img/live/4.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/5.jpg', '123', '118', '393', '2017/6/4 星期日', '2018/6/4 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '593');
INSERT INTO `goods` VALUES ('95', '狗狗', '医疗', '进口狗粮', '欧帝亿', '100kg', '../img/live/5.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/2.jpg,../img/live/6.jpg', '124', '119', '394', '2017/6/5 星期一', '2018/6/5 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '594');
INSERT INTO `goods` VALUES ('96', '狗狗', '医疗', '进口狗粮', '欧帝亿', '101kg', '../img/live/6.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/3.jpg,../img/live/7.jpg', '125', '120', '395', '2017/6/6 星期二', '2018/6/6 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '595');
INSERT INTO `goods` VALUES ('97', '狗狗', '医疗', '进口狗粮', '欧帝亿', '102kg', '../img/live/7.jpg', '../img/live/5.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/8.jpg', '126', '121', '396', '2017/6/7 星期三', '2018/6/7 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '596');
INSERT INTO `goods` VALUES ('98', '狗狗', '医疗', '进口狗粮', '欧帝亿', '103kg', '../img/live/8.jpg', '../img/live/2.jpg,../img/live/3.jpg,../img/live/7.jpg,../img/live/9.jpg', '127', '122', '397', '2017/6/8 星期四', '2018/6/8 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '597');
INSERT INTO `goods` VALUES ('99', '狗狗', '医疗', '进口狗粮', '欧帝亿', '104kg', '../img/live/9.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/6.jpg,../img/live/2.jpg', '128', '123', '398', '2017/6/9 星期五', '2018/6/9 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '598');
INSERT INTO `goods` VALUES ('100', '狗狗', '生活', '狗狗餐具', '欧帝亿', '105kg', '../img/live/1.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/5.jpg', '129', '124', '399', '2017/6/10 星期六', '2018/6/10 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '599');
INSERT INTO `goods` VALUES ('101', '狗狗', '生活', '狗狗餐具', '欧帝亿', '106kg', '../img/live/2.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/2.jpg,../img/live/6.jpg', '130', '125', '400', '2017/6/11 星期日', '2018/6/11 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.6cm', '600');
INSERT INTO `goods` VALUES ('102', '狗狗', '生活', '狗狗外出', '欧帝亿', '107kg', '../img/live/3.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/3.jpg,../img/live/7.jpg', '131', '126', '401', '2017/6/12 星期一', '2018/6/12 星期二', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.7cm', '601');
INSERT INTO `goods` VALUES ('103', '狗狗', '生活', '狗狗住所', '欧帝亿', '108kg', '../img/live/4.jpg', '../img/live/5.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/8.jpg', '132', '127', '402', '2017/6/13 星期二', '2018/6/13 星期三', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.8cm', '602');
INSERT INTO `goods` VALUES ('104', '狗狗', '生活', '狗狗训练', '欧帝亿', '109kg', '../img/live/5.jpg', '../img/live/2.jpg,../img/live/3.jpg,../img/live/7.jpg,../img/live/9.jpg', '133', '128', '403', '2017/6/14 星期三', '2018/6/14 星期四', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.9cm', '603');
INSERT INTO `goods` VALUES ('105', '狗狗', '生活', '狗狗训练', '欧帝亿', '110kg', '../img/live/6.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/6.jpg,../img/live/2.jpg', '134', '129', '404', '2017/6/15 星期四', '2018/6/15 星期五', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.10cm', '604');
INSERT INTO `goods` VALUES ('106', '狗狗', '生活', '狗狗训练', '欧帝亿', '111kg', '../img/live/7.jpg', '../img/live/1.jpg,../img/live/3.jpg,../img/live/3.jpg,../img/live/7.jpg', '135', '130', '405', '2017/6/16 星期五', '2018/6/16 星期六', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.11cm', '605');
INSERT INTO `goods` VALUES ('107', '狗狗', '生活', '狗狗训练', '欧帝亿', '112kg', '../img/live/8.jpg', '../img/live/5.jpg,../img/live/3.jpg,../img/live/4.jpg,../img/live/8.jpg', '136', '131', '406', '2017/6/17 星期六', '2018/6/17 星期日', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.12cm', '606');
INSERT INTO `goods` VALUES ('108', '狗狗', '生活', '爱丽丝', '欧帝亿', '113kg', '../img/live/9.jpg', '../img/live/2.jpg,../img/live/3.jpg,../img/live/7.jpg,../img/live/9.jpg', '137', '132', '407', '2017/6/18 星期日', '2018/6/18 星期一', '澳洲Industripet 口腔保健狗碗 粉色 中号 直径18*21.5cm', '607');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tel` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('49', '你好', 'b59c67bf196a4758191e42f76670ceba', '13411111111');
INSERT INTO `user` VALUES ('50', '你好娃娃', 'b59c67bf196a4758191e42f76670ceba', '13411111111');
INSERT INTO `user` VALUES ('42', '飞飞飞', '698d51a19d8a121ce581499d7b701668', '13211111111');
INSERT INTO `user` VALUES ('44', '轻武器', '698d51a19d8a121ce581499d7b701668', '13211111111');
INSERT INTO `user` VALUES ('47', '而为我', 'b59c67bf196a4758191e42f76670ceba', '13211111111');
INSERT INTO `user` VALUES ('48', '啊啊啊得的对', 'b59c67bf196a4758191e42f76670ceba', '13411111111');
SET FOREIGN_KEY_CHECKS=1;
