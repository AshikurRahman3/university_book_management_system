CREATE DATABASE  IF NOT EXISTS `university_book_management_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `university_book_management_system`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: university_book_management_system
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add department',7,'add_department'),(26,'Can change department',7,'change_department'),(27,'Can delete department',7,'delete_department'),(28,'Can view department',7,'view_department'),(29,'Can add semester',8,'add_semester'),(30,'Can change semester',8,'change_semester'),(31,'Can delete semester',8,'delete_semester'),(32,'Can view semester',8,'view_semester'),(33,'Can add book',9,'add_book'),(34,'Can change book',9,'change_book'),(35,'Can delete book',9,'delete_book'),(36,'Can view book',9,'view_book'),(37,'Can add teacher',10,'add_teacher'),(38,'Can change teacher',10,'change_teacher'),(39,'Can delete teacher',10,'delete_teacher'),(40,'Can view teacher',10,'view_teacher'),(41,'Can add archived_books',11,'add_archived_books'),(42,'Can change archived_books',11,'change_archived_books'),(43,'Can delete archived_books',11,'delete_archived_books'),(44,'Can view archived_books',11,'view_archived_books');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$o0ai5sLyMZc8XaHg2k6NW6$P7mjkqIdL5iDBDXxDRF7WoXdpVkRkat+nNDOwnGgIj4=','2023-09-10 18:48:00.401768',1,'admin','','','admin@gmail.com',1,1,'2023-09-10 18:43:53.641542'),(2,'pbkdf2_sha256$600000$3KmCwVpEs9uOEVzGNZr8MO$G2T65Zb9APMhPW204qKzN57aA5YRL3bkI6pens589tw=','2023-09-10 19:03:35.299982',0,'ayesha','Ayesha','Tasnim','ayesha@gmail.com',0,1,'2023-09-10 18:52:24.487769');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-09-10 18:48:44.599055','1','Computer Science And Engineering',1,'[{\"added\": {}}]',7,1),(2,'2023-09-10 18:49:03.791456','2','Software Engineering',1,'[{\"added\": {}}]',7,1),(3,'2023-09-10 18:49:13.640102','3','Electrical And Electronics Engineering',1,'[{\"added\": {}}]',7,1),(4,'2023-09-10 18:49:23.492747','4','Mechanical Engineering',1,'[{\"added\": {}}]',7,1),(5,'2023-09-10 18:50:33.428273','5','Food Engineering & Tea Technology',1,'[{\"added\": {}}]',7,1),(6,'2023-09-10 18:50:44.892103','6','Chemical Engineering And Polymar Science',1,'[{\"added\": {}}]',7,1),(7,'2023-09-10 18:52:25.390732','2','ayesha',1,'[{\"added\": {}}]',4,1),(8,'2023-09-10 18:52:30.164507','1','Ayesha Tasnim (Computer Science And Engineering)',1,'[{\"added\": {}}]',10,1),(9,'2023-09-10 18:57:58.022584','1','Computer Science And Engineering - 1st Semester',1,'[{\"added\": {}}]',8,1),(10,'2023-09-10 18:58:08.043391','2','Computer Science And Engineering - 2nd Semester',1,'[{\"added\": {}}]',8,1),(11,'2023-09-10 18:58:17.891189','3','Computer Science And Engineering - 5th Semester',1,'[{\"added\": {}}]',8,1),(12,'2023-09-10 18:58:35.628498','4','Software Engineering - 1st Semester',1,'[{\"added\": {}}]',8,1),(13,'2023-09-10 19:00:59.480507','1','Data Communications and Networking - 5th edition - Behrouz A Forouzan ( Computer Science And Engineering ,  Semester 5 )',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(11,'sust_book_portal','archived_books'),(9,'sust_book_portal','book'),(7,'sust_book_portal','department'),(8,'sust_book_portal','semester'),(10,'sust_book_portal','teacher');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-10 18:38:33.693326'),(2,'auth','0001_initial','2023-09-10 18:38:34.268281'),(3,'admin','0001_initial','2023-09-10 18:38:34.422066'),(4,'admin','0002_logentry_remove_auto_add','2023-09-10 18:38:34.438802'),(5,'admin','0003_logentry_add_action_flag_choices','2023-09-10 18:38:34.458047'),(6,'contenttypes','0002_remove_content_type_name','2023-09-10 18:38:34.543460'),(7,'auth','0002_alter_permission_name_max_length','2023-09-10 18:38:34.583944'),(8,'auth','0003_alter_user_email_max_length','2023-09-10 18:38:34.611337'),(9,'auth','0004_alter_user_username_opts','2023-09-10 18:38:34.621526'),(10,'auth','0005_alter_user_last_login_null','2023-09-10 18:38:34.670517'),(11,'auth','0006_require_contenttypes_0002','2023-09-10 18:38:34.674372'),(12,'auth','0007_alter_validators_add_error_messages','2023-09-10 18:38:34.684259'),(13,'auth','0008_alter_user_username_max_length','2023-09-10 18:38:34.751269'),(14,'auth','0009_alter_user_last_name_max_length','2023-09-10 18:38:34.813234'),(15,'auth','0010_alter_group_name_max_length','2023-09-10 18:38:34.850162'),(16,'auth','0011_update_proxy_permissions','2023-09-10 18:38:34.862659'),(17,'auth','0012_alter_user_first_name_max_length','2023-09-10 18:38:34.919564'),(18,'sessions','0001_initial','2023-09-10 18:38:34.955047'),(19,'sust_book_portal','0001_initial','2023-09-10 18:38:35.109251'),(20,'sust_book_portal','0002_teacher','2023-09-10 18:38:35.202874'),(21,'sust_book_portal','0003_archived_books','2023-09-10 18:38:35.319421');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sust_book_portal_archived_books`
--

