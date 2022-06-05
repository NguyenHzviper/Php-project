CREATE DATABASE  IF NOT EXISTS `lms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lms`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `lms_admin`
--

DROP TABLE IF EXISTS `lms_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_admin`
--

LOCK TABLES `lms_admin` WRITE;
/*!40000 ALTER TABLE `lms_admin` DISABLE KEYS */;
INSERT INTO `lms_admin` VALUES (1,'admin@gmail.com','admin');
/*!40000 ALTER TABLE `lms_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_author`
--

DROP TABLE IF EXISTS `lms_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_author` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `author_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `author_status` enum('Enable','Disable') CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `author_created_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `author_updated_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_author`
--

LOCK TABLES `lms_author` WRITE;
/*!40000 ALTER TABLE `lms_author` DISABLE KEYS */;
INSERT INTO `lms_author` VALUES (1,'Alan Forbes','Enable','2022-05-11 15:45:14','2022-06-02 11:32:09'),(2,'Tom Butler','Enable','2022-05-12 12:48:40',''),(3,'Lynn Beighley','Enable','2022-05-12 12:49:00',''),(4,'Vikram Vaswani','Enable','2022-05-12 12:49:18',''),(5,'Daginn Reiersol','Enable','2022-05-12 12:49:38',''),(6,'Joel Murach','Enable','2022-05-12 12:49:54',''),(7,'Robin Nixon','Enable','2022-05-12 12:50:09',''),(8,'Kevin Tatroe','Enable','2022-05-12 12:50:24',''),(9,'Laura Thompson','Enable','2022-05-12 12:50:42',''),(10,'Brett Shimson','Enable','2022-05-12 12:50:55','2022-06-01 11:40:04'),(11,'Sanjib Sinha','Enable','2022-05-12 12:51:16',''),(12,'Brian Messenlehner','Enable','2022-05-12 12:51:42','2022-06-02 11:32:57'),(13,'Dayle Rees','Enable','2022-05-12 12:52:02',''),(14,'Carlos Buenosvinos','Enable','2022-05-12 12:52:20',''),(15,'Bruce Berke','Enable','2022-05-12 12:52:35','2022-06-02 11:33:10'),(16,'Laura Thomson','Enable','2022-05-17 10:39:36',''),(18,'David Herman','Enable','2022-05-30 14:36:35','2022-06-01 11:39:05'),(19,'Mark Myers','Enable','2022-05-08 18:45:15','');
/*!40000 ALTER TABLE `lms_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_book`
--

DROP TABLE IF EXISTS `lms_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_book` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `book_category` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `book_author` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `book_location_rack` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `book_name` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `book_isbn_number` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `book_no_of_copy` int NOT NULL,
  `book_status` enum('Enable','Disable') CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `book_added_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `book_updated_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_book`
--

LOCK TABLES `lms_book` WRITE;
/*!40000 ALTER TABLE `lms_book` DISABLE KEYS */;
INSERT INTO `lms_book` VALUES (1,'Programming Skill','Alan Forbes','A1','The Joy of PHP Programming','978152279214',5,'Enable','2022-05-11 17:32:33','2022-06-11 18:19:21'),(2,'Programming Skill','Tom Butler','A2','PHP and MySQL Novice to Ninja','852369852123',5,'Enable','2022-05-12 12:56:23','2022-06-28 17:59:06'),(3,'Programming Skill','Lynn Beighley','A3','Head First PHP and MySQL','7539518526963',5,'Enable','2022-05-12 12:57:04',''),(4,'Programming Skill','Vikram Vaswani','A4','PHP A Beginners Guide','74114774147',5,'Enable','2022-05-12 12:57:47',''),(5,'Programming Skill','Daginn Reiersol','A5','PHP In Action Objects Design Agility','85225885258',5,'Enable','2022-05-12 12:58:34',''),(6,'Programming Skill','Joel Murach','A6','Murachs PHP and MySQL','8585858596632',5,'Enable','2022-05-12 13:00:15',''),(7,'Programming Skill','Robin Nixon','A8','Learning PHP MySQL JavaScript and CSS Creating Dynamic Websites','753852963258',5,'Enable','2022-05-12 13:01:10','2022-06-12 13:02:16'),(8,'Programming Skill','Kevin Tatroe','A10','Programming PHP Creating Dynamic Web Pages','969335785842',5,'Enable','2022-05-12 13:01:57',''),(9,'Programming Skill','Bruce Berke','A1','PHP Programming and MySQL Database for Web Development','963369852258',5,'Enable','2022-05-12 13:02:48','2022-06-17 10:58:27'),(10,'Programming Skill','Brett McLaughlin','A2','PHP MySQL The Missing Manual','85478569856',5,'Enable','2022-05-12 13:03:51','2022-06-14 17:07:04'),(11,'Programming Skill','Sanjib Sinha','A3','Beginning Laravel A beginners guide','856325774562',5,'Enable','2022-05-12 13:04:39',''),(12,'Programming Skill','Brian Messenlehner','A3','Building Web Apps with WordPress','96325741258',5,'Enable','2022-05-12 13:05:18',''),(13,'Programming Skill','Dayle Rees','A5','The Laravel Framework Version 5 For Beginners','336985696363',5,'Enable','2022-05-12 13:05:56',''),(14,'Programming Skill','Carlos Buenosvinos','A6','Domain Driven Design in PHP','852258963475',5,'Enable','2022-05-12 13:06:35','2022-06-11 10:36:01'),(15,'Programming','Bruce Berke','A7','Learn PHP The Complete Beginners Guide to Learn PHP Programming','744785963520',5,'Enable','2022-05-12 13:07:27','2022-06-09 18:37:14'),(16,'Database Management','Laura Thompson','A2','PHP and MySQL Web Development','753951852123',1,'Enable','2022-05-17 10:43:19','2022-05-18 12:05:08'),(17,'Web Development','Mark Myers','A11','A Smarter Way to Learn JavaScript','852369753951',1,'Enable','2022-05-08 18:48:11','2022-05-18 11:41:01');
/*!40000 ALTER TABLE `lms_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_category`
--

DROP TABLE IF EXISTS `lms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `category_status` enum('Enable','Disable') CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `category_created_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `category_updated_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_category`
--

LOCK TABLES `lms_category` WRITE;
/*!40000 ALTER TABLE `lms_category` DISABLE KEYS */;
INSERT INTO `lms_category` VALUES (1,'Programming','Enable','2022-05-10 19:02:37','2022-05-27 11:56:18'),(2,'Database','Enable','2022-05-17 10:36:53','2022-06-11 12:27:05'),(3,'Web Design','Enable','2022-05-26 16:14:18','2022-06-11 12:28:03'),(4,'Web Development','Enable','2022-05-26 16:15:38','2022-06-10 12:28:11'),(6,'Crypto','Enable','2022-05-18 12:21:51','2022-05-18 12:21:51');
/*!40000 ALTER TABLE `lms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_issue_book`
--

DROP TABLE IF EXISTS `lms_issue_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_issue_book` (
  `issue_book_id` int NOT NULL AUTO_INCREMENT,
  `book_id` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `issue_date_time` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `expected_return_date` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `return_date_time` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `book_fines` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `book_issue_status` enum('Issue','Return','Not Return') CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`issue_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_issue_book`
--

LOCK TABLES `lms_issue_book` WRITE;
/*!40000 ALTER TABLE `lms_issue_book` DISABLE KEYS */;
INSERT INTO `lms_issue_book` VALUES (4,'856325774562','U37570190','2021-11-13 15:57:29','2022-05-23 15:57:29','2022-06-14 16:51:42','0','Return'),(5,'856325774562','U37570190','2021-11-14 17:04:13','2022-05-24 17:04:13','2022-06-14 17:05:47','0','Return'),(6,'85478569856','U37570190','2021-11-14 17:07:04','2022-05-24 17:07:04','2022-06-14 17:07:55','0','Return'),(7,'753951852123','U52357788','2021-11-17 11:03:04','2022-05-27 11:03:04','2022-06-17 11:05:29','0','Return'),(8,'852369852123','U59564819','2021-12-28 17:59:06','2022-01-07 17:59:06','2022-01-03 12:44:15','0','Return'),(9,'852369753951','U59564819','2021-12-28 18:03:30','2022-01-07 18:03:30','2022-01-03 12:43:28','0','Return'),(10,'852369753951','U74693773','2022-05-18 11:41:01','2022-05-28 11:41:01','2022-05-18 11:41:26','0','Return'),(11,'753951852123','U74693773','2022-05-10 12:05:08','2022-05-28 12:05:08','2022-05-18 12:24:01','0','Return');
/*!40000 ALTER TABLE `lms_issue_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_location_rack`
--

DROP TABLE IF EXISTS `lms_location_rack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_location_rack` (
  `location_rack_id` int NOT NULL AUTO_INCREMENT,
  `location_rack_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `location_rack_status` enum('Enable','Disable') CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `location_rack_created_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `location_rack_updated_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`location_rack_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_location_rack`
--

LOCK TABLES `lms_location_rack` WRITE;
/*!40000 ALTER TABLE `lms_location_rack` DISABLE KEYS */;
INSERT INTO `lms_location_rack` VALUES (1,'A1','Enable','2022-05-11 16:16:27','2022-06-07 10:02:00'),(2,'A2','Enable','2022-05-12 12:53:49',''),(3,'A3','Enable','2022-05-12 12:53:57',''),(4,'A4','Enable','2022-05-12 12:54:06',''),(5,'A5','Enable','2022-05-12 12:54:14',''),(6,'A6','Enable','2022-05-12 12:54:22',''),(7,'A7','Enable','2022-05-12 12:54:30',''),(8,'A8','Enable','2022-05-12 12:54:38',''),(9,'A9','Enable','2022-05-12 12:54:52',''),(10,'A10','Enable','2022-05-12 12:55:02','2022-06-04 13:03:28'),(11,'A11','Enable','2022-05-03 18:20:16','2022-06-04 12:45:09');
/*!40000 ALTER TABLE `lms_location_rack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_setting`
--

DROP TABLE IF EXISTS `lms_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_setting` (
  `setting_id` int NOT NULL AUTO_INCREMENT,
  `library_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `library_address` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `library_contact_number` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `library_email_address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `library_total_book_issue_day` int NOT NULL,
  `library_one_day_fine` decimal(10,2) NOT NULL,
  `library_issue_total_book_per_user` int NOT NULL,
  `library_currency` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `library_timezone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_setting`
--

LOCK TABLES `lms_setting` WRITE;
/*!40000 ALTER TABLE `lms_setting` DISABLE KEYS */;
INSERT INTO `lms_setting` VALUES (1,'ABC Library','Business Street 105, NY 0256','7539518521','cloneacc26021412@gmail.com',10,2000.00,3,'VND','Asia/Saigon');
/*!40000 ALTER TABLE `lms_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lms_user`
--

DROP TABLE IF EXISTS `lms_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lms_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_address` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_contact_no` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_profile` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_email_address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_verificaton_code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_verification_status` enum('No','Yes') CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_unique_id` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_status` enum('Enable','Disable') CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_created_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `user_updated_on` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lms_user`
--

LOCK TABLES `lms_user` WRITE;
/*!40000 ALTER TABLE `lms_user` DISABLE KEYS */;
INSERT INTO `lms_user` VALUES (4,'Aaron Lawler','1616 Broadway Avenue Chattanooga, TN 37421','8569856321','1636905360-32007.jpg','aaronlawler@live.com','password','add84abb895484d12344316eccb78a62','Yes','U37570190','Enable','2022-05-12 16:39:20','2022-06-17 10:49:20'),(6,'Carol Maney','2703 Deer Haven Drive Greenville, SC 29607','8521479630','1637126571-21753.jpg','web-tutorial1@programmer.net','password','a6c2623984d590239244f8695df3a30b','Yes','U52357788','Enable','2022-05-17 10:52:51',''),(10,'Kevin Peterson','1889 Single Street Waltham, MA 02154','8523698520','1639658464-10192.jpg','web-tutorial@programmer.net','password123','337ea20da40326d134fe5eca3fb03464','Yes','U59564819','Enable','2022-05-14 12:56:29','2022-06-10 15:21:45'),(13,'testuser','Xuan Loc Xuan Tho Dong Nai','0703392602','1654414949-898525187.jpg','fambrruh999@gmail.com','test','045f9e0d3b2152e9746c78c6edb5065e','Yes','U11658645','Enable','2022-06-05 14:42:29','2022-06-05 14:42:29');
/*!40000 ALTER TABLE `lms_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-05 16:41:43
