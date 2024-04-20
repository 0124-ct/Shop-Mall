/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 8.0.20 : Database - shop_system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE
DATABASE /*!32312 IF NOT EXISTS*/`shop_system` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE
`shop_system`;

/*Table structure for table `buy` */

DROP TABLE IF EXISTS `buy`;

CREATE TABLE `buy`
(
    `id`        int NOT NULL AUTO_INCREMENT,
    `userId`    int NOT NULL,
    `productId` int         DEFAULT NULL,
    `consignee` varchar(20) DEFAULT NULL,
    `address`   varchar(20) DEFAULT NULL,
    `phone`     varchar(20) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `buy` */

insert into `buy`(`id`, `userId`, `productId`, `consignee`, `address`, `phone`)
values (1, 2, 4, '1', '1', '1111111'),
       (2, 2, 3, '2', '2', '2222222'),
       (3, 3, 4, '3', '3', '3333333'),
       (4, 4, 5, '4', '4', '4444444'),
       (5, 6, 1, '8', '85', '5555555'),
       (6, 9, 2, '3', '7', '00000000'),
       (7, 4, 7, '3', '1', '55555555'),
       (8, 9, 7, '2', '6', '6666666666'),
       (7, 1, 0, '时代少年团', '重庆18楼', '12345671123'),
       (7, 1, 2, '马嘉祺', '河南省郑州市', '20021212'),
       (7, 2, 1, '丁程鑫', '四川省资阳市安岳县', '20020224'),
       (7, 3, 1, '宋亚轩', '山东省滨州市博兴县', '20040304'),
       (7, 4, 7, '刘耀文', '重庆市', '20050923'),
       (7, 5, 3, '张真源', '重庆市', '20030416'),
       (7, 6, 6, '严浩翔', '广东省广州市', '20040816'),
       (7, 6, 5, '贺峻霖', '四川省成都市', '20040615'),
       (13, 9, 1, '本人诶', '湖南省湘西', '2117210039');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product`
(
    `id`            int          NOT NULL AUTO_INCREMENT,
    `name`          varchar(100) NOT NULL COMMENT '商品名称',
    `image`         varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
    `description`   varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品介绍',
    `seller`        varchar(20)                                             DEFAULT NULL COMMENT '商品卖家',
    `category`      varchar(20)                                             DEFAULT NULL COMMENT '商品类别',
    `price` double DEFAULT NULL COMMENT '商品价格',
    `nowPrice` double DEFAULT NULL COMMENT '商品优惠后价格',
    `discount` double DEFAULT NULL COMMENT '优惠力度',
    `shippingCost` double DEFAULT NULL COMMENT '商品运费',
    `remainTime`    varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '剩余时间',
    `soldNumber`    int                                                     DEFAULT NULL COMMENT '本期售出',
    `allSoldNumber` int                                                     DEFAULT NULL COMMENT '累计售出',
    `state`         varchar(20)                                             DEFAULT NULL COMMENT '商品状态',
    `nowNumber`     varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci  DEFAULT NULL COMMENT '商品数量',
    `origin`        varchar(20)                                             DEFAULT NULL COMMENT '商品所在地',
    `views`         int                                                     DEFAULT NULL COMMENT '商品浏览量',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert into `product`(`id`, `name`, `image`, `description`, `seller`, `category`, `price`, `nowPrice`, `discount`,
                      `shippingCost`, `remainTime`, `soldNumber`, `allSoldNumber`, `state`, `nowNumber`, `origin`,
                      `views`)
values (1, '电视', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (2, '冰箱', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (3, '洗衣机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (4, '空调', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (5, '微波炉', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (6, '电磁炉', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！必不可缺的居家用品哦', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分',
        11, 7, '全新', '991', '浙江', 35),
       (7, '油烟机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (8, '洗碗机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (9, '电风扇', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '炎热的夏天，清凉一夏，快把我买回家！！！', '南瓜街小店02', '家用电器', 69, 40, 0.57, 20, '1天23小时57分', 11, 7,
        '全新', '991', '浙江', 35),
       (10, '热水壶', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '冬天的住宿单品哦！！！', '南瓜街小店02', '家用电器', 25, 15, 0.6, 8, '1天23小时57分', 11, 7, '全新', '991',
        '浙江', 35),
       (11, '扫地机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (12, '吹风机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 199, 139, 0.70, 50, '1天23小时57分', 11, 7, '全新', '991',
        '浙江', 35),
       (13, '榨汁机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '制作属于自己的健康果汁吧！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7,
        '全新', '991', '浙江', 35),
       (14, '电烤箱', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (15, '电饭煲', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (16, '活着', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '点击，买就对了', '卖家007', '书籍', 888, 88, 0.1, 0, '10天23小时', 10, 6, '全新', '99996', '江苏', 2),
       (17, '听风八百遍，才知是人间',
        'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '我们生而破碎，用活着来修修补补', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新',
        '99996', '无锡壹号仓', 30000),
       (18, '我与地坛', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '我已经不再地坛，地坛在我', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新',
        '99996', '无锡壹号仓', 30000),
       (19, '快乐就是哈哈哈',
        'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '幸遇三杯美酒 况逢一朵花新', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新',
        '99996', '无锡壹号仓', 30000),
       (20, '可是你真的真的很可爱',
        'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '笑中带泪，受过的伤，有过的烦恼都会被治愈的', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10,
        6, '全新', '99996', '无锡壹号仓', 30000),
       (21, '哈利波特', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '七个有魔法的故事 一场伟大的冒险之旅', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6,
        '全新', '99996', '无锡壹号仓', 30000),
       (22, '窄门', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '即使你不松开，我也要松开', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新',
        '99996', '无锡壹号仓', 30000),
       (23, '生而为人', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '生而为人，拙而不屈', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新', '99996',
        '无锡壹号仓', 30000),
       (24, '橙黄橘绿半时甜',
        'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '一年好景君须记，最是橘黄橙绿时', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新',
        '99996', '无锡壹号仓', 30000),
       (25, '晴耕雨读，得闲饮茶',
        'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '四时佳兴，可与人同', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新', '99996',
        '无锡壹号仓', 30000),
       (26, '你一定要走 走到灯火通明',
        'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '愿你，以渺小启程，以伟大结束', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新',
        '99996', '无锡壹号仓', 30000),
       (27, '人间小满', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '人间烟火气，最抚凡人心', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新', '99996',
        '无锡壹号仓', 30000),
       (28, '别怕！请允许一切发生',
        'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '人生不是轨道，请允许一切发生', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新',
        '99996', '无锡壹号仓', 30000),
       (29, '人间一趟，尽兴而已',
        'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '花看半开，酒饮微醺', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分', 10, 6, '全新', '99996',
        '无锡壹号仓', 30000),
       (30, '风吹哪页读哪页',
        'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '关于少年感所有的描述，都会让我想起十七岁的你', '当当网小助手02', '书籍', 40, 26.6, 0.665, 15, '7天23小时45分',
        10, 6, '全新', '99996', '无锡壹号仓', 30000),
       (31, '手机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (32, '手电筒', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店02', '家用电器', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (33, '洗发水', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (34, '沐浴露', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (35, '面巾纸', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (36, '洗衣液', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (37, '洗涤剂', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (38, '清洁剂', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (39, '肥皂', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (40, '洗手液', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (41, '衣架', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (42, '浴帘', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (43, '马桶刷', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (44, '拖把', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (45, '收纳盒', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (46, '粘钩', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '日用百货', 35, 20, 0.57, 10, '1天23小时57分', 11, 7, '全新', '991',
        '嘉兴', 35),
       (47, '平板', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (48, '笔记本', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (49, '台式', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (50, '手表', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (51, '耳机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (52, '音箱', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (53, '摄像头', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (54, '相机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (55, '游戏机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (56, '电子书', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (57, '手环', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (58, 'VR', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (59, '无人机', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35),
       (60, '充电宝', 'https://servemalls.vip-yych.com/file/upload/res/1b76f595-3676-4daa-8e52-a8694634deac.jpg',
        '土豪，快把我买回家！！！', '南瓜街小店03', '手机数码', 6888, 5699, 0.82, 3520, '1天23小时57分', 11, 7, '全新',
        '991', '浙江', 35);

/*Table structure for table `shoppingcart` */

DROP TABLE IF EXISTS `shoppingcart`;

CREATE TABLE `shoppingcart`
(
    `id`        int NOT NULL AUTO_INCREMENT,
    `productId` int NOT NULL,
    `userId`    int DEFAULT NULL,
    `state`     int DEFAULT NULL,
    `number`    int DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `shoppingcart` */

insert into `shoppingcart`(`id`, `productId`, `userId`, `state`, `number`)
values (1, 1, 1, 1, 1),
       (2, 2, 2, 2, 2),
       (3, 3, 3, 3, 3),
       (4, 4, 4, 4, 4),
       (5, 5, 5, 5, 5),
       (6, 6, 6, 6, 6),
       (7, 7, 7, 7, 7);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`
(
    `id`       int                                                    NOT NULL AUTO_INCREMENT COMMENT 'id',
    `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
    `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
    `email`    varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电子邮件',
    `gender`   varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
    `hobby`    varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '兴趣爱好',
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert into `users`(`id`, `username`, `password`, `email`, `gender`, `hobby`)
values (1, 'asdfgh', '777777', 'xxx.com', '女', '羽毛球'),
       (3, 'zxcvb', '888888', 'xxx.360com', '男', '排球'),
       (8, 'zxcvyu', '9999999', '7878778@qq.com', '男', '吃饭'),
       (9, '1234', '333333', 'xxx.111', '女', '购物'),
       (10, ',./p[', '6666666', 'xxx.cccoom', '女', '美妆');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
