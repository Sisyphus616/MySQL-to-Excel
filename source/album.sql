-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `name` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `release_time` date NOT NULL,
  `listen` date DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`name`,`artist`,`release_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES ('I Am the I','柳应廷','流行','2024-02-16','2024-03-15',5),('LIFE IS A MOVIE','Melo','说唱','2024-04-09','2024-05-04',6.5),('Love is Waiting','Me and My Sandcastle','摇滚，盯鞋','2024-01-30','2024-03-25',6.5),('No, no!','张醒婵','独立摇滚','2024-05-13','2024-06-17',8.7),('STRIPELIFE条纹生活','GALI','说唱','2024-04-07','2024-04-07',6.5),('TREBLE','MC张天赋','流行','2024-03-12','2024-03-20',6),('UMBROSKII','那奇沃夫，kkluv','EP，说唱','2024-04-24','2024-04-24',6),('VILLAIN反派角色','朱婧汐','电子','2024-01-12','2024-01-20',8),('Young Amaru','滇声气','说唱','2024-03-01','2024-03-17',6.5),('一切平常','黄玠','流行','2024-02-06','2024-03-16',6),('不就是一起长大','马俊，马颢睿','说唱','2023-10-09','2024-06-17',7),('东张西望','庄达菲','EP，民谣','2024-04-16','2024-05-14',6),('五常法则','Vast&Hazy','摇滚，流行','2024-05-16','2024-05-31',7),('人生颁奖典礼','孟慧圆','流行','2024-03-29','2024-04-28',7.5),('同年同月同日死','听天汤','民谣摇滚','2024-02-23','2024-04-04',8),('夜色碳酸','完美倒立','电子，摇滚','2024-03-21','2024-04-04',7),('底层逻辑','GAI周延','说唱','2024-04-18','2024-04-19',7),('无边记','于哲浩，李晨曦','说唱，R&B','2024-03-05','2024-03-06',7.2),('早期科技','高嘉丰','摇滚，金属','2024-01-05','2024-01-20',5.5),('春色','陈婧霏','EP，流行，原声','2024-03-20','2024-03-20',6),('牛窝坑之子','vansdaddy','说唱','2024-06-10','2024-06-11',6.5),('王国Darktopia','陈惠婷','流行','2024-01-26','2024-03-15',5.5),('理想国','杨和苏','说唱','2024-06-16','2024-06-16',5.5),('维吧·Ghetto Club','AThree','说唱','2024-01-25','2024-02-25',7),('辩护人','杨和苏','说唱','2020-10-15','2024-06-16',8.5),('高阁殿 神草花','沈川绮','流行，电子','2023-10-15','2024-06-17',4.5),('黄沙','Echo王恩喆','说唱','2024-05-20','2024-05-21',9);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-18 14:55:27
