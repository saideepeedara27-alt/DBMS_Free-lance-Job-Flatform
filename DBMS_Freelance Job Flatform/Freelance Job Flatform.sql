CREATE DATABASE  IF NOT EXISTS `freelancerjobflatform` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `freelancerjobflatform`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: freelancerjobflatform
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ClientID` int NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ClientID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Alice','Brown','alice.brown@company.com','456-789-0123','TechCorp'),(2,'Bob','Davis','bob.davis@firm.com','567-890-1234','DesignHub'),(3,'Carol','Evans','carol.evans@biz.com','678-901-2345','CodeMasters'),(4,'Frank','Harris','frank.h@enterprise.com','789-012-3456','InnovateInc'),(5,'Grace','Lee','grace.l@corp.com','890-123-4567','CreativeWorks'),(6,'Henry','Martin','henry.m@group.com','901-234-5678','BuildTech'),(7,'Irene','Nelson','irene.n@co.com','012-345-6789','DigitalSolutions'),(8,'Jack','Olson','jack.o@org.com','123-456-7890','NextGen'),(9,'Kelly','Parker','kelly.p@inc.com','234-567-8901','Visionary'),(10,'Larry','Quinn','larry.q@llc.com','345-678-9012','PeakPerformance'),(11,'Mary','Reed','mary.r@business.com','456-789-0126','SmartSystems'),(12,'Nathan','Scott','nathan.s@tech.com','567-890-1237','FutureLabs'),(13,'Olivia','Taylor','olivia.t@firm.com','678-901-2348','BlueSky'),(14,'Peter','Upton','peter.u@co.com','789-012-3459','RedBrick'),(15,'Quinn','Vance','quinn.v@enterprise.com','890-123-4570','GreenField'),(16,'Rachel','West','rachel.w@group.com','901-234-5681','SilverLine'),(17,'Steven','Xavier','steven.x@inc.com','012-345-6792','GoldStar'),(18,'Tina','Young','tina.y@org.com','123-456-7893','BrightFuture'),(19,'Victor','Zane','victor.z@llc.com','234-567-8904','SkyHigh'),(20,'Wendy','Adams','wendy.a@business.com','345-678-9015','EarthTech'),(21,'Xavier','Baker','xavier.b@tech.com','456-789-0127','MoonShot'),(22,'Yvonne','Clark','yvonne.c@firm.com','567-890-1238','StarLink'),(23,'Zack','Davis','zack.d@co.com','678-901-2349','SunRise'),(24,'Amy','Evans','amy.e@enterprise.com','789-012-3460','OceanWave'),(25,'Ben','Foster','ben.f@group.com','890-123-4571','RockSolid'),(26,'Cathy','Gray','cathy.g@inc.com','901-234-5682','IronWill'),(27,'Dan','Hill','dan.h@org.com','012-345-6793','CrystalClear'),(28,'Ella','Ivy','ella.i@llc.com','123-456-7894','DiamondEdge'),(29,'Fred','Jones','fred.j@business.com','234-567-8905','EmeraldCity'),(30,'Gina','King','gina.k@tech.com','345-678-9016','RubyRed');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `ContractID` int NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `ProposalID` int DEFAULT NULL,
  PRIMARY KEY (`ContractID`),
  KEY `ProposalID` (`ProposalID`),
  CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`ProposalID`) REFERENCES `proposal` (`ProposalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,'2025-04-15','2025-05-15',4500.00,'Active',1),(2,'2025-04-20','2025-05-20',2800.00,'Completed',2),(3,'2025-04-25',NULL,6500.00,'Pending',3),(4,'2025-04-30','2025-05-30',3800.00,'Active',4),(5,'2025-05-05','2025-06-05',5500.00,'Completed',5),(6,'2025-05-10','2025-06-10',1800.00,'Pending',6),(7,'2025-05-15',NULL,7500.00,'Active',7),(8,'2025-05-20','2025-06-20',4200.00,'Completed',8),(9,'2025-05-25',NULL,5000.00,'Pending',9),(10,'2025-05-30','2025-06-30',8500.00,'Active',10),(11,'2025-06-04','2025-07-04',2800.00,'Completed',11),(12,'2025-06-09',NULL,2300.00,'Pending',12),(13,'2025-06-14','2025-07-14',7000.00,'Active',13),(14,'2025-06-19','2025-07-19',6000.00,'Completed',14),(15,'2025-06-24',NULL,4700.00,'Pending',15),(16,'2025-06-29','2025-07-29',1800.00,'Active',16),(17,'2025-07-04',NULL,9500.00,'Completed',17),(18,'2025-07-09','2025-08-09',3800.00,'Pending',18),(19,'2025-07-14',NULL,3200.00,'Active',19),(20,'2025-07-19','2025-08-19',4200.00,'Completed',20),(21,'2025-07-24',NULL,2800.00,'Pending',21),(22,'2025-07-29','2025-08-29',2300.00,'Active',22),(23,'2025-08-03',NULL,7500.00,'Completed',23),(24,'2025-08-08','2025-09-08',3800.00,'Pending',24),(25,'2025-08-13',NULL,6500.00,'Active',25),(26,'2025-08-18','2025-09-18',3200.00,'Completed',26),(27,'2025-08-23',NULL,5500.00,'Pending',27),(28,'2025-08-28','2025-09-28',1800.00,'Active',28),(29,'2025-09-02',NULL,5000.00,'Completed',29),(30,'2025-09-07','2025-10-07',4200.00,'Pending',30);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `FeedbackID` int NOT NULL,
  `Rating` decimal(3,1) DEFAULT NULL,
  `Comments` text,
  `FeedbackDate` date NOT NULL,
  `ContractID` int DEFAULT NULL,
  `FreelancerID` int DEFAULT NULL,
  `ClientID` int DEFAULT NULL,
  PRIMARY KEY (`FeedbackID`),
  KEY `ContractID` (`ContractID`),
  KEY `FreelancerID` (`FreelancerID`),
  KEY `ClientID` (`ClientID`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`ContractID`) REFERENCES `contract` (`ContractID`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`FreelancerID`) REFERENCES `freelancer` (`FreelancerID`),
  CONSTRAINT `feedback_ibfk_3` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`),
  CONSTRAINT `feedback_chk_1` CHECK (((`Rating` >= 0) and (`Rating` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,4.5,'Great work','2025-05-20',1,1,1),(2,4.0,'Good design','2025-05-25',2,2,2),(3,4.8,'Excellent API','2025-05-30',3,3,3),(4,4.2,'Solid analysis','2025-06-05',4,4,4),(5,4.7,'App works well','2025-06-10',5,5,5),(6,3.9,'Average design','2025-06-15',6,6,6),(7,4.9,'Perfect cloud','2025-06-20',7,7,7),(8,4.3,'Nice frontend','2025-06-25',8,8,8),(9,4.6,'Good pipeline','2025-07-01',9,9,9),(10,4.8,'Great AI','2025-07-05',10,10,10),(11,4.1,'Decent testing','2025-07-10',11,11,11),(12,3.8,'Basic SEO','2025-07-15',12,12,12),(13,4.7,'Full stack pro','2025-07-20',13,13,13),(14,4.5,'Secure network','2025-07-25',14,14,14),(15,4.9,'Excellent DB','2025-07-30',15,15,15),(16,3.5,'Okay content','2025-08-05',16,16,16),(17,4.4,'Solid blockchain','2025-08-10',17,17,17),(18,4.2,'Good shop','2025-08-15',18,18,18),(19,4.6,'Reliable network','2025-08-20',19,19,19),(20,4.3,'Good management','2025-08-25',20,20,20),(21,3.9,'Average QA','2025-08-30',21,21,21),(22,4.1,'Nice video','2025-09-05',22,22,22),(23,4.7,'Amazing VR','2025-09-10',23,23,23),(24,4.4,'Good admin','2025-09-15',24,24,24),(25,4.8,'Great game','2025-09-20',25,25,25),(26,4.0,'Decent marketing','2025-09-25',26,26,26),(27,4.6,'Solid IoT','2025-10-01',27,27,27),(28,3.7,'Okay photos','2025-10-05',28,28,28),(29,4.5,'Good firmware','2025-10-10',29,29,29),(30,4.3,'Nice prototype','2025-10-15',30,30,30);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freelancer`
