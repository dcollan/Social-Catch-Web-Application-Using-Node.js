-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: csc317db
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `photopath` varchar(4096) NOT NULL,
  `thumbnail` varchar(4096) NOT NULL,
  `active` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `fk_userid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `posts to users_idx` (`fk_userid`),
  CONSTRAINT `posts to users` FOREIGN KEY (`fk_userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (21,'A Beautiful River','A shot of a gorgeous river taken last Sunday','public\\images\\uploads\\b41bbe5cd791cf4228fe4095467bdbe1741b023dd822.jpeg','public/images/uploads/thumbnail-b41bbe5cd791cf4228fe4095467bdbe1741b023dd822.jpeg',0,'2020-08-05 14:03:36',48),(24,'A great photo','This is another photo','public\\images\\uploads\\ec9ea58256db668c1b223991d012bac92f909b5efbbb.jpeg','public/images/uploads/thumbnail-ec9ea58256db668c1b223991d012bac92f909b5efbbb.jpeg',0,'2020-08-05 20:06:27',48),(25,'A third image','This third posted image','public\\images\\uploads\\2d848af52493284f6edc51526a3a7e6f9fc2e99f6619.jpeg','public/images/uploads/thumbnail-2d848af52493284f6edc51526a3a7e6f9fc2e99f6619.jpeg',0,'2020-08-05 20:14:55',48),(26,'another photo','a second good photo','public\\images\\uploads\\0556c996e2a42817f871ed05e686ae692b6982bd7986.jpeg','public/images/uploads/thumbnail-0556c996e2a42817f871ed05e686ae692b6982bd7986.jpeg',0,'2020-08-06 20:19:28',48),(27,'another good image','a third image','public\\images\\uploads\\7295121a6ff4f3e152d67d8021bb43ae854c744c9972.jpeg','public/images/uploads/thumbnail-7295121a6ff4f3e152d67d8021bb43ae854c744c9972.jpeg',0,'2020-08-06 23:09:02',48),(28,'another great photo','a fourth image','public\\images\\uploads\\338a8669b123975305ae3782cc92893195afc5a2ab75.jpeg','public/images/uploads/thumbnail-338a8669b123975305ae3782cc92893195afc5a2ab75.jpeg',0,'2020-08-08 14:51:25',48),(29,'7th image','a seventh image','public\\images\\uploads\\ae23e21915198c3017df824d07d2cc7586a50072b51d.jpeg','public/images/uploads/thumbnail-ae23e21915198c3017df824d07d2cc7586a50072b51d.jpeg',0,'2020-08-08 15:19:41',48),(30,'7th image','a seventh image','public\\images\\uploads\\a1c0382cf6faa1f13c443dc286f88b342a7cc65c8ad3.jpeg','public/images/uploads/thumbnail-a1c0382cf6faa1f13c443dc286f88b342a7cc65c8ad3.jpeg',0,'2020-08-08 15:19:41',48),(31,'8th image','an eighth image','public\\images\\uploads\\ba2623d245494e78491230fee9cc638b211082595c2d.png','public/images/uploads/thumbnail-ba2623d245494e78491230fee9cc638b211082595c2d.png',0,'2020-08-08 15:20:37',48),(32,'an 8th image','8th image','public\\images\\uploads\\db0dc13aa324f8d734ef9c1b45486cd084e826dfc547.jpeg','public/images/uploads/thumbnail-db0dc13aa324f8d734ef9c1b45486cd084e826dfc547.jpeg',0,'2020-08-08 15:26:29',48),(33,'A tenth image','image ten','public\\images\\uploads\\7f0ba5bcec1578a2088bd6ea1b959f5fbf7ec988490b.jpeg','public/images/uploads/thumbnail-7f0ba5bcec1578a2088bd6ea1b959f5fbf7ec988490b.jpeg',0,'2020-08-08 15:57:56',48),(34,'image 13','thirteenth image','public\\images\\uploads\\8d7db96635465e10eec4fa8336158f0716c06ef4bdf0.jpeg','public/images/uploads/thumbnail-8d7db96635465e10eec4fa8336158f0716c06ef4bdf0.jpeg',0,'2020-08-08 16:08:25',48),(35,'image 14','fourteenth image','public\\images\\uploads\\f0a381fd1f26e808bae79ba07c9ecc90e155d1c4dbd6.jpeg','public/images/uploads/thumbnail-f0a381fd1f26e808bae79ba07c9ecc90e155d1c4dbd6.jpeg',0,'2020-08-08 16:09:06',48);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-08 18:33:16
