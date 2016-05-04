-- MySQL dump 10.13  Distrib 5.5.42, for osx10.6 (i386)
--
-- Host: localhost    Database: grubflix
-- ------------------------------------------------------
-- Server version	5.5.42

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

--
-- Table structure for table `address`
--

DROP SCHEMA IF EXISTS `grubflix` ;

-- -----------------------------------------------------
-- Schema grubflix
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `grubflix` DEFAULT CHARACTER SET utf8 ;

DROP USER `grubflix`@`localhost`; /* Uncomment to run script again */

CREATE USER `grubflix`@`localhost` IDENTIFIED BY 'grubflix';
GRANT ALL PRIVILEGES ON grubflix.* TO `grubflix`@`localhost`;

USE `grubflix` ;



DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `name` varchar(10) NOT NULL,
  `customer_email` varchar(30) NOT NULL,
  `streetaddress` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`name`,`customer_email`),
  KEY `fk_address_customer_email_idx` (`customer_email`),
  CONSTRAINT `fk_address_customer_email` FOREIGN KEY (`customer_email`) REFERENCES `customers` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_email` varchar(30) NOT NULL,
  `dateorder` datetime DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_customerorder_customeremail_idx` (`customer_email`),
  CONSTRAINT `fk_customerorder_customeremail` FOREIGN KEY (`customer_email`) REFERENCES `customers` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `access_level` int(11) NOT NULL,
  `birthdate` datetime NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvds`
--

DROP TABLE IF EXISTS `dvds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dvds` (
  `dvd_title` varchar(30) NOT NULL,
  `rating` varchar(5) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `genreid` varchar(25) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posterURL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=291377 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvds`
--