--

DROP TABLE IF EXISTS `freelancer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freelancer` (
  `FreelancerID` int NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Skills` varchar(200) DEFAULT NULL,
  `ExperienceYears` int DEFAULT NULL,
  `Rating` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`FreelancerID`),
  UNIQUE KEY `Email` (`Email`),
  CONSTRAINT `freelancer_chk_1` CHECK (((`Rating` >= 0) and (`Rating` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freelancer`
--

LOCK TABLES `freelancer` WRITE;
/*!40000 ALTER TABLE `freelancer` DISABLE KEYS */;
INSERT INTO `freelancer` VALUES (1,'John','Doe','john.doe@email.com','123-456-7890','Python, Web Dev',5,4.5),(2,'Jane','Smith','jane.smith@email.com','234-567-8901','Design, UI/UX',3,4.2),(3,'Mike','Johnson','mike.j@email.com','345-678-9012','Java, Backend',7,4.8),(4,'Sarah','Williams','sarah.w@email.com','456-789-0123','Data Analysis',4,4.0),(5,'Robert','Brown','robert.b@email.com','567-890-1234','Mobile Dev',6,4.7),(6,'Emily','Davis','emily.d@email.com','678-901-2345','Frontend',2,3.9),(7,'David','Wilson','david.w@email.com','789-012-3456','Cloud Computing',8,4.9),(8,'Lisa','Anderson','lisa.a@email.com','890-123-4567','Graphic Design',3,4.1),(9,'James','Taylor','james.t@email.com','901-234-5678','DevOps',5,4.6),(10,'Mary','Martinez','mary.m@email.com','012-345-6789','AI/ML',4,4.3),(11,'Thomas','Clark','thomas.c@email.com','123-456-7891','Testing',3,4.0),(12,'Patricia','Lewis','patricia.l@email.com','234-567-8902','SEO',2,3.8),(13,'Charles','Walker','charles.w@email.com','345-678-9013','Full Stack',6,4.7),(14,'Barbara','Hall','barbara.h@email.com','456-789-0124','Cybersecurity',5,4.5),(15,'Daniel','Allen','daniel.a@email.com','567-890-1235','Database Admin',7,4.9),(16,'Nancy','Young','nancy.y@email.com','678-901-2346','Content Writing',1,3.5),(17,'Paul','King','paul.k@email.com','789-012-3457','Blockchain',4,4.4),(18,'Helen','Scott','helen.s@email.com','890-123-4568','E-commerce',3,4.2),(19,'George','Green','george.g@email.com','901-234-5679','Networking',6,4.8),(20,'Karen','Adams','karen.a@email.com','012-345-6790','Project Mgmt',5,4.6),(21,'Richard','Baker','richard.b@email.com','123-456-7892','QA',2,3.9),(22,'Betty','Nelson','betty.n@email.com','234-567-8903','Video Editing',3,4.1),(23,'Donald','Carter','donald.c@email.com','345-678-9014','AR/VR',4,4.3),(24,'Ruth','Mitchell','ruth.m@email.com','456-789-0125','System Admin',6,4.7),(25,'Kenneth','Perez','kenneth.p@email.com','567-890-1236','Game Dev',5,4.5),(26,'Dorothy','Roberts','dorothy.r@email.com','678-901-2347','Digital Marketing',2,3.8),(27,'Edward','Turner','edward.t@email.com','789-012-3458','IoT',7,4.9),(28,'Margaret','Phillips','margaret.p@email.com','890-123-4569','Photography',3,4.0),(29,'Joseph','Campbell','joseph.c@email.com','901-234-5680','Embedded Systems',6,4.6),(30,'Linda','Parker','linda.p@email.com','012-345-6791','Product Design',4,4.4);
/*!40000 ALTER TABLE `freelancer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobposting`
--

DROP TABLE IF EXISTS `jobposting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobposting` (
  `JobID` int NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` text,
  `Budget` decimal(10,2) NOT NULL,
  `Deadline` date DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  `ClientID` int DEFAULT NULL,
  PRIMARY KEY (`JobID`),
  KEY `ClientID` (`ClientID`),
  CONSTRAINT `jobposting_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobposting`
--

LOCK TABLES `jobposting` WRITE;
/*!40000 ALTER TABLE `jobposting` DISABLE KEYS */;
INSERT INTO `jobposting` VALUES (1,'Web Developer','Need a website',5000.00,'2025-05-15','Open',1),(2,'UI Design','Redesign app interface',3000.00,'2025-06-01','Open',2),(3,'Backend Dev','Build API',7000.00,'2025-04-30','Closed',3),(4,'Data Analyst','Analyze sales data',4000.00,'2025-05-20','Open',4),(5,'Mobile App','iOS/Android app',6000.00,'2025-06-10','Open',5),(6,'Graphic Design','Logo creation',2000.00,'2025-05-05','Closed',6),(7,'Cloud Setup','AWS migration',8000.00,'2025-06-15','Open',7),(8,'Frontend Dev','React project',4500.00,'2025-05-25','Open',8),(9,'DevOps','CI/CD pipeline',5500.00,'2025-06-30','Closed',9),(10,'AI Model','Machine learning',9000.00,'2025-07-01','Open',10),(11,'Testing','QA for app',3000.00,'2025-05-10','Closed',11),(12,'SEO','Website optimization',2500.00,'2025-05-15','Open',12),(13,'Full Stack','End-to-end dev',7500.00,'2025-06-20','Open',13),(14,'Cybersecurity','Network security',6500.00,'2025-07-05','Closed',14),(15,'Database Admin','SQL tuning',5000.00,'2025-05-30','Open',15),(16,'Content Writing','Blog posts',2000.00,'2025-06-05','Closed',16),(17,'Blockchain','Smart contract',10000.00,'2025-07-10','Open',17),(18,'E-commerce','Shop setup',4000.00,'2025-06-15','Open',18),(19,'Networking','LAN setup',3500.00,'2025-05-25','Closed',19),(20,'Project Mgmt','Project oversight',4500.00,'2025-06-30','Open',20),(21,'QA','Test automation',3000.00,'2025-05-20','Closed',21),(22,'Video Editing','Promo video',2500.00,'2025-06-10','Open',22),(23,'AR/VR','Virtual tour',8000.00,'2025-07-01','Open',23),(24,'System Admin','Server maintenance',4000.00,'2025-06-05','Closed',24),(25,'Game Dev','2D game',7000.00,'2025-07-15','Open',25),(26,'Digital Marketing','Campaign setup',3500.00,'2025-06-20','Open',26),(27,'IoT','Sensor integration',6000.00,'2025-07-10','Closed',27),(28,'Photography','Product shots',2000.00,'2025-05-30','Open',28),(29,'Embedded Systems','Firmware dev',5500.00,'2025-06-25','Open',29),(30,'Product Design','UI prototype',4500.00,'2025-07-05','Closed',30);
/*!40000 ALTER TABLE `jobposting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` int NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `PaymentDate` date NOT NULL,
  `Method` varchar(50) DEFAULT NULL,
  `TransactionNotes` text,
  `ContractID` int NOT NULL,
  PRIMARY KEY (`PaymentID`,`ContractID`),
  KEY `ContractID` (`ContractID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ContractID`) REFERENCES `contract` (`ContractID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,2250.00,'2025-04-20','CreditCard','First half',1),(2,1400.00,'2025-04-25','PayPal','Initial payment',2),(3,3250.00,'2025-04-30','BankTransfer','Full amount',3),(4,1900.00,'2025-05-05','CreditCard','Half payment',4),(5,2750.00,'2025-05-10','PayPal','First installment',5),(6,900.00,'2025-05-15','BankTransfer','Full',6),(7,3750.00,'2025-05-20','CreditCard','Half',7),(8,2100.00,'2025-05-25','PayPal','Initial',8),(9,2500.00,'2025-06-01','BankTransfer','Full',9),(10,4250.00,'2025-06-05','CreditCard','Half',10),(11,1400.00,'2025-06-10','PayPal','Full',11),(12,1150.00,'2025-06-15','BankTransfer','Initial',12),(13,3500.00,'2025-06-20','CreditCard','Half',13),(14,3000.00,'2025-06-25','PayPal','Full',14),(15,2350.00,'2025-07-01','BankTransfer','Initial',15),(16,900.00,'2025-07-05','CreditCard','Full',16),(17,4750.00,'2025-07-10','PayPal','Half',17),(18,1900.00,'2025-07-15','BankTransfer','Initial',18),(19,1600.00,'2025-07-20','CreditCard','Full',19),(20,2100.00,'2025-07-25','PayPal','Half',20),(21,1400.00,'2025-07-30','BankTransfer','Full',21),(22,1150.00,'2025-08-05','CreditCard','Initial',22),(23,3750.00,'2025-08-10','PayPal','Half',23),(24,1900.00,'2025-08-15','BankTransfer','Full',24),(25,3250.00,'2025-08-20','CreditCard','Half',25),(26,1600.00,'2025-08-25','PayPal','Initial',26),(27,2750.00,'2025-09-01','BankTransfer','Full',27),(28,900.00,'2025-09-05','CreditCard','Half',28),(29,2500.00,'2025-09-10','PayPal','Full',29),(30,2100.00,'2025-09-15','BankTransfer','Initial',30);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposal`
--

DROP TABLE IF EXISTS `proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposal` (
  `ProposalID` int NOT NULL,
  `BidAmount` decimal(10,2) NOT NULL,
  `CoverLetter` text,
  `SubmissionDate` date NOT NULL,
  `Status` varchar(20) NOT NULL,
  `JobID` int DEFAULT NULL,
  `FreelancerID` int DEFAULT NULL,
  PRIMARY KEY (`ProposalID`),
  KEY `JobID` (`JobID`),
  KEY `FreelancerID` (`FreelancerID`),
  CONSTRAINT `proposal_ibfk_1` FOREIGN KEY (`JobID`) REFERENCES `jobposting` (`JobID`),
  CONSTRAINT `proposal_ibfk_2` FOREIGN KEY (`FreelancerID`) REFERENCES `freelancer` (`FreelancerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposal`
--

LOCK TABLES `proposal` WRITE;
/*!40000 ALTER TABLE `proposal` DISABLE KEYS */;
INSERT INTO `proposal` VALUES (1,4500.00,'Experienced in web dev','2025-04-10','Pending',1,1),(2,2800.00,'UI expert','2025-04-12','Accepted',2,2),(3,6500.00,'Strong backend skills','2025-04-11','Rejected',3,3),(4,3800.00,'Data analysis skills','2025-04-13','Pending',4,4),(5,5500.00,'Mobile dev expert','2025-04-14','Accepted',5,5),(6,1800.00,'Graphic design pro','2025-04-15','Rejected',6,6),(7,7500.00,'Cloud setup experience','2025-04-16','Pending',7,7),(8,4200.00,'Frontend specialist','2025-04-17','Accepted',8,8),(9,5000.00,'DevOps expertise','2025-04-18','Rejected',9,9),(10,8500.00,'AI model skills','2025-04-19','Pending',10,10),(11,2800.00,'QA testing','2025-04-20','Accepted',11,11),(12,2300.00,'SEO specialist','2025-04-21','Rejected',12,12),(13,7000.00,'Full stack dev','2025-04-22','Pending',13,13),(14,6000.00,'Cybersecurity expert','2025-04-23','Accepted',14,14),(15,4700.00,'DB admin skills','2025-04-24','Rejected',15,15),(16,1800.00,'Content writer','2025-04-25','Pending',16,16),(17,9500.00,'Blockchain dev','2025-04-26','Accepted',17,17),(18,3800.00,'E-commerce setup','2025-04-27','Rejected',18,18),(19,3200.00,'Networking skills','2025-04-28','Pending',19,19),(20,4200.00,'Project mgmt','2025-04-29','Accepted',20,20),(21,2800.00,'QA automation','2025-04-30','Rejected',21,21),(22,2300.00,'Video editing','2025-05-01','Pending',22,22),(23,7500.00,'AR/VR dev','2025-05-02','Accepted',23,23),(24,3800.00,'System admin','2025-05-03','Rejected',24,24),(25,6500.00,'Game dev','2025-05-04','Pending',25,25),(26,3200.00,'Digital marketing','2025-05-05','Accepted',26,26),(27,5500.00,'IoT integration','2025-05-06','Rejected',27,27),(28,1800.00,'Photography','2025-05-07','Pending',28,28),(29,5000.00,'Embedded systems','2025-05-08','Accepted',29,29),(30,4200.00,'Product design','2025-05-09','Rejected',30,30);
/*!40000 ALTER TABLE `proposal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29 18:47:08
