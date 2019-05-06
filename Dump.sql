-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: fall2018pratikashani.cgo9slta6qjw.us-east-2.rds.amazonaws.com    Database: erp_system
-- ------------------------------------------------------
-- Server version	5.7.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Temporary table structure for view `BasicEmployeeInformation`
--

DROP TABLE IF EXISTS `BasicEmployeeInformation`;
/*!50001 DROP VIEW IF EXISTS `BasicEmployeeInformation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `BasicEmployeeInformation` AS SELECT 
 1 AS `Employee ID`,
 1 AS `Employee Name`,
 1 AS `Job Title`,
 1 AS `Manger Name`,
 1 AS `Shop Location`,
 1 AS `Base Salary per Month`,
 1 AS `Total Annual Salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CentralSalary`
--

DROP TABLE IF EXISTS `CentralSalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CentralSalary` (
  `year` int(4) NOT NULL,
  `available_funds` float(10,2) NOT NULL,
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CentralSalary`
--

LOCK TABLES `CentralSalary` WRITE;
/*!40000 ALTER TABLE `CentralSalary` DISABLE KEYS */;
INSERT INTO `CentralSalary` VALUES (2016,500000.22),(2017,15000001.00),(2018,49549960.00);
/*!40000 ALTER TABLE `CentralSalary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `CheckShopInventory`
--

DROP TABLE IF EXISTS `CheckShopInventory`;
/*!50001 DROP VIEW IF EXISTS `CheckShopInventory`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `CheckShopInventory` AS SELECT 
 1 AS `shop_id`,
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `product_manufacturer`,
 1 AS `product_type`,
 1 AS `product_quantity`,
 1 AS `unit_price`,
 1 AS `si.product_quantity*si.unit_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `telephone_number1` varchar(10) NOT NULL,
  `telephone_number2` varchar(10) DEFAULT NULL,
  `email_id` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `MobileNumber` (`telephone_number1`),
  KEY `EmailID` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10031 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (10001,'79','Floyd','1335744987','1742613947','claytonfloyd@gmail.com'),(10002,'Cristina','Moss','1340799140','1569589810','cristinamoss@gmail.com'),(10003,'Ada','Perkins','1772872939','1872844562','adaperkins@gmail.com'),(10004,'Kristina','Reyes','1956555376','1738416058','kristinareyes@gmail.com'),(10005,'Connie','Gibson','1565842899','1430587464','conniegibson@gmail.com'),(10006,'Lance','Fox','1845876132','1577688612','lancefox@gmail.com'),(10007,'Valerie','May','1354478427','1747808301','valeriemay@gmail.com'),(10008,'Alexander','Herrera','1443835993','1729549387','alexanderherrera@gmail.com'),(10009,'Ella','Washington','1321641587','1856544934','ellawashington@gmail.com'),(10010,'Maggie','Stewart','1246894311','1505745538','maggiestewart@gmail.com'),(10011,'Sherri','Howard','1814736507','1478540652','sherrihoward@gmail.com'),(10012,'Eddie','Ingram','1450985240','1232428550','eddieingram@gmail.com'),(10013,'Charles','Roy','1715465783','1355738023','charlesroy@gmail.com'),(10014,'Denise','Norman','1429980547','1362216842','denisenorman@gmail.com'),(10015,'Tomas','Dunn','1346409197','1579453648','tomasdunn@gmail.com'),(10016,'Mona','Conner','1499209593','1479270224','monaconner@gmail.com'),(10017,'250','Torres','1788289133','1411782834','erikatorres@gmail.com'),(10018,'Marta','Schneider','1769872529','1877917182','martaschneider@gmail.com'),(10019,'Alberta','Page','1918706327','1996882887','albertapage@gmail.com'),(10020,'Patti','Glover','1963920613','1459646284','pattiglover@gmail.com'),(10021,'Johnny','Townsend','1208749714','1872448127','johnnytownsend@gmail.com'),(10022,'Wayne','Burke','1848360717','1530655673','wayneburke@gmail.com'),(10023,'Lindsay','Fields','1927673298','1481426599','lindsayfields@gmail.com'),(10024,'Pauline','Patton','1504767750','1819822408','paulinepatton@gmail.com'),(10025,'Rachael','Taylor','1664886173','1709758985','rachaeltaylor@gmail.com'),(10026,'Lena','Gill','1285704924','1860688156','lenagill@gmail.com'),(10027,'Alfred','Frazier','1216252503','1397661958','alfredfrazier@gmail.com'),(10028,'Jesse','Ross','1974579367','1750819840','jesseross@gmail.com'),(10029,'Byron','Thomas','1450307641','1672267922','byronthomas@gmail.com'),(10030,'Kay','Hanson','1567697062','1222252964','kayhanson@gmail.com');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerFeedback`
--

DROP TABLE IF EXISTS `CustomerFeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomerFeedback` (
  `feedback_id` int(100) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `feedback_text` text NOT NULL,
  `feedback_date` date NOT NULL,
  `feedback_time` time NOT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `customer_id` (`customer_id`),
  KEY `shop_id` (`shop_id`),
  KEY `FeedbackDate` (`feedback_date`),
  CONSTRAINT `CustomerFeedback_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  CONSTRAINT `CustomerFeedback_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `Shop` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerFeedback`
--

LOCK TABLES `CustomerFeedback` WRITE;
/*!40000 ALTER TABLE `CustomerFeedback` DISABLE KEYS */;
INSERT INTO `CustomerFeedback` VALUES (1,10021,4,'Good and prompt service.','2018-08-23','12:41:00'),(2,10013,4,'Employee helped me.','2018-08-24','09:06:00'),(3,10008,4,'Good and prompt service.','2018-08-25','05:16:00'),(4,10015,4,'Bad Experience. Employee was rude','2018-08-26','11:21:00'),(5,10022,4,'Employee helped me.','2018-08-27','04:48:00'),(6,10028,4,'Employee was polite.','2018-08-28','02:04:00'),(7,10023,4,'Quick service','2018-08-29','04:26:00'),(8,10018,4,'Good and prompt service.','2018-08-30','11:43:00'),(9,10022,4,'Quick service','2018-08-31','10:43:00'),(10,10006,4,'Employee was polite.','2018-09-01','04:39:00'),(11,10017,4,'Quick service','2018-09-02','08:46:00'),(12,10018,4,'Employee helped me.','2018-09-03','03:23:00'),(13,10018,4,'Good and prompt service.','2018-09-04','10:33:00'),(14,10019,5,'Employee helped me.','2018-09-05','04:11:00'),(15,10016,5,'Employee was polite.','2018-09-06','08:05:00'),(16,10021,5,'Employee helped me.','2018-09-07','09:34:00'),(17,10024,5,'Good and prompt service.','2018-09-08','07:01:00'),(18,10022,5,'Good and prompt service.','2018-09-09','10:00:00'),(19,10023,5,'Employee helped me.','2018-09-10','05:44:00'),(20,10024,5,'Good and prompt service.','2018-09-11','06:34:00'),(21,10023,5,'Employee helped me.','2018-09-12','02:25:00'),(22,10012,5,'Quick service. Got all medicines','2018-09-13','03:24:00'),(23,10020,5,'Employee helped me.','2018-09-14','11:37:00'),(24,10004,5,'Employee was polite.','2018-09-15','07:55:00'),(25,10020,5,'Quick service','2018-09-16','12:02:00'),(26,10026,5,'Quick service','2018-09-17','08:55:00'),(27,10019,5,'Quick service','2018-09-18','05:32:00'),(28,10009,5,'Good and prompt service.','2018-09-19','09:05:00'),(29,10019,6,'Employee was polite.','2018-09-20','04:04:00'),(30,10017,6,'Employee was polite.','2018-09-21','01:28:00'),(31,10017,6,'Quick service. Got all medicines','2018-09-22','01:28:00'),(32,10010,6,'Employee helped me.','2018-09-23','11:06:00'),(33,10025,6,'Employee helped me.','2018-09-24','03:54:00'),(34,10011,6,'Quick service. Got all medicines','2018-09-25','12:36:00'),(35,10024,6,'Quick service. Got all medicines','2018-09-26','05:51:00'),(36,10001,6,'Employee helped me.','2018-09-27','12:48:00'),(37,10022,7,'Quick service','2018-09-28','11:57:00'),(38,10020,7,'Employee was polite.','2018-09-29','09:52:00'),(39,10019,7,'Quick service','2018-09-30','11:46:00'),(40,10017,7,'Employee was rude.','2018-10-01','07:35:00'),(41,10020,7,'Employee was polite.','2018-10-02','12:53:00'),(42,10014,7,'Quick service','2018-10-03','09:50:00'),(43,10003,7,'Employee was rude.','2018-10-04','04:22:00'),(44,10018,7,'Good and prompt service.','2018-10-05','09:21:00'),(45,10007,7,'Good and prompt service.','2018-10-06','10:06:00'),(46,10027,8,'Employee was rude.','2018-10-07','11:13:00'),(47,10005,8,'Employee was rude.','2018-10-08','07:30:00'),(48,10002,8,'Employee was rude.','2018-10-09','08:52:00'),(49,10023,8,'Employee was rude.','2018-10-10','07:17:00'),(50,10007,6,'Employee was polite.','2018-10-11','07:06:55'),(51,10007,8,'Employee was polite.','2018-10-23','17:55:51'),(52,10007,8,'Employee was polite.','2018-10-23','17:59:10'),(53,10007,8,'Good and prompt service.','2018-10-23','02:34:33'),(54,10021,5,'Awesome','2018-11-09','20:18:00'),(55,10007,4,'Awesome Experience','2018-11-14','18:04:06');
/*!40000 ALTER TABLE `CustomerFeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerPurchaseHistory`
--

DROP TABLE IF EXISTS `CustomerPurchaseHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomerPurchaseHistory` (
  `purchase_id` int(100) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `product_id` int(100) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `sold_by` int(10) DEFAULT NULL,
  `purchase_time` time NOT NULL,
  `purchase_date` date NOT NULL,
  `quantity` int(100) NOT NULL,
  PRIMARY KEY (`purchase_id`,`customer_id`,`product_id`,`shop_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  KEY `shop_id` (`shop_id`),
  KEY `sold_by` (`sold_by`),
  KEY `PurchaseDate` (`purchase_date`),
  CONSTRAINT `CustomerPurchaseHistory_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  CONSTRAINT `CustomerPurchaseHistory_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `DrugDetail` (`product_id`),
  CONSTRAINT `CustomerPurchaseHistory_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `Shop` (`shop_id`),
  CONSTRAINT `CustomerPurchaseHistory_ibfk_4` FOREIGN KEY (`sold_by`) REFERENCES `Employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerPurchaseHistory`
--

LOCK TABLES `CustomerPurchaseHistory` WRITE;
/*!40000 ALTER TABLE `CustomerPurchaseHistory` DISABLE KEYS */;
INSERT INTO `CustomerPurchaseHistory` VALUES (1,10021,10,4,1018,'12:41:00','2018-08-10',10),(2,10013,11,4,1019,'09:06:00','2018-08-10',3),(3,10008,12,4,1020,'05:16:00','2018-08-10',4),(4,10015,13,4,1021,'11:21:00','2018-08-10',5),(5,10022,14,4,1022,'04:48:00','2018-08-10',2),(6,10028,15,4,1006,'02:04:00','2018-08-10',2),(7,10023,16,4,1007,'04:26:00','2018-08-10',4),(8,10018,17,4,1008,'11:43:00','2018-08-10',4),(9,10022,18,4,1009,'10:43:00','2018-08-10',1),(10,10006,19,4,1010,'04:39:00','2018-08-10',1),(11,10017,20,4,1011,'08:46:00','2018-08-10',1),(12,10018,21,4,1012,'03:23:00','2018-08-10',3),(13,10018,22,4,1013,'10:33:00','2018-08-10',4),(14,10019,23,5,1014,'04:11:00','2018-08-10',2),(15,10016,24,5,1015,'08:05:00','2018-08-10',5),(16,10021,25,5,1016,'09:34:00','2018-08-10',3),(17,10024,26,5,1017,'07:01:00','2018-08-10',3),(18,10022,27,5,1018,'10:00:00','2018-08-10',1),(19,10023,28,5,1019,'05:44:00','2018-08-10',3),(20,10024,29,5,1020,'06:34:00','2018-08-10',4),(21,10023,30,5,1021,'02:25:00','2018-08-10',2),(22,10012,31,5,1022,'03:24:00','2018-08-10',3),(23,10020,32,5,1023,'11:37:00','2018-08-10',5),(24,10004,33,5,1024,'07:55:00','2018-08-10',3),(25,10020,34,5,1025,'12:02:00','2018-08-10',1),(26,10026,35,5,1003,'08:55:00','2018-08-10',3),(27,10019,36,5,1004,'05:32:00','2018-08-10',2),(28,10009,37,5,1005,'09:05:00','2018-08-10',1),(29,10019,38,6,1006,'04:04:00','2018-08-10',1),(30,10017,39,6,1007,'01:28:00','2018-08-10',1),(31,10021,40,6,1008,'03:30:00','2018-08-10',5),(32,10010,41,6,1009,'11:06:00','2018-08-10',1),(33,10025,42,6,1010,'03:54:00','2018-08-10',5),(34,10011,43,6,1011,'12:36:00','2018-08-10',3),(35,10024,44,6,1012,'05:51:00','2018-08-10',4),(36,10001,45,6,1013,'12:48:00','2018-08-10',2),(38,10022,47,7,1015,'11:57:00','2018-08-10',3),(39,10020,48,7,1016,'09:52:00','2018-08-10',1),(40,10019,49,7,1017,'11:46:00','2018-08-10',2),(41,10017,50,7,1018,'07:35:00','2018-08-10',5),(42,10020,51,7,1019,'12:53:00','2018-08-10',4),(43,10014,52,7,1020,'09:50:00','2018-08-10',5),(44,10003,53,7,1021,'04:22:00','2018-08-10',5),(45,10018,54,7,1022,'09:21:00','2018-08-10',1),(46,10007,55,7,1013,'10:06:00','2018-08-10',4),(47,10027,56,8,1014,'11:13:00','2018-08-10',3),(48,10005,57,8,1015,'07:30:00','2018-08-10',4),(49,10002,58,8,1016,'08:52:00','2018-08-10',4),(50,10023,59,8,1017,'07:17:00','2018-08-10',4),(51,10007,55,7,1015,'10:06:55','2018-10-10',7),(53,10007,56,8,1015,'17:55:51','2018-10-23',8),(54,10007,56,8,1015,'17:59:10','2018-10-23',8),(55,10007,58,8,1015,'02:34:33','2018-10-24',8),(62,10007,14,4,1015,'04:30:14','2018-11-11',2),(63,10007,14,4,1015,'04:30:14','2018-11-11',2),(64,10021,14,4,1015,'04:32:36','2018-11-11',3),(65,10021,14,4,1015,'04:34:21','2018-11-11',1),(66,10007,14,4,1015,'04:36:30','2018-11-11',1),(67,10007,14,4,1015,'22:06:49','2018-11-12',1),(68,10007,14,4,1015,'04:50:26','2018-12-02',1);
/*!40000 ALTER TABLE `CustomerPurchaseHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctor` (
  `doctor_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `clinic_name` varchar(255) NOT NULL,
  `doctor_speciality` varchar(100) NOT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `FirstName` (`first_name`),
  KEY `LastName` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES (1001,'Noah','Noah@gmail.com','Garner',' Pediatric Health Clinic Services','Emergency Medicine Specialists'),(1002,'Karen','Karen@gmail.com','Francis',' Dental Clinic Services','Immunologists'),(1003,'Rosemarie','Rosemarie@gmail.com','Frank',' Medical Clinic Services','Anesthesiologists'),(1004,'Wanda','Wanda@gmail.com','Logan',' Adult Health Clinic Services','Cardiologists'),(1005,'Margarita','Margarita@gmail.com','Griffith',' Medical Clinic Services','Dermatologists'),(1006,'Oliver','Oliver@gmail.com','Newman',' Medical Clinic Services','Endocrinologists'),(1007,'Devin','Devin@gmail.com','Moody',' Behavioral Health Clinic Services','Dentist'),(1008,'Derrick','Derrick@gmail.com','Hunt',' Medical Clinic Services','Anesthesiologists'),(1009,'Brandy','Brandy@gmail.com','Owen',' Medical Clinic Services','Family Physicians'),(1010,'Tomas','Tomas@gmail.com','Hunter',' Medical Clinic Services','Endocrinologists'),(1011,'Ed','Ed@gmail.com','Brewer',' Women\'s Health Clinic Services','Immunologists'),(1012,'Willard','Willard@gmail.com','Day',' Medical Clinic Services','Anesthesiologists'),(1013,'Erma','Erma@gmail.com','Sherman',' Medical Clinic Services','Allergists'),(1014,'Terence','Terence@gmail.com','Lloyd',' Dental Clinic Services','Colon and Rectal Surgeons'),(1015,'Kate','Kate@gmail.com','Swanson',' Pediatric Health Clinic Services','Dentist'),(1016,'Danielle','Danielle@gmail.com','Vaughn',' Dental Clinic Services','Immunologists'),(1017,'Candice','Candice@gmail.com','Bennett',' Medical Clinic Services','Dentist'),(1018,'Valerie','Valerie@gmail.com','Carr',' Adult Health Clinic Services','Colon and Rectal Surgeons'),(1019,'Megan','Megan@gmail.com','Wong',' Medical Clinic Services','Colon and Rectal Surgeons'),(1020,'Judy','Judy@gmail.com','Chambers',' Medical Clinic Services','Endocrinologists'),(1021,'Rodolfo','Rodolfo@gmail.com','Logan',' Behavioral Health Clinic Services','Endocrinologists'),(1022,'Mildred','Mildred@gmail.com','Wagner',' Medical Clinic Services','Family Physicians'),(1023,'Kelley','Kelley@gmail.com','Tucker',' Medical Clinic Services','Colon and Rectal Surgeons'),(1024,'Ira','Ira@gmail.com','Graham',' Medical Clinic Services','Cardiologists'),(1025,'Dexter','Dexter@gmail.com','Tyler',' Women\'s Health Clinic Services','Dentist'),(1026,'Bernice','Bernice@gmail.com','Page',' Medical Clinic Services','Endocrinologists'),(1027,'Duane','Duane@gmail.com','Herrera',' Medical Clinic Services','Allergists'),(1028,'Rodney','Rodney@gmail.com','Fisher',' Dental Clinic Services','Colon and Rectal Surgeons'),(1029,'Florence','Florence@gmail.com','Massey',' Pediatric Health Clinic Services','Dentist'),(1030,'Jesse','Jesse@gmail.com','Mitchell',' Dental Clinic Services','Cardiologists'),(1031,'Karen','Karen@gmail.com','Powell',' Medical Clinic Services','Emergency Medicine Specialists'),(1032,'Fannie','Fannie@gmail.com','Maldonado',' Adult Health Clinic Services','Anesthesiologists'),(1033,'Maxine','Maxine@gmail.com','Hicks',' Medical Clinic Services','Anesthesiologists'),(1034,'George','George@gmail.com','George',' Medical Clinic Services','Endocrinologists'),(1035,'Anita','Anita@gmail.com','Lamb',' Behavioral Health Clinic Services','Endocrinologists'),(1036,'Lucy','Lucy@gmail.com','Blake',' Medical Clinic Services','Endocrinologists'),(1037,'Debra','Debra@gmail.com','Lindsey',' Medical Clinic Services','Immunologists'),(1038,'Essie','Essie@gmail.com','Morales',' Medical Clinic Services','Endocrinologists'),(1039,'Freddie','Freddie@gmail.com','Morris',' Women\'s Health Clinic Services','Cardiologists'),(1040,'Erma','Erma@gmail.com','Farmer',' Medical Clinic Services','Emergency Medicine Specialists'),(1041,'Shawn','Shawn@gmail.com','Bishop',' Medical Clinic Services','Emergency Medicine Specialists'),(1042,'Joyce','Joyce@gmail.com','Drake',' Dental Clinic Services','Cardiologists'),(1043,'Carl','Carl@gmail.com','Poole',' Pediatric Health Clinic Services','Emergency Medicine Specialists'),(1044,'Laverne','Laverne@gmail.com','Munoz',' Dental Clinic Services','Dentist'),(1045,'Luis','Luis@gmail.com','Peterson',' Medical Clinic Services','Colon and Rectal Surgeons'),(1046,'Leonard','Leonard@gmail.com','Hampton',' Adult Health Clinic Services','Emergency Medicine Specialists'),(1047,'Jaime','Jaime@gmail.com','Perry',' Medical Clinic Services','Cardiologists'),(1048,'Maggie','Maggie@gmail.com','Luna',' Medical Clinic Services','Allergists'),(1049,'Kent','Kent@gmail.com','Robinson',' Behavioral Health Clinic Services','Dermatologists'),(1050,'Jessie','Jessie@gmail.com','Walker',' Medical Clinic Services','Dentist'),(1051,'Melvin','Melvin@gmail.com','Dunn',' Medical Clinic Services','Endocrinologists'),(1052,'Wendy','Wendy@gmail.com','Turner',' Medical Clinic Services','Cardiologists'),(1053,'Ana','Ana@gmail.com','Jenkins',' Women\'s Health Clinic Services','Family Physicians'),(1054,'Lorene','Lorene@gmail.com','Willis',' Medical Clinic Services','Family Physicians'),(1055,'Vickie','Vickie@gmail.com','Wood',' Medical Clinic Services','Endocrinologists'),(1056,'Saul','Saul@gmail.com','Neal',' Dental Clinic Services','Colon and Rectal Surgeons'),(1057,'Justin','Justin@gmail.com','Hanson',' Pediatric Health Clinic Services','Immunologists'),(1058,'Johnathan','Johnathan@gmail.com','Osborne',' Dental Clinic Services','Dermatologists'),(1059,'Cindy','Cindy@gmail.com','Singleton',' Medical Clinic Services','Colon and Rectal Surgeons'),(1060,'Fernando','Fernando@gmail.com','Brooks',' Adult Health Clinic Services','Allergists'),(1061,'Vivian','Vivian@gmail.com','Brady',' Medical Clinic Services','Dermatologists'),(1062,'Marlene','Marlene@gmail.com','Perkins',' Medical Clinic Services','Colon and Rectal Surgeons'),(1063,'Brian','Brian@gmail.com','Snyder',' Behavioral Health Clinic Services','Allergists'),(1064,'Molly','Molly@gmail.com','Carter',' Medical Clinic Services','Dermatologists'),(1065,'Julia','Julia@gmail.com','Young',' Medical Clinic Services','Anesthesiologists'),(1066,'Norman','Norman@gmail.com','Kim',' Medical Clinic Services','Cardiologists'),(1067,'Kristine','Kristine@gmail.com','Guerrero',' Women\'s Health Clinic Services','Immunologists'),(1068,'Cristina','Cristina@gmail.com','Schultz',' Medical Clinic Services','Family Physicians'),(1069,'Jimmy','Jimmy@gmail.com','Bass',' Medical Clinic Services','Anesthesiologists'),(1070,'Karl','Karl@gmail.com','Mcbride',' Dental Clinic Services','Family Physicians'),(1071,'Neal','Neal@gmail.com','Hansen',' Behavioral Health Clinic Services','Emergency Medicine Specialists'),(1072,'Chad','Chad@gmail.com','Harvey',' Medical Clinic Services','Emergency Medicine Specialists'),(1073,'Cesar','Cesar@gmail.com','Williams',' Medical Clinic Services','Cardiologists'),(1074,'Gustavo','Gustavo@gmail.com','Davidson',' Medical Clinic Services','Immunologists'),(1075,'Rufus','Rufus@gmail.com','Mullins',' Women\'s Health Clinic Services','Endocrinologists'),(1076,'Alicia','Alicia@gmail.com','Bell',' Medical Clinic Services','Anesthesiologists'),(1077,'Leslie','Leslie@gmail.com','Reeves',' Medical Clinic Services','Allergists'),(1078,'Rickey','Rickey@gmail.com','Hubbard',' Dental Clinic Services','Family Physicians'),(1079,'Darryl','Darryl@gmail.com','Rowe',' Pediatric Health Clinic Services','Dermatologists'),(1080,'Dominic','Dominic@gmail.com','Bennett',' Dental Clinic Services','Allergists'),(1081,'Angel','Angel@gmail.com','Colon',' Medical Clinic Services','Allergists'),(1082,'Henry','Henry@gmail.com','Lowe',' Adult Health Clinic Services','Dermatologists'),(1083,'Louise','Louise@gmail.com','Hunter',' Medical Clinic Services','Immunologists'),(1084,'Sidney','Sidney@gmail.com','Ferguson',' Medical Clinic Services','Dentist'),(1085,'Brooke','Brooke@gmail.com','Padilla',' Behavioral Health Clinic Services','Allergists'),(1086,'Crystal','Crystal@gmail.com','Simpson',' Medical Clinic Services','Colon and Rectal Surgeons'),(1087,'Katherine','Katherine@gmail.com','Swanson',' Medical Clinic Services','Dentist'),(1088,'Christian','Christian@gmail.com','Holland',' Medical Clinic Services','Immunologists'),(1089,'Angie','Angie@gmail.com','Abbott',' Women\'s Health Clinic Services','Endocrinologists'),(1090,'Raul','Raul@gmail.com','Grant',' Medical Clinic Services','Family Physicians'),(1091,'Madeline','Madeline@gmail.com','Larson',' Medical Clinic Services','Endocrinologists'),(1092,'Kenneth','Kenneth@gmail.com','Mcgee',' Dental Clinic Services','Colon and Rectal Surgeons'),(1093,'Elbert','Elbert@gmail.com','Patton',' Pediatric Health Clinic Services','Anesthesiologists'),(1094,'Sharon','Sharon@gmail.com','Curtis',' Dental Clinic Services','Endocrinologists'),(1095,'Randy','Randy@gmail.com','Watts',' Medical Clinic Services','Dentist'),(1096,'Colleen','Colleen@gmail.com','Frazier',' Adult Health Clinic Services','Cardiologists'),(1097,'Marguerite','Marguerite@gmail.com','White',' Medical Clinic Services','Immunologists'),(1098,'Joel','Joel@gmail.com','Gonzales',' Medical Clinic Services','Family Physicians'),(1099,'Marty','Marty@gmail.com','Joseph',' Behavioral Health Clinic Services','Family Physicians'),(1100,'Mario','Mario@gmail.com','Norton',' Medical Clinic Services','Dermatologists'),(1101,'Ella','Ella@gmail.com','Adkins',' Medical Clinic Services','Dentist'),(1102,'Rachael','Rachael@gmail.com','Lane',' Medical Clinic Services','Colon and Rectal Surgeons'),(1103,'Sophie','Sophie@gmail.com','Price',' Women\'s Health Clinic Services','Family Physicians'),(1104,'Arturo','Arturo@gmail.com','Wong',' Medical Clinic Services','Anesthesiologists'),(1105,'Kristopher','Kristopher@gmail.com','Rodgers',' Medical Clinic Services','Colon and Rectal Surgeons'),(1106,'Alyssa','Alyssa@gmail.com','Walton',' Dental Clinic Services','Anesthesiologists'),(1107,'Salvador','Salvador@gmail.com','Vega',' Behavioral Health Clinic Services','Dentist'),(1108,'Leland','Leland@gmail.com','Hudson',' Medical Clinic Services','Allergists'),(1109,'Darren','Darren@gmail.com','Tate',' Medical Clinic Services','Emergency Medicine Specialists'),(1110,'Orlando','Orlando@gmail.com','Sandoval',' Medical Clinic Services','Emergency Medicine Specialists'),(1111,'Dexter','Dexter@gmail.com','Burns',' Women\'s Health Clinic Services','Immunologists'),(1112,'Marlon','Marlon@gmail.com','Welch',' Medical Clinic Services','Dentist'),(1113,'Tommy','Tommy@gmail.com','Allison',' Medical Clinic Services','Endocrinologists'),(1114,'Mabel','Mabel@gmail.com','Mcdaniel',' Dental Clinic Services','Dentist'),(1115,'Zachary','Zachary@gmail.com','Leonard',' Pediatric Health Clinic Services','Immunologists'),(1116,'Fred','Fred@gmail.com','Norman',' Dental Clinic Services','Endocrinologists'),(1117,'Bobbie','Bobbie@gmail.com','Phelps',' Medical Clinic Services','Dentist'),(1118,'Shari','Shari@gmail.com','Pope',' Adult Health Clinic Services','Emergency Medicine Specialists'),(1119,'Floyd','Floyd@gmail.com','Allen',' Medical Clinic Services','Allergists'),(1120,'Mary','Mary@gmail.com','Mclaughlin',' Medical Clinic Services','Cardiologists'),(1121,'Doris','Doris@gmail.com','Barber',' Behavioral Health Clinic Services','Dentist'),(1122,'Gwen','Gwen@gmail.com','Morgan',' Medical Clinic Services','Dermatologists'),(1123,'Santos','Santos@gmail.com','Reyes',' Medical Clinic Services','Family Physicians'),(1124,'Darnell','Darnell@gmail.com','Little',' Medical Clinic Services','Immunologists'),(1125,'Eva','Eva@gmail.com','Lopez',' Women\'s Health Clinic Services','Allergists'),(1126,'Jana','Jana@gmail.com','Fox',' Medical Clinic Services','Family Physicians'),(1127,'Shawna','Shawna@gmail.com','Kelley',' Medical Clinic Services','Emergency Medicine Specialists'),(1128,'Hubert','Hubert@gmail.com','Herrera',' Dental Clinic Services','Dentist'),(1129,'Francis','Francis@gmail.com','Baldwin',' Pediatric Health Clinic Services','Dermatologists'),(1130,'Mattie','Mattie@gmail.com','Parsons',' Dental Clinic Services','Anesthesiologists');
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DrugDetail`
--

DROP TABLE IF EXISTS `DrugDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DrugDetail` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_manufacturer` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `ProductName` (`product_name`),
  KEY `Manufacturer` (`product_manufacturer`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DrugDetail`
--

LOCK TABLES `DrugDetail` WRITE;
/*!40000 ALTER TABLE `DrugDetail` DISABLE KEYS */;
INSERT INTO `DrugDetail` VALUES (10,'Atorvastatin Calcium','Johnson & Johnson','Drops'),(11,'Levothyroxine','Novartis','Suppositories'),(12,'Lisinopril','Sanofi','Drops'),(13,'Omeprazole','Novartis','Tablet'),(14,'Metformin HCL','Roche','medical equipments'),(15,'Amlodipine/Benazepril','Johnson & Johnson','Injections'),(16,'Simvastatin','Roche','Drops'),(17,'Hydrocodone/Acetaminophen','Merck & Co','Injections'),(18,'Metoprolol Succinate','Novartis','Drops'),(19,'Losartan Potassium','Roche','Drops'),(20,'Zolpidem Tartrate','Roche','Tablet'),(21,'Azithromycin','Novartis','Injections'),(22,'Hydrochlorothiazide','Sanofi','Drops'),(23,'Furosemide','Novartis','Suppositories'),(24,'Metoprolol Tartrate','Sanofi','Inhalers'),(25,'Pantoprazole','Sanofi','Capsules'),(26,'Gabapentin','Roche','Tablet'),(27,'Amoxicillin','Sanofi','Capsules'),(28,'Prednisone','Roche','Injections'),(29,'Sertraline','Roche','Drops'),(30,'Tamsulosin','Novartis','Suppositories'),(31,'Fluticasone','Sanofi','Injections'),(32,'Pravastatin','Johnson & Johnson','Tablet'),(33,'Tramadol HCL','Roche','Inhalers'),(34,'Montelukast','Sanofi','Tablet'),(35,'Escitalopram','Merck & Co','Capsules'),(36,'Carvedilol','Merck & Co','medical equipments'),(37,'Alprazolam','Roche','medical equipments'),(38,'Warfarin','Sanofi','Capsules'),(39,'Meloxicam','Roche','Capsules'),(40,'Clopidogrel','Novartis','Capsules'),(41,'Allopurinol','Johnson & Johnson','Drops'),(42,'Bupropion HCL','Roche','Suppositories'),(43,'Lisinopril/Hydrochlorothiazide','Johnson & Johnson','Drops'),(44,'Citalopram','Roche','Inhalers'),(45,'Atenolol','Johnson & Johnson','Drops'),(46,'Cialis','Novartis','Suppositories'),(47,'Duloxetine','Sanofi','Drops'),(48,'Fluoxetine','Roche','Drops'),(49,'Fenofibrate','Novartis','Topical medicines'),(50,'Crestor','Sanofi','medical equipments'),(51,'Venlafaxine','Novartis','medical equipments'),(52,'Ventolin HFA','Sanofi','Capsules'),(53,'Amphetamine/Dextroamphetamine','Johnson & Johnson','Injections'),(54,'Cyclobenzaprine','Roche','Injections'),(55,'Trazodone HCL','Johnson & Johnson','Injections'),(56,'Methylprednisolone','Novartis','Tablet'),(57,'Lantus Solostar','Novartis','Drops'),(58,'Advair Diskus','Johnson & Johnson','medical equipments'),(59,'Potassium Chloride','Roche','Capsules'),(60,'Glimepiride','Sanofi','Tablet'),(61,'Levofloxacin','Johnson & Johnson','Topical medicines'),(62,'Oxycodone/Acetaminophen','Roche','Capsules'),(63,'Sulfamethoxazole/Trimethoprim','Roche','Tablet'),(64,'Celecoxib','Roche','Topical medicines'),(65,'Cephalexin','Merck & Co','Inhalers'),(66,'Clonazepam','Johnson & Johnson','Topical medicines'),(67,'Ciprofloxacin','Sanofi','medical equipments'),(68,'Valsartan/Hydrochlorothiazide','Roche','medical equipments'),(69,'Acetaminophen','Merck & Co','medical equipments'),(70,'Esomeprazole','Novartis','medical equipments'),(71,'Viagra','Johnson & Johnson','Suppositories'),(72,'Amlodipine Benazepril','Merck & Co','Tablet'),(73,'Triamterene/Hydrochlorothiazide','Sanofi','Suppositories'),(74,'Spironolactone','Merck & Co','Inhalers'),(75,'Ibuprofen','Roche','Tablet'),(76,'Synthroid','Novartis','Injections'),(77,'Zetia','Johnson & Johnson','medical equipments'),(78,'Proair HFA','Merck & Co','Capsules'),(79,'Lorazepam','Sanofi','Inhalers'),(80,'Ranitidine','Novartis','Inhalers'),(81,'Lantus','Johnson & Johnson','Suppositories'),(82,'Lansoprazole','Johnson & Johnson','Topical medicines'),(83,'Januvia','Merck & Co','Inhalers'),(84,'Finasteride','Sanofi','Suppositories');
/*!40000 ALTER TABLE `DrugDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `ssn` int(9) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `telephone_number1` int(10) NOT NULL,
  `telephone_number2` int(10) NOT NULL,
  `email_id` varchar(25) NOT NULL,
  `start_date` date DEFAULT NULL,
  `position` varchar(15) NOT NULL,
  `reports_to` int(10) DEFAULT NULL,
  `work_location` int(10) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `work_location` (`work_location`),
  KEY `reports_to` (`reports_to`),
  KEY `FirstName` (`first_name`),
  KEY `LastName` (`last_name`),
  KEY `StartDate` (`start_date`),
  KEY `Position` (`position`),
  CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`reports_to`) REFERENCES `Employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1027 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1001,608967719,'PENELOPE','GUINESS',2147483647,2147483647,'PGUINESS@outlook.com','2018-07-06','CEO',1001,4),(1002,201431298,'NICK','WAHLBERG',2147483647,2147483647,'NIWAHLBERG@outlook.com','2018-07-06','Manager',1001,4),(1003,570648303,'ED','CHASE',2147483647,2147483647,'ECHASE@outlook.com','2018-07-06','Manager',1001,5),(1004,858617783,'JENNIFER','DAVIS',2147483647,2147483647,'JENDAVIS@outlook.com','0000-00-00','Manager',1001,6),(1005,760616538,'JOHNNY','LOLLOBRIGIDA',2147483647,2147483647,'JOLOLLOBRI@outlook.com','0000-00-00','Manager',1001,7),(1006,609373333,'BETTE','NICHOLSON',2147483647,2147483647,'BNICHOLSON@outlook.com','2039-09-04','Manager',1001,8),(1007,401465643,'GRACE','MOSTEL',2147483647,2147483647,'GMOSTEL@outlook.com','0000-00-00','salesperson',1003,5),(1008,785347180,'ALEC','WAYNE',2147483647,2147483647,'AWAYNE@outlook.com','2039-09-07','salesperson',1002,5),(1009,2147483647,'SANDRA','PECK',2147483647,2147483647,'SAPECK@outlook.com','0000-00-00','salesperson',1003,5),(1010,386248411,'SISSY','SOBIESKI',2147483647,2147483647,'SSOBIESKI@outlook.com','0000-00-00','salesperson',1004,5),(1011,202646751,'TIM','HACKMAN',2147483647,2147483647,'TIHACKMAN@outlook.com','2039-12-03','salesperson',1002,5),(1012,415423329,'MILLA','PECK',2147483647,2147483647,'MILPECK@outlook.com','0000-00-00','salesperson',1005,5),(1013,208709123,'AUDREY','OLIVIER',2147483647,2147483647,'AOLIVIER@outlook.com','0000-00-00','salesperson',1004,5),(1014,574499145,'JUDY','DEAN',2147483647,2147483647,'JUDEAN@outlook.com','2039-07-00','salesperson',1003,6),(1015,308726218,'BURT','DUKAKIS',2147483647,2147483647,'BDUKAKIS@outlook.com','2039-07-06','salesperson',1004,6),(1016,206711649,'VAL','BOLGER',2147483647,2147483647,'VABOLGER@outlook.com','2039-11-01','salesperson',1005,6),(1017,407413484,'TOM','MCKELLEN',2147483647,2147483647,'TMCKELLEN@outlook.com','0000-00-00','salesperson',1002,6),(1018,202896751,'GOLDIE','BRODY',2147483647,2147483647,'GOBRODY@outlook.com','0000-00-00','salesperson',1005,7),(1019,202646631,'JOHNNY','CAGE',2147483647,2147483647,'JOCAGE@outlook.com','0000-00-00','salesperson',1004,7),(1020,202646556,'JODIE','DEGENERES',2147483647,2147483647,'JODEGENERES@outlook.com','2018-07-06','salesperson',1003,7),(1021,732782670,'ALPHA','PALAIA',2147483647,2147483647,'APALAIA@outlook.com','2018-07-06','salesperson',1006,7),(1022,212753274,'REFUGIA','JACOBOS',2147483647,2147483647,'RJACOBOS@outlook.com','2018-07-06','salesperson',1006,7),(1023,504265817,'SHAWNDA','YORI',2147483647,2147483647,'SHYORI@outlook.com','2018-07-06','salesperson',1006,8),(1024,212569433,'MONA','DELASANCHA',2147483647,2147483647,'MDELASANCHA@outlook.com','2018-07-06','salesperson',1006,8),(1025,408813459,' GILMA ','LIUKKO',2125824976,2129345167,'GILIUKKO@outlook.com','2018-07-06','salesperson',1002,8),(1026,385555428,'abc','bcd',2147483647,1203458963,'abc@gmail.com','2018-07-06','salesperson',1006,5);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmployeeSalary`
--

DROP TABLE IF EXISTS `EmployeeSalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmployeeSalary` (
  `emp_id` int(10) NOT NULL,
  `base_salary` float(10,2) NOT NULL,
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `emp_id` FOREIGN KEY (`emp_id`) REFERENCES `Employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeSalary`
--

LOCK TABLES `EmployeeSalary` WRITE;
/*!40000 ALTER TABLE `EmployeeSalary` DISABLE KEYS */;
INSERT INTO `EmployeeSalary` VALUES (1001,7690.00),(1002,8747.00),(1003,948.00),(1004,9358.00),(1005,7085.00),(1006,9708.00),(1007,1425.00),(1008,7773.00),(1009,9066.00),(1010,2245.00),(1011,8320.00),(1012,6073.00),(1013,4476.00),(1014,5481.00),(1015,5034.00),(1016,5887.00),(1017,9901.00),(1018,6893.00),(1019,7838.00),(1020,2788.00),(1021,8746.00),(1022,4342.00),(1023,1721.00),(1024,1028.00),(1025,5963.00),(1026,5588.00);
/*!40000 ALTER TABLE `EmployeeSalary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login`
--

DROP TABLE IF EXISTS `Login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login` (
  `user_id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `Login_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login`
--

LOCK TABLES `Login` WRITE;
/*!40000 ALTER TABLE `Login` DISABLE KEYS */;
INSERT INTO `Login` VALUES (1001,'PGUINESS'),(1002,'NIWAHLBERG'),(1003,'ECHASE'),(1004,'JENDAVIS'),(1005,'JOLOLLOBRI'),(1006,'BNICHOLSON'),(1007,'GMOSTEL'),(1008,'AWAYNE'),(1009,'SAPECK'),(1010,'SSOBIESKI'),(1011,'TIHACKMAN'),(1012,'MILPECK'),(1013,'AOLIVIER'),(1014,'JUDEAN'),(1015,'BDUKAKIS'),(1016,'VABOLGER'),(1017,'TMCKELLEN'),(1018,'GOBRODY'),(1019,'JOCAGE'),(1020,'JODEGENERES'),(1021,'APALAIA'),(1022,'RJACOBOS'),(1023,'SHYORI'),(1024,'MDELASANCHA'),(1025,'GILIUKKO'),(1026,'abcd');
/*!40000 ALTER TABLE `Login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `MonthlyProfit`
--

DROP TABLE IF EXISTS `MonthlyProfit`;
/*!50001 DROP VIEW IF EXISTS `MonthlyProfit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `MonthlyProfit` AS SELECT 
 1 AS `shop_id`,
 1 AS `month`,
 1 AS `Year`,
 1 AS `sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `PayrollHistory`
--

DROP TABLE IF EXISTS `PayrollHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PayrollHistory` (
  `emp_id` int(10) NOT NULL,
  `credited_on` date NOT NULL,
  `salary_credited` float(10,2) NOT NULL,
  PRIMARY KEY (`emp_id`,`credited_on`),
  CONSTRAINT `employee_id` FOREIGN KEY (`emp_id`) REFERENCES `Employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PayrollHistory`
--

LOCK TABLES `PayrollHistory` WRITE;
/*!40000 ALTER TABLE `PayrollHistory` DISABLE KEYS */;
INSERT INTO `PayrollHistory` VALUES (1001,'2018-04-30',7690.00),(1001,'2018-05-30',7690.00),(1001,'2018-06-25',7690.00),(1001,'2018-07-21',7690.00),(1001,'2018-08-16',7696.00),(1001,'2018-09-11',7690.00),(1001,'2018-10-07',7690.00),(1001,'2018-11-02',7690.00),(1001,'2018-11-28',7690.00),(1001,'2018-12-02',7690.00),(1001,'2018-12-03',7690.00),(1002,'0000-00-00',8747.00),(1002,'2018-05-31',8747.00),(1002,'2018-06-26',8747.00),(1002,'2018-07-22',8747.00),(1002,'2018-08-17',9747.00),(1002,'2018-09-12',8747.00),(1002,'2018-10-08',8747.00),(1002,'2018-11-03',8747.00),(1002,'2018-11-29',8747.00),(1002,'2018-12-02',8747.00),(1002,'2018-12-03',8747.00),(1003,'0000-00-00',948.00),(1003,'2018-06-01',948.00),(1003,'2018-06-27',948.00),(1003,'2018-07-23',948.00),(1003,'2018-08-18',1948.00),(1003,'2018-09-13',948.00),(1003,'2018-10-09',948.00),(1003,'2018-11-04',948.00),(1003,'2018-11-30',948.00),(1003,'2018-12-02',948.00),(1003,'2018-12-03',948.00),(1004,'0000-00-00',9358.00),(1004,'2018-06-02',9358.00),(1004,'2018-06-28',9358.00),(1004,'2018-07-24',9358.00),(1004,'2018-08-19',9358.00),(1004,'2018-09-14',9358.00),(1004,'2018-10-10',9358.00),(1004,'2018-11-05',9358.00),(1004,'2018-12-02',9358.00),(1004,'2018-12-03',9358.00),(1005,'0000-00-00',7085.00),(1005,'2018-06-03',7085.00),(1005,'2018-06-29',7085.00),(1005,'2018-07-25',7085.00),(1005,'2018-08-20',7085.00),(1005,'2018-09-15',7085.00),(1005,'2018-10-11',7085.00),(1005,'2018-11-06',7085.00),(1005,'2018-12-02',7085.00),(1005,'2018-12-03',7085.00),(1006,'0000-00-00',9708.00),(1006,'2018-06-04',9708.00),(1006,'2018-06-30',9708.00),(1006,'2018-07-26',9708.00),(1006,'2018-08-21',9708.00),(1006,'2018-09-16',9708.00),(1006,'2018-10-12',9708.00),(1006,'2018-11-07',9708.00),(1006,'2018-12-02',9708.00),(1006,'2018-12-03',14562.00),(1007,'0000-00-00',1425.00),(1007,'2018-06-05',1425.00),(1007,'2018-07-01',1425.00),(1007,'2018-07-27',1425.00),(1007,'2018-08-22',1425.00),(1007,'2018-09-17',1425.00),(1007,'2018-10-13',1425.00),(1007,'2018-11-08',1425.00),(1007,'2018-12-02',1425.00),(1007,'2018-12-03',2137.50),(1007,'2018-12-04',1425.00),(1008,'0000-00-00',7773.00),(1008,'2018-06-06',7773.00),(1008,'2018-07-02',7773.00),(1008,'2018-07-28',7773.00),(1008,'2018-08-23',7773.00),(1008,'2018-09-18',7773.00),(1008,'2018-10-14',7773.00),(1008,'2018-11-09',7773.00),(1008,'2018-12-02',7773.00),(1008,'2018-12-03',11659.50),(1008,'2018-12-05',7773.00),(1009,'0000-00-00',9066.00),(1009,'2018-06-07',9066.00),(1009,'2018-07-03',9066.00),(1009,'2018-07-29',9066.00),(1009,'2018-08-24',9066.00),(1009,'2018-09-19',9066.00),(1009,'2018-10-15',9066.00),(1009,'2018-11-10',9066.00),(1009,'2018-12-02',9066.00),(1009,'2018-12-03',13599.00),(1009,'2018-12-06',9066.00),(1010,'0000-00-00',2245.00),(1010,'2018-06-08',2245.00),(1010,'2018-07-04',2245.00),(1010,'2018-07-30',2245.00),(1010,'2018-08-25',2445.00),(1010,'2018-09-20',2245.00),(1010,'2018-10-16',2245.00),(1010,'2018-11-11',2245.00),(1010,'2018-12-02',2245.00),(1010,'2018-12-03',3367.50),(1010,'2018-12-07',2245.00),(1011,'0000-00-00',8320.00),(1011,'2018-06-09',8320.00),(1011,'2018-07-05',8320.00),(1011,'2018-07-31',8320.00),(1011,'2018-08-26',10320.00),(1011,'2018-09-21',8320.00),(1011,'2018-10-17',8320.00),(1011,'2018-11-12',8320.00),(1011,'2018-12-02',8320.00),(1011,'2018-12-03',12480.00),(1011,'2018-12-08',8320.00),(1012,'0000-00-00',6073.00),(1012,'2018-06-10',6073.00),(1012,'2018-07-06',6073.00),(1012,'2018-08-01',6073.00),(1012,'2018-08-27',6073.00),(1012,'2018-09-22',6073.00),(1012,'2018-10-18',6073.00),(1012,'2018-11-13',6073.00),(1012,'2018-12-02',6073.00),(1012,'2018-12-03',9109.50),(1012,'2018-12-09',6073.00),(1013,'0000-00-00',4476.00),(1013,'2018-06-11',4476.00),(1013,'2018-07-07',4476.00),(1013,'2018-08-02',4476.00),(1013,'2018-08-28',4476.00),(1013,'2018-09-23',4476.00),(1013,'2018-10-19',4476.00),(1013,'2018-11-14',4476.00),(1013,'2018-12-02',4476.00),(1013,'2018-12-03',6714.00),(1013,'2018-12-10',4476.00),(1014,'0000-00-00',5481.00),(1014,'2018-06-12',5481.00),(1014,'2018-07-08',5481.00),(1014,'2018-08-03',5481.00),(1014,'2018-08-29',5481.00),(1014,'2018-09-24',5481.00),(1014,'2018-10-20',5481.00),(1014,'2018-11-15',5481.00),(1014,'2018-12-02',5481.00),(1014,'2018-12-03',8221.50),(1014,'2018-12-11',5481.00),(1015,'0000-00-00',5034.00),(1015,'2018-06-13',5034.00),(1015,'2018-07-09',5034.00),(1015,'2018-08-04',5034.00),(1015,'2018-08-30',5034.00),(1015,'2018-09-25',5034.00),(1015,'2018-10-21',5034.00),(1015,'2018-11-16',5034.00),(1015,'2018-12-02',5034.00),(1015,'2018-12-03',7551.00),(1015,'2018-12-12',5034.00),(1016,'0000-00-00',5887.00),(1016,'2018-06-14',5887.00),(1016,'2018-07-10',5887.00),(1016,'2018-08-05',5887.00),(1016,'2018-08-31',5887.00),(1016,'2018-09-26',5887.00),(1016,'2018-10-22',5887.00),(1016,'2018-11-17',5887.00),(1016,'2018-12-02',5887.00),(1016,'2018-12-03',8830.50),(1016,'2018-12-13',5887.00),(1017,'0000-00-00',9901.00),(1017,'2018-06-15',9901.00),(1017,'2018-07-11',9901.00),(1017,'2018-08-06',9901.00),(1017,'2018-09-01',9901.00),(1017,'2018-09-27',9901.00),(1017,'2018-10-23',9901.00),(1017,'2018-11-18',9901.00),(1017,'2018-12-02',9901.00),(1017,'2018-12-03',14851.50),(1017,'2018-12-14',9901.00),(1018,'0000-00-00',6893.00),(1018,'2018-06-16',6893.00),(1018,'2018-07-12',6893.00),(1018,'2018-08-07',6893.00),(1018,'2018-09-02',6893.00),(1018,'2018-09-28',6893.00),(1018,'2018-10-24',6893.00),(1018,'2018-11-19',6893.00),(1018,'2018-12-02',6893.00),(1018,'2018-12-03',10339.50),(1018,'2018-12-15',6893.00),(1019,'0000-00-00',7838.00),(1019,'2018-06-17',7838.00),(1019,'2018-07-13',7838.00),(1019,'2018-08-08',7838.00),(1019,'2018-09-03',7838.00),(1019,'2018-09-29',7838.00),(1019,'2018-10-25',7838.00),(1019,'2018-11-20',7838.00),(1019,'2018-12-02',7838.00),(1019,'2018-12-03',11757.00),(1019,'2018-12-16',7838.00),(1020,'0000-00-00',2788.00),(1020,'2018-06-18',2788.00),(1020,'2018-07-14',2788.00),(1020,'2018-08-09',2788.00),(1020,'2018-09-04',2788.00),(1020,'2018-09-30',2788.00),(1020,'2018-10-26',2788.00),(1020,'2018-11-21',2788.00),(1020,'2018-12-02',2788.00),(1020,'2018-12-03',4182.00),(1020,'2018-12-17',2788.00),(1021,'0000-00-00',8746.00),(1021,'2018-06-19',8746.00),(1021,'2018-07-15',8746.00),(1021,'2018-08-10',8746.00),(1021,'2018-09-05',8746.00),(1021,'2018-10-01',8746.00),(1021,'2018-10-27',8746.00),(1021,'2018-11-22',8746.00),(1021,'2018-12-02',8746.00),(1021,'2018-12-03',13119.00),(1021,'2018-12-18',8746.00),(1022,'0000-00-00',4342.00),(1022,'2018-06-20',4342.00),(1022,'2018-07-16',4342.00),(1022,'2018-08-11',4342.00),(1022,'2018-09-06',4342.00),(1022,'2018-10-02',4342.00),(1022,'2018-10-28',4342.00),(1022,'2018-11-23',4342.00),(1022,'2018-12-02',4342.00),(1022,'2018-12-03',6513.00),(1022,'2018-12-19',4342.00),(1023,'0000-00-00',1721.00),(1023,'2018-06-21',1721.00),(1023,'2018-07-17',1721.00),(1023,'2018-08-12',1721.00),(1023,'2018-09-07',1721.00),(1023,'2018-10-03',1721.00),(1023,'2018-10-29',1721.00),(1023,'2018-11-24',1721.00),(1023,'2018-12-02',1721.00),(1023,'2018-12-03',1721.00),(1023,'2018-12-20',1721.00),(1024,'0000-00-00',1028.00),(1024,'2018-06-22',1028.00),(1024,'2018-07-18',1028.00),(1024,'2018-08-13',1028.00),(1024,'2018-09-08',1028.00),(1024,'2018-10-04',1028.00),(1024,'2018-10-30',1028.00),(1024,'2018-11-25',1028.00),(1024,'2018-12-02',1028.00),(1024,'2018-12-03',1028.00),(1024,'2018-12-21',1028.00),(1025,'0000-00-00',5963.00),(1025,'2018-06-23',5963.00),(1025,'2018-07-19',5963.00),(1025,'2018-08-14',5963.00),(1025,'2018-09-09',5963.00),(1025,'2018-10-05',5963.00),(1025,'2018-10-31',5963.00),(1025,'2018-11-26',5963.00),(1025,'2018-12-02',5963.00),(1025,'2018-12-03',5963.00),(1025,'2018-12-22',5963.00),(1026,'0000-00-00',5588.00),(1026,'2018-06-24',5588.00),(1026,'2018-07-20',5588.00),(1026,'2018-08-15',5588.00),(1026,'2018-09-10',5588.00),(1026,'2018-10-06',5588.00),(1026,'2018-11-01',5588.00),(1026,'2018-11-27',5588.00),(1026,'2018-12-23',5588.00);
/*!40000 ALTER TABLE `PayrollHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PrescribedBy`
--

DROP TABLE IF EXISTS `PrescribedBy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PrescribedBy` (
  `doctor_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  PRIMARY KEY (`doctor_id`,`customer_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`customer_id`),
  CONSTRAINT `doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `Doctor` (`doctor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PrescribedBy`
--

LOCK TABLES `PrescribedBy` WRITE;
/*!40000 ALTER TABLE `PrescribedBy` DISABLE KEYS */;
INSERT INTO `PrescribedBy` VALUES (1036,10001),(1089,10001),(1048,10002),(1101,10002),(1043,10003),(1096,10003),(1024,10004),(1077,10004),(1130,10004),(1047,10005),(1100,10005),(1010,10006),(1063,10006),(1116,10006),(1045,10007),(1050,10007),(1051,10007),(1052,10007),(1053,10007),(1098,10007),(1103,10007),(1104,10007),(1105,10007),(1106,10007),(1003,10008),(1056,10008),(1109,10008),(1028,10009),(1081,10009),(1032,10010),(1085,10010),(1034,10011),(1087,10011),(1022,10012),(1075,10012),(1128,10012),(1002,10013),(1055,10013),(1108,10013),(1042,10014),(1095,10014),(1004,10015),(1057,10015),(1110,10015),(1015,10016),(1068,10016),(1121,10016),(1011,10017),(1030,10017),(1031,10017),(1040,10017),(1064,10017),(1083,10017),(1084,10017),(1093,10017),(1117,10017),(1008,10018),(1012,10018),(1013,10018),(1044,10018),(1061,10018),(1065,10018),(1066,10018),(1097,10018),(1114,10018),(1118,10018),(1119,10018),(1014,10019),(1027,10019),(1029,10019),(1039,10019),(1067,10019),(1080,10019),(1082,10019),(1092,10019),(1120,10019),(1023,10020),(1025,10020),(1038,10020),(1041,10020),(1076,10020),(1078,10020),(1091,10020),(1094,10020),(1129,10020),(1001,10021),(1016,10021),(1054,10021),(1069,10021),(1107,10021),(1122,10021),(1005,10022),(1009,10022),(1018,10022),(1037,10022),(1058,10022),(1062,10022),(1071,10022),(1090,10022),(1111,10022),(1115,10022),(1124,10022),(1007,10023),(1019,10023),(1021,10023),(1049,10023),(1060,10023),(1072,10023),(1074,10023),(1102,10023),(1113,10023),(1125,10023),(1127,10023),(1017,10024),(1020,10024),(1035,10024),(1070,10024),(1073,10024),(1088,10024),(1123,10024),(1126,10024),(1033,10025),(1086,10025),(1026,10026),(1079,10026),(1046,10027),(1099,10027),(1006,10028),(1059,10028),(1112,10028);
/*!40000 ALTER TABLE `PrescribedBy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shop`
--

DROP TABLE IF EXISTS `Shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shop` (
  `shop_id` int(10) NOT NULL AUTO_INCREMENT,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `telephone_number` varchar(10) NOT NULL,
  `tin_number` int(9) NOT NULL,
  `shop_manager` int(10) NOT NULL,
  PRIMARY KEY (`shop_id`),
  KEY `ShopManager` (`shop_manager`),
  KEY `ZipCode` (`zipcode`),
  CONSTRAINT `Shop_ibfk_1` FOREIGN KEY (`shop_manager`) REFERENCES `Employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shop`
--

LOCK TABLES `Shop` WRITE;
/*!40000 ALTER TABLE `Shop` DISABLE KEYS */;
INSERT INTO `Shop` VALUES (4,'123','Mahaley Avenue','Salisbury','NC','28144','2173759289',980657680,1002),(5,'390','Fire Street','Spencer','NC','28159','2173759288',980657682,1003),(6,'540','Statesville Blvd','Boonville','NC','27011','2173759287',980657684,1004),(7,'251','400th Street','Raleigh','NC','28206','2173759286',980657688,1005),(8,'870','Alberto Street','Charlotte','NC','28207','2173759285',980657696,1006);
/*!40000 ALTER TABLE `Shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShopInventory`
--

DROP TABLE IF EXISTS `ShopInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShopInventory` (
  `shop_id` int(10) NOT NULL,
  `product_id` int(100) NOT NULL,
  `product_quantity` int(100) NOT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`shop_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `ShopInventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `DrugDetail` (`product_id`),
  CONSTRAINT `ShopInventory_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `Shop` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShopInventory`
--

LOCK TABLES `ShopInventory` WRITE;
/*!40000 ALTER TABLE `ShopInventory` DISABLE KEYS */;
INSERT INTO `ShopInventory` VALUES (4,10,9,28.00),(4,11,9,35.00),(4,12,9,78.00),(4,13,5,42.00),(4,14,1,298.00),(4,15,4,218.00),(4,16,0,68.00),(4,17,2,184.00),(4,18,0,242.00),(4,19,2,173.00),(4,20,3,229.00),(4,21,0,173.00),(4,22,8,76.00),(4,23,6,230.00),(4,24,2,8.00),(4,25,0,335.00),(4,26,4,69.00),(4,27,6,311.00),(4,28,7,28.00),(4,29,0,341.00),(4,30,1,145.00),(4,31,6,300.00),(4,32,3,285.00),(4,33,0,88.00),(5,13,5,42.00),(5,14,4,298.00),(5,15,4,218.00),(5,16,0,68.00),(5,17,2,184.00),(5,18,0,242.00),(5,19,2,173.00),(5,21,0,173.00),(5,29,0,341.00),(5,30,1,145.00),(5,33,0,88.00),(5,34,9,35.00),(5,35,9,54.00),(5,36,9,34.00),(5,37,9,9.00),(5,38,9,76.00),(5,39,9,7.00),(5,40,9,46.00),(5,41,9,24.00),(5,42,9,7.00),(5,43,9,6.00),(6,20,3,229.00),(6,23,6,230.00),(6,24,2,8.00),(6,25,0,335.00),(6,31,6,300.00),(6,38,99,229.00),(6,39,9,46.00),(6,40,9,46.00),(6,41,9,46.00),(6,42,9,46.00),(6,43,9,34.00),(6,44,9,43.00),(6,45,9,88.00),(6,55,9,76.00),(6,58,9,24.00),(7,26,4,69.00),(7,27,6,311.00),(7,32,3,285.00),(7,33,0,281.00),(7,47,6,86.00),(7,48,6,5.00),(7,49,6,33.00),(7,50,6,65.00),(7,51,6,77.00),(7,52,9,35.00),(7,53,9,65.00),(7,54,9,57.00),(7,55,9,68.00),(8,22,8,76.00),(8,28,7,28.00),(8,56,6,67.00),(8,57,6,54.00),(8,58,6,55.00),(8,59,6,9.00);
/*!40000 ALTER TABLE `ShopInventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`pashani`@`%`*/ /*!50003 TRIGGER after_shopInventorypurchase_update 
    after update ON ShopInventory
    FOR EACH ROW 
BEGIN
	Declare qs int;
    select si.product_quantity into qs from ShopInventory as si where si.product_id = productid and si.shop_id = shopid;
	if qs < 5 then
	update ShopInventory set new.product_quantity = old.product_quantity + 20; # with this we kept the quantity constant in shop inventory 
    end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `WarehouseInventory`
--

DROP TABLE IF EXISTS `WarehouseInventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WarehouseInventory` (
  `product_id` int(100) NOT NULL,
  `product_quantity` int(100) NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `WarehouseInventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `DrugDetail` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WarehouseInventory`
--

LOCK TABLES `WarehouseInventory` WRITE;
/*!40000 ALTER TABLE `WarehouseInventory` DISABLE KEYS */;
INSERT INTO `WarehouseInventory` VALUES (13,100),(14,100),(15,100),(16,100),(17,100),(18,100),(19,100),(20,100),(21,100),(22,100),(23,100),(24,100),(25,100),(26,100),(27,100),(28,100),(29,100),(30,100),(31,100),(32,100),(33,100);
/*!40000 ALTER TABLE `WarehouseInventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`pashani`@`%`*/ /*!50003 TRIGGER after_shopInventorychange_update 
    before update ON WarehouseInventory
    FOR EACH ROW 
BEGIN
	update WarehouseInventory set new.product_quantity = old.product_quantity - 20; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `YearlyProfits`
--

DROP TABLE IF EXISTS `YearlyProfits`;
/*!50001 DROP VIEW IF EXISTS `YearlyProfits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `YearlyProfits` AS SELECT 
 1 AS `shop_id`,
 1 AS `Year`,
 1 AS `sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'erp_system'
--

--
-- Dumping routines for database 'erp_system'
--
/*!50003 DROP FUNCTION IF EXISTS `EmployeeBonus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`pashani`@`%` FUNCTION `EmployeeBonus`(empid int(10), empsalary float(10,2)) RETURNS float(10,2)
BEGIN
DECLARE timessold int(10);
Declare salary float(10,2);

set timessold = (select count(sold_by)  from CustomerPurchaseHistory where sold_by = empid);
    
 
    IF timessold >= 2 THEN
    set salary = empsalary + (empsalary * 0.5);
	
    END IF;

RETURN salary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountOfCustomersVisitedPerDay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`pashani`@`%` PROCEDURE `CountOfCustomersVisitedPerDay`(IN ShopId int(10), IN PurchaseDate date , OUT NoOfCustomers int(5))
BEGIN

select count(*) into NoOfCustomers from CustomerPurchaseHistory 
where shop_id = ShopId and purchase_date = PurchaseDate
group by shop_id, purchase_date ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DailySales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`pashani`@`%` PROCEDURE `DailySales`(IN shopid int(10), IN purchasedate DATE)
BEGIN
	SELECT cph.shop_id AS ShopId, cph.purchase_date as `Date`, 
    sum(cph.quantity*si.unit_price) as 'Total Sale per day' 
    FROM CustomerPurchaseHistory as cph
	INNER JOIN ShopInventory si
    ON cph.shop_id=si.shop_id 
	INNER JOIN DrugDetail as d 
    on cph.product_id=d.product_id
GROUP BY cph.shop_id,cph.purchase_date
HAVING cph.shop_id=shopid and cph.purchase_date= purchasedate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenerateBill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`pashani`@`%` PROCEDURE `GenerateBill`(IN CustId int(10), IN PurchaseDate DATE, IN ShopId int(10))
BEGIN
select * from (select CONCAT(CONVERT(customer_purchase_detailed_bill.customer_id, char), CONVERT( UNIX_TIMESTAMP(customer_purchase_detailed_bill.purchase_date),char)) as 'BillId', customer_purchase_detailed_bill.customer_id, customer_purchase_detailed_bill.customer_name, 
customer_purchase_detailed_bill.shop_address, customer_purchase_detailed_bill.shop_id,
concat_ws(' ','Dr.',doc.first_name,doc.last_name) as "doctor's name on prescription" ,
group_concat(customer_purchase_detailed_bill.product_name) as 'list of products purchased',
sum(customer_purchase_detailed_bill.price) as 'final bill price', 
customer_purchase_detailed_bill.purchase_date, customer_purchase_detailed_bill.billed_by_salesperson
from 
(
select cph.customer_id, concat(c.first_name,' ', c.last_name) as customer_name,
cph.shop_id, concat_ws(' ',address_line_1, address_line_2,city, state,zipcode) as shop_address,
cph.product_id,(d.product_name) , cph.quantity ,
si2.unit_price , (cph.quantity * si2.unit_price) as price, 
cph.purchase_date, cph.purchase_time, cph.sold_by , 
concat_ws(' ',e.first_name,e.last_name) as billed_by_salesperson
from CustomerPurchaseHistory cph
inner join Shop s on cph.shop_id = s.shop_id 
inner join Customer c on cph.customer_id = c.customer_id
inner join DrugDetail d on cph.product_id = d.product_id
inner join ShopInventory si1 on (si1.shop_id = s.shop_id )
inner join ShopInventory si2 on (si2.product_id = d.product_id)
inner join Employee e on e.emp_id = cph.sold_by
group by  cph.shop_id, cph.purchase_date,cph.product_id, cph.sold_by
) 
as customer_purchase_detailed_bill 
inner join PrescribedBy p on p.customer_id = customer_purchase_detailed_bill.customer_id
inner join Doctor doc on doc.doctor_id = p.doctor_id
group by customer_purchase_detailed_bill.shop_address, customer_purchase_detailed_bill.purchase_date
,customer_purchase_detailed_bill.customer_id ) as mytable 
where customer_id = CustId and purchase_date = PurchaseDate and shop_id = ShopId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProductsInStore` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`pashani`@`%` PROCEDURE `ProductsInStore`(IN ShopId int(10))
BEGIN
select product_id,product_quantity, unit_price, product_name from ShopInventory 
inner join DrugDetail using(product_id) where shop_id = ShopId 
order by product_quantity asc
limit 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TopFiveSold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`pashani`@`%` PROCEDURE `TopFiveSold`(IN shopid int(10), IN purchasemonth int(3) )
BEGIN
select d.product_name as 'Product Name',sum(cph.quantity) as 'Quatnities Sold',
SUM(cph.quantity*si.unit_price) as 'Revenue Generated' from CustomerPurchaseHistory as cph
INNER JOIN DrugDetail as d on cph.product_id=d.product_id
INNER JOIN ShopInventory as si on cph.shop_id=si.shop_id
WHERE MONTH(cph.purchase_date)=purchasemonth and cph.shop_id=shopid
GROUP BY cph.product_id
ORDER BY 'Quatnities Sold' desc
LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `BasicEmployeeInformation`
--

/*!50001 DROP VIEW IF EXISTS `BasicEmployeeInformation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pashani`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `BasicEmployeeInformation` AS select `e1`.`emp_id` AS `Employee ID`,concat_ws(' ',`e1`.`first_name`,`e1`.`last_name`) AS `Employee Name`,`e1`.`position` AS `Job Title`,concat_ws(' ',`e2`.`first_name`,`e2`.`last_name`) AS `Manger Name`,`e1`.`work_location` AS `Shop Location`,`es`.`base_salary` AS `Base Salary per Month`,(`es`.`base_salary` * 12) AS `Total Annual Salary` from ((`Employee` `e1` join `Employee` `e2` on((`e1`.`reports_to` = `e2`.`emp_id`))) join `EmployeeSalary` `es` on((`e1`.`emp_id` = `es`.`emp_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CheckShopInventory`
--

/*!50001 DROP VIEW IF EXISTS `CheckShopInventory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pashani`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CheckShopInventory` AS select `si`.`shop_id` AS `shop_id`,`si`.`product_id` AS `product_id`,`dd`.`product_name` AS `product_name`,`dd`.`product_manufacturer` AS `product_manufacturer`,`dd`.`product_type` AS `product_type`,`si`.`product_quantity` AS `product_quantity`,`si`.`unit_price` AS `unit_price`,(`si`.`product_quantity` * `si`.`unit_price`) AS `si.product_quantity*si.unit_price` from (`ShopInventory` `si` join `DrugDetail` `dd` on((`dd`.`product_id` = `si`.`product_id`))) order by `si`.`shop_id`,`si`.`product_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MonthlyProfit`
--

/*!50001 DROP VIEW IF EXISTS `MonthlyProfit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pashani`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthlyProfit` AS select `cph`.`shop_id` AS `shop_id`,extract(month from `cph`.`purchase_date`) AS `month`,extract(year from `cph`.`purchase_date`) AS `Year`,sum((`si`.`unit_price` * `cph`.`quantity`)) AS `sales` from (`CustomerPurchaseHistory` `cph` join `ShopInventory` `si` on((`cph`.`shop_id` = `si`.`shop_id`))) group by `cph`.`shop_id`,`Year`,`month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `YearlyProfits`
--

/*!50001 DROP VIEW IF EXISTS `YearlyProfits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`pashani`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `YearlyProfits` AS select `cph`.`shop_id` AS `shop_id`,extract(year from `cph`.`purchase_date`) AS `Year`,sum((`si`.`unit_price` * `cph`.`quantity`)) AS `sales` from (`CustomerPurchaseHistory` `cph` join `ShopInventory` `si` on((`cph`.`shop_id` = `si`.`shop_id`))) group by `cph`.`shop_id`,`Year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-02 23:06:53