LOCK TABLES `dvds` WRITE;
/*!40000 ALTER TABLE `dvds` DISABLE KEYS */;
INSERT INTO `dvds` VALUES ('Home Sweet Hell (2015)','R','2015','Comedy',266163,NULL),('World Made Straight','R','2015','Drama',273903,NULL),('Blackhat','R','2015','Action/Adventure',275179,NULL),('Vice (2015 w/ Digital Copy)','R','2015','SciFi',275363,NULL),('Boy Next Door (2015/ DVD & Blu','R','2015','Suspense/Thriller',275382,NULL),('Boy Next Door (2015)','R','2015','Suspense/Thriller',275386,NULL),('Wild Card (2015 w/ Digital Cop','R','2015','Action/Adventure',275591,NULL),('I Really Hate My Ex (w/ Digita','R','2015','Comedy',275750,NULL),('Kidnapping Mr. Heineken (Blu-r','R','2015','Action/Adventure',275778,NULL),('Kidnapping Mr. Heineken','R','2015','Action/Adventure',275782,NULL),('Bedlam (2015 w/ Digital Copy)','R','2015','Suspense/Thriller',275918,NULL),('Bad Asses On The Bayou','R','2015','Action/Adventure',275924,NULL),('See You In Valhalla','R','2015','Comedy',276008,NULL),('Fifty Shades Of Grey (DVD & Bl','R','2015','Drama',276059,NULL),('Fifty Shades Of Grey','R','2015','Drama',276086,NULL),('Blackhat (Rental Ready)','R','2015','Action/Adventure',276210,NULL),('Wedding Ringer','R','2015','Comedy',276395,NULL),('Marine 4: The Moving Target','R','2015','Action/Adventure',276423,NULL),('Marine 4: The Moving Target (B','R','2015','Action/Adventure',276432,NULL),('Roommate Wanted','R','2015','Drama',277195,NULL),('Nightlight (w/ Digital Copy)','R','2015','Horror',277320,NULL),('Mortdecai (w/ Digital Copy)','R','2015','Action/Adventure',277334,NULL),('Hayride 2','R','2015','Horror',277462,NULL),('Chappie (w/ Digital Copy)','R','2015','SciFi',277684,NULL),('No Way Jose','R','2015','Comedy',277732,NULL),('American Bad Boy (w/ Digital C','R','2015','Drama',277950,NULL),('Pound Of Flesh (2015)','R','2015','Action/Adventure',278367,NULL),('Echoes Of War','R','2015','Western',278456,NULL),('Infini','R','2015','SciFi',278480,NULL),('Focus (2015 w/ Digital Copy)','R','2015','Comedy',278553,NULL),('Run All Night (w/ Digital Copy','R','2015','Action/Adventure',278722,NULL),('Get Hard (w/ Digital Copy)','R','2015','Comedy',278730,NULL),('Careful What You Wish For','R','2015','Suspense/Thriller',278760,NULL),('Gunman (2015)','R','2015','Action/Adventure',278777,NULL),('Lovers (2015)','R','2015','Action/Adventure',278781,NULL),('Unfinished Business','R','2015','Comedy',278822,NULL),('Tooken','R','2015','Comedy',278925,NULL),('Danny Collins (Alternate UPC)','R','2015','Comedy',279067,NULL),('Wild Horses (2015)','R','2015','Drama',279213,NULL),('Last Knights (Digital Copy)','R','2015','Action/Adventure',279377,NULL),('Pressure (2015)','R','2015','Suspense/Thriller',279639,NULL),('Ex Machina','R','2015','SciFi',279811,NULL),('Absolution (2015 w/ Digital Co','R','2015','Action/Adventure',279817,NULL),('Slow West (w/ Digital Copy)','R','2015','Western',279824,NULL),('Strangerland','R','2015','Suspense/Thriller',280039,NULL),('Sister Code','R','2015','Comedy',280079,NULL),('Lila & Eve','R','2015','Drama',280123,NULL),('You Bury Your Own','MA15','2015','Suspense/Thriller',280148,NULL),('True Story (2015/ Dir. by Rupe','R','2015','Drama',280404,NULL),('True Story (2015/ Dir. by Rupe','R','2015','Drama',280454,NULL),('Evil Bong 420','R','2015','Horror',280477,NULL),('Always Watching: A Marble Horn','R','2015','Horror',280494,NULL),('Child 44 (w/ Digital Copy)','R','2015','Suspense/Thriller',280543,NULL),('Runner (2015)','R','2015','Suspense/Thriller',280655,NULL),('Area 51 (2015/ Rental Ready)','R','2015','Horror',280671,NULL),('Poltergeist Activity','R','2015','Horror',280689,NULL),('Chocolate City','R','2015','Drama',280691,NULL),('Unexpected (2015)','R','2015','Comedy',280696,NULL),('Bleach: Box Set 26 (Uncut)','MA13','2015','Anime',280777,NULL),('Zipper','R','2015','Drama',280845,NULL),('Vendetta (2015 w/ Digital Copy','R','2015','Action/Adventure',280847,NULL),('Results','R','2015','Comedy',280879,NULL),('Safelight','R','2015','Drama',281039,NULL),('Exeter','R','2015','Horror',281048,NULL),('People Places Things','R','2015','Comedy',281050,NULL),('Skin Traffik','R','2015','Action/Adventure',281061,NULL),('Harbinger Down','R','2015','SciFi',281066,NULL),('Mad Max: Fury Road (Special Ed','R','2015','Action/Adventure',281179,NULL),('Mad Max: Fury Road (DVD & Blu-','R','2015','Action/Adventure',281217,NULL),('Broken Horses','R','2015','Drama',281694,NULL),('Extinction','R','2015','SciFi',281695,NULL),('Chain Of Command (2015/ Blu-ra','R','2015','Action/Adventure',281716,NULL),('Chain Of Command (2015 w/ Digi','R','2015','Action/Adventure',281733,NULL),('Dope (2015 w/ Digital Copy)','R','2015','Comedy',281845,NULL),('Pod','R','2015','Horror',281906,NULL),('Final Girl (2015)','R','2015','Action/Adventure',281921,NULL),('Visions (2015)','R','2015','Suspense/Thriller',281954,NULL),('10,000 Saints','R','2015','Comedy',282008,NULL),('D Train','R','2015','Comedy',282117,NULL),('Overnight (2015)','R','2015','Comedy',282172,NULL),('Entourage (2015)','R','2015','Comedy',282241,NULL),('Danny Collins','R','2015','Comedy',282267,NULL),('Spy (2015)','R','2015','Action/Adventure',282384,NULL),('Dark Places (2015 w/ Digital C','R','2015','Drama',282456,NULL),('Forever (2015/ Drama/ Monterey','R','2015','Drama',282528,NULL),('Straight Outta Compton','R','2015','Drama',282580,NULL),('Southpaw (2015)','R','2015','Action/Adventure',282587,NULL),('Straight Outta Compton (DVD & ','R','2015','Drama',282633,NULL),('Cop Car','R','2015','Suspense/Thriller',282682,NULL),('Magic Mike XXL','R','2015','Comedy',282758,NULL),('Stanford Prison Experiment','R','2015','Drama',282884,NULL),('Gallows','R','2015','Horror',282889,NULL),('Tangerine','R','2015','Comedy',282891,NULL),('Tiger House','R','2015','Action/Adventure',282901,NULL),('Dragon Ball Z: Resurrection \'F','MA13','2015','Anime',283201,NULL),('Vacation','R','2015','Comedy',283207,NULL),('Dragon Ball Z: Resurrection \'F','MA13','2015','Anime',283222,NULL),('Dragon Ball Z: Resurrection \'F','MA13','2015','Anime',283226,NULL),('Sinister 2','R','2015','Horror',283275,NULL),('L.A. Slasher','R','2015','Comedy',283314,NULL),('Gift (2015)','R','2015','Suspense/Thriller',283319,NULL),('Space Brothers: Collection 6','MA13','2015','Anime',283353,NULL),('Space Brothers: Collection 6 (','MA13','2015','Anime',283357,NULL),('Arthur & Merlin','R','2015','Fantasy',283366,NULL),('No Escape (2015)','R','2015','Action/Adventure',283374,NULL),('More Money More Family (w/ Dig','R','2015','Comedy',283375,NULL),('Hidden (2015)','R','2015','Horror',283455,NULL),('American Ultra (w/ Digital Cop','R','2015','Action/Adventure',283499,NULL),('End Of The Tour (w/ Digital Co','R','2015','Drama',283503,NULL),('Horse Tale','G','2015','Family',283517,NULL),('Amy (2015)','R','2015','Music',283661,NULL),('Digging For Fire','R','2015','Drama',283848,NULL),('Digging For Fire (Alternate UP','R','2015','Comedy',283928,NULL),('Walk In The Woods','R','2015','Comedy',284094,NULL),('War Pigs','R','2015','Action/Adventure',284214,NULL),('12 Rounds 3: Lockdown (w/ Digi','R','2015','Action/Adventure',284228,NULL),('Mississippi Grind (w/ Digital ','R','2015','Drama',284249,NULL),('Burnt','R','2015','Comedy',284281,NULL),('Knock Knock (2015 w/ Digital C','R','2015','Thriller',284318,NULL),('Sex, Death And Bowling','R','2015','Comedy',284357,NULL),('We Are Your Friends','R','2015','Drama',284362,NULL),('Zero Tolerance (2015 w/ Digita','R','2015','Action/Adventure',284372,NULL),('Sicario (w/ Digital Copy)','R','2015','Action/Adventure',284869,NULL),('Stanford Prison Experiment (Bl','R','2015','Drama',284881,NULL),('Heist (2015)','R','2015','Action/Adventure',284912,NULL),('He Never Died','R','2015','Horror',284954,NULL),('Mercury Plains (w/ Digital Cop','R','2015','Action/Adventure',284986,NULL),('Condemned 2 (w/ Digital Copy)','R','2015','Action/Adventure',285012,NULL),('Room (2015)','R','2015','Drama',285105,NULL),('Unnatural (2015)','R','2015','Horror',285135,NULL),('Lumberjack Man (On Demand DVD-','R','2015','Horror',285145,NULL),('Re-Kill (On Demand DVD-R)','R','2015','Horror',285151,NULL),('Bastard (On Demand DVD-R)','R','2015','Horror',285152,NULL),('Hitman: Agent 47','R','2015','Action/Adventure',285158,NULL),('Ashby','R','2015','Drama',285166,NULL),('Wicked Within (On Demand DVD-R','R','2015','Horror',285171,NULL),('Suspension (2015/ On Demand DV','R','2015','Suspense/Thriller',285185,NULL),('Frankenstein (2015)','R','2015','Horror',285209,NULL),('Space Brothers: Collection 7','MA13','2015','Anime',285214,NULL),('Moonwalkers','R','2015','Comedy',285215,NULL),('Space Brothers: Collection 7 (','MA13','2015','Anime',285223,NULL),('Steve Jobs','R','2015','Drama',285394,NULL),('Truth (2015 w/ Digital Copy)','R','2015','Drama',285423,NULL),('Diary Of A Teenage Girl (w/ Di','R','2015','Drama',285424,NULL),('Diary Of A Teenage Girl (Blu-r','R','2015','Drama',285428,NULL),('Carol','R','2015','Drama',285475,NULL),('Wind Walkers (On Demand DVD-R)','R','2015','Horror',285508,NULL),('Irrational Man (w/ Digital Cop','R','2015','Comedy',285544,NULL),('Nasty Baby','R','2015','Drama',285585,NULL),('James White','R','2015','Drama',285586,NULL),('Terminus','R','2015','SciFi',285595,NULL),('Paranormal Activity: The Ghost','R','2015','Horror',285605,NULL),('AWOL-72','R','2015','Suspense/Thriller',285606,NULL),('Scouts Guide To The Zombie Apo','R','2015','Comedy',285618,NULL),('Scouts Guide To The Zombie Apo','R','2015','Comedy',285619,NULL),('Forever (2015/ Drama/ FilmRise','R','2015','Drama',285760,NULL),('Paranormal Activity: The Ghost','R','2015','Horror',285899,NULL),('Paranormal Activity: The Ghost','R','2015','Horror',285901,NULL),('Yosemite (2015)','R','2015','Drama',285911,NULL),('Sleeping With Other People','R','2015','Comedy',285924,NULL),('Extraction (2015 w/ Digital Co','R','2015','Action/Adventure',285941,NULL),('Rise Of The Krays','R','2015','Drama',285980,NULL),('Man Up (w/ Digital Copy)','R','2015','Comedy',285991,NULL),('Weiner Dog Internationals (w/ ','G','2015','Family',285995,NULL),('MI-5 (2015 w/ Digital Copy)','R','2015','Suspense/Thriller',286000,NULL),('Stonewall (2015 w/ Digital Cop','R','2015','Drama',286122,NULL),('Veil (2016)','R','2016','Action/Adventure',286134,NULL),('Meadowland','R','2015','Drama',286137,NULL),('Night Before (2015)','R','2015','Comedy',286145,NULL),('Diablo (2015)','R','2015','Action/Adventure',286190,NULL),('Our Brand Is Crisis (2015/ Ren','R','2015','Comedy',286230,NULL),('Our Brand Is Crisis (2015)','R','2015','Comedy',286234,NULL),('Our Brand Is Crisis (2015/ Blu','R','2015','Comedy',286236,NULL),('Our Brand Is Crisis (2015/ DVD','R','2015','Comedy',286258,NULL),('Wannabe','R','2015','Drama',286269,NULL),('Danish Girl','R','2015','Drama',286328,NULL),('Danish Girl (Rental Ready)','R','2015','Drama',286331,NULL),('Chi-Raq (w/ Digital Copy)','R','2015','Drama',286522,NULL),('I Smile Back','R','2015','Drama',286526,NULL),('Entertainment','R','2015','Drama',286856,NULL),('Grandma','R','2015','Comedy',286869,NULL),('Exposed (2016 w/ Digital Copy)','R','2016','Drama',286897,NULL),('Freaks Of Nature (w/ Digital C','R','2015','Comedy',286917,NULL),('Fairy Tail: Part 19 (DVD & Blu','MA13','2015','Anime',286933,NULL),('Life (2015)','R','2015','Drama',287020,NULL),('Pokemon Movie 18: Hoopa & The ','G','2015','Anime',287038,NULL),('Space Brothers: Collection 8','MA13','2015','Anime',287149,NULL),('Ratter','R','2015','Thriller',287157,NULL),('Driftless Area','R','2015','Comedy',287159,NULL),('Space Brothers: Collection 8 (','MA13','2015','Anime',287174,NULL),('Big Short','R','2015','Drama',287186,NULL),('Hateful Eight','R','2015','Drama',287189,NULL),('Sisters (2015)','R','2015','Comedy',287194,NULL),('Revenant (2015)','R','2015','Action/Adventure',287250,NULL),('Intruders (2015/ a.k.a. Shut I','R','2015','Horror',287707,NULL),('Trumbo (2015)','R','2015','Drama',288008,NULL),('Jane Got A Gun','R','2015','Western',288111,NULL),('Mojave (2015/ w/ Digital Copy)','R','2015','Drama',288178,NULL),('Ava\'s Possessions','R','2015','Horror',288440,NULL),('Ghost In The Shell: The New Mo','MA13','2015','Anime',288450,NULL),('Misconduct (w/ Digital Copy)','R','2016','Drama',288451,NULL),('Burning Bodhi','R','2015','Drama',288464,NULL),('Ghost In The Shell: The New Mo','MA13','2015','Anime',288473,NULL),('Kamisama Kiss: Season 2 (DVD &','MA13','2015','Anime',288507,NULL),('Tumbledown (2015)','R','2015','Comedy',288609,NULL),('Identicals','R','2015','SciFi',288682,NULL),('Lamb (2015)','R','2015','Drama',288793,NULL),('Backtrack (2015 w/ Digital Cop','R','2015','Suspense/Thriller',288812,NULL),('Natural Born Pranksters (w/ Di','R','2016','Comedy',288957,NULL),('Standoff (w/ Digital Copy)','R','2016','Thriller',288975,NULL),('Fifty Shades Of Black','R','2016','Comedy',289016,NULL),('Rock The Kasbah','R','2015','Comedy',289048,NULL),('Crimson Peak','R','2015','Horror',289634,NULL),('Spotlight (2015)','R','2015','Drama',290029,NULL),('Legend (2015)','R','2015','Suspense/Thriller',290431,NULL),('Stealing Cars','R','2015','Drama',290919,NULL),('Point Break (2015)','R','2015','Action/Adventure',290940,NULL),('Point Break (2015/ DVD & Blu-r','R','2015','Action/Adventure',290980,NULL);
/*!40000 ALTER TABLE `dvds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_orders`
--

DROP TABLE IF EXISTS `food_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_orders` (
  `foodid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  PRIMARY KEY (`foodid`,`orderid`),
  KEY `fk_foodorders_orderid_idx` (`orderid`),
  CONSTRAINT `fk_foodorders_foodid` FOREIGN KEY (`foodid`) REFERENCES `food` (`food_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_foodorders_orderid` FOREIGN KEY (`orderid`) REFERENCES `customer_order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_orders`
--

LOCK TABLES `food_orders` WRITE;
/*!40000 ALTER TABLE `food_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `dvdid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  PRIMARY KEY (`dvdid`,`orderid`),
  KEY `fk_orderdetails_orderid_idx` (`orderid`),
  CONSTRAINT `fk_orderdetails_orderid` FOREIGN KEY (`orderid`) REFERENCES `customer_order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderdetails_dvdsis` FOREIGN KEY (`dvdid`) REFERENCES `dvds` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-04 13:31:55
