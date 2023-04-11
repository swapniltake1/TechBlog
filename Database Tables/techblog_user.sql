-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: techblog
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `about` varchar(1000) DEFAULT 'hey there am using techblog',
  `joiningdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `profile` varchar(500) DEFAULT 'default.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Signup Page data store here ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Swapnil Take','swapniltake1@outlook.com','','on','abcsjndjadsbjfbajkef','2023-03-21 13:48:39','default.png'),(2,'Swapnil Take','swapniltake1@outlook.com','Abc@2000','on','Java Developers','2023-03-21 13:50:44','default.png'),(3,'devilminded_38','avc@nmjdfgfgh','Avfddd@efsdf','male','ASSDDDDFCVCCX','2023-03-21 13:51:15','default.png'),(4,'Swapnil Take','takeswapnil8@gmail.com','Pass@123','male','  Hiii there am using techblog\r\n						   ','2023-03-21 14:11:30','1F5A9377-01.jpeg'),(5,'Swapnil Rajendra Take','takeswapnil8@gmail.com','Pass@123','male','Hiii tere ','2023-03-21 14:11:58','default.png'),(6,'Swapnil Rajendra Take','takeswapnil8@gmail.com','5151561','male','Hiii tere ','2023-03-21 14:12:14','default.png'),(7,'devilminded_38','abc@email','rcfhjh','male','ilk','2023-03-21 14:20:50','default.png'),(8,'devilminded_38','takeswapnil8@gmail.com','aadsdafsdgx','male','efasczx','2023-03-21 14:32:07','default.png'),(9,'devilminded_38','takeswapnil8@gmail.com','aadsdafsdgx','male','efasczx','2023-03-21 14:36:11','default.png'),(10,'swapniltake1@outlook.com','takeswapnil8@gmail.com','rsd','male','cas','2023-03-21 14:36:25','default.png'),(11,'swapniltake1@outlook.com','takeswapnil8@gmail.com','rsd','male','cas','2023-03-21 14:38:06','default.png'),(12,'Swapnil Rajendra Take','swapniltake1@outlook.com','Pass@1223','male','Javabansjkfnjkdsfjbefbekasjz','2023-03-21 14:44:31','default.png'),(13,'Pooja Asalkar ','Pojili@gmail','','female','ABDHSJJSBJDBKNKS','2023-03-22 09:03:56','default.png'),(14,'Pooja Asalkar ','Pojili@gmail','asdfvgg','female','ABDHSJJSBJDBKNKS','2023-03-22 09:06:36','default.png'),(15,'Pooja ','pooja@dghs','Zapi','female','afgshjas','2023-03-22 09:12:58','default.png'),(16,'Pooja ','pooja@dghs','Zapi','female','afgshjas','2023-03-22 09:13:18','default.png'),(17,'devilminded_38','Pojili@gmail','kkkkk','male','drgfgghvh','2023-03-22 09:13:36','default.png'),(18,'devilminded_38','abc@email','Nimchadhi','male','gjhbhb','2023-03-22 09:18:04','default.png'),(19,'devilminded_38','avc@nmjdfgfgh','jjjjk','male','jjjkk','2023-03-22 09:20:18','default.png'),(20,'sejkdnkjz','a@uhdasukukj','.m.k','male','hukbhjk','2023-03-22 09:22:11','default.png'),(21,'swapniltake1@outlook.com','Pojili@gmail','qwerty','male','uihhuj','2023-03-22 09:23:31','default.png'),(23,'Swapnil','swapniltake1@outlook.com','Pass@1123','male','Java Developer \r\nCs 2023 Batch \r\n						   \r\n						   \r\n						   ','2023-03-28 08:39:17','61576958.jpeg'),(24,'Nilesh Take','nileshtake2003@gmail.com','Pass@123','male','call me Vanghya take','2023-03-29 05:51:33','default.jpg'),(25,'Kiran Take','kiran@gmail.com','Pass@123','male','jasbdjkandkandk','2023-03-29 05:56:25','default.jpg'),(26,'Swapnil Rajendra Take','swapniltake1@outlook.com','Pass@123','male','						   Swapnil@1\r\n						   ','2023-03-30 14:05:57','61576958.jpeg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 12:45:43
