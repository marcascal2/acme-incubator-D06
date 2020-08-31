-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: acme-incubator
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `accounting_record`
--

DROP TABLE IF EXISTS `accounting_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounting_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `creation_moment` datetime(6) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `bookkeeper_id` int(11) NOT NULL,
  `round_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK41jm4vk7runvmg5tderffrele` (`bookkeeper_id`),
  KEY `FKfvepcb78ijkrgbxua9w2wjnut` (`round_id`),
  CONSTRAINT `FK41jm4vk7runvmg5tderffrele` FOREIGN KEY (`bookkeeper_id`) REFERENCES `bookkeeper` (`id`),
  CONSTRAINT `FKfvepcb78ijkrgbxua9w2wjnut` FOREIGN KEY (`round_id`) REFERENCES `investment_round` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounting_record`
--

LOCK TABLES `accounting_record` WRITE;
/*!40000 ALTER TABLE `accounting_record` DISABLE KEYS */;
INSERT INTO `accounting_record` VALUES (1855,0,'Accounting record for investment round 1','2020-02-02 18:22:00.000000',0,'Accounting record 1',1775,1806),(1856,0,'Accounting record for investment round 2','2020-03-12 22:43:00.000000',1,'Accounting record 2',1775,1807),(1857,0,'Accounting record for investment round 1','2019-12-06 02:42:00.000000',0,'Accounting record 3',1778,1806),(1858,0,'Accounting record for investment round 3','2019-12-06 02:42:00.000000',0,'Accounting record 4',1775,1808),(1859,0,'Accounting record for investment round 1','2019-12-06 02:42:00.000000',1,'Accounting record 5',1778,1806),(1860,0,'Accounting record for investment round 5','2020-01-06 02:42:00.000000',1,'Accounting record 6',1781,1810),(1861,0,'Accounting record for investment round 2','2019-11-06 02:42:00.000000',0,'Accounting record 7',1781,1807),(1862,0,'Accounting record for investment round 4','2019-10-31 02:42:00.000000',1,'Accounting record 8',1781,1809),(1863,0,'Accounting record for investment round 2','2018-12-06 02:42:00.000000',1,'Accounting record 9',1778,1807),(1864,0,'Accounting record for investment round 3','2019-01-14 02:42:00.000000',1,'Accounting record 10',1775,1808),(1865,0,'Accounting record for investment round 5','2019-10-29 02:42:00.000000',1,'Accounting record 11',1778,1810);
/*!40000 ALTER TABLE `accounting_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `amount_amount` double DEFAULT NULL,
  `amount_currency` varchar(255) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `round_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2iqusm3hm1rxyff6g12xp6q7x` (`round_id`),
  CONSTRAINT `FK2iqusm3hm1rxyff6g12xp6q7x` FOREIGN KEY (`round_id`) REFERENCES `investment_round` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1887,0,150,'€','2020-10-05 16:00:00.000000','2020-09-05 16:00:00.000000','Programme development',1806),(1888,0,50,'€','2020-12-25 17:00:00.000000','2020-12-25 09:00:00.000000','Running tour',1807),(1889,0,10,'€','2020-10-15 16:00:00.000000','2020-03-15 17:00:00.000000','Free activity',1806),(1890,0,750,'€','2020-12-18 17:00:00.000000','2020-10-27 09:00:00.000000','Sport actvity',1808),(1891,0,450,'€','2020-10-05 16:00:00.000000','2020-09-05 16:00:00.000000','Programme development',1807),(1892,0,2000,'€','2020-11-03 17:00:00.000000','2020-08-19 08:00:00.000000','Travel activity',1809),(1893,0,9000,'€','2020-08-17 16:00:00.000000','2020-07-23 08:00:00.000000','Tour activity',1809),(1894,0,200,'€','2020-10-05 16:00:00.000000','2020-09-05 16:00:00.000000','Cultural activity',1811),(1895,0,20,'€','2020-11-14 17:00:00.000000','2020-08-16 08:00:00.000000','Last activity',1806);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_sector`
--

DROP TABLE IF EXISTS `activity_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_sector` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_sector`
--

LOCK TABLES `activity_sector` WRITE;
/*!40000 ALTER TABLE `activity_sector` DISABLE KEYS */;
INSERT INTO `activity_sector` VALUES (1849,0,'TECHNOLOGY'),(1850,0,'SCIENCE'),(1851,0,'ARTS'),(1852,0,'BUSINESS'),(1853,0,'HEALTH');
/*!40000 ALTER TABLE `activity_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2a5vcjo3stlfcwadosjfq49l1` (`user_account_id`),
  CONSTRAINT `FK_2a5vcjo3stlfcwadosjfq49l1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (4,0,3);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anonymous`
--

DROP TABLE IF EXISTS `anonymous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anonymous` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6lnbc6fo3om54vugoh8icg78m` (`user_account_id`),
  CONSTRAINT `FK_6lnbc6fo3om54vugoh8icg78m` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anonymous`
--

LOCK TABLES `anonymous` WRITE;
/*!40000 ALTER TABLE `anonymous` DISABLE KEYS */;
INSERT INTO `anonymous` VALUES (2,0,1);
/*!40000 ALTER TABLE `anonymous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authenticated`
--

DROP TABLE IF EXISTS `authenticated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authenticated` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h52w0f3wjoi68b63wv9vwon57` (`user_account_id`),
  CONSTRAINT `FK_h52w0f3wjoi68b63wv9vwon57` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authenticated`
--

LOCK TABLES `authenticated` WRITE;
/*!40000 ALTER TABLE `authenticated` DISABLE KEYS */;
INSERT INTO `authenticated` VALUES (5,0,3),(1776,0,1774),(1779,0,1777),(1782,0,1780),(1784,0,1783),(1786,0,1785),(1788,0,1787),(1790,0,1789),(1793,0,1791),(1796,0,1794),(1802,0,1800),(1805,0,1803);
/*!40000 ALTER TABLE `authenticated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `patron_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfiondfno37y5go3uetvt06bp5` (`card_id`),
  KEY `FKdocr1jjfgwx9ef5jbf675l360` (`patron_id`),
  CONSTRAINT `FKdocr1jjfgwx9ef5jbf675l360` FOREIGN KEY (`patron_id`) REFERENCES `patron` (`id`),
  CONSTRAINT `FKfiondfno37y5go3uetvt06bp5` FOREIGN KEY (`card_id`) REFERENCES `credit_card` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1881,0,'https://image.freepik.com/vector-gratis/banner-sitio-web-profesional-formas-naranjas_1361-1755.jpg','Make things happen','https://www.pinterest.com',1797,1801),(1882,0,'https://i.imgur.com/MtBRoNP.png','It´s Ok','https://twitter.com',1798,1801),(1883,0,'https://pbs.twimg.com/profile_images/976496583561924614/LSrj6dGh.jpg','Beer is life','https://www.cruzcampo.es/',1799,1801),(1884,0,'https://www.reasonwhy.es/sites/default/files/coca_cola_renueva_logtipo_verano.png','Feel the Flavor of your favorite drink','https://www.cocacola.es/es/home/',NULL,1804),(1885,0,'https://www.lavanguardia.com/r/GODO/LV/p7/WebSite/2020/08/01/Recortada/AFP_1W484E_20200801050013-k6U-U482612689336AdE-992x558@LaVanguardia-Web.jpg','Make your day','https://www.tiktok.com/es/',NULL,1804),(1886,0,'https://estrellagalicia.es/wp-content/uploads/2018/02/compartir_RRSS_ES.jpg','To the bars, resistance!','https://estrellagalicia.es/',NULL,1804);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookkeeper`
--

DROP TABLE IF EXISTS `bookkeeper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookkeeper` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `firm_name` varchar(255) DEFAULT NULL,
  `responsibility` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_krvjp9eaqyapewl2igugbo9o8` (`user_account_id`),
  CONSTRAINT `FK_krvjp9eaqyapewl2igugbo9o8` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookkeeper`
--

LOCK TABLES `bookkeeper` WRITE;
/*!40000 ALTER TABLE `bookkeeper` DISABLE KEYS */;
INSERT INTO `bookkeeper` VALUES (1775,0,1774,'Acme SL','Counting dollars'),(1778,0,1777,'Acme SA','Counting millions'),(1781,0,1780,'Acme ST','Counter');
/*!40000 ALTER TABLE `bookkeeper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookkeeper_request`
--

DROP TABLE IF EXISTS `bookkeeper_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookkeeper_request` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `firm_name` varchar(255) DEFAULT NULL,
  `responsibility` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `authenticated_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_qvxp9h7at8vjbwgpi9q5s3fpl` (`authenticated_id`),
  CONSTRAINT `FKhdducua8c58xhfrls8oiih3j0` FOREIGN KEY (`authenticated_id`) REFERENCES `authenticated` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookkeeper_request`
--

LOCK TABLES `bookkeeper_request` WRITE;
/*!40000 ALTER TABLE `bookkeeper_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookkeeper_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casasola_bulletin`
--

DROP TABLE IF EXISTS `casasola_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casasola_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `favourite_color` varchar(255) DEFAULT NULL,
  `favourite_number` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casasola_bulletin`
--

LOCK TABLES `casasola_bulletin` WRITE;
/*!40000 ALTER TABLE `casasola_bulletin` DISABLE KEYS */;
INSERT INTO `casasola_bulletin` VALUES (1768,0,'blue',16,'María','Casasola'),(1769,0,'red',23,'Javier','Ruiz'),(1770,0,'green',7,'Emilia','Coleto');
/*!40000 ALTER TABLE `casasola_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge`
--

DROP TABLE IF EXISTS `challenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenge` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `average_goal` varchar(255) DEFAULT NULL,
  `average_reward_amount` double DEFAULT NULL,
  `average_reward_currency` varchar(255) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `expert_goal` varchar(255) DEFAULT NULL,
  `expert_reward_amount` double DEFAULT NULL,
  `expert_reward_currency` varchar(255) DEFAULT NULL,
  `rookie_goal` varchar(255) DEFAULT NULL,
  `rookie_reward_amount` double DEFAULT NULL,
  `rookie_reward_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge`
--

LOCK TABLES `challenge` WRITE;
/*!40000 ALTER TABLE `challenge` DISABLE KEYS */;
INSERT INTO `challenge` VALUES (1842,0,'Medium quality video',100,'€','2025-11-26 11:45:00.000000','This is the description of a simple challenge','High quality video',200,'€','Low quality video',50,'€','Video challenge'),(1843,0,'Eat 4 dishes of food',200,'€','2023-01-09 12:00:00.000000','This is the description of a medium challenge','Eat 5 dishes of food',350,'€','Eat 3 dishes of food',150.5,'€','Food challenge'),(1844,0,'Get 5K views',220.65,'€','2019-01-17 20:30:00.000000','This is the description of a difficult challenge','Get 10K views',500,'€','Get 2K views',100.78,'€','Musical challenge'),(1845,0,'Medium quality programme',5000,'€','2023-01-26 21:45:00.000000','This is the description of a difficult challenge','High quality programme',10000,'€','Low quality programme',2000,'€','Programming challenge'),(1846,0,'Code development in 5 days',2500,'€','2023-05-29 16:00:00.000000','This is the description of a medium challenge','Code development in 3 days',3000,'€','Code development in 10 days',1000,'€','Development challenge'),(1847,0,'Medium choreography',450,'€','2019-11-07 10:30:00.000000','This is the description of a simple challenge','Difficult choreography',700,'€','Simple choreography',200,'€','Dance challenge');
/*!40000 ALTER TABLE `challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coleto_bulletin`
--

DROP TABLE IF EXISTS `coleto_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coleto_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `favourite_subject` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coleto_bulletin`
--

LOCK TABLES `coleto_bulletin` WRITE;
/*!40000 ALTER TABLE `coleto_bulletin` DISABLE KEYS */;
INSERT INTO `coleto_bulletin` VALUES (1771,0,25,'Computer Engineering','AISS','Juan Rodríguez'),(1772,0,20,'Marketing','Statistics','María Díaz'),(1773,0,19,'International Business','Economics','Lucas Carrillo');
/*!40000 ALTER TABLE `coleto_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL,
  `expiration_date` varchar(255) DEFAULT NULL,
  `holder` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `patron_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK31e9eqi896koc93q7yjs5yoox` (`patron_id`),
  CONSTRAINT `FK31e9eqi896koc93q7yjs5yoox` FOREIGN KEY (`patron_id`) REFERENCES `patron` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES (1797,0,'Visa Oro','123','06/2022','Javier Ruiz Muñiz','5496675056390627',NULL),(1798,0,'Visa Oro','145','09/2022','Emilia Coleto Alcudia','5443708617023934',NULL),(1799,0,'Visa Oro','136','09/2024','María Casasola Calzadilla','5140456599317249',NULL);
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum`
--

DROP TABLE IF EXISTS `discussion_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussion_forum` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `investment_round_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_bh0lucmvo3025w2dl16tt130i` (`investment_round_id`),
  CONSTRAINT `FKmcgrpw22g3baap51wq319v1bp` FOREIGN KEY (`investment_round_id`) REFERENCES `investment_round` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum`
--

LOCK TABLES `discussion_forum` WRITE;
/*!40000 ALTER TABLE `discussion_forum` DISABLE KEYS */;
INSERT INTO `discussion_forum` VALUES (1854,0,1806);
/*!40000 ALTER TABLE `discussion_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussion_forum_investor`
--

DROP TABLE IF EXISTS `discussion_forum_investor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussion_forum_investor` (
  `discussion_forum_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  KEY `FK3r7nywnm4qywhfagth8r77m0i` (`investor_id`),
  KEY `FKm5owhlecb7x22m3y73l50p0pb` (`discussion_forum_id`),
  CONSTRAINT `FK3r7nywnm4qywhfagth8r77m0i` FOREIGN KEY (`investor_id`) REFERENCES `investor` (`id`),
  CONSTRAINT `FKm5owhlecb7x22m3y73l50p0pb` FOREIGN KEY (`discussion_forum_id`) REFERENCES `discussion_forum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussion_forum_investor`
--

LOCK TABLES `discussion_forum_investor` WRITE;
/*!40000 ALTER TABLE `discussion_forum_investor` DISABLE KEYS */;
INSERT INTO `discussion_forum_investor` VALUES (1854,1867);
/*!40000 ALTER TABLE `discussion_forum_investor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrepreneur`
--

DROP TABLE IF EXISTS `entrepreneur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrepreneur` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `activity_sector` tinyblob,
  `qualification_record` varchar(255) DEFAULT NULL,
  `skills_record` varchar(255) DEFAULT NULL,
  `start_up_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_r6tqltqvrlh1cyy8rsj5pev1q` (`user_account_id`),
  CONSTRAINT `FK_r6tqltqvrlh1cyy8rsj5pev1q` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrepreneur`
--

LOCK TABLES `entrepreneur` WRITE;
/*!40000 ALTER TABLE `entrepreneur` DISABLE KEYS */;
INSERT INTO `entrepreneur` VALUES (1792,1,1791,_binary '�\�\0sr\0,acme.entities.activitySectors.ActivitySector\0\0\0\0\0\0\0\0L\0sectort\0Ljava/lang/String;xr\0$acme.framework.entities.DomainEntity\0\0\0\0\0\0\0\0I\0idI\0versionxp\0\0<\0\0\0\0t\0BUSINESS','Qualification Record 1','Skills Record 1','Lisa West'),(1795,1,1794,_binary '�\�\0sr\0,acme.entities.activitySectors.ActivitySector\0\0\0\0\0\0\0\0L\0sectort\0Ljava/lang/String;xr\0$acme.framework.entities.DomainEntity\0\0\0\0\0\0\0\0I\0idI\0versionxp\0\0:\0\0\0\0t\0SCIENCE','Qualification Record 1','Skills Record 1','John Webster');
/*!40000 ALTER TABLE `entrepreneur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1905);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquire`
--

DROP TABLE IF EXISTS `inquire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquire` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `max_money_amount` double DEFAULT NULL,
  `max_money_currency` varchar(255) DEFAULT NULL,
  `min_money_amount` double DEFAULT NULL,
  `min_money_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquire`
--

LOCK TABLES `inquire` WRITE;
/*!40000 ALTER TABLE `inquire` DISABLE KEYS */;
INSERT INTO `inquire` VALUES (1830,0,'2019-09-03 13:30:00.000000','2020-10-03 13:30:00.000000','Left wheel puncture','mechanicalworkshopdp@gmail.com',500,'€',350,'€','Failure on A-92'),(1831,0,'2020-03-07 20:54:00.000000','2030-10-03 13:30:00.000000','Budget for a software project','sftdevelop@gmail.com',10000,'€',5000,'€','Project budget'),(1832,0,'2020-05-23 08:03:00.000000','2029-10-03 13:30:00.000000','Museum doors opening hours','museum@gmail.com',30,'€',15,'€','Opening Hours'),(1833,0,'2020-02-04 15:35:00.000000','2020-10-03 19:30:00.000000','Light supply faulty','electricityDP@gmail.com',1500,'€',500,'€','Electric failure'),(1834,0,'2020-03-07 20:54:00.000000','2020-06-03 13:30:00.000000','Ask about the price of admission to the museum','museum@gmail.com',30,'€',10,'€','Museum entrance fee'),(1835,0,'2020-05-20 12:03:00.000000','2029-05-21 13:30:00.000000','Museum doors closing hours','museum@gmail.com',30,'€',15,'€','Closing Hours');
/*!40000 ALTER TABLE `inquire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_application`
--

DROP TABLE IF EXISTS `investment_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment_application` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creation_moment` datetime(6) DEFAULT NULL,
  `justification` varchar(255) DEFAULT NULL,
  `money_offer_amount` double DEFAULT NULL,
  `money_offer_currency` varchar(255) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `investment_applied_id` int(11) NOT NULL,
  `investor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_b1dfm3w93774b32gkuqjte3uh` (`ticker`),
  KEY `FKsjmgti3uflddgogt0clorf8lt` (`investment_applied_id`),
  KEY `FK1u1q9mgfc9yhue8k5suie17ck` (`investor_id`),
  CONSTRAINT `FK1u1q9mgfc9yhue8k5suie17ck` FOREIGN KEY (`investor_id`) REFERENCES `investor` (`id`),
  CONSTRAINT `FKsjmgti3uflddgogt0clorf8lt` FOREIGN KEY (`investment_applied_id`) REFERENCES `investment_round` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_application`
--

LOCK TABLES `investment_application` WRITE;
/*!40000 ALTER TABLE `investment_application` DISABLE KEYS */;
INSERT INTO `investment_application` VALUES (1870,0,'2020-08-11 17:22:00.000000',NULL,1000,'€','This is a statement',0,'TEC-19-090909',1806,1869),(1871,0,'2020-08-09 17:22:00.000000',NULL,1600,'€','This is a statement',0,'SCI-19-222222',1807,1866),(1872,0,'2020-08-05 17:22:00.000000',NULL,1200,'€','This is a statement',0,'TEC-18-190709',1808,1866),(1873,0,'2020-07-29 17:22:00.000000',NULL,1500,'€','This is a statement',0,'SCI-17-244222',1807,1867),(1874,0,'2020-07-31 17:22:00.000000',NULL,1600,'€','This is a statement',1,'BUS-19-333333',1806,1867),(1875,0,'2020-08-10 17:22:00.000000',NULL,1600,'€','This is a statement',1,'BUS-19-333330',1808,1869),(1876,0,'2020-08-08 17:22:00.000000','This is the application number 7 justification',1600,'€','This is a statement',2,'BUS-19-333339',1809,1867),(1877,0,'2020-07-25 17:22:00.000000',NULL,1600,'€','This is a statement',0,'BUS-19-333338',1809,1868),(1878,0,'2020-08-03 17:22:00.000000',NULL,1600,'€','This is a statement',0,'BUS-19-333337',1807,1868),(1879,0,'2020-08-08 17:22:00.000000',NULL,1600,'€','This is a statement',0,'BUS-19-333336',1810,1867),(1880,0,'2020-08-08 17:22:00.000000',NULL,1600,'€','This is a statement',0,'BUS-19-333335',1810,1868);
/*!40000 ALTER TABLE `investment_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investment_round`
--

DROP TABLE IF EXISTS `investment_round`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investment_round` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `amount_amount` double DEFAULT NULL,
  `amount_currency` varchar(255) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `kind_of_round` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `entrepreneur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_408l1ohatdkkut5bkt0eu6ifs` (`ticker`),
  KEY `FKkj1l8c2ftn9c65y061me6t37j` (`entrepreneur_id`),
  CONSTRAINT `FKkj1l8c2ftn9c65y061me6t37j` FOREIGN KEY (`entrepreneur_id`) REFERENCES `entrepreneur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investment_round`
--

LOCK TABLES `investment_round` WRITE;
/*!40000 ALTER TABLE `investment_round` DISABLE KEYS */;
INSERT INTO `investment_round` VALUES (1806,0,200,'€','2020-03-05 17:00:00.000000','Investment for a development agency',0,'http://wego.com','ABC-00-123456','Friends',1792),(1807,0,500,'€','2019-02-25 10:50:00.000000','Investment for a travel agency',3,'http://youtour.com','DEF00-01-234567','Travel agency',1795),(1808,0,1000,'€','2019-12-05 20:00:00.000000','Investment for ACME S. L. ',2,'http://acme.com','DYI30-01-278567','Travel agency',1795),(1809,0,15000,'€','2018-09-01 14:19:00.000000','Investment for Tore Agency',5,'http://toreagency.com','UTG-56-100100','Travel agency',1792),(1810,0,50000,'€','2020-02-20 13:40:00.000000','Investment for Swery S. A.',3,'http://swery.com','UGG-76-109100','Travel agency',1792),(1811,0,250,'€','2020-07-20 12:40:00.000000','This round has not applications',2,'http://tohhi.com','SCI-76-109100','No applications round',1795);
/*!40000 ALTER TABLE `investment_round` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investor`
--

DROP TABLE IF EXISTS `investor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `firm_name` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdhwcb7642hi219n23ajpvow43` (`sector_id`),
  KEY `FK_dcek5rr514s3rww0yy57vvnpq` (`user_account_id`),
  CONSTRAINT `FK_dcek5rr514s3rww0yy57vvnpq` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`),
  CONSTRAINT `FKdhwcb7642hi219n23ajpvow43` FOREIGN KEY (`sector_id`) REFERENCES `activity_sector` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investor`
--

LOCK TABLES `investor` WRITE;
/*!40000 ALTER TABLE `investor` DISABLE KEYS */;
INSERT INTO `investor` VALUES (1866,0,1783,'Acme SL','Cinematographic and audiovisual production, distribution and exhibition; theatrical production and distribution, and creation and production of advertising campaigns and events',1849),(1867,0,1785,'DIGITAL ASSETS DEPLOYMENT','This fund is one of the oldest investment companies in Spain. It was launched by the legendary Rodolfo Carpintier more than a decade ago and focuses on offering seed capital',1850),(1868,0,1787,'ENCOMENDA','Super Angel Fund, invests in entrepreneurs who have already developed the minimum viable product and also in those who have already achieved their first metrics',1853),(1869,0,1789,'SEAYA VENTURES','Usually put a tab in businesses that have to do with the internet and technology',1852);
/*!40000 ALTER TABLE `investor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investor_discussion_forum`
--

DROP TABLE IF EXISTS `investor_discussion_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investor_discussion_forum` (
  `investor_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  KEY `FKrgsomed4msuh6btdjre6h85qf` (`forum_id`),
  KEY `FK3e7mj2mcs1kg5oiyjkjusng2x` (`investor_id`),
  CONSTRAINT `FK3e7mj2mcs1kg5oiyjkjusng2x` FOREIGN KEY (`investor_id`) REFERENCES `investor` (`id`),
  CONSTRAINT `FKrgsomed4msuh6btdjre6h85qf` FOREIGN KEY (`forum_id`) REFERENCES `discussion_forum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investor_discussion_forum`
--

LOCK TABLES `investor_discussion_forum` WRITE;
/*!40000 ALTER TABLE `investor_discussion_forum` DISABLE KEYS */;
INSERT INTO `investor_discussion_forum` VALUES (1866,1854);
/*!40000 ALTER TABLE `investor_discussion_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `forum_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7ju7uxmh5mdbjgrfwgoem3eqd` (`forum_id`),
  CONSTRAINT `FK7ju7uxmh5mdbjgrfwgoem3eqd` FOREIGN KEY (`forum_id`) REFERENCES `discussion_forum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1903,0,'This challenge is too hard','2020-02-25 09:00:00.000000','Very hard challenge',1854),(1904,0,'I don\'t think it\'s good','2018-10-31 12:50:00.000000','Disagreement',1854);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_tags`
--

DROP TABLE IF EXISTS `message_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_tags` (
  `message_id` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  KEY `FKk6j00y1eiyu6qe5gad8rvefed` (`message_id`),
  CONSTRAINT `FKk6j00y1eiyu6qe5gad8rvefed` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_tags`
--

LOCK TABLES `message_tags` WRITE;
/*!40000 ALTER TABLE `message_tags` DISABLE KEYS */;
INSERT INTO `message_tags` VALUES (1903,'Challenge'),(1904,'Price'),(1904,'Dicussion');
/*!40000 ALTER TABLE `message_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `header_picture` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1824,0,'News uncovering fakes','2019-10-29 18:30:00.000000','2019-11-30 11:00:00.000000','https://static.leonoticias.com/www/multimedia/202003/27/media/cortadas/bulo_648x400-kNyD-U1006945261959vH-624x385@RC.jpg','Fake news'),(1825,0,'Covid regrowth in Reina Mercedes','2019-09-03 13:30:00.000000','2029-11-29 11:00:00.000000','https://images11.eitb.eus/multimedia/images/2020/05/22/2608481/20200522152310_mensaje-bulo-whatsapp-ita_foto610x342.jpg','Covid19'),(1826,0,'Important news','2020-02-27 22:30:00.000000','2022-03-30 10:00:00.000000','https://as2.ftcdn.net/jpg/00/73/01/49/500_F_73014977_1a95eg4IhCefx1QTGEPOQ12lFgXp4idw.jpg','Important notice'),(1827,0,'Breaking news','2019-12-29 19:30:00.000000','2023-01-30 11:00:00.000000','https://image.shutterstock.com/image-vector/breaking-news-world-map-backgorund-260nw-631989002.jpg','Breaking news'),(1828,0,'Sky news','2020-04-03 11:30:00.000000','2024-05-02 12:00:00.000000','https://news.sky.com/resources/sky-news-logo.png?v=1?bypass-service-worker','Sky news'),(1829,0,'Top exciting news','2019-10-13 17:30:00.000000','2021-11-15 11:00:00.000000','https://friendsofcpjma.com/files/2019/11/c13c96feb8ed4c03b82d16bf83c19509_Fotolia_190331197_Subscription_Monthly_XXL-1156-577-c.jpg','Exciting news');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_related_notices`
--

DROP TABLE IF EXISTS `notice_related_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_related_notices` (
  `notice_id` int(11) NOT NULL,
  `related_notices` varchar(255) DEFAULT NULL,
  KEY `FKqc9an4dp5k6wuis8dyx289lg2` (`notice_id`),
  CONSTRAINT `FKqc9an4dp5k6wuis8dyx289lg2` FOREIGN KEY (`notice_id`) REFERENCES `notice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_related_notices`
--

LOCK TABLES `notice_related_notices` WRITE;
/*!40000 ALTER TABLE `notice_related_notices` DISABLE KEYS */;
INSERT INTO `notice_related_notices` VALUES (1825,'https://www.xataka.com/videojuegos/todos-juegos-para-xbox-series-x-que-microsoft-acaba-presentar-nueva-xbox-viene-bien-cargada-titulos-nuevos\n				'),(1825,'https://www.xataka.com/cine-y-tv/13-series-similares-a-dark-para-ver-te-ha-gustado-fenomeno-netflix'),(1826,'https://edition.cnn.com/2020/08/02/asia/foreign-wives-south-korea-intl-hnk-dst/index.html'),(1826,'https://news.sky.com/story/coronavirus-the-infection-numbers-in-real-time-11942138');
/*!40000 ALTER TABLE `notice_related_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overture`
--

DROP TABLE IF EXISTS `overture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overture` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creation_moment` datetime(6) DEFAULT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `max_money_amount` double DEFAULT NULL,
  `max_money_currency` varchar(255) DEFAULT NULL,
  `min_money_amount` double DEFAULT NULL,
  `min_money_currency` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overture`
--

LOCK TABLES `overture` WRITE;
/*!40000 ALTER TABLE `overture` DISABLE KEYS */;
INSERT INTO `overture` VALUES (1812,0,'2020-02-02 18:22:00.000000','2021-02-02 18:22:00.000000','Proposal for overture 1','overture1@email.com',100,'€',50,'€','First proposal'),(1813,0,'2019-10-02 06:12:00.000000','2020-02-02 18:22:00.000000','Proposal for overture 2','overture2@email.com',500,'€',350,'€','Second proposal'),(1814,0,'2019-12-18 12:22:00.000000','2020-07-02 17:22:00.000000','Proposal for overture 3','overture3@email.com',800,'€',500,'€','Third proposal'),(1815,0,'2020-02-02 18:22:00.000000','2024-10-08 11:26:00.000000','Proposal for overture 4','overture4@email.com',500,'€',130,'€','Fourth proposal'),(1816,0,'2020-05-23 04:57:00.000000','2021-07-24 21:01:00.000000','Proposal for overture 5','overture5@email.com',870,'€',420,'€','Fifth proposal'),(1817,0,'2020-08-02 19:34:00.000000','2022-07-09 10:32:00.000000','Proposal for overture 6','overture6@email.com',1000,'€',505,'€','Sixth proposal');
/*!40000 ALTER TABLE `overture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patron`
--

DROP TABLE IF EXISTS `patron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patron` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `organisation_name` varchar(255) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlyiwy22y6u5hmqeb4s0bmoh13` (`card_id`),
  KEY `FK_8xx5nujhuio3advxc2freyu65` (`user_account_id`),
  CONSTRAINT `FK_8xx5nujhuio3advxc2freyu65` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`),
  CONSTRAINT `FKlyiwy22y6u5hmqeb4s0bmoh13` FOREIGN KEY (`card_id`) REFERENCES `credit_card` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patron`
--

LOCK TABLES `patron` WRITE;
/*!40000 ALTER TABLE `patron` DISABLE KEYS */;
INSERT INTO `patron` VALUES (1801,0,1800,'Pepsico and NFL',NULL),(1804,0,1803,'TechCrunch Disrupt',NULL);
/*!40000 ALTER TABLE `patron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruizbulletin`
--

DROP TABLE IF EXISTS `ruizbulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ruizbulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `favourite_films` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruizbulletin`
--

LOCK TABLES `ruizbulletin` WRITE;
/*!40000 ALTER TABLE `ruizbulletin` DISABLE KEYS */;
INSERT INTO `ruizbulletin` VALUES (1767,0,'javiru@gmail.com','Karate a muerte en Torremolinos','Javie','Ruiz');
/*!40000 ALTER TABLE `ruizbulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spam_list`
--

DROP TABLE IF EXISTS `spam_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spam_list` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `spam_threshold` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spam_list`
--

LOCK TABLES `spam_list` WRITE;
/*!40000 ALTER TABLE `spam_list` DISABLE KEYS */;
INSERT INTO `spam_list` VALUES (1848,0,2.5);
/*!40000 ALTER TABLE `spam_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spam_word`
--

DROP TABLE IF EXISTS `spam_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spam_word` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `english_translation` varchar(255) DEFAULT NULL,
  `spanish_translation` varchar(255) DEFAULT NULL,
  `spam_list_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDXhanrt2fsn54h9gc72io7efxv1` (`english_translation`),
  KEY `FKt810pcdonbdfbt4vi2vfmukgq` (`spam_list_id`),
  CONSTRAINT `FKt810pcdonbdfbt4vi2vfmukgq` FOREIGN KEY (`spam_list_id`) REFERENCES `spam_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spam_word`
--

LOCK TABLES `spam_word` WRITE;
/*!40000 ALTER TABLE `spam_word` DISABLE KEYS */;
INSERT INTO `spam_word` VALUES (1896,0,'sex','sexo',1848),(1897,0,'hard core','hard core',1848),(1898,0,'viagra','viagra',1848),(1899,0,'cialis','cialis',1848),(1900,0,'nigeria','nigeria',1848),(1901,0,'you´ve won','has ganado',1848),(1902,0,'million dollar','millón de dólares',1848);
/*!40000 ALTER TABLE `spam_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology_record`
--

DROP TABLE IF EXISTS `technology_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `inventor` varchar(255) DEFAULT NULL,
  `open_source` bit(1) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `activity_sector_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8u46778j70eyi41arwj6oj830` (`activity_sector_id`),
  CONSTRAINT `FK8u46778j70eyi41arwj6oj830` FOREIGN KEY (`activity_sector_id`) REFERENCES `activity_sector` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology_record`
--

LOCK TABLES `technology_record` WRITE;
/*!40000 ALTER TABLE `technology_record` DISABLE KEYS */;
INSERT INTO `technology_record` VALUES (1818,1,'Technology record 1','tech1@email.com','John Deep',_binary '',3,'Technology record 1','http://www.google.com',1852),(1819,1,'Technology record 2','tech2@email.com','Peter Cyrus',_binary '\0',1,'Technology record 2','http://www.youtube.com',1851),(1820,1,'Technology record 3','tech3@email.com','Mery Lovin',_binary '',-1,'Technology record 3','http://www.pinterest.com',1851),(1821,1,'Technology record 4','tech4@email.com','Anne Pie',_binary '',4,'Technology record 4','http://www.twitter.com',1849),(1822,1,'Technology record 5','tech5@email.com','Mary Jean',_binary '\0',5,'Technology record 5','http://www.spotify.com',1851),(1823,1,'Technology record 6','tech6@email.com','Frank Port',_binary '',2,'Technology record 6','https://www.google.es/maps',1852);
/*!40000 ALTER TABLE `technology_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tool_record`
--

DROP TABLE IF EXISTS `tool_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tool_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `inventor_name` varchar(255) DEFAULT NULL,
  `open_source` bit(1) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `web_site` varchar(255) DEFAULT NULL,
  `activity_sector_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3qw0ejiyueyfj8uf2ubb642nh` (`activity_sector_id`),
  CONSTRAINT `FK3qw0ejiyueyfj8uf2ubb642nh` FOREIGN KEY (`activity_sector_id`) REFERENCES `activity_sector` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tool_record`
--

LOCK TABLES `tool_record` WRITE;
/*!40000 ALTER TABLE `tool_record` DISABLE KEYS */;
INSERT INTO `tool_record` VALUES (1836,1,'Collaborative development platform','contacto@github.com','Chris Wanstrath, P. J. Hyett, Tom Preston-Werner and Scott Chacon',_binary '',4,'GitHub','https://github.com/',1850),(1837,1,'A question and answer site for professional and hobby programmers','contacto@stackoverflow.com','Jeff Atwood and Joel Spolsky',_binary '',5,'Stack overflow','https://stackoverflow.com/',1849),(1838,1,'Project that automates the deployment of applications inside software containers','contacto@docker.com','Solomon Hykes',_binary '',-2,'Docker','https://www.docker.com/',1849),(1839,1,'Modular, web-based software to support IT operations in terms of IT service management','contacto@itop.com','The technology group Hewlett-Packard',_binary '',-3,'iTop','https://www.itop.es/',1852),(1840,1,'Platform to evaluate source code','contacto@sonarqube.com','Freddy Mallet',_binary '',3,'SonarQube','https://www.sonarqube.org/',1850),(1841,1,'Git-based collaborative software development and version control web service','contacto@gitlab.com','Dmitriy Zaporozhets y Valery Sizov',_binary '\0',5,'GitLab','https://gitlab.com/',1849);
/*!40000 ALTER TABLE `tool_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `identity_email_email` varchar(255) DEFAULT NULL,
  `identity_email_full_name` varchar(255) DEFAULT NULL,
  `identity_name` varchar(255) DEFAULT NULL,
  `identity_surname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_castjbvpeeus0r8lbpehiu0e4` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,0,_binary '\0','john.doe@anonymous.com','John Doe','John','Doe','$2a$05$i8v5aRH7Ko886IuXqj8CqO3Gutql7KiKfzgZV2eypiPgXNhbGQVXm','anonymous'),(3,0,_binary '','administrator@acme.com',NULL,'Administrator','Acme.com','$2a$05$7BM0NwyUdZYCbh52P/TU5OvqC5062fpvcaQf4XWMOrjYRxlTj2Xl.','administrator'),(1774,0,_binary '','ryan@bookkeeper.com','Ryan West','Ryan','West','$2a$05$IwJML/9sMTEnPMFPL4rwL.KDkl1.DeqWpFHOJdOQ7SqCzvY4niHTy','bookkeeper1'),(1777,0,_binary '','tiffany@bookkeeper.com','Tiffany Smith','Tiffany','Smith','$2a$05$dJBd4bK4/7j0cA85sEDVbeMtTrGYf8y2yBN6Nt2pSJ4zohy0X7NT2','bookkeeper2'),(1780,0,_binary '','john@bookkeeper.com',NULL,'Jhon','Fill','$2a$05$gC61vncODfcNbDN0VjsyPupSQmzwz1lyijCShgdZFpdj5c1xOFxsO','bookkeeper3'),(1783,0,_binary '','lisw@investor.com','Lis Wet','Lis','Wet','$2a$05$bMsuO/T5B71/L06rrBTXW.Sl1zatQIKsfLe7MmNkHwDhWg/0itjHe','investor1'),(1785,0,_binary '','javierr@investor.com',NULL,'Javier','Ruiz','$2a$05$waMFePtT/4W7T6ryle7uqenCVMpTBFLnuTJBJv9mZqFWBzN6osMNO','investor2'),(1787,0,_binary '','emic@investor.com','Emi Col','Emi','Col','$2a$05$GvMdXbx.YSsITC3L9t2BHOiAm/iP1RvLmIYS4gLNGTqreawUQ/Rp6','investor3'),(1789,0,_binary '','maric@investor.com','Mari Cas','Mari','Cas','$2a$05$olszmwu6JhSVTG2MRsijQuE8ulmk7pEPnr4z1.lhAQ0NtY4d9aDeK','investor4'),(1791,0,_binary '','lisa@entrepreneur.com','Lisa West','Lisa','West','$2a$05$t0vhRIq7jd2YvKZkSj1UHunHIXha/vMiTas.EHIqJOe0/RaoeFr.y','entrepreneur1'),(1794,0,_binary '','john@entrepreneur.com','John Webster','John','Webster','$2a$05$cA9ghIhkRsA9CkRexpVeIe81acE4dGurFy0/xCHVe1I.V46yN4xjq','entrepreneur2'),(1800,0,_binary '','mary@patron.com',NULL,'Mary','Collin','$2a$05$RzpnyALDBnoLOcFrMfjqwusQkQV9ZqJl6TYXVkiObXqtqWBujpt1m','patron1'),(1803,0,_binary '','fboomer@patron.com','Frank Boomer','Frank','Boomer','$2a$05$tL08ddoOUhthtoQnJYy2NeRjr0gaO1xAESV.1uta4tA0uvTIxKlBi','patron2');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-31 14:47:50