DROP TABLE IF EXISTS `sust_book_portal_archived_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sust_book_portal_archived_books` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `cover_image` varchar(100) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `department_id` bigint NOT NULL,
  `semester_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sust_book_portal_arc_department_id_0d3b0212_fk_sust_book` (`department_id`),
  KEY `sust_book_portal_arc_semester_id_9c635188_fk_sust_book` (`semester_id`),
  CONSTRAINT `sust_book_portal_arc_department_id_0d3b0212_fk_sust_book` FOREIGN KEY (`department_id`) REFERENCES `sust_book_portal_department` (`id`),
  CONSTRAINT `sust_book_portal_arc_semester_id_9c635188_fk_sust_book` FOREIGN KEY (`semester_id`) REFERENCES `sust_book_portal_semester` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sust_book_portal_archived_books`
--

LOCK TABLES `sust_book_portal_archived_books` WRITE;
/*!40000 ALTER TABLE `sust_book_portal_archived_books` DISABLE KEYS */;
INSERT INTO `sust_book_portal_archived_books` VALUES (1,'Database System Concepts - 7th Edition','Kenneth H. Rosen','book_covers/Database_System_Concepts_-_7th_Edition.png','https://drive.google.com/file/d/1jvTQvlrvj-ZpeCH6fXRU6jO13NJpiQvc/view?usp=drive_link','book_files/Database_System_Concepts_-_7th_Edition.pdf',1,3);
/*!40000 ALTER TABLE `sust_book_portal_archived_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sust_book_portal_book`
--

DROP TABLE IF EXISTS `sust_book_portal_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sust_book_portal_book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `cover_image` varchar(100) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `department_id` bigint NOT NULL,
  `semester_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sust_book_portal_boo_department_id_6f236767_fk_sust_book` (`department_id`),
  KEY `sust_book_portal_boo_semester_id_e042744f_fk_sust_book` (`semester_id`),
  CONSTRAINT `sust_book_portal_boo_department_id_6f236767_fk_sust_book` FOREIGN KEY (`department_id`) REFERENCES `sust_book_portal_department` (`id`),
  CONSTRAINT `sust_book_portal_boo_semester_id_e042744f_fk_sust_book` FOREIGN KEY (`semester_id`) REFERENCES `sust_book_portal_semester` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sust_book_portal_book`
--

LOCK TABLES `sust_book_portal_book` WRITE;
/*!40000 ALTER TABLE `sust_book_portal_book` DISABLE KEYS */;
INSERT INTO `sust_book_portal_book` VALUES (1,'Data Communications and Networking - 5th edition - Behrouz A Forouzan','Behrouz A Forouzan','book_covers/Data_Communications_and_Networking_-_5th_edition_-_Behrouz_A_Forouzan.png','https://drive.google.com/file/d/1W6gnU-YG5vAGWN8cPYTvINQSeXnGuqw4/view?usp=drive_link','book_files/Data_Communications_and_Networking_-_5th_edition_-_Behrouz_A_Forouzan.pdf',1,3),(2,'programming with C - 2nd edition','BYRON S. GOTTFRIED, Ph.D.','book_covers/programming_with_C_-_2nd_edition.jpeg','https://drive.google.com/file/d/1mMfMk57omRBZ5FH2jFWpq4znHZGOFGOD/view?usp=drive_link','book_files/programming_with_C_-_2nd_edition.pdf',1,1),(3,'Fundamentals of Electric Circuits - 6th Edition','Abraham Silberschatz\\nHenry F. Korth\\nS. Sudarshan','book_covers/Fundamentals_of_Electric_Circuits_-_6th_Edition.png','https://drive.google.com/file/d/1xCqmhyALKcl_v9AwVUJZ276IF55c3qUj/view?usp=drive_link','book_files/Fundamentals_of_Electric_Circuits_-_6th_Edition.pdf',1,1),(5,'Database System Concepts - 7th Edition','Kenneth H. Rosen','book_covers/Database_System_Concepts_-_7th_Edition_5YIa0jx.png','https://drive.google.com/file/d/1jvTQvlrvj-ZpeCH6fXRU6jO13NJpiQvc/view?usp=drive_link','book_files/Database_System_Concepts_-_7th_Edition_dMNMfhd.pdf',2,4);
/*!40000 ALTER TABLE `sust_book_portal_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sust_book_portal_department`
--

DROP TABLE IF EXISTS `sust_book_portal_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sust_book_portal_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sust_book_portal_department`
--

LOCK TABLES `sust_book_portal_department` WRITE;
/*!40000 ALTER TABLE `sust_book_portal_department` DISABLE KEYS */;
INSERT INTO `sust_book_portal_department` VALUES (1,'Computer Science And Engineering','Applied Science & Technology'),(2,'Software Engineering','Applied Science & Technology'),(3,'Electrical And Electronics Engineering','Applied Science & Technology'),(4,'Mechanical Engineering','Applied Science & Technology'),(5,'Food Engineering & Tea Technology','Applied Science & Technology'),(6,'Chemical Engineering And Polymar Science','Applied Science & Technology');
/*!40000 ALTER TABLE `sust_book_portal_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sust_book_portal_semester`
--

DROP TABLE IF EXISTS `sust_book_portal_semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sust_book_portal_semester` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `number` smallint unsigned NOT NULL,
  `department_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sust_book_portal_semester_number_department_id_bb09c212_uniq` (`number`,`department_id`),
  KEY `sust_book_portal_sem_department_id_2db11fc8_fk_sust_book` (`department_id`),
  CONSTRAINT `sust_book_portal_sem_department_id_2db11fc8_fk_sust_book` FOREIGN KEY (`department_id`) REFERENCES `sust_book_portal_department` (`id`),
  CONSTRAINT `sust_book_portal_semester_chk_1` CHECK ((`number` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sust_book_portal_semester`
--

LOCK TABLES `sust_book_portal_semester` WRITE;
/*!40000 ALTER TABLE `sust_book_portal_semester` DISABLE KEYS */;
INSERT INTO `sust_book_portal_semester` VALUES (1,1,1),(4,1,2),(2,2,1),(3,5,1);
/*!40000 ALTER TABLE `sust_book_portal_semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sust_book_portal_teacher`
--

DROP TABLE IF EXISTS `sust_book_portal_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sust_book_portal_teacher` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `sust_book_portal_tea_department_id_d0d541a7_fk_sust_book` (`department_id`),
  CONSTRAINT `sust_book_portal_tea_department_id_d0d541a7_fk_sust_book` FOREIGN KEY (`department_id`) REFERENCES `sust_book_portal_department` (`id`),
  CONSTRAINT `sust_book_portal_teacher_user_id_7fc3146c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sust_book_portal_teacher`
--

LOCK TABLES `sust_book_portal_teacher` WRITE;
/*!40000 ALTER TABLE `sust_book_portal_teacher` DISABLE KEYS */;
INSERT INTO `sust_book_portal_teacher` VALUES (1,1,2);
/*!40000 ALTER TABLE `sust_book_portal_teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06 18:45:45
