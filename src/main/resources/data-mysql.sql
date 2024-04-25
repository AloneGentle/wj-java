-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: learn_language
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `crm_banner`
--

DROP TABLE IF EXISTS `crm_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm_banner`
(
    `id`           char(19)                                                     NOT NULL DEFAULT '' COMMENT 'ID',
    `title`        varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '标题',
    `image_url`    varchar(500)                                                 NOT NULL DEFAULT '' COMMENT '图片地址',
    `link_url`     varchar(500)                                                          DEFAULT '' COMMENT '链接地址',
    `sort`         int unsigned NOT NULL DEFAULT '0' COMMENT '排序',
    `is_deleted`   tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
    `gmt_create`   datetime                                                     NOT NULL COMMENT '创建时间',
    `gmt_modified` datetime                                                     NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_name` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='首页banner表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm_banner`
--

LOCK
TABLES `crm_banner` WRITE;
/*!40000 ALTER TABLE `crm_banner` DISABLE KEYS */;
INSERT INTO `crm_banner` (`id`, `title`, `image_url`, `link_url`, `sort`, `is_deleted`, `gmt_create`, `gmt_modified`)
VALUES ('1', 'test2', 'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/2077700981.jpeg',
        '/teacher', 2, 0, '2023-06-13 21:26:27', '2023-06-13 09:12:15'),
       ('1668633573030707202', '测试',
        'http://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/06/13b685b50be6c34f95aa0d5c754b4d0013background.jpg',
        '', 0, 1, '2023-06-13 22:57:00', '2023-06-13 22:57:29'),
       ('1668633662847533057', '测试测试',
        'http://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/06/13ee57629de36f472bab5c0f95de18c952bj2.png',
        '', 1, 1, '2023-06-13 22:57:22', '2023-06-13 22:57:29'),
       ('2', 'test1', 'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/mmexport168379111545.jpg',
        '/course', 1, 0, '2023-06-13 18:05:32', '2023-06-13 10:28:22'),
       ('3', 'test', 'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/mmexport1684205290014.jpg',
        '/course', 0, 0, '2023-05-16 10:49:46', '2023-05-16 10:49:49');
/*!40000 ALTER TABLE `crm_banner` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `edu_chapter`
--

DROP TABLE IF EXISTS `edu_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_chapter`
(
    `id`           char(19)    NOT NULL COMMENT '章节ID',
    `course_id`    char(19)    NOT NULL COMMENT '课程ID',
    `title`        varchar(50) NOT NULL COMMENT '章节名称',
    `sort`         int unsigned NOT NULL DEFAULT '0' COMMENT '显示排序',
    `gmt_create`   datetime    NOT NULL COMMENT '创建时间',
    `gmt_modified` datetime    NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY            `idx_course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_chapter`
--

LOCK
TABLES `edu_chapter` WRITE;
/*!40000 ALTER TABLE `edu_chapter` DISABLE KEYS */;
INSERT INTO `edu_chapter` (`id`, `course_id`, `title`, `sort`, `gmt_create`, `gmt_modified`)
VALUES ('1', '1', '第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('2', '2', '第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('3', '3', '第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('4', '4', '第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('5', '5', '第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('6', '6', '第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('7', '7', '第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('8', '8', '第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('9', '9', '第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('10','10','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('11','11','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('12','12','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('13','13','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('14','14','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('15','15','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('16','16','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('17','17','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('18','18','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('19','19','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('20','20','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('21','21','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('22','22','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('23','23','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('24','24','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('25','25','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('26','26','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('27','27','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('28','28','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('29','29','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('30','30','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('31','31','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('32','32','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('33','33','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('34','34','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('35','35','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('36','36','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('37','37','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('38','38','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17'),
       ('39','39','第一章',0, '2024-04-01 12:23:17','2024-04-01 12:23:17');
/*!40000 ALTER TABLE `edu_chapter` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `edu_comment`
--

DROP TABLE IF EXISTS `edu_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_comment`
(
    `id`           char(19)    NOT NULL COMMENT '讲师ID',
    `course_id`    varchar(19) NOT NULL DEFAULT '' COMMENT '课程id',
    `teacher_id`   char(19)    NOT NULL DEFAULT '' COMMENT '讲师id',
    `member_id`    varchar(19) NOT NULL DEFAULT '' COMMENT '会员id',
    `nickname`     varchar(50)          DEFAULT NULL COMMENT '会员昵称',
    `avatar`       varchar(255)         DEFAULT NULL COMMENT '会员头像',
    `content`      varchar(500)         DEFAULT NULL COMMENT '评论内容',
    `is_deleted`   tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
    `gmt_create`   datetime    NOT NULL COMMENT '创建时间',
    `gmt_modified` datetime    NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY            `idx_course_id` (`course_id`),
    KEY            `idx_teacher_id` (`teacher_id`),
    KEY            `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='评论';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_comment`
--

LOCK
TABLES `edu_comment` WRITE;
/*!40000 ALTER TABLE `edu_comment` DISABLE KEYS */;
INSERT INTO `edu_comment` (`id`, `course_id`, `teacher_id`, `member_id`, `nickname`, `avatar`, `content`, `is_deleted`,
                           `gmt_create`, `gmt_modified`)
VALUES ('1', '1',  '1', '1652358426741305346',  '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','达哥真的扭扭扭', 0, '2023-05-13 13:58:06', '2023-05-13 13:58:06'),
       ('2', '2',  '2', '1652358426741305346',  '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','针不戳', 0, '2023-05-13 13:58:15', '2023-05-13 13:58:15'),
       ('3', '3',  '3', '1652358426741305346',  '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','这也泰裤辣！', 0, '2023-05-13 13:58:27', '2023-05-13 13:58:27'),
       ('4', '4',  '4', '1652358426741305346',  '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','你们今天有成为更好的自己吗！？', 0, '2023-05-13 13:58:39', '2023-05-13 13:58:39'),
       ('5', '5',  '5', '1652358426741305346',  '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','泰裤辣！！', 0, '2023-05-13 18:18:46', '2023-05-13 18:18:46'),
       ('6', '6',  '6', '1652358426741305346',  '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','真滴好看', 0, '2023-05-13 18:18:52', '2023-05-13 18:18:52'),
       ('7', '7',  '7', '1652358426741305346',  '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','我直接睡不着', 0, '2023-05-13 18:18:57', '2023-05-13 18:18:57'),
       ('8', '8',  '8', '1652358426741305346',  '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','如果能给我再来一次~', 0, '2023-05-13 18:19:05', '2023-05-13 18:19:05'),
       ('9', '9',  '9', '1652358426741305346',  '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','把你的心给我，把你的爱给我', 0, '2023-05-13 18:19:24', '2023-05-13 18:19:24'),
       ('10','10', '10', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','很好看', 0, '2023-05-13 18:19:33', '2023-05-13 18:19:33'),
       ('11','11', '11', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','喜欢看', 0, '2023-05-13 18:19:38', '2023-05-13 18:19:38'),
       ('12','12', '12', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','真滴好看', 0, '2023-05-13 18:19:54', '2023-05-13 18:19:54'),
       ('13','13', '13', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','嘎嘎好看！', 0, '2023-05-13 18:19:59', '2023-05-13 18:19:59'),
       ('14','14', '14', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','卧槽牛逼', 0, '2023-05-13 18:20:03', '2023-05-13 18:20:03'),
       ('15','15', '15', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','太无敌了', 0, '2023-05-13 18:20:08', '2023-05-13 18:20:08'),
       ('16','16', '16', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','天空一声巨响', 0, '2023-05-13 18:20:14', '2023-05-13 18:20:14'),
       ('17','17', '17', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','老子闪亮登场', 0, '2023-05-13 18:20:20', '2023-05-13 18:20:20'),
       ('18','18', '18', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','66666', 0, '2023-05-13 18:20:36', '2023-05-13 18:20:36'),
       ('19','19', '19', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','999', 0, '2023-05-13 18:20:38', '2023-05-13 18:20:38'),
       ('20','20', '20', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','达哥真帅', 0, '2023-05-13 18:20:44', '2023-05-13 18:20:44'),
       ('21','21', '21', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','喜欢读', 0, '2023-05-13 18:21:00', '2023-05-13 18:21:00'),
       ('22','22', '22', '1652358426741305346', '蓝波波','https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg','还想读', 0, '2023-05-13 18:21:05', '2023-05-13 18:21:05');
/*!40000 ALTER TABLE `edu_comment` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `edu_course`
--

DROP TABLE IF EXISTS `edu_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_course`
(
    `id`                char(19)                                                      NOT NULL COMMENT '课程ID',
    `teacher_id`        char(19)                                                      NOT NULL COMMENT '课程讲师ID',
    `subject_id`        char(19)                                                      NOT NULL COMMENT '课程专业ID',
    `subject_parent_id` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci           DEFAULT NULL,
    `title`             varchar(50)                                                   NOT NULL COMMENT '课程标题',
    `price`             decimal(10, 2) unsigned NOT NULL DEFAULT '0.00' COMMENT '课程销售价格，设置为0则可免费观看',
    `lesson_num`        int unsigned NOT NULL DEFAULT '0' COMMENT '总课时',
    `cover`             varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '课程封面图片路径',
    `buy_count`         bigint unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
    `view_count`        bigint unsigned NOT NULL DEFAULT '0' COMMENT '浏览数量',
    `version`           bigint unsigned NOT NULL DEFAULT '1' COMMENT '乐观锁',
    `status`            varchar(10)                                                   NOT NULL DEFAULT 'Draft' COMMENT '课程状态 Draft未发布  Normal已发布',
    `is_deleted`        tinyint                                                                DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
    `gmt_create`        datetime                                                      NOT NULL COMMENT '创建时间',
    `gmt_modified`      datetime                                                      NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY                 `idx_title` (`title`),
    KEY                 `idx_subject_id` (`subject_id`),
    KEY                 `idx_teacher_id` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_course`
--

LOCK
TABLES `edu_course` WRITE;
/*!40000 ALTER TABLE `edu_course` DISABLE KEYS */;
INSERT INTO `edu_course` (`id`, `teacher_id`, `subject_id`, `subject_parent_id`, `title`, `price`, `lesson_num`,
                          `cover`, `buy_count`, `view_count`, `version`, `status`, `is_deleted`, `gmt_create`,
                          `gmt_modified`)
VALUES ('1', '1',  '11', '1','英语入门',      0.01, 3,'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 50, 55,1, 'Normal', 0, '2023-05-12 20:39:50', '2023-05-12 20:39:50'),
       ('2', '2',  '11', '1','英语口语训练营', 0.00,7, 'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 0, 96,1, 'Normal', 0, '2023-05-12 21:24:54', '2023-05-12 21:24:54'),
       ('3', '3',  '12', '1','英语语法掌握',   0.01, 3,'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 23, 45,1, 'Normal', 0, '2023-05-12 21:34:00', '2023-05-12 21:34:00'),
       ('4', '4',  '12', '1','英语听力突破',   0.01, 5,'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 96, 244,1, 'Normal', 0, '2023-05-12 21:37:31', '2023-05-12 21:37:31'),
       ('5', '5',  '13', '1','商务英语精通',   0.01, 6,'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 76, 124,1, 'Normal', 0, '2023-05-12 21:38:21', '2023-05-12 21:38:21'),
       ('6', '6',  '13', '1','英语写作大师班', 0.01, 11,'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 158, 254,1, 'Normal', 0, '2023-05-12 21:39:19', '2023-05-12 21:39:19'),
       ('7', '7',  '12', '1','托福考试策略',  0.00,1, 'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 0, 11,1, 'Normal', 0, '2023-05-12 21:41:10', '2023-05-12 21:41:10'),
       ('8', '8',  '12', '1','雅思考试攻略',  0.01, 1,'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 41, 54,1, 'Normal', 0, '2023-05-12 21:42:20', '2023-05-12 21:42:20'),
       ('9', '9',  '13', '1','英美文学导读',  0.01, 6,'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 41, 71,1, 'Normal', 0, '2023-05-12 21:43:24', '2023-05-12 21:43:24'),
       ('10','10', '11', '1','英语口语角',    0.01, 3,'https://img2.baidu.com/it/u=3244808861,1934830040&fm=253&fmt=auto&app=120&f=JPEG?w=607&h=459', 5, 24, 1,'Normal', 0, '2023-05-12 21:45:36', '2023-05-12 21:45:36'),
       ('11','11', '21', '2','法语入门',      0.01, 6,'https://img1.baidu.com/it/u=2638272714,2556149852&fm=253&fmt=auto&app=138&f=JPEG?w=445&h=334', 65, 124,1, 'Normal', 0, '2023-05-12 21:47:15', '2023-05-12 21:47:15'),
       ('12','12', '21', '2','法语发音训练营', 0.00,3, 'https://img1.baidu.com/it/u=2638272714,2556149852&fm=253&fmt=auto&app=138&f=JPEG?w=445&h=334', 0, 57,1, 'Normal', 0, '2023-05-12 21:48:32', '2023-05-12 21:48:32'),
       ('13','13', '22', '2','法语会话班',    0.01,2, 'https://img1.baidu.com/it/u=2638272714,2556149852&fm=253&fmt=auto&app=138&f=JPEG?w=445&h=334', 8, 24,1, 'Normal', 0, '2023-05-12 21:49:08', '2023-05-12 21:49:08'),
       ('14','14', '22', '2','法语文化探索',   0.00, 3,'https://img1.baidu.com/it/u=2638272714,2556149852&fm=253&fmt=auto&app=138&f=JPEG?w=445&h=334', 0, 214,1, 'Normal', 0, '2023-05-12 21:50:07', '2023-05-12 21:50:07'),
       ('15','15', '22', '2','法语听力提高班', 0.01, 5,'https://img1.baidu.com/it/u=2638272714,2556149852&fm=253&fmt=auto&app=138&f=JPEG?w=445&h=334', 32, 54,1, 'Normal', 0, '2023-05-12 21:50:56', '2023-05-12 21:50:56'),
       ('16','16', '22', '2','法语阅读精选',   0.01, 5,'https://img1.baidu.com/it/u=2638272714,2556149852&fm=253&fmt=auto&app=138&f=JPEG?w=445&h=334', 28, 45,1, 'Normal', 0, '2023-05-12 21:51:48', '2023-05-12 21:51:48'),
       ('17','17', '31', '3','德语入门',      0.01, 3,'https://img2.baidu.com/it/u=811888098,1635661898&fm=253&fmt=auto&app=138&f=JPEG?w=674&h=500', 44, 42,1, 'Normal', 0, '2023-05-12 21:52:36', '2023-05-12 21:52:36'),
       ('18','18', '31', '3','德语发音达人',   0.01, 1, 'https://img2.baidu.com/it/u=811888098,1635661898&fm=253&fmt=auto&app=138&f=JPEG?w=674&h=500',29, 44, 1, 'Normal', 0, '2023-05-12 21:53:35', '2023-05-12 21:53:35'),
       ('19','19', '32', '3','德语会话班',    0.01, 3, 'https://img2.baidu.com/it/u=811888098,1635661898&fm=253&fmt=auto&app=138&f=JPEG?w=674&h=500',31, 57, 1, 'Normal', 0, '2023-05-12 21:54:37', '2023-05-12 21:54:37'),
       ('20','20', '32', '3','德语语法掌握',  0.00, 3, 'https://img2.baidu.com/it/u=811888098,1635661898&fm=253&fmt=auto&app=138&f=JPEG?w=674&h=500',0, 74, 1, 'Normal', 0, '2023-05-12 21:56:04', '2023-05-12 21:56:04'),
       ('21','21', '31', '3','德语听力训练营', 0.01, 3,'https://img2.baidu.com/it/u=811888098,1635661898&fm=253&fmt=auto&app=138&f=JPEG?w=674&h=500', 18, 56,1, 'Normal', 0, '2023-05-12 21:57:11', '2023-05-12 21:57:11'),
       ('22','22', '31', '3','德语阅读精选',   0.01,5, 'https://img2.baidu.com/it/u=811888098,1635661898&fm=253&fmt=auto&app=138&f=JPEG?w=674&h=500', 69,97, 1, 'Normal', 0, '2023-05-12 21:58:45', '2023-05-12 21:58:45');
/*!40000 ALTER TABLE `edu_course` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `edu_course_collect`
--

DROP TABLE IF EXISTS `edu_course_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_course_collect`
(
    `id`           char(19) NOT NULL COMMENT '收藏ID',
    `course_id`    char(19) NOT NULL COMMENT '课程讲师ID',
    `member_id`    char(19) NOT NULL DEFAULT '' COMMENT '课程专业ID',
    `is_deleted`   tinyint  NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
    `gmt_create`   datetime NOT NULL COMMENT '创建时间',
    `gmt_modified` datetime NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='课程收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_course_collect`
--

LOCK
TABLES `edu_course_collect` WRITE;
/*!40000 ALTER TABLE `edu_course_collect` DISABLE KEYS */;
INSERT INTO `edu_course_collect` (`id`, `course_id`, `member_id`, `is_deleted`, `gmt_create`, `gmt_modified`)
VALUES ('1', '1', '1', 1, '2019-11-18 11:30:12', '2019-11-18 11:30:12');
/*!40000 ALTER TABLE `edu_course_collect` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `edu_course_description`
--

DROP TABLE IF EXISTS `edu_course_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_course_description`
(
    `id`           char(19) NOT NULL COMMENT '课程ID',
    `description`  longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '课程简介',
    `gmt_create`   datetime NOT NULL COMMENT '创建时间',
    `gmt_modified` datetime NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课程简介';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_course_description`
--

LOCK
TABLES `edu_course_description` WRITE;
/*!40000 ALTER TABLE `edu_course_description` DISABLE KEYS */;
INSERT INTO `edu_course_description` (`id`, `description`, `gmt_create`, `gmt_modified`)
VALUES ('1', '后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('2', '后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('3', '后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('4', '后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('5', '后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('6', '后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('7', '后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('8', '后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('9', '后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('10','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('11','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('12','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('13','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('14','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('15','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('16','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('17','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('18','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('19','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('20','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('21','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('22','后续补充', '2024-04-01 12:23:17', '2024-04-01 12:23:17');
/*!40000 ALTER TABLE `edu_course_description` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `edu_subject`
--

DROP TABLE IF EXISTS `edu_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_subject`
(
    `id`           char(19)             DEFAULT NULL COMMENT '课程类别ID',
    `title`        varchar(10) NOT NULL COMMENT '类别名称',
    `parent_id`    char(19)    NOT NULL DEFAULT '0' COMMENT '父ID',
    `sort`         int unsigned NOT NULL DEFAULT '0' COMMENT '排序字段',
    `gmt_create`   datetime    NOT NULL COMMENT '创建时间',
    `gmt_modified` datetime    NOT NULL COMMENT '更新时间',
    KEY            `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='课程科目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_subject`
--

LOCK
TABLES `edu_subject` WRITE;
/*!40000 ALTER TABLE `edu_subject` DISABLE KEYS */;
INSERT INTO `edu_subject` (`id`, `title`, `parent_id`, `sort`, `gmt_create`, `gmt_modified`)
VALUES ('1',  '英语',    '0', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('11', '英语基础', '1', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('12', '英语中级', '1', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('13', '英语高级', '1', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('2',  '法语',    '0', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('21', '法语基础', '2', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('22', '法语高级', '2', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('3',  '德语',    '0', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('31', '德语基础', '3', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17'),
       ('32', '德语高级', '3', 0, '2024-04-01 12:23:17', '2024-04-01 12:23:17');
/*!40000 ALTER TABLE `edu_subject` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `edu_teacher`
--

DROP TABLE IF EXISTS `edu_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_teacher`
(
    `id`           char(19)     NOT NULL COMMENT '讲师ID',
    `name`         varchar(20)  NOT NULL COMMENT '讲师姓名',
    `intro`        varchar(500) NOT NULL DEFAULT '' COMMENT '讲师简介',
    `career`       varchar(500)          DEFAULT NULL COMMENT '讲师资历,一句话说明讲师',
    `level`        int unsigned NOT NULL COMMENT '头衔 1高级讲师 2首席讲师',
    `avatar`       varchar(255)          DEFAULT NULL COMMENT '讲师头像',
    `sort`         int unsigned NOT NULL DEFAULT '0' COMMENT '排序',
    `is_deleted`   tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
    `gmt_create`   datetime     NOT NULL COMMENT '创建时间',
    `gmt_modified` datetime     NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='讲师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_teacher`
--

LOCK
TABLES `edu_teacher` WRITE;
/*!40000 ALTER TABLE `edu_teacher` DISABLE KEYS */;
INSERT INTO `edu_teacher` (`id`, `name`, `intro`, `career`, `level`, `avatar`, `sort`, `is_deleted`, `gmt_create`,
                           `gmt_modified`)
VALUES ('1', '张三', '清华大学经济学博士后，曾任中央银行行长、清华大学经管学院院长。', '清华大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1629909394962.jpg',0, 0, '2019-10-30 14:18:46', '2023-03-08 20:44:18'),
       ('2', '晴天','中国光网络的先驱者之一，同时也是中国电信行业的著名专家，他的主要研究方向包括：光通信、接入网、NGN/NGI 以及网络演进策略。迄今为止，他已经发表了100多篇论文，并出版了9本专业书籍。从2001年至2008年，他担任中国电信集团的首席技术官一职，2008年以后，他出任中国电信集团科学技术委员会主任。目前他还担任中华人民共和国工业与信息化部科学技术委员会常务副主任，以及2014年11月成立的SDN/NFV 产业联盟理事长，新一代光传送网发展论坛(NGOF)理事长。','清华大学', 2,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/20220301_15090467.png.jpg',1, 0, '2019-10-30 11:53:03', '2023-05-12 21:36:01'),
       ('3', '李刚','同济大学管理工程学专业毕业，研究生学历，博士学位，苏州大学教授，博士生导师，新教育改革发起人。现任十一届全国人大常委，民进中央专职副主席，中国教育学会副会长。朱永新先后求学于江苏师范学院、上海师范大学、同济大学、复旦大学，主修教育心理学，一直攻读到博士后。20 年来，他在美国、英国、日本和国内发表有关教育的论文 200 余篇，出版了多本论著。','同济大学', 2,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1608132867728.jpg',2, 0, '2019-10-30 11:55:19', '2023-03-08 20:56:28'),
       ('4', '王二','中国人民大学附属中学校长，数学特级教师，现任第十届北京市政协委员，全国劳动模范，中国人民大学党委委员，中国人才研究会超常人才专业委员会副理事长、全国青少年劳技教育发明创造专业委员会主任、中国教育学会高中教育专业委员会副理事长等职务,享受国务院特殊津贴。中国数学奥林匹克高级教练员，所教学生曾获国际奥林匹克数学竞赛金牌、银牌，400余人在全国、北京市中学生数学竞赛中获奖。','中国人民大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/2a22706a864b9835.jpg',0, 0, '2019-10-30 14:18:56', '2019-11-12 13:37:35'),
       ('5', '王五','1962年毕业于上海师范学院数学系。现任上海中学校长。主要论著有《多项式《高中数学解题策略》忡学数学教学目的和内容的中西比锄等。现为上海市中小学数学教学研究会副理事长、全国高级中学校长委员会常务理事、IBO国际文凭组织校长委员会委员、上海市教育学会副会长、上海市数学学会常务理事兼中学数学教育委员会主任、上海市中学教师高级职称评审委员会委员兼数学学科组组长、上海师范大学兼职教授及教育硕士兼职导师。','上海师范学院', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/2109743358.jpeg',0, 0, '2019-10-30 14:19:02', '2019-11-12 13:37:18'),
       ('6', '李四','辽宁省盘锦市教育局局长，当代著名教育改革家。因在教育教改中的突出成绩，先后荣获省功勋教师、全国劳动模范、全国优秀班主任、全国有突出贡献的中青年专家、首届中国十大杰出青年等殊荣。兼任全国教育科研规划领导小组成员、中国中学学习科学研究会理事长、全国中语会副理事会长。著有《语文教学探索》、《班主任工作漫谈》、《家教漫谈》等书。教育思想：教育民主、科学管理。','清华大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/2105949821.jpeg',0, 0, '2019-11-07 09:18:25', '2019-11-12 13:37:01'),
       ('7', '张晶','现任上海市教育科学研究院副院长、研究员，华东师范大学教授、博士生导师。在上海青浦县主持了长达15年的数学教育改革实验，并进行了近十年的后续研究。多次被评为上海市劳动模范、全国劳动模范，并荣获“全国五一劳动奖章”等。是上海市首届教育功臣、享受国务院特殊津贴的专家。主要著述有《学会教学》、《教学实验论》《当代教学策略》《寻找中间地带》《教学改革的行动诠释》等。教育思想：行动教育。','复旦大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/1668220453384.jpeg',0, 0, '2019-11-07 14:26:37', '2023-04-06 15:20:52'),
       ('8', '林鹏','数学特级教师，享受国务院特殊津贴专家，北京附属中学副校长。曾荣获“北京市十大杰出青年”“全国优秀教师”“苏步青数学教育奖”一等奖、胡楚南优秀教学成果奖等荣誉。他的“中学数学建模和导学探索的教学模式”在中学数学界引起了极大的反响。','北京大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/2188242325.jpeg',0, 0, '2019-11-15 21:47:12', '2020-08-04 23:45:31'),
       ('9', '王鲲鹏','中国人民大学附中校长，北京市数学特级教师。第十届北京市政协委员，中国数学奥林匹克高级教练员。荣获北京市优秀教师、北京市劳动模范、全国三八红旗手、全国教育系统先进工作者等称号。著有《人生为一大事来》、《我的教育思想》等。','中国人民大学', 0,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/1842852813.jpg',0, 0, '2020-08-02 20:51:21', '2020-08-02 21:07:03'),
       ('10', '张武','国家督学，山东省潍坊市教育局局长，全国优秀教师，全国劳动模范。独创的“语文实验室计划”获全国教育实验优秀教改成果二等奖，并走上国际讲台。著有《教育随想录》、《为了自由呼吸的教育》、《学生第二〉《36天，我的美国教育之旅〉等。','南京大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683245391199.jpg',1, 0, '2020-08-04 21:51:12', '2020-08-04 21:51:12'),
       ('11', '李鹏','北京师范大学心理学部教授。教书育人是他毕生的事业，“培养出超越自己、值得自己崇拜的学生”是他的教育理念。他培养出了88名博士，为中国发展心理学研究的学术梯队建设做出了重要贡献。他坚持“严在当严处，爱在细微中”的育人观，在科研上对学生严格要求，在生活中对学生关心无微不至。他是师德教育的研究者，也是高尚师德的践行者，2021年被教育部聘为全国师德师风建设专家委员会总顾问。曾获全国劳动模范、全国十佳师德标兵、北京市人民教师等荣誉。','北京师范大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683191081662.jpg',1, 0, '2020-08-04 21:53:48', '2020-08-04 21:53:48'),
       ('12', '王达','南开大学物理科学学院教授。他从教28年来，潜心于光学与光子学领域的教学科研工作，积极推动中国物理学教育和科学普及，发起了中国大学生物理学术竞赛，对大学物理教育改革起到了示范作用。他以育人为根本任务，言传身教，培养出一批光学和光子学领域的优秀青年科技人才。他指导研究生在拓扑光子学、弱光非线性与光场调控、铌酸锂光电器件等领域取得多项原始创新成果，引领相关领域创新发展，部分成果应用于载人航天、航母等重大工程。曾获宝钢优秀教师奖、全国优秀科技工作者等荣誉。','南开大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1673963639488.jpg',0, 0, '2020-08-04 23:25:20', '2020-08-05 15:16:24'),
       ('13', '杰克','山西大学光电研究所教授。他始终牢记人民教师的光荣职责，坚持扎根于中西部，突出因材施教，注重培养学生科研兴趣，鼓励他们大胆假设、小心求证，培养出一批有理想、有本领、有担当的优秀青年人才。他坚守科技教育工作使命，瞄准国际科学前沿、国家战略需求以及地方转型发展需要，围绕“卡脖子”技术，矢志打造一流团队、完成一流成果，在国际上率先实验实现一维和两维自旋轨道耦合的简并费米气体。他坚持学高为师、身正为范、教学相长，打造有力教师团队，入选教育部“全国高校黄大年式教师团队”。曾获全国五一劳动奖章、山西省特级劳动模范等荣誉。','山西大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1668416924194.jpg',1, 0, '2020-08-05 15:08:42', '2020-08-05 15:08:42'),
       ('14', '龙洋','吉林农业大学农学院教授、中国工程院院士。作为菌物学学科的拓荒者，他始终以立德树人为根本，系统做好人才培养工作，经过30余年努力，他为学校建立了从专科到博士的菌物科学与食用菌工程人才培养体系和学科发展体系，培养了100多名农业技术和经营管理人才。他始终秉持教书育人初心，几十年如一日潜心教学，古稀之年仍坚持为本科生授课。他治学严谨、甘为人梯，以卓越学识和崇高品格，凝聚和培养了一代又一代教师，推动教育事业青蓝相续、薪火相传。曾获国家教学名师、全国优秀教育工作者、全国脱贫攻坚楷模等荣誉。','吉林农业大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/-77c19ba3cee1f73c.jpg',0, 0, '2020-08-08 21:55:13', '2020-08-08 21:55:13'),
       ('15', '廖大姐','复旦大学上海医学院教授、中国科学院院士。从教30多年来，他坚持躬耕在教学一线，关注学生全面发展，悉心引导学生在科研领域攻坚克难，为医学事业培养了大量人才。在教学工作中，他以大先生为追求，强调德才兼备，坚持以身作则，将大医情怀传递给学生，以师德培养医德，让每位学生在行医生涯中为患者带去生命之光。作为医院管理者，他忠实履行附属医院在医学教育中的责任和使命，推动建设一流医学教育，为健康中国添砖加瓦。作为医学专家，立足临床，以病人为中心，创新治疗手段，勇斗“癌王”，为病人带来希望。曾获国家科技进步二等奖、宝钢优秀教师奖等荣誉。','复旦大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1657431390736.jpg',0, 0, '2020-08-14 15:33:51', '2020-08-14 15:33:51'),
       ('16', '陈博宇','东南大学附属中大医院教授。他扎根教学一线30年，培养硕士、博士研究生243人，很多毕业生成为重症医学骨干力量。他在重症医学教育教学改革中做出了重要探索，修订重症医学质控指标，率先在江苏省试点重症医学专项规范技能培训和资格认证。在防控新冠肺炎疫情工作中，他秉持“重症病人在哪里，我就应该在哪里”作风，持续战斗在救治一线。','东南大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1657431379629.jpg',0, 0, '2023-03-01 20:48:44', '2023-03-01 21:29:50'),
       ('17', '陈柏','山东农业大学农学院教授。从教30多年来，他始终坚持“德才兼备、以德为先”的育人理念，用自己的实际行动诠释着“学为人师、行为世范”的人民教师职业准则。他教导学生学农爱农、立志为农，引导学生将个人理想融入国家发展战略，多名毕业生被评为全国劳动模范，成为行业优秀人才。他历经20年，成功克隆抗赤霉病基因Fhb7并探明其遗传和分子机理，实现了重要科技突破。','山东农业大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/46cc36ac885cb1d1.jpg',1, 0, '2023-03-10 20:42:16', '2023-03-10 20:42:21'),
       ('18', '郑达','武汉大学遥感信息工程学院教授、中国工程院院士。他以大先生为追求，61年坚守教学一线，无论是当副校长期间还是当院士后，都从未间断亲自上讲台授课，培养了一批又一批遥感测绘之才。他不遗余力提携后学，不拘一格使用人才，创造平台让他们施展特长，凝聚起遥感测绘研究的强大团队。他向学院捐赠100万元设立“教书育人奖”，奖励教书育人方面表现突出的优秀教师。他首次提出了数字摄影测量网格思想，研制出我国首套完全自主知识产权的航空航天遥感影像数字摄影测量网格处理系统，打破了国际软件的垄断，极大推动了我国摄影测量技术的进步与产业化发展。曾获国家自然科学奖二等奖、湖北省荆楚楷模年度人物等荣誉。','武汉大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1658826061758.jpg',1, 0, '2023-03-14 13:00:25', '2023-03-14 13:00:25'),
       ('19', '张小静','中南大学地球科学与信息物理学院教授、中国工程院院士。他从事高等教育及科学研究60多年，是我国电磁勘探领域的开拓者，领衔建立的电磁探测中国学派，引领国际地球物理学前沿。他为人师表，在耄耋之年仍奔波在教学科研一线，为我国深地探测战略和新能源战略的实施贡献力量。他注重教学科研创新，培养了大批高层次中青年人才，很多毕业生成为电磁勘探领域的中坚力量。','中南大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/03/14e63cd250e4044a36b5a47ba6a1a64f5afile.png',2, 0, '2023-05-11 21:49:18', '2023-05-11 21:49:18'),
       ('20', '周杰伦','华南理工大学建筑学院教授、中国科学院院士。他以大先生为追求，做建筑环境声学研究与教学领域的拓荒人与推动者，培养了众多优秀的硕士、博士毕业生，为该学科在我国的发展培养了重要的学术力量。他热爱教育事业，秉持着“熟能生巧”“他山之石，可以攻玉”“文理兼修”等教育理念，潜心教书育人，力做学生为学、为事、为人的示范。\r\n华南理工大学建筑学院教授、中国科学院院士。他以大先生为追求，做建筑环境声学研究与教学领域的拓荒人与推动者，培养了众多优秀的硕士、博士毕业生，为该学科在我国的发展培养了重要的学术力量。他热爱教育事业，秉持着“熟能生巧”“他山之石，可以攻玉”“文理兼修”等教育理念，潜心教书育人，力做学生为学、为事、为人的示范。','华南理工大学', 1,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/2179794410.jpeg',0, 0, '2020-08-02 16:54:17', '2020-08-02 16:54:21'),
       ('21', '廖晓悦','西安电子科技大学微电子学院教授、中国科学院院士。他扎根祖国西部四十年如一日，深耕讲坛、潜心育人，先后培养硕士、博士毕业生370多名。他创新教育教学理念，构建了“理论课程—实践能力—创新素质”三位一体集成电路复合型创新人才培养模式，在全国多所高校推广应用，为我国关键技术领域突破培养了大批拔尖创新人才。','西安电子科技大学', 2,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1657431379629.jpg',0, 0, '2020-08-03 16:44:36', '2023-03-08 20:51:25'),
       ('22', '热巴','宁夏大学化学化工学院教授。她扎根西部二十五载，坚守教书育人一线，在构建化工专业本科人才实践能力培养模式方面不断探索，取得扎实育人成效。她注重创新创业教育，先后指导200多名学生参加各种创新创业项目，获得各级奖励30余项。','宁夏大学', 0,'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',0, 0, '2020-07-27 17:18:04', '2020-08-04 17:18:08');
/*!40000 ALTER TABLE `edu_teacher` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `edu_video`
--

DROP TABLE IF EXISTS `edu_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `edu_video`
(
    `id`                  char(19)    NOT NULL COMMENT '视频ID',
    `course_id`           char(19)    NOT NULL COMMENT '课程ID',
    `chapter_id`          char(19)    NOT NULL COMMENT '章节ID',
    `title`               varchar(50) NOT NULL COMMENT '节点名称',
    `video_source_id`     varchar(100)         DEFAULT NULL COMMENT '云端视频资源',
    `video_original_name` varchar(100)         DEFAULT NULL COMMENT '原始文件名称',
    `sort`                int unsigned NOT NULL DEFAULT '0' COMMENT '排序字段',
    `play_count`          bigint unsigned NOT NULL DEFAULT '0' COMMENT '播放次数',
    `is_free`             tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否可以试听：0收费 1免费',
    `duration`            float       NOT NULL DEFAULT '0' COMMENT '视频时长（秒）',
    `status`              varchar(20) NOT NULL DEFAULT 'Empty' COMMENT 'Empty未上传 Transcoding转码中  Normal正常',
    `size`                bigint unsigned NOT NULL DEFAULT '0' COMMENT '视频源文件大小（字节）',
    `version`             bigint unsigned NOT NULL DEFAULT '1' COMMENT '乐观锁',
    `gmt_create`          datetime    NOT NULL COMMENT '创建时间',
    `gmt_modified`        datetime    NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY                   `idx_course_id` (`course_id`),
    KEY                   `idx_chapter_id` (`chapter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPACT COMMENT='课程视频';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_video`
--

LOCK
TABLES `edu_video` WRITE;
/*!40000 ALTER TABLE `edu_video` DISABLE KEYS */;
INSERT INTO `edu_video` (`id`, `course_id`, `chapter_id`, `title`, `video_source_id`, `video_original_name`, `sort`,
                         `play_count`, `is_free`, `duration`, `status`, `size`, `version`, `gmt_create`, `gmt_modified`)
VALUES ('1', '1', '1', '英语介绍', 'fedcdb5027c5428ba29b93f7ef7c7a93', '', 0, 0,
        0, 0, 'Empty', 0, 1, '2020-08-14 15:36:57', '2020-08-14 15:36:57'),
       ('2', '2', '2', '英语介绍',
        'e895880ce4784d9a866b17e8d8cd377b', '6 - What If I Want to Move Faster.mp4', 0, 0, 0, 0, 'Empty', 0, 1,
        '2020-08-08 21:27:52', '2020-08-08 21:27:52'),
       ('3', '3', '3', '英语介绍',
        '851d386575034d1aa196f35525f9ad72', NULL, 0, 0, 0, 0, 'Empty', 0, 1, '2020-08-08 21:58:27',
        '2020-08-08 21:58:27'),
       ('4', '4', '4', '英语介绍',
        '851d386575034d1aa196f35525f9ad72', NULL, 0, 0, 0, 0, 'Empty', 0, 1, '2020-08-08 21:58:57',
        '2020-08-08 21:58:57'),
       ('5', '5', '5', '英语介绍',
        '851d386575034d1aa196f35525f9ad72', NULL, 0, 0, 0, 0, 'Empty', 0, 1, '2020-08-08 21:59:18',
        '2020-08-08 21:59:18'),
       ('6', '6', '6', '英语介绍', '851d386575034d1aa196f35525f9ad72',
        '6 - What If I Want to Move Faster.mp4', 0, 0, 0, 0, 'Empty', 0, 1, '2020-08-09 16:43:11',
        '2020-08-09 16:43:11'),
       ('7', '7', '7', '英语介绍', '851d386575034d1aa196f35525f9ad72',
        NULL, 10, 0, 0, 0, 'Empty', 0, 1, '2020-08-10 12:41:44', '2020-08-10 12:41:44'),
       ('8', '8', '8', '英语介绍',
        '851d386575034d1aa196f35525f9ad72', NULL, 0, 0, 0, 0, 'Empty', 0, 1, '2020-08-14 15:36:57',
        '2020-08-14 15:36:57'),
       ('9', '9', '9', '英语介绍',
        '851d386575034d1aa196f35525f9ad72', NULL, 0, 0, 0, 0, 'Empty', 0, 1, '2020-08-14 15:37:11',
        '2020-08-14 15:37:11'),
       ('10', '10', '10', '英语介绍',
        '\r\nd00d3840d75671eda0b40764a0ec0102', NULL, 1, 0, 1, 0, 'Empty', 0, 1, '2023-04-05 16:28:59',
        '2023-04-05 16:51:55'),
       ('11', '11', '11', '法语介绍',
        '\r\nd00d3840d75671eda0b40764a0ec0102', NULL, 3, 0, 0, 0, 'Empty', 0, 1, '2023-04-05 16:29:46',
        '2023-04-05 16:44:47'),
       ('12', '12', '12', '法语介绍', 'a9a11e80e6ae71ed8ccc0764b3ec0102',
        '6 - What If I Want to Move Faster.mp4', 3, 0, 0, 0, 'Empty', 0, 1, '2023-04-09 19:08:06',
        '2023-04-30 00:55:38'),
       ('13', '13', '13', '法语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 1, 0, 1, 0, 'Empty', 0, 1, '2023-05-12 21:00:16',
        '2023-05-12 21:18:26'),
       ('14', '14', '14', '法语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 1, 0, 1, 0, 'Empty', 0, 1, '2023-05-12 21:19:16',
        '2023-05-12 21:19:16'),
       ('15', '15', '15', '法语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 1, 0, 0, 0, 'Empty', 0, 1, '2023-05-12 21:20:00',
        '2023-05-12 21:20:00'),
       ('16', '16', '16', '法语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 1, 0, 0, 0, 'Empty', 0, 1, '2023-05-12 21:20:14',
        '2023-05-12 21:20:14'),
       ('17', '17', '17', '德语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 0, 0, 0, 0, 'Empty', 0, 1, '2023-05-12 21:20:44',
        '2023-05-12 21:20:44'),
       ('18', '18', '18', '德语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 1, 0, 0, 0, 'Empty', 0, 1, '2023-05-12 21:20:58',
        '2023-05-12 21:20:58'),
       ('19', '19', '19', '德语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 0, 0, 0, 0, 'Empty', 0, 1, '2023-05-12 21:25:05',
        '2023-05-12 21:25:05'),
       ('20', '20', '20', '德语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 0, 0, 0, 0, 'Empty', 0, 1, '2023-05-12 21:25:09',
        '2023-05-12 21:25:09'),
       ('21', '21', '21', '德语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 1, 0, 0, 0, 'Empty', 0, 1, '2023-05-12 21:25:19',
        '2023-05-12 21:25:19'),
       ('22', '22', '22', '德语介绍',
        'a9a11e80e6ae71ed8ccc0764b3ec0102', '', 2, 0, 0, 0, 'Empty', 0, 1, '2023-05-12 21:25:24',
        '2023-05-12 21:25:24');
/*!40000 ALTER TABLE `edu_video` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `sg_article`
--

DROP TABLE IF EXISTS `sg_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sg_article`
(
    `id`            char(19) NOT NULL,
    `title`         varchar(256)  DEFAULT NULL COMMENT '标题',
    `content`       longtext COMMENT '文章内容',
    `summary`       varchar(1024) DEFAULT NULL COMMENT '文章摘要',
    `category_name` varchar(256)  DEFAULT NULL COMMENT '所属分类名称',
    `thumbnail`     varchar(256)  DEFAULT NULL COMMENT '缩略图',
    `is_top`        char(1)       DEFAULT '0' COMMENT '是否置顶（0否，1是）',
    `status`        char(1)       DEFAULT '1' COMMENT '状态（0已发布，1草稿）',
    `view_count`    bigint        DEFAULT '0' COMMENT '访问量',
    `is_comment`    char(1)       DEFAULT '1' COMMENT '是否允许评论 1是，0否',
    `create_by`     bigint        DEFAULT NULL,
    `gmt_create`    datetime NOT NULL,
    `update_by`     bigint        DEFAULT NULL,
    `gmt_modified`  datetime NOT NULL,
    `del_flag`      int           DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sg_article`
--

LOCK
TABLES `sg_article` WRITE;
/*!40000 ALTER TABLE `sg_article` DISABLE KEYS */;
INSERT INTO `sg_article` (`id`, `title`, `content`, `summary`, `category_name`, `thumbnail`, `is_top`, `status`,
                          `view_count`, `is_comment`, `create_by`, `gmt_create`, `update_by`, `gmt_modified`,
                          `del_flag`)
VALUES ('1', 'SpringSecurity从入门到精通',
        '## 课程介绍\n![image20211219121555979.png](https://sg-blog-oss.oss-cn-beijing.aliyuncs.com/2022/01/31/e7131718e9e64faeaf3fe16404186eb4.png)\n\n## 0. 简介1\n\n​	**Spring Security** 是 Spring 家族中的一个安全管理框架。相比与另外一个安全框架**Shiro**，它提供了更丰富的功能，社区资源也比Shiro丰富。\n\n​	一般来说中大型的项目都是使用**SpringSecurity** 来做安全框架。小项目有Shiro的比较多，因为相比与SpringSecurity，Shiro的上手更加的简单。\n\n​	 一般Web应用的需要进行**认证**和**授权**。\n\n​		**认证：验证当前访问系统的是不是本系统的用户，并且要确认具体是哪个用户**\n\n​		**授权：经过认证后判断当前用户是否有权限进行某个操作**\n\n​	而认证和授权也是SpringSecurity作为安全框架的核心功能。\n\n\n\n## 1. 快速入门\n\n### 1.1 准备工作\n\n​	我们先要搭建一个简单的SpringBoot工程\n\n① 设置父工程 添加依赖\n\n~~~~\n    <parent>\n        <groupId>org.springframework.boot</groupId>\n        <artifactId>spring-boot-starter-parent</artifactId>\n        <version>2.5.0</version>\n    </parent>\n    <dependencies>\n        <dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-starter-web</artifactId>\n        </dependency>\n        <dependency>\n            <groupId>org.projectlombok</groupId>\n            <artifactId>lombok</artifactId>\n            <optional>true</optional>\n        </dependency>\n    </dependencies>\n~~~~\n\n② 创建启动类\n\n~~~~\n@SpringBootApplication\npublic class SecurityApplication {\n\n    public static void main(String[] args) {\n        SpringApplication.run(SecurityApplication.class,args);\n    }\n}\n\n~~~~\n\n③ 创建Controller\n\n~~~~java\n\nimport org.springframework.web.bind.annotation.RequestMapping;\nimport org.springframework.web.bind.annotation.RestController;\n\n@RestController\npublic class HelloController {\n\n    @RequestMapping(\"/hello\")\n    public String hello(){\n        return \"hello\";\n    }\n}\n\n~~~~\n\n\n\n### 1.2 引入SpringSecurity\n\n​	在SpringBoot项目中使用SpringSecurity我们只需要引入依赖即可实现入门案例。\n\n~~~~xml\n        <dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-starter-security</artifactId>\n        </dependency>\n~~~~\n\n​	引入依赖后我们在尝试去访问之前的接口就会自动跳转到一个SpringSecurity的默认登陆页面，默认用户名是user,密码会输出在控制台。\n\n​	必须登陆之后才能对接口进行访问。\n\n\n\n## 2. 认证\n\n### 2.1 登陆校验流程\n![image20211215094003288.png](https://sg-blog-oss.oss-cn-beijing.aliyuncs.com/2022/01/31/414a87eeed344828b5b00ffa80178958.png)',
        'SpringSecurity框架教程-Spring Security+JWT实现项目级前端分离认证授权', 'java',
        'https://sg-blog-oss.oss-cn-beijing.aliyuncs.com/2022/01/31/948597e164614902ab1662ba8452e106.png', '1', '0',
        213, '0', NULL, '2023-06-12 23:20:11', NULL, '2023-06-15 16:10:00', 0),
       ('1668425385064796162', '77777', '', '', '', '', '0', '0', 0, '0', NULL, '2023-06-13 09:09:44', NULL,
        '2023-06-15 16:10:00', 0),
       ('1668427648739119105', '555555', '', '', '', '', '0', '0', 0, '0', NULL, '2023-06-13 09:18:44', NULL,
        '2023-06-15 16:10:00', 0),
       ('1668428010514616321', '66666688', '', '', '', '', '0', '0', 0, '0', NULL, '2023-06-13 09:20:10', NULL,
        '2023-06-15 16:10:00', 0),
       ('1668430459656802306', '1111111', '111', '11111', '1111', NULL, '0', '0', 0, '0', NULL, '2023-06-13 09:29:54',
        NULL, '2023-06-15 16:10:00', 0),
       ('1668431345011462146', '555555555', '', '555555555', '555555555', '', '0', '0', 0, '0', NULL,
        '2023-06-13 09:33:25', NULL, '2023-06-13 09:54:00', 1),
       ('1668434463900110849', '123456', '123456', '123456', '123456',
        'http://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/06/13f845f3f8fd9c446f8e8b648981b162eebj3.png',
        '0', '1', 0, '1', NULL, '2023-06-13 09:45:49', NULL, '2023-06-15 16:10:00', 0),
       ('2', 'wqlllll', 'adadaeqelllllllll', '123456', 'java',
        'http://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/06/12b19b09b9d1804c5bb481c2962c42fd77background.jpg',
        '0', '0', 26, '1', NULL, '2023-06-12 14:58:30', NULL, '2023-06-15 16:10:00', 0),
       ('3', 'dad', 'asdasda', 'sadad', 'java',
        'https://sg-blog-oss.oss-cn-beijing.aliyuncs.com/2022/01/15/737a0ed0b8ea430d8700a12e76aa1cd1.png', '0', '0', 33,
        '0', NULL, '2023-06-12 14:58:34', NULL, '2023-06-15 16:10:00', 0),
       ('5', 'sdad',
        '![Snipaste_20220115_165812.png](https://sg-blog-oss.oss-cn-beijing.aliyuncs.com/2022/01/15/1d9d283f5d874b468078b183e4b98b71.png)\r\n\r\n## sda \r\n\r\n222\r\n### sdasd newnewnew',
        NULL, 'java', '', '0', '0', 44, '0', NULL, '2023-06-12 14:58:37', NULL, '2023-06-15 16:10:00', 0),
       ('6', '788758', NULL, NULL, NULL, NULL, '1', '1', 0, '1', NULL, '2023-06-15 16:04:12', NULL,
        '2023-06-15 16:10:00', 0),
       ('7', '897', NULL, NULL, NULL, NULL, '0', '1', 0, '1', NULL, '2023-06-15 16:11:05', NULL, '2023-06-15 16:11:09',
        0),
       ('8', 'dsad', NULL, NULL, NULL, NULL, '0', '1', 0, '1', NULL, '2023-06-15 16:18:45', NULL, '2023-06-15 16:18:54',
        0),
       ('9', '545', NULL, NULL, NULL, NULL, '0', '1', 0, '1', NULL, '2023-06-15 16:23:22', NULL, '2023-06-15 16:23:24',
        0);
/*!40000 ALTER TABLE `sg_article` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `sg_category`
--

DROP TABLE IF EXISTS `sg_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sg_category`
(
    `id`          bigint NOT NULL AUTO_INCREMENT,
    `name`        varchar(128) DEFAULT NULL COMMENT '分类名',
    `pid`         bigint       DEFAULT '-1' COMMENT '父分类id，如果没有父分类为-1',
    `description` varchar(512) DEFAULT NULL COMMENT '描述',
    `status`      char(1)      DEFAULT '0' COMMENT '状态0:正常,1禁用',
    `create_by`   bigint       DEFAULT NULL,
    `create_time` datetime     DEFAULT NULL,
    `update_by`   bigint       DEFAULT NULL,
    `update_time` datetime     DEFAULT NULL,
    `del_flag`    int          DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sg_category`
--

LOCK
TABLES `sg_category` WRITE;
/*!40000 ALTER TABLE `sg_category` DISABLE KEYS */;
INSERT INTO `sg_category` (`id`, `name`, `pid`, `description`, `status`, `create_by`, `create_time`, `update_by`,
                           `update_time`, `del_flag`)
VALUES (1, 'java', -1, 'wsd', '0', NULL, NULL, NULL, NULL, 0),
       (2, 'PHP', -1, 'wsd', '0', NULL, NULL, NULL, NULL, 0);
/*!40000 ALTER TABLE `sg_category` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `statistics_daily`
--

DROP TABLE IF EXISTS `statistics_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics_daily`
(
    `id`              char(19)    NOT NULL COMMENT '主键',
    `date_calculated` varchar(20) NOT NULL COMMENT '统计日期',
    `register_num`    int         NOT NULL DEFAULT '0' COMMENT '注册人数',
    `login_num`       int         NOT NULL DEFAULT '0' COMMENT '登录人数',
    `video_view_num`  int         NOT NULL DEFAULT '0' COMMENT '每日播放视频数',
    `course_num`      int         NOT NULL DEFAULT '0' COMMENT '每日新增课程数',
    `gmt_create`      datetime    NOT NULL COMMENT '创建时间',
    `gmt_modified`    datetime    NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY               `statistics_day` (`date_calculated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='网站统计日数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_daily`
--

LOCK
TABLES `statistics_daily` WRITE;
/*!40000 ALTER TABLE `statistics_daily` DISABLE KEYS */;
INSERT INTO `statistics_daily` (`id`, `date_calculated`, `register_num`, `login_num`, `video_view_num`, `course_num`,
                                `gmt_create`, `gmt_modified`)
VALUES ('1078490017163833345', '2018-12-28', 0, 0, 154, 170, '2018-12-28 11:17:12', '2019-09-09 12:12:12'),
       ('1087142127818768386', '2019-01-02', 2, 0, 167, 177, '2019-01-21 08:17:36', '2019-09-09 12:12:12'),
       ('1087198321809457153', '2019-01-01', 1, 0, 130, 189, '2019-01-21 12:00:54', '2019-09-09 12:12:12'),
       ('1087198383973236738', '2019-01-03', 0, 0, 114, 130, '2019-01-21 12:01:09', '2019-09-09 12:12:12'),
       ('1087451681764982785', '2019-01-04', 0, 0, 118, 155, '2019-01-22 04:47:39', '2019-09-09 12:12:12'),
       ('1087455336471785473', '2019-01-05', 0, 0, 184, 186, '2019-01-22 05:02:11', '2019-09-09 12:12:12'),
       ('1105339962460491777', '2019-03-01', 0, 143, 168, 136, '2019-03-12 13:29:18', '2019-03-12 13:29:18'),
       ('1105339977027309569', '2019-03-02', 0, 165, 171, 158, '2019-03-12 13:29:21', '2019-03-12 13:29:21'),
       ('1105339990738489346', '2019-03-03', 0, 143, 147, 194, '2019-03-12 13:29:25', '2019-03-12 13:29:25'),
       ('1105340000544772098', '2019-03-04', 0, 155, 106, 153, '2019-03-12 13:29:27', '2019-03-12 13:29:27'),
       ('1105340011244441602', '2019-03-05', 0, 186, 102, 155, '2019-03-12 13:29:30', '2019-03-12 13:29:30'),
       ('1105340020929089538', '2019-03-06', 0, 140, 192, 129, '2019-03-12 13:29:32', '2019-03-12 13:29:32'),
       ('1105340029800042497', '2019-03-07', 0, 186, 139, 116, '2019-03-12 13:29:34', '2019-03-12 13:29:34'),
       ('1105340038696161282', '2019-03-08', 0, 120, 166, 112, '2019-03-12 13:29:36', '2019-03-12 13:29:36'),
       ('1105340049441968129', '2019-03-09', 0, 182, 147, 119, '2019-03-12 13:29:39', '2019-03-12 13:29:39'),
       ('1105340059738984449', '2019-03-10', 0, 199, 141, 103, '2019-03-12 13:29:41', '2019-03-12 13:29:41'),
       ('1105340070438653953', '2019-03-11', 0, 127, 137, 156, '2019-03-12 13:29:44', '2019-03-12 13:29:44'),
       ('1105340080307851266', '2019-03-12', 0, 167, 123, 132, '2019-03-12 13:29:46', '2019-03-12 13:29:46'),
       ('1105340090047025153', '2019-03-13', 0, 106, 132, 103, '2019-03-12 13:29:48', '2019-03-12 13:29:48'),
       ('1105340100075606017', '2019-03-14', 0, 166, 180, 118, '2019-03-12 13:29:51', '2019-03-12 13:29:51'),
       ('1105340110511034370', '2019-03-15', 0, 114, 151, 185, '2019-03-12 13:29:53', '2019-03-12 13:29:53'),
       ('1105340121412030466', '2019-03-16', 0, 134, 105, 126, '2019-03-12 13:29:56', '2019-03-12 13:29:56'),
       ('1105340132833120258', '2019-03-17', 0, 169, 106, 131, '2019-03-12 13:29:59', '2019-03-12 13:29:59'),
       ('1105340145659301890', '2019-03-18', 0, 120, 106, 163, '2019-03-12 13:30:02', '2019-03-12 13:30:02'),
       ('1105340153578147842', '2019-03-19', 0, 146, 155, 153, '2019-03-12 13:30:03', '2019-03-12 13:30:03'),
       ('1105340162436517890', '2019-03-20', 0, 127, 181, 186, '2019-03-12 13:30:06', '2019-03-12 13:30:06'),
       ('1105340171517186050', '2019-03-21', 0, 106, 134, 145, '2019-03-12 13:30:08', '2019-03-12 13:30:08'),
       ('1105340181034061825', '2019-03-22', 0, 161, 182, 143, '2019-03-12 13:30:10', '2019-03-12 13:30:10'),
       ('1105340190072786946', '2019-03-23', 0, 183, 101, 182, '2019-03-12 13:30:12', '2019-03-12 13:30:12'),
       ('1105340199426084865', '2019-03-24', 0, 117, 100, 102, '2019-03-12 13:30:14', '2019-03-12 13:30:14'),
       ('1105340209261727745', '2019-03-25', 0, 116, 103, 160, '2019-03-12 13:30:17', '2019-03-12 13:30:17'),
       ('1105340217935548418', '2019-03-26', 0, 101, 119, 150, '2019-03-12 13:30:19', '2019-03-12 13:30:19'),
       ('1105340225967640577', '2019-03-27', 0, 129, 141, 181, '2019-03-12 13:30:21', '2019-03-12 13:30:21'),
       ('1105340234075230209', '2019-03-28', 0, 113, 179, 158, '2019-03-12 13:30:23', '2019-03-12 13:30:23'),
       ('1105340242837131265', '2019-03-29', 0, 117, 131, 101, '2019-03-12 13:30:25', '2019-03-12 13:30:25'),
       ('1105340252395950082', '2019-03-30', 0, 153, 187, 174, '2019-03-12 13:30:27', '2019-03-12 13:30:27'),
       ('1105340261958963201', '2019-03-31', 0, 179, 135, 199, '2019-03-12 13:30:29', '2019-03-12 13:30:29'),
       ('1105372743634898945', '2019-01-06', 0, 113, 143, 148, '2019-03-12 15:39:34', '2019-03-12 15:39:34'),
       ('1105372754380705793', '2019-01-07', 0, 173, 158, 153, '2019-03-12 15:39:36', '2019-03-12 15:39:36'),
       ('1105372762526044162', '2019-01-08', 0, 135, 199, 131, '2019-03-12 15:39:38', '2019-03-12 15:39:38'),
       ('1105372771229224961', '2019-01-09', 0, 161, 107, 162, '2019-03-12 15:39:40', '2019-03-12 15:39:40'),
       ('1105372780922261505', '2019-01-10', 0, 182, 196, 135, '2019-03-12 15:39:42', '2019-03-12 15:39:42'),
       ('1105372790103592961', '2019-01-11', 0, 123, 194, 102, '2019-03-12 15:39:45', '2019-03-12 15:39:45'),
       ('1105372798626418689', '2019-01-12', 0, 185, 106, 180, '2019-03-12 15:39:47', '2019-03-12 15:39:47'),
       ('1165', '2018-01-01', 583, 26, 236, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1166', '2018-01-02', 583, 26, 236, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1167', '2018-01-03', 584, 26, 236, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1168', '2018-01-04', 584, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1169', '2018-01-05', 585, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1170', '2018-01-06', 585, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1171', '2018-01-07', 586, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1172', '2018-01-08', 586, 26, 237, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1173', '2018-01-09', 587, 26, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1174', '2018-01-10', 587, 26, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1175', '2018-01-11', 588, 27, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1176', '2018-01-12', 588, 27, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1177', '2018-01-13', 589, 27, 238, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1178', '2018-01-14', 589, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1179', '2018-01-15', 590, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1180', '2018-01-16', 590, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1181', '2018-01-17', 591, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1182', '2018-01-18', 591, 27, 239, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1183', '2018-01-19', 592, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1183991737299263490', '2019-10-01', 0, 145, 149, 153, '2019-10-15 14:23:22', '2019-10-15 14:23:22'),
       ('1183999299272904705', '2019-10-03', 0, 125, 102, 153, '2019-10-15 14:53:25', '2019-10-15 14:53:25'),
       ('1183999309477646338', '2019-10-04', 0, 103, 194, 161, '2019-10-15 14:53:28', '2019-10-15 14:53:28'),
       ('1183999318919024642', '2019-10-05', 0, 173, 174, 147, '2019-10-15 14:53:30', '2019-10-15 14:53:30'),
       ('1183999331409661954', '2019-10-06', 0, 129, 197, 173, '2019-10-15 14:53:33', '2019-10-15 14:53:33'),
       ('1183999342897860610', '2019-10-07', 0, 184, 125, 169, '2019-10-15 14:53:36', '2019-10-15 14:53:36'),
       ('1183999351588458498', '2019-10-08', 0, 173, 143, 138, '2019-10-15 14:53:38', '2019-10-15 14:53:38'),
       ('1183999360316805122', '2019-10-09', 0, 161, 158, 117, '2019-10-15 14:53:40', '2019-10-15 14:53:40'),
       ('1183999367480676353', '2019-10-10', 0, 190, 166, 135, '2019-10-15 14:53:42', '2019-10-15 14:53:42'),
       ('1184', '2018-01-20', 592, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1184030117693284353', '2019-10-11', 0, 182, 199, 193, '2019-10-15 16:55:53', '2019-10-15 16:55:53'),
       ('1185', '2018-01-21', 593, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1185373213064482818', '2019-01-19', 6, 135, 126, 167, '2019-10-19 09:52:52', '2019-10-19 09:52:52'),
       ('1186', '2018-01-22', 593, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1186536619937435650', '2019-10-02', 0, 187, 183, 108, '2019-10-22 14:55:50', '2019-10-22 14:55:50'),
       ('1187', '2018-01-23', 594, 27, 240, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1188', '2018-01-24', 594, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1189', '2018-01-25', 595, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1190', '2018-01-26', 595, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1191', '2018-01-27', 596, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1192', '2018-01-28', 596, 27, 241, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1192253597226455042', '2019-11-01', 0, 129, 122, 167, '2019-11-07 09:33:03', '2019-11-07 09:33:03'),
       ('1192253902756335617', '2019-11-02', 0, 170, 192, 192, '2019-11-07 09:34:16', '2019-11-07 09:34:16'),
       ('1193', '2018-01-29', 597, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1194', '2018-01-30', 597, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1194060032935493633', '2019-11-11', 0, 121, 121, 122, '2019-11-12 09:11:11', '2019-11-12 09:11:11'),
       ('1194060301425475585', '2019-11-10', 0, 155, 187, 140, '2019-11-12 09:12:15', '2019-11-12 09:12:15'),
       ('1195', '2018-01-31', 598, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1196', '2018-02-01', 598, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1197', '2018-02-02', 599, 27, 242, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1198', '2018-02-03', 599, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1199', '2018-02-04', 600, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1200', '2018-02-05', 600, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1201', '2018-02-06', 601, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1202', '2018-02-07', 601, 27, 243, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1203', '2018-02-08', 602, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1204', '2018-02-09', 602, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1205', '2018-02-10', 603, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1206', '2018-02-11', 603, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1207', '2018-02-12', 604, 27, 244, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1208', '2018-02-13', 604, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1209', '2018-02-14', 605, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1210', '2018-02-15', 605, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1211', '2018-02-16', 606, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1212', '2018-02-17', 606, 27, 245, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1213', '2018-02-18', 607, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1214', '2018-02-19', 607, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1215', '2018-02-20', 608, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1216', '2018-02-21', 608, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1217', '2018-02-22', 609, 27, 246, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1218', '2018-02-23', 609, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1219', '2018-02-24', 610, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1220', '2018-02-25', 610, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1221', '2018-02-26', 611, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1222', '2018-02-27', 611, 27, 247, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1223', '2018-02-28', 612, 27, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1224', '2018-03-01', 612, 27, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1225', '2018-03-02', 613, 28, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1226', '2018-03-03', 613, 28, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1227', '2018-03-04', 614, 28, 248, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1228', '2018-03-05', 614, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1229', '2018-03-06', 615, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1230', '2018-03-07', 615, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1231', '2018-03-08', 616, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1232', '2018-03-09', 616, 28, 249, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1233', '2018-03-10', 617, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1234', '2018-03-11', 617, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1235', '2018-03-12', 618, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1236', '2018-03-13', 618, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1237', '2018-03-14', 619, 28, 250, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1238', '2018-03-15', 619, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1239', '2018-03-16', 620, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1240', '2018-03-17', 620, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1241', '2018-03-18', 621, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1242', '2018-03-19', 621, 28, 251, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1243', '2018-03-20', 622, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1244', '2018-03-21', 622, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1245', '2018-03-22', 623, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1246', '2018-03-23', 623, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1247', '2018-03-24', 624, 28, 252, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1248', '2018-03-25', 624, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1249', '2018-03-26', 625, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1250', '2018-03-27', 625, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1251', '2018-03-28', 626, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1252', '2018-03-29', 626, 28, 253, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1253', '2018-03-30', 627, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1254', '2018-03-31', 627, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1255', '2018-04-01', 628, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1256', '2018-04-02', 628, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1257', '2018-04-03', 629, 28, 254, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1258', '2018-04-04', 629, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1259', '2018-04-05', 630, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1260', '2018-04-06', 630, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1261', '2018-04-07', 631, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1262', '2018-04-08', 631, 28, 255, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1263', '2018-04-09', 632, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1264', '2018-04-10', 632, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1265', '2018-04-11', 633, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1266', '2018-04-12', 633, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1267', '2018-04-13', 634, 28, 256, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1268', '2018-04-14', 634, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1269', '2018-04-15', 635, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1270', '2018-04-16', 635, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1271', '2018-04-17', 636, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1272', '2018-04-18', 636, 28, 257, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1273', '2018-04-19', 637, 28, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1274', '2018-04-20', 637, 28, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1275', '2018-04-21', 638, 29, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1276', '2018-04-22', 638, 29, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1277', '2018-04-23', 639, 29, 258, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1278', '2018-04-24', 639, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1279', '2018-04-25', 640, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1280', '2018-04-26', 640, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1281', '2018-04-27', 641, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1282', '2018-04-28', 641, 29, 259, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1283', '2018-04-29', 642, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1284', '2018-04-30', 642, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1285', '2018-05-01', 643, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1286', '2018-05-02', 643, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1287', '2018-05-03', 644, 29, 260, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1288', '2018-05-04', 644, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1289', '2018-05-05', 645, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1290', '2018-05-06', 645, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1291', '2018-05-07', 646, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1292', '2018-05-08', 646, 29, 261, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1293', '2018-05-09', 647, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1294', '2018-05-10', 647, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1295', '2018-05-11', 648, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1295626066102104065', '2020-08-12', 3, 145, 168, 131, '2020-08-18 15:38:20', '2020-08-18 15:38:20'),
       ('1296', '2018-05-12', 648, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1297', '2018-05-13', 649, 29, 262, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1298', '2018-05-14', 649, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1299', '2018-05-15', 5, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1300', '2018-05-16', 650, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1301', '2018-05-17', 651, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1302', '2018-05-18', 651, 29, 263, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1303', '2018-05-19', 652, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1304', '2018-05-20', 652, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1305', '2018-05-21', 653, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1306', '2018-05-22', 1, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1307', '2018-05-23', 654, 29, 264, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1308', '2018-05-24', 654, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1309', '2018-05-25', 1, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1310', '2018-05-26', 655, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1311', '2018-05-27', 656, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1312', '2018-05-28', 656, 29, 265, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1313', '2018-05-29', 657, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1314', '2018-05-30', 657, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1315', '2018-05-31', 658, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1316', '2018-06-01', 658, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1317', '2018-06-02', 659, 29, 266, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1318', '2018-06-03', 659, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1319', '2018-06-04', 660, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1320', '2018-06-05', 660, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1321', '2018-06-06', 661, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1322', '2018-06-07', 661, 29, 267, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1323', '2018-06-08', 662, 29, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1324', '2018-06-09', 662, 29, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1325', '2018-06-10', 663, 30, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1326', '2018-06-11', 663, 30, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1327', '2018-06-12', 664, 30, 268, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1328', '2018-06-13', 664, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1329', '2018-06-14', 665, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1330', '2018-06-15', 665, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1331', '2018-06-16', 666, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1332', '2018-06-17', 666, 30, 269, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1333', '2018-06-18', 667, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1334', '2018-06-19', 667, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1335', '2018-06-20', 668, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1336', '2018-06-21', 668, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1337', '2018-06-22', 669, 30, 270, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1338', '2018-06-23', 669, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1339', '2018-06-24', 670, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1340', '2018-06-25', 670, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1341', '2018-06-26', 671, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1342', '2018-06-27', 671, 30, 271, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1343', '2018-06-28', 672, 30, 272, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1344', '2018-06-29', 672, 30, 272, 14, '2018-01-25 06:38:19', '2019-09-09 12:12:12'),
       ('1345', '2018-06-30', 673, 30, 272, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1346', '2018-07-01', 673, 30, 272, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1347', '2018-07-02', 674, 30, 272, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1348', '2018-07-03', 674, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1349', '2018-07-04', 675, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1350', '2018-07-05', 675, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1351', '2018-07-06', 676, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1352', '2018-07-07', 676, 30, 273, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1353', '2018-07-08', 677, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1354', '2018-07-09', 677, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1355', '2018-07-10', 678, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1356', '2018-07-11', 678, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1357', '2018-07-12', 679, 30, 274, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1358', '2018-07-13', 679, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1359', '2018-07-14', 680, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1360', '2018-07-15', 680, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1361', '2018-07-16', 681, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1362', '2018-07-17', 681, 30, 275, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1363', '2018-07-18', 682, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1364', '2018-07-19', 682, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1365', '2018-07-20', 683, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1366', '2018-07-21', 683, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1367', '2018-07-22', 684, 30, 276, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1368', '2018-07-23', 684, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1369', '2018-07-24', 685, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1370', '2018-07-25', 685, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1371', '2018-07-26', 686, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1372', '2018-07-27', 686, 30, 277, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1373', '2018-07-28', 687, 30, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1374', '2018-07-29', 687, 30, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1375', '2018-07-30', 688, 31, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1376', '2018-07-31', 688, 31, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1377', '2018-08-01', 689, 31, 278, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1378', '2018-08-02', 689, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1379', '2018-08-03', 690, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1380', '2018-08-04', 690, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1381', '2018-08-05', 691, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1382', '2018-08-06', 691, 31, 279, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1383', '2018-08-07', 692, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1384', '2018-08-08', 692, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1385', '2018-08-09', 1, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1386', '2018-08-10', 693, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1387', '2018-08-11', 694, 31, 280, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1388', '2018-08-12', 694, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1389', '2018-08-13', 695, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1390', '2018-08-14', 695, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1391', '2018-08-15', 696, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1392', '2018-08-16', 696, 31, 281, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1393', '2018-08-17', 697, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1394', '2018-08-18', 697, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1395', '2018-08-19', 698, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1396', '2018-08-20', 698, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1397', '2018-08-21', 699, 31, 282, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1398', '2018-08-22', 699, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1399', '2018-08-23', 700, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1400', '2018-08-24', 700, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1401', '2018-08-25', 701, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1402', '2018-08-26', 701, 31, 283, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1403', '2018-08-27', 702, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1404', '2018-08-28', 702, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1405', '2018-08-29', 703, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1406', '2018-08-30', 703, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1407', '2018-08-31', 704, 31, 284, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1408', '2018-09-01', 1, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1409', '2018-09-02', 705, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1410', '2018-09-03', 705, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1411', '2018-09-04', 706, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1412', '2018-09-05', 706, 31, 285, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1413', '2018-09-06', 707, 31, 286, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1414', '2018-09-07', 707, 31, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1415', '2018-09-08', 708, 31, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1416', '2018-09-09', 1, 31, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1417', '2018-09-10', 1, 31, 2, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1418', '2018-09-11', 709, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1419', '2018-09-12', 710, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1420', '2018-09-13', 710, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1421', '2018-09-14', 711, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1422', '2018-09-15', 711, 31, 287, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1423', '2018-09-16', 712, 31, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1424', '2018-09-17', 712, 31, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1425', '2018-09-18', 713, 32, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1426', '2018-09-19', 713, 32, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1427', '2018-09-20', 714, 32, 288, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1428', '2018-09-21', 714, 32, 289, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1429', '2018-09-22', 715, 32, 289, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1430', '2018-09-23', 715, 32, 289, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1431', '2018-09-24', 716, 32, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1432', '2018-09-25', 716, 32, 289, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1433', '2018-09-26', 717, 32, 290, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1434', '2018-09-27', 717, 32, 290, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1435', '2018-09-28', 718, 32, 290, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1436', '2018-09-29', 718, 32, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1437', '2018-09-30', 719, 32, 290, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1438', '2018-10-01', 719, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1439', '2018-10-02', 720, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1440', '2018-10-03', 720, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1441', '2018-10-04', 721, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1442', '2018-10-05', 721, 32, 291, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1443', '2018-10-06', 722, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1444', '2018-10-07', 722, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1445', '2018-10-08', 1, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1446', '2018-10-09', 723, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1447', '2018-10-10', 724, 32, 292, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1448', '2018-10-11', 724, 32, 293, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1449', '2018-10-12', 725, 32, 293, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1450', '2018-10-13', 725, 32, 293, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1451', '2018-10-14', 726, 32, 4, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1452', '2018-10-15', 726, 32, 293, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1453', '2018-10-16', 727, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1454', '2018-10-17', 727, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1455', '2018-10-18', 728, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1456', '2018-10-19', 728, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1457', '2018-10-20', 729, 32, 294, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1458', '2018-10-21', 729, 32, 295, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1459', '2018-10-22', 730, 32, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1460', '2018-10-23', 730, 32, 295, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1461', '2018-10-24', 731, 32, 295, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1462', '2018-10-25', 731, 32, 295, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1463', '2018-10-26', 732, 32, 296, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1464', '2018-10-27', 732, 32, 296, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1465', '2018-10-28', 733, 32, 296, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1466', '2018-10-29', 2, 32, 3, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1467', '2018-10-30', 734, 32, 296, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1468', '2018-10-31', 734, 32, 297, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1469', '2018-11-01', 735, 32, 297, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1470', '2018-11-02', 735, 32, 297, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1471', '2018-11-03', 1, 32, 297, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1472', '2018-11-04', 736, 32, 1, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1473', '2018-11-05', 737, 32, 298, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1474', '2018-11-06', 737, 32, 298, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1475', '2018-11-07', 738, 33, 298, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1476', '2018-11-08', 738, 33, 169, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1477', '2018-11-09', 1, 33, 298, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1478', '2018-11-10', 739, 33, 78, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1479', '2018-11-11', 740, 33, 299, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1480', '2018-11-12', 740, 33, 299, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1481', '2018-11-13', 741, 33, 299, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1482', '2018-11-14', 741, 33, 299, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1483', '2018-11-15', 742, 33, 300, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1484', '2018-11-16', 742, 33, 35, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1485', '2018-11-17', 743, 33, 300, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1486', '2018-11-18', 743, 33, 300, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1487', '2018-11-19', 744, 33, 300, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1488', '2018-11-20', 744, 33, 301, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1489', '2018-11-21', 745, 33, 234, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1490', '2018-11-22', 456, 33, 301, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1491', '2018-11-23', 746, 33, 301, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1492', '2018-11-24', 746, 33, 301, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1493', '2018-11-25', 747, 33, 302, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1494', '2018-11-26', 747, 4, 302, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1495', '2018-11-27', 748, 33, 302, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1496', '2018-11-28', 748, 33, 36, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1497', '2018-11-29', 749, 33, 302, 2, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1498', '2018-11-30', 749, 3, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1499', '2018-12-01', 750, 33, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1500', '2018-12-02', 234, 33, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1501', '2018-12-03', 751, 33, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1502', '2018-12-04', 751, 33, 303, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1503', '2018-12-05', 752, 6, 304, 33, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1505', '2018-12-07', 753, 33, 55, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1506', '2018-12-08', 753, 33, 304, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1507', '2018-12-09', 754, 33, 304, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1508', '2018-12-10', 754, 1, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1509', '2018-12-11', 755, 33, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1510', '2018-12-12', 755, 33, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1511', '2018-12-13', 756, 33, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1512', '2018-12-14', 366, 33, 305, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1513', '2018-12-15', 757, 33, 66, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1514', '2018-12-16', 757, 33, 306, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1515', '2018-12-17', 758, 33, 306, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1516', '2018-12-18', 758, 2, 306, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1517', '2018-12-19', 759, 33, 306, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1518', '2018-12-20', 564, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1519', '2018-12-21', 760, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1520', '2018-12-22', 760, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1521', '2018-12-23', 761, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1522', '2018-12-24', 761, 33, 307, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1527', '2018-12-29', 764, 34, 308, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1528', '2018-12-30', 764, 34, 309, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1529', '2018-12-31', 765, 34, 309, 14, '2018-01-25 06:38:20', '2019-09-09 12:12:12'),
       ('1554', '2018-01-01', 333, 34, 314, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1555', '2018-01-02', 778, 34, 314, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1556', '2018-01-03', 778, 34, 314, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1557', '2018-01-04', 779, 34, 314, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1558', '2018-01-05', 779, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1559', '2018-01-06', 780, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1560', '2018-01-07', 780, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1561', '2018-01-08', 781, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1562', '2018-01-09', 781, 34, 315, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1563', '2018-01-10', 782, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1564', '2018-01-11', 782, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1565', '2018-01-12', 783, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1566', '2018-01-13', 783, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1567', '2018-01-14', 784, 34, 316, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1568', '2018-01-15', 784, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1569', '2018-01-16', 23, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1570', '2018-01-17', 785, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1571', '2018-01-18', 786, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1572', '2018-01-19', 786, 34, 317, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1573', '2018-01-20', 787, 2, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1574', '2018-01-21', 787, 2, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1575', '2018-01-22', 788, 1, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1576', '2018-01-23', 788, 35, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1577', '2018-01-24', 789, 35, 318, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1578', '2018-01-25', 789, 1, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1579', '2018-01-26', 790, 1, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1580', '2018-01-27', 531, 2, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1581', '2018-01-28', 791, 2, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1582', '2018-01-29', 791, 2, 319, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1583', '2018-01-30', 2, 4, 2, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1584', '2018-01-31', 792, 35, 320, 14, '2018-02-02 08:58:31', '2019-09-09 12:12:12'),
       ('1586', '2018-02-01', 793, 4, 3, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1587', '2018-02-02', 794, 2, 1, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1588', '2018-02-03', 794, 1, 4, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1589', '2018-02-04', 795, 35, 321, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1590', '2018-02-05', 795, 35, 321, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1591', '2018-02-06', 796, 35, 321, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1592', '2018-02-07', 796, 35, 321, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1593', '2018-02-08', 797, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1594', '2018-02-09', 797, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1595', '2018-02-10', 99, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1596', '2018-02-11', 798, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1597', '2018-02-12', 799, 35, 322, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1598', '2018-02-13', 799, 35, 323, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1599', '2018-02-14', 800, 35, 323, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1600', '2018-02-15', 800, 35, 323, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1601', '2018-02-16', 89, 35, 90, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1602', '2018-02-17', 801, 35, 323, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1603', '2018-02-18', 802, 23, 324, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1604', '2018-02-19', 802, 2, 324, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1605', '2018-02-20', 803, 56, 324, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1606', '2018-02-21', 45, 35, 89, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1607', '2018-02-22', 804, 35, 324, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1608', '2018-02-23', 804, 35, 325, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1609', '2018-02-24', 805, 1, 3, 14, '2018-02-25 10:54:34', '2019-09-09 12:12:12'),
       ('1610', '2018-05-15', 0, 0, 0, 7, '2018-05-16 00:25:27', '2019-09-09 12:12:12'),
       ('1611', '2018-10-01', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12'),
       ('1612', '2018-10-02', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12'),
       ('1613', '2018-10-03', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12'),
       ('1614', '2018-10-04', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12'),
       ('1615', '2018-10-05', 0, 0, 0, 7, '2018-10-24 16:17:15', '2019-09-09 12:12:12'),
       ('1650854283623010306', '2023-04-25', 0, 127, 149, 198, '2023-04-25 21:28:27', '2023-04-25 21:28:27'),
       ('1650854347716169730', '2023-04-23', 1, 111, 132, 181, '2023-04-25 21:28:43', '2023-04-25 21:28:43'),
       ('1650854716080918529', '2023-04-26', 0, 108, 140, 106, '2023-04-25 21:30:10', '2023-04-25 21:30:10');
/*!40000 ALTER TABLE `statistics_daily` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_order`
(
    `id`           char(19)    NOT NULL DEFAULT '',
    `order_no`     varchar(20) NOT NULL DEFAULT '' COMMENT '订单号',
    `course_id`    varchar(19) NOT NULL DEFAULT '' COMMENT '课程id',
    `course_title` varchar(100)         DEFAULT NULL COMMENT '课程名称',
    `course_cover` varchar(255)         DEFAULT NULL COMMENT '课程封面',
    `teacher_name` varchar(20)          DEFAULT NULL COMMENT '讲师名称',
    `member_id`    varchar(19) NOT NULL DEFAULT '' COMMENT '会员id',
    `nickname`     varchar(50)          DEFAULT NULL COMMENT '会员昵称',
    `mobile`       varchar(11)          DEFAULT NULL COMMENT '会员手机',
    `total_fee`    decimal(10, 2)       DEFAULT '0.01' COMMENT '订单金额（分）',
    `pay_type`     tinyint              DEFAULT NULL COMMENT '支付类型（1：微信 2：支付宝）',
    `status`       tinyint              DEFAULT NULL COMMENT '订单状态（0：未支付 1：已支付）',
    `is_deleted`   tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
    `gmt_create`   datetime    NOT NULL COMMENT '创建时间',
    `gmt_modified` datetime    NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `ux_order_no` (`order_no`),
    KEY            `idx_course_id` (`course_id`),
    KEY            `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK
TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` (`id`, `order_no`, `course_id`, `course_title`, `course_cover`, `teacher_name`, `member_id`,
                       `nickname`, `mobile`, `total_fee`, `pay_type`, `status`, `is_deleted`, `gmt_create`,
                       `gmt_modified`)
VALUES ('1195693605513891841', '1195693605555834880', '18', 'Java精品课程',
        'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/06/866e9aca-b530-4f71-a690-72d4a4bfd1e7.jpg',
        '晴天', '1', '小三1231', '13700000001', 1.00, NULL, 0, 0, '2019-11-16 21:22:25', '2019-11-16 21:22:25'),
       ('1195694200178118657', '1195694200186507264', '18', 'Java精品课程',
        'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/06/866e9aca-b530-4f71-a690-72d4a4bfd1e7.jpg',
        '晴天', '1', '小三1231', '13700000001', 1.00, NULL, 0, 0, '2019-11-16 21:24:47', '2019-11-16 21:24:47'),
       ('1196264007411744769', '1196264005255872512', '1192252213659774977', 'java基础课程：test',
        'https://guli-file-190513.oss-cn-beijing.aliyuncs.com/cover/default.gif', '晴天', '1', '小三1231',
        '13700000001', 1.00, NULL, 1, 0, '2019-11-18 11:09:00', '2019-11-18 11:10:14'),
       ('1196265495278174209', '1196265495273979904', '18', 'Java精品课程',
        'http://guli-file.oss-cn-beijing.aliyuncs.com/cover/2019/03/06/866e9aca-b530-4f71-a690-72d4a4bfd1e7.jpg',
        '晴天', '1', '小三1231', '13700000001', 1.00, NULL, 0, 0, '2019-11-18 11:14:54', '2019-11-18 11:14:54'),
       ('1650489953538879490', '20230424212044116', '1291291664610062338', 'java从入门到入土',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 30.00, 1, 0, 0, '2023-04-24 21:20:44', '2023-04-24 21:20:44'),
       ('1650489998313074689', '20230424212054096', '1291291664610062338', 'java从入门到入土',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 30.00, 1, 0, 0, '2023-04-24 21:20:55', '2023-04-24 21:20:55'),
       ('1650695487105814529', '20230425105727569', '1291291664610062338', 'java从入门到入土',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 30.00, 1, 0, 0, '2023-04-25 10:57:27', '2023-04-25 10:57:27'),
       ('1650699737521213441', '20230425111420146', '1291291664610062338', 'java从入门到入土',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 30.00, 1, 0, 0, '2023-04-25 11:14:21', '2023-04-25 11:14:21'),
       ('1650727301539188737', '20230425130352111', '1291291664610062338', 'java从入门到入土',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 0.00, 1, 0, 0, '2023-04-25 13:03:52', '2023-04-25 13:03:52'),
       ('1650728428464787458', '20230425130821136', '12', 'mysql基础',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 0.01, 1, 1, 0, '2023-04-25 13:08:21', '2023-04-25 13:10:25'),
       ('1650731961536839681', '20230425132223868', '12', 'mysql基础',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 0.01, 1, 0, 0, '2023-04-25 13:22:23', '2023-04-25 13:22:23'),
       ('1650732595648524290', '20230425132454764', '1291291664610062338', 'java从入门到入土',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 0.01, 1, 1, 0, '2023-04-25 13:24:55', '2023-04-25 13:29:51'),
       ('1650734168357335042', '20230425133109405', '1291293802446819330', 'mysql高级优化',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 0.01, 1, 0, 0, '2023-04-25 13:31:10', '2023-04-25 13:31:10'),
       ('1650754311502196738', '20230425145112787', '1291293802446819330', 'mysql高级优化',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 0.01, 1, 0, 0, '2023-04-25 14:51:12', '2023-04-25 14:51:12'),
       ('1650775365943644161', '20230425161451382', '1291293802446819330', 'mysql高级优化',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 0.01, 1, 0, 0, '2023-04-25 16:14:52', '2023-04-25 16:14:52'),
       ('1650775453667512322', '20230425161512954', '1291293802446819330', 'mysql高级优化',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1650102847549317121', '蓝波波', '13599201049', 0.01, 1, 1, 0, '2023-04-25 16:15:13', '2023-04-25 16:15:28'),
       ('1652356342830723074', '20230430005706621', '1291298930809737218', '测试讲师下拉列表',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1648653374440730625', '多看看书', '', 0.01, 1, 1, 0, '2023-04-30 00:57:06', '2023-04-30 00:57:52'),
       ('1656923137088540673', '20230512152354109', '1292097678242521090', '时间管理',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1656922856485359617', '今心.', '', 0.01, 1, 0, 0, '2023-05-12 15:23:55', '2023-05-12 15:23:55'),
       ('1656929988387655681', '20230512155108666', '1292097678242521090', '时间管理',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1652358426741305346', '蓝波波', '13599201049', 0.01, 1, 0, 0, '2023-05-12 15:51:08', '2023-05-12 15:51:28'),
       ('1657031014939705346', '20230512223234694', '1657002640489943042', 'Java基础',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1652358426741305346', '蓝波波', '13599201049', 0.01, 1, 0, 0, '2023-05-12 22:32:35', '2023-05-12 22:32:35'),
       ('1657031028260814850', '20230512223237151', '1657002640489943042', 'Java基础',
        'http://edu-longyang.oss-cn-beijing.aliyuncs.com/2020/08/06/587d5686663541d986a750be8c9b99b9java.jpg', NULL,
        '1652358426741305346', '蓝波波', '13599201049', 0.01, 1, 0, 0, '2023-05-12 22:32:38', '2023-05-12 22:32:38');
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `t_pay_log`
--

DROP TABLE IF EXISTS `t_pay_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_pay_log`
(
    `id`             char(19)    NOT NULL DEFAULT '',
    `order_no`       varchar(20) NOT NULL DEFAULT '' COMMENT '订单号',
    `pay_time`       datetime             DEFAULT NULL COMMENT '支付完成时间',
    `total_fee`      decimal(10, 2)       DEFAULT '0.01' COMMENT '支付金额（分）',
    `transaction_id` varchar(30)          DEFAULT NULL COMMENT '交易流水号',
    `trade_state`    char(20)             DEFAULT NULL COMMENT '交易状态',
    `pay_type`       tinyint     NOT NULL DEFAULT '0' COMMENT '支付类型（1：微信 2：支付宝）',
    `attr`           text COMMENT '其他属性',
    `is_deleted`     tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
    `gmt_create`     datetime    NOT NULL COMMENT '创建时间',
    `gmt_modified`   datetime    NOT NULL COMMENT '更新时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_order_no` (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='支付日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pay_log`
--

LOCK
TABLES `t_pay_log` WRITE;
/*!40000 ALTER TABLE `t_pay_log` DISABLE KEYS */;
INSERT INTO `t_pay_log` (`id`, `order_no`, `pay_time`, `total_fee`, `transaction_id`, `trade_state`, `pay_type`, `attr`,
                         `is_deleted`, `gmt_create`, `gmt_modified`)
VALUES ('1194498446013001730', '1194498300579704832', '2019-11-13 14:13:17', 1.00, '4200000469201911130676624386',
        'SUCCESS', 1,
        '{\"transaction_id\":\"4200000469201911130676624386\",\"nonce_str\":\"2Lc23ILl231It53M\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"CFT\",\"openid\":\"oNpSGwR-QGG5DaZtDkh2UZlsFDQE\",\"sign\":\"5404850AA3ED0E844DE104651477F07A\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1473426802\",\"cash_fee\":\"1\",\"out_trade_no\":\"1194498300579704832\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx8397f8696b538317\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20191113141314\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}',
        0, '2019-11-13 14:13:17', '2019-11-13 14:13:17'),
       ('1195253787449430017', '1195253049260314624', '2019-11-15 16:14:44', 1.00, '4200000454201911150981874895',
        'SUCCESS', 1,
        '{\"transaction_id\":\"4200000454201911150981874895\",\"nonce_str\":\"MAM5UM4Xhv1lItvO\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"CFT\",\"openid\":\"oNpSGwR-QGG5DaZtDkh2UZlsFDQE\",\"sign\":\"7DBDCAF4A078B30BB3EF073E6A238C20\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1473426802\",\"cash_fee\":\"1\",\"out_trade_no\":\"1195253049260314624\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx8397f8696b538317\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20191115161440\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}',
        0, '2019-11-15 16:14:44', '2019-11-15 16:14:44'),
       ('1196264321397342210', '1196264005255872512', '2019-11-18 11:10:14', 1.00, '4200000453201911184025781554',
        'SUCCESS', 1,
        '{\"transaction_id\":\"4200000453201911184025781554\",\"nonce_str\":\"D1dHexCLIFIxAAg2\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"CFT\",\"openid\":\"oNpSGwR-QGG5DaZtDkh2UZlsFDQE\",\"sign\":\"C9F5CA1EE49EA7891736D73BEB423962\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1473426802\",\"cash_fee\":\"1\",\"out_trade_no\":\"1196264005255872512\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx8397f8696b538317\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20191118111011\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}',
        0, '2019-11-18 11:10:14', '2019-11-18 11:10:14'),
       ('1650728949149880322', '20230425130821136', '2023-04-25 13:10:25', 0.01, '4200001733202304252092373371',
        'SUCCESS', 1,
        '{\"transaction_id\":\"4200001733202304252092373371\",\"nonce_str\":\"QVtkmgmxovuJHlAB\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuD5O3TkS5DlRL4J01uuBDoI\",\"sign\":\"9CB53D35E4D51B8BBF1036F4113F9259\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20230425130821136\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20230425130834\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}',
        0, '2023-04-25 13:10:25', '2023-04-25 13:10:25'),
       ('1650733839796531201', '20230425132454764', '2023-04-25 13:29:51', 0.01, '4200001809202304258498218976',
        'SUCCESS', 1,
        '{\"transaction_id\":\"4200001809202304258498218976\",\"nonce_str\":\"3o7bBMrSihWHRoee\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuD5O3TkS5DlRL4J01uuBDoI\",\"sign\":\"7CA368E0864A7B8C8F76868D7B95CEF6\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20230425132454764\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20230425132951\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}',
        0, '2023-04-25 13:29:51', '2023-04-25 13:29:51'),
       ('1650775519161569281', '20230425161512954', '2023-04-25 16:15:28', 0.01, '4200001809202304250999078480',
        'SUCCESS', 1,
        '{\"transaction_id\":\"4200001809202304250999078480\",\"nonce_str\":\"NriQT7a3R8TQD5FU\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuD5O3TkS5DlRL4J01uuBDoI\",\"sign\":\"DEE4B557A16E82AC6006DB9D09182749\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20230425161512954\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20230425161526\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}',
        0, '2023-04-25 16:15:28', '2023-04-25 16:15:28'),
       ('1652356429950611457', '20230430005706621', '2023-04-30 00:57:27', 0.01, '4200001829202304301809339115',
        'SUCCESS', 1,
        '{\"transaction_id\":\"4200001829202304301809339115\",\"nonce_str\":\"BhPexCp2nu4kzkX4\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuD5O3TkS5DlRL4J01uuBDoI\",\"sign\":\"085F37F4D7027DAF31A51D6FDC4E4098\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20230430005706621\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20230430005726\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}',
        0, '2023-04-30 00:57:27', '2023-04-30 00:57:27'),
       ('1656930069832650753', '20230512155108666', '2023-05-12 15:51:28', 0.01, '4200001823202305123209357146',
        'SUCCESS', 1,
        '{\"transaction_id\":\"4200001823202305123209357146\",\"nonce_str\":\"w2TY15bSp2VgqyY8\",\"trade_state\":\"SUCCESS\",\"bank_type\":\"OTHERS\",\"openid\":\"oHwsHuD5O3TkS5DlRL4J01uuBDoI\",\"sign\":\"4F3CDE6E4EB64AF3B9C153B7EBE2E2A9\",\"return_msg\":\"OK\",\"fee_type\":\"CNY\",\"mch_id\":\"1558950191\",\"cash_fee\":\"1\",\"out_trade_no\":\"20230512155108666\",\"cash_fee_type\":\"CNY\",\"appid\":\"wx74862e0dfcf69954\",\"total_fee\":\"1\",\"trade_state_desc\":\"支付成功\",\"trade_type\":\"NATIVE\",\"result_code\":\"SUCCESS\",\"attach\":\"\",\"time_end\":\"20230512155126\",\"is_subscribe\":\"N\",\"return_code\":\"SUCCESS\"}',
        0, '2023-05-12 15:51:28', '2023-05-12 15:51:28');
/*!40000 ALTER TABLE `t_pay_log` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `ucenter_member`
--

DROP TABLE IF EXISTS `ucenter_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ucenter_member`
(
    `id`           char(19) NOT NULL COMMENT '会员id',
    `mobile`       varchar(11)       DEFAULT '' COMMENT '手机号',
    `password`     varchar(255)      DEFAULT NULL COMMENT '密码',
    `nickname`     varchar(50)       DEFAULT NULL COMMENT '昵称',
    `sex`          tinyint unsigned DEFAULT NULL COMMENT '性别 1 女，2 男',
    `age`          tinyint unsigned DEFAULT NULL COMMENT '年龄',
    `avatar`       varchar(255)      DEFAULT NULL COMMENT '用户头像',
    `sign`         varchar(100)      DEFAULT NULL COMMENT '用户签名',
    `is_disabled`  tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁用 1（true）已禁用，  0（false）未禁用',
    `is_deleted`   tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除 1（true）已删除， 0（false）未删除',
    `gmt_create`   datetime NOT NULL DEFAULT (now()) COMMENT '创建时间',
    `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ucenter_member`
--

LOCK
TABLES `ucenter_member` WRITE;
/*!40000 ALTER TABLE `ucenter_member` DISABLE KEYS */;
INSERT INTO `ucenter_member` (`id`, `mobile`, `password`, `nickname`, `sex`, `age`, `avatar`, `sign`, `is_disabled`,
                              `is_deleted`, `gmt_create`, `gmt_modified`)
VALUES ('1', '13700000001', '96e79218965eb72c92a549dd5a330112', '小三123', 1, 5,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        '0', 0, 0, '2019-01-01 12:11:33', '2019-11-08 11:56:01'),
       ('1080736474267144193', '13700000011', '96e79218965eb72c92a549dd5a330112', '用户XJtDfaYeKk', 1, 19,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2019-01-02 12:12:45', '2019-01-02 12:12:56'),
       ('1080736474355224577', '13700000002', '96e79218965eb72c92a549dd5a330112', '用户wUrNkzAPrc', 1, 27,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2019-01-02 12:13:56', '2019-01-02 12:14:07'),
       ('1086387099449442306', '13520191388', '96e79218965eb72c92a549dd5a330112', '用户XTMUeHDAoj', 2, 20,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23'),
       ('1086387099520745473', '13520191389', '96e79218965eb72c92a549dd5a330112', '用户vSdKeDlimn', 1, 21,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23'),
       ('1086387099608825858', '13520191381', '96e79218965eb72c92a549dd5a330112', '用户EoyWUVXQoP', 1, 18,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23'),
       ('1086387099701100545', '13520191382', '96e79218965eb72c92a549dd5a330112', '用户LcAYbxLNdN', 2, 24,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23'),
       ('1086387099776598018', '13520191383', '96e79218965eb72c92a549dd5a330112', '用户dZdjcgltnk', 2, 25,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23'),
       ('1086387099852095490', '13520191384', '96e79218965eb72c92a549dd5a330112', '用户wNHGHlxUwX', 2, 23,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2019-01-19 06:17:23', '2019-01-19 06:17:23'),
       ('1293112972314537985', '13206203240', '96e79218965eb72c92a549dd5a330112', '龙达达', NULL, NULL,
        'https://edu-longyang.oss-cn-https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2020-08-12 17:12:12', '2020-08-11 17:12:12'),
       ('1293479645739515905', '', NULL, '龙达达', NULL, NULL,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2020-08-12 17:29:14', '2020-08-12 17:29:14'),
       ('1293485029254529025', '', NULL, '牵', NULL, NULL,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2020-08-12 17:50:37', '2020-08-12 17:50:37'),
       ('1648653374440730625', '', NULL, '多看看书', NULL, NULL,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/mmexport1683430598949.jpg',
        NULL, 0, 0, '2023-04-19 19:42:50', '2023-04-19 19:42:50'),
       ('1649051546824564738', '', 'd891cf97151b7b6a8058e8186a8f42a0', 'ab1', NULL, NULL, NULL, NULL, 0, 0,
        '2023-04-20 22:05:01', '2023-04-20 22:05:01'),
       ('1649052503285260290', '', 'd891cf97151b7b6a8058e8186a8f42a0', 'abc1234', NULL, NULL, NULL, NULL, 0, 0,
        '2023-04-20 22:08:49', '2023-04-20 22:08:49'),
       ('1649079718148399105', '', 'd891cf97151b7b6a8058e8186a8f42a0', 'abc12355', NULL, NULL, NULL, NULL, 0, 0,
        '2023-04-20 23:56:58', '2023-04-20 23:56:58'),
       ('1649080438012600321', '', 'd891cf97151b7b6a8058e8186a8f42a0', 'abc12377', NULL, NULL, NULL, NULL, 0, 0,
        '2023-04-20 23:59:50', '2023-04-20 23:59:50'),
       ('1649082529997217794', '', 'd891cf97151b7b6a8058e8186a8f42a0', 'abc12359', NULL, NULL, NULL, NULL, 0, 0,
        '2023-04-21 00:08:08', '2023-04-21 00:08:08'),
       ('1652358426741305346', '11111111111', 'e10adc3949ba59abbe56e057f20f883e', '蓝哇哇', 1, NULL,
        'https://online-education-test1010.oss-cn-fuzhou.aliyuncs.com/2023/04/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9/2179794410.jpeg',
        '0', 0, 0, '2023-04-30 01:05:23', '2023-04-30 01:05:23'),
       ('1656922856485359617', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', NULL, NULL,
        'https://thirdwx.qlogo.cn/mmopen/vi_32/NvIXpXfHnsaDJNicV78TuZWxBqQeAm7wqKTfpYicux1Lo0TuYOeUxku4qErrty8EcDKDj2xxgf1bFvXhzRT6MDvg/132',
        NULL, 0, 0, '2023-05-12 15:22:48', '2023-05-12 15:22:48'),
       ('1783048834327760898', '18521000000', 'e10adc3949ba59abbe56e057f20f883e', 'nickname', NULL, NULL,
        'fuzhou.aliyuncs.com/2023/03/14e63cd250e4044a36b5a47ba6a1a64f5afile.png', NULL, 0, 0, '2024-04-24 16:22:24',
        '2024-04-24 16:22:24'),
       ('1783075990151782402', '18521000001', 'e10adc3949ba59abbe56e057f20f883e', 'nickname', NULL, NULL,
        'fuzhou.aliyuncs.com/2023/03/14e63cd250e4044a36b5a47ba6a1a64f5afile.png', NULL, 0, 0, '2024-04-24 18:10:18',
        '2024-04-24 18:10:18');
/*!40000 ALTER TABLE `ucenter_member` ENABLE KEYS */;
UNLOCK
TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-24 18:17:31
