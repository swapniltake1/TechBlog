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
-- Table structure for table `categoriess`
--

DROP TABLE IF EXISTS `categoriess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriess` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) NOT NULL,
  `cdescription` varchar(1000) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriess`
--

LOCK TABLES `categoriess` WRITE;
/*!40000 ALTER TABLE `categoriess` DISABLE KEYS */;
INSERT INTO `categoriess` VALUES (1,'Java Programming','Java is a general-purpose programming language that was first released in 1995 by Sun Microsystems. It was designed to be portable, secure, and easy to use. Java is an object-oriented language that supports features such as encapsulation, inheritance, and polymorphism. It is widely used for building enterprise-scale applications, mobile applications, and web applications. Java is also used for developing Android applications. Java code is compiled into bytecode that runs on the Java Virtual Machine (JVM). This makes Java platform-independent, meaning that code written on one platform can be executed on any other platform without recompiling.'),(2,'Python Programming','Python is a high-level, interpreted programming language that was first released in 1991. It is known for its simplicity, ease of use, and readability. Python supports multiple programming paradigms, including procedural, functional, and object-oriented programming. It has a large standard library and a wide range of third-party modules available, making it a popular choice for data science, web development, and artificial intelligence. Python is also used for scripting and automation. Python code is interpreted, meaning that it does not need to be compiled before execution.'),(3,'JS ','JavaScript (JS) is a high-level, interpreted programming language that was first released in 1995. It is mainly used for web development and runs on web browsers. JavaScript is used for creating interactive web pages and web applications. It is an object-oriented language that supports features such as closures, prototypes, and first-class functions. JavaScript is also used for server-side programming and building desktop applications. JS code is interpreted, meaning that it does not need to be compiled before execution.'),(4,'DSA','Data structures and algorithms (DSA) programming refers to the implementation of data structures and algorithms in a programming language. Data structures are used for organizing and storing data in a computer\'s memory, while algorithms are used for solving problems and performing computations. DSA programming is essential for computer science and software engineering, as it provides a foundation for developing efficient and scalable software systems. Common data structures include arrays, linked lists, stacks, queues, and trees, while common algorithms include sorting, searching, and graph algorithms.'),(5,'SQl','Structured Query Language (SQL) is a programming language that is used for managing relational databases. It was first introduced in 1974 and has since become a standard for managing data in databases. SQL is used for creating, modifying, and querying databases, as well as for defining relationships between tables and enforcing data integrity. It supports features such as data aggregation, filtering, and sorting. SQL is widely used in web development, data science, and business intelligence.'),(6,'AWS','Amazon Web Services (AWS) is a cloud computing platform that was first released in 2006. It provides a wide range of services for computing, storage, and databases, as well as application development, machine learning, and analytics. AWS is widely used for hosting websites, web applications, and mobile applications. It also provides services for internet of things (IoT) devices and game development. AWS is known for its scalability, reliability, and cost-effectiveness, making it a popular choice for businesses of all sizes.');
/*!40000 ALTER TABLE `categoriess` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 12:45:42
