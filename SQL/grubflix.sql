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
  `birthdate` date NOT NULL,
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
  `upc` varchar(15) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=327676 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvds`
--

LOCK TABLES `dvds` WRITE;
/*!40000 ALTER TABLE `dvds` DISABLE KEYS */;
INSERT INTO `dvds` VALUES ('10,000 Saints','R','2015','Comedy','814838014241',430),('33','PG-13','2015','Drama','883929487547',2660),('90 Minutes In Heaven','PG-13','2015','Drama','025192326899',4600),('Accidental Love','PG-13','2015','Comedy','687797159397',5762),('Air (2015)','PG-13','2015','SciFi','043396463134',8999),('Aloha (w/ Digital Copy)','PG-13','2015','Drama','043396443433',11725),('Ant-Man','PG-13','2015','SciFi','786936846775',16839),('Area 51 (2015/ Rental Ready)','R','2015','Horror','032429225726',18028),('Ashby','R','2015','Drama','032429236296',19292),('Ava\'s Possessions','R','2015','Horror','741952810698',20920),('Avengers: Age Of Ultron','PG-13','2015','Action/Adventure','786936846690',21100),('AWOL-72','R','2015','Suspense/Thriller','037117039067',21401),('Bad Asses On The Bayou','R','2015','Action/Adventure','024543989608',22995),('Bastard (On Demand DVD-R)','R','2015','Horror','024543227588',25561),('Batman: Bad Blood','PG-13','2016','Action/Adventure','883929435272',25791),('Beyond The Mask','PG','2015','Action/Adventure','037117041879',30917),('Big Short','R','2015','Drama','032429240156',31903),('Blackhat','R','2015','Action/Adventure','025192267765',34661),('Blackhat (Rental Ready)','R','2015','Action/Adventure','025192267789',34665),('Boy Next Door (2015)','R','2015','Suspense/Thriller','025192237799',39177),('Bridge Of Spies','PG-13','2015','Thriller','786936847895',40663),('Broken Horses','R','2015','Drama','043396444331',41280),('Brooklyn','PG-13','2015','Drama','024543213024',41372),('Burning Bodhi','R','2015','Drama','012233068825',43004),('Burnt','R','2015','Comedy','013132635873',43059),('Captive (2015)','PG-13','2015','Drama','032429236029',45521),('Careful What You Wish For','R','2015','Suspense/Thriller','037117040643',46021),('Carol','R','2015','Drama','013132630267',46412),('Chappie (w/ Digital Copy)','R','2015','SciFi','043396446694',49028),('Chi-Raq (w/ Digital Copy)','R','2015','Drama','031398240068',50343),('Child 44 (w/ Digital Copy)','R','2015','Suspense/Thriller','031398225874',50650),('Chloe And Theo','PG-13','2015','Drama','796019829731',51472),('Chocolate City','R','2015','Drama','032429224439',51511),('Concussion (2015)','PG-13','2015','Drama','043396462991',58024),('Condemned 2 (w/ Digital Copy)','R','2015','Action/Adventure','031398233909',58036),('Cop Car','R','2015','Suspense/Thriller','025192301964',59082),('Creed','PG-13','2015','Drama','883929484317',61069),('Creed (Blu-ray/ Rental Ready)','PG-13','2015','Drama','883929484300',61070),('Crimson Peak','R','2015','Horror','025192246838',61439),('D Train','R','2015','Comedy','032429229120',63355),('Daddy\'s Home (2015)','PG-13','2015','Comedy','032429240071',63625),('Danish Girl','R','2015','Drama','025192324598',64813),('Danish Girl (Rental Ready)','R','2015','Drama','025192324574',64816),('Danny Collins','R','2015','Comedy','025192298332',64857),('Danny Collins (Alternate UPC)','R','2015','Comedy','032429224095',64858),('David And Goliath (2015)','PG','2015','Drama','815300012949',65976),('Diablo (2015)','R','2015','Action/Adventure','741952810193',70956),('Digging For Fire','R','2015','Drama','032429230546',71749),('Do You Believe?','PG-13','2015','Drama','857533003912',73965),('Don Verdean (w/ Digital Copy)','PG-13','2015','Comedy','031398237969',75082),('Driftless Area','R','2015','Comedy','043396468337',77949),('DUFF (w/ Digital Copy)','PG-13','2015','Comedy','031398220398',78720),('Echoes Of War','R','2015','Western','796019829298',80306),('Entertainment','R','2015','Drama','876964009096',84807),('Entourage (2015)','R','2015','Comedy','883929424139',84852),('Everest (2015)','PG-13','2015','Action/Adventure','025192237782',86976),('Evil Bong 420','R','2015','Horror','859831008903',87356),('Ex Machina','R','2015','SciFi','031398221074',87535),('Exeter','R','2015','Horror','816943012150',87712),('Experimenter','PG-13','2015','Drama','876964009072',88056),('Extinction','R','2015','SciFi','043396454880',88451),('Faith Of Our Fathers (2015)','PG-13','2015','Drama','857533003936',89933),('Fantastic 4','PG-13','2015','Action/Adventure','024543144632',90915),('Fifty Shades Of Black','R','2016','Comedy','025192343384',92851),('Fifty Shades Of Grey','R','2015','Drama','025192222313',92857),('Final Girl (2015)','R','2015','Action/Adventure','883476148779',93484),('Final Girls','PG-13','2015','Horror','043396464568',93486),('Final: The Rapture','PG-13','2015','Thriller','815300012970',93537),('Forest (2016)','PG-13','2016','Horror','025192326073',97192),('Frankenstein (2015)','R','2015','Horror','687797164391',98300),('Freeheld (w/ Digital Copy)','PG-13','2015','Drama','031398234814',98880),('Freetown','PG-13','2015','Suspense/Thriller','783027014792',98908),('Furious 7','PG-13','2015','Action/Adventure','025192211706',101161),('Gallows','R','2015','Horror','883929474455',101816),('Get Hard (w/ Digital Copy)','R','2015','Comedy','883929426812',104190),('Gift (2015)','R','2015','Suspense/Thriller','025192318344',105183),('Girl Like Her','PG-13','2015','Drama','883476150390',105636),('Good Dinosaur','PG','2015','Comedy','786936848113',108556),('Grandma','R','2015','Comedy','043396463493',109654),('Gunman (2015)','R','2015','Action/Adventure','025192268663',113279),('Harbinger Down','R','2015','SciFi','037117041787',115293),('Hateful Eight','R','2015','Drama','013132638478',116162),('Hayride 2','R','2015','Horror','850153003683',116680),('He Never Died','R','2015','Horror','687797968999',116793),('Heist (2015)','R','2015','Action/Adventure','031398234265',117772),('Heroes Of Dirt','PG-13','2015','Action/Adventure','680474161621',118946),('Hidden (2015)','R','2015','Horror','883929316595',119227),('Hitman: Agent 47','R','2015','Action/Adventure','024543988809',124406),('Home Invasion (2016)','PG-13','2016','Action/Adventure','043396468290',125524),('Home Sweet Hell (2015)','R','2015','Comedy','043396435988',125579),('Hoovey','PG','2015','Drama','848957000274',126242),('Hot Pursuit (2015)','PG-13','2015','Comedy','883929455805',127077),('I Smile Back','R','2015','Drama','025192326202',130241),('Identicals','R','2015','SciFi','043396475199',130994),('In The Heart Of The Sea','PG-13','2015','Drama','883929425976',132343),('Infini','R','2015','SciFi','037117041275',133084),('Insidious: Chapter 3','PG-13','2015','Horror','043396458017',133727),('Intern (2015)','PG-13','2015','Comedy','794043179464',134364),('Intruders (2015)','PG-13','2015','Thriller','043396452329',135248),('James White','R','2015','Drama','687797165794',138176),('Jane Got A Gun','R','2015','Western','013132643670',138391),('Jenny\'s Wedding','PG-13','2015','Comedy','030306944494',139582),('Joe Dirt 2: Beautiful Loser','PG-13','2015','Comedy','043396465947',140894),('Jurassic World','PG-13','2015','SciFi','025192212192',143649),('Just Let Go','PG-13','2015','Drama','783027014099',143774),('Kidnapping Mr. Heineken','R','2015','Action/Adventure','687797154897',146403),('Krampus','PG-13','2015','Horror','025192319266',149051),('L.A. Slasher','R','2015','Comedy','687797965295',149751),('Ladrones (w/ Digital Copy)','PG-13','2015','Comedy','031398234678',150996),('Lamb (2015)','R','2015','Drama','043396476035',151417),('Last Knights (Digital Copy)','R','2015','Action/Adventure','031398220213',152508),('Lazarus Effect','PG-13','2015','Horror','024543104780',153665),('Legend (2015)','R','2015','Suspense/Thriller','025192322242',154995),('Life (2015)','R','2015','Drama','883476150765',157119),('Lila & Eve','R','2015','Drama','625828643118',157954),('Little Boy','PG-13','2015','Comedy','025192277849',158685),('Lovers (2015)','R','2015','Action/Adventure','030306941998',163362),('Magic Mike XXL','R','2015','Comedy','883929455164',165556),('Man From U.N.C.L.E. (2015)','PG-13','2015','Action/Adventure','883929413102',166917),('Man Up (w/ Digital Copy)','R','2015','Comedy','031398234432',167114),('Man With The Iron Fists 2','UR','2015','Action/Adventure','025192242694',167273),('Marine 4: The Moving Target','R','2015','Action/Adventure','024543991502',168530),('Martian','PG-13','2015','SciFi','024543206385',169146),('McFarland, USA','PG','2015','Drama','786936845938',171361),('Meadowland','R','2015','Drama','883476150345',171535),('Misconduct (w/ Digital Copy)','R','2016','Drama','031398240556',176043),('Miss You Already','PG-13','2015','Comedy','031398233558',176216),('Moonwalkers','R','2015','Comedy','687797162595',178535),('Mortdecai (w/ Digital Copy)','R','2015','Action/Adventure','031398217367',178848),('Mr. Holmes (w/ Digital Copy)','PG','2015','Drama','031398227632',180278),('My All American','PG','2015','Drama','025192327346',182153),('Nasty Baby','R','2015','Drama','043396470385',184460),('Night Before (2015)','R','2015','Comedy','043396462878',189075),('Nightlight (w/ Digital Copy)','R','2015','Horror','031398220541',189576),('No Escape (2015)','R','2015','Action/Adventure','013132625133',190277),('No Way Jose','R','2015','Comedy','043396459120',190512),('Once I Was A Beehive','PG','2015','Comedy','783027014990',194431),('Our Brand Is Crisis (2015)','R','2015','Comedy','883929529926',196323),('Overnight (2015)','R','2015','Comedy','032429227782',197076),('Paper Towns','PG-13','2015','Drama','024543104452',198093),('Paul Blart: Mall Cop 2','PG','2015','Comedy','043396456846',199489),('People Places Things','R','2015','Comedy','687797163097',200829),('Perfect Guy (w/ Digital Copy)','PG-13','2015','Drama','043396463363',201026),('Pitch Perfect 2','PG-13','2015','Comedy','025192242045',203770),('Pixels (w/ Digital Copy)','PG-13','2015','Action/Comedy','043396446755',203808),('Pod','R','2015','Horror','037117042258',205295),('Point Break (2015)','R','2015','Action/Adventure','883929455294',205368),('Poltergeist (2015)','PG-13','2015','Horror','024543025689',205893),('Poltergeist Activity','R','2015','Horror','687797959393',205896),('Pound Of Flesh (2015)','R','2015','Action/Adventure','625828641848',206674),('Pressure (2015)','R','2015','Suspense/Thriller','037117041251',207773),('Ratter','R','2015','Thriller','043396467583',213404),('Re-Kill (On Demand DVD-R)','R','2015','Horror','024543227687',213763),('Results','R','2015','Comedy','876964008839',216955),('Revenant (2015)','R','2015','Action/Adventure','024543118701',217386),('Ricki And The Flash','PG-13','2015','Comedy','043396456891',218294),('Rise Of The Krays','R','2015','Drama','031398239031',219036),('Rock The Kasbah','R','2015','Comedy','025192269899',220519),('Room (2015)','R','2015','Drama','031398234616',221663),('Roommate Wanted','R','2015','Drama','031398219736',221699),('Runner (2015)','R','2015','Suspense/Thriller','687797161499',223126),('Safelight','R','2015','Drama','796019829540',224109),('San Andreas','PG-13','2015','Action/Adventure','794043179112',225083),('Secret In Their Eyes (2015)','PG-13','2015','Suspense/Thriller','025192339936',228685),('See You In Valhalla','R','2015','Comedy','796019829328',229338),('Self/less','PG-13','2015','Suspense/Thriller','025192249952',229572),('Sex, Death And Bowling','R','2015','Comedy','012233387728',231000),('Sicario (w/ Digital Copy)','R','2015','Action/Adventure','031398231820',234421),('Sinister 2','R','2015','Horror','025192272783',235793),('Sister Code','R','2015','Comedy','851410005310',235933),('Sisters (2015)','R','2015','Comedy','025192267284',236018),('Skin Traffik','R','2015','Action/Adventure','687797162892',236448),('Sleeping With Other People','R','2015','Comedy','032429225580',236982),('Slow West (w/ Digital Copy)','R','2015','Western','031398221234',237366),('Southpaw (2015)','R','2015','Action/Adventure','013132630304',240271),('Spectre (2015)','PG-13','2015','Action/Adventure','883904330714',241018),('Spotlight (2015)','R','2015','Drama','025192328213',242048),('Spy (2015)','R','2015','Action/Adventure','024543969372',242193),('Squeeze (2015)','PG-13','2015','Comedy','796019829205',242298),('Standoff (w/ Digital Copy)','R','2016','Thriller','031398240853',243190),('Stanford Prison Experiment','R','2015','Drama','030306944395',243193),('Star Wars: The Force Awakens','PG-13','2015','SciFi','786936849806',243902),('Stealing Cars','R','2015','Drama','043396472839',244457),('Steve Jobs','R','2015','Drama','025192301001',245068),('Straight Outta Compton','R','2015','Drama','025192267505',246304),('Strangerland','R','2015','Suspense/Thriller','687797161093',246553),('Suffragette','PG-13','2015','Drama','025192258879',248171),('SuperFast!','PG-13','2015','Comedy','037117040407',249191),('Survivor (2015)','PG-13','2015','Action/Adventure','687797159298',249827),('Tangerine','R','2015','Comedy','876964009041',252086),('Ted 2','UR','2015','Comedy','025192242236',253500),('Terminator: Genisys','PG-13','2015','Action/Adventure','032429228673',254723),('Terminus','R','2015','SciFi','037117042777',254737),('Throwaways','PG','2015','Action/Adventure','043396465794',257716),('Tiger House','R','2015','Action/Adventure','876964008853',258074),('To Write Love On Her Arms','PG-13','2015','Drama','043396445383',259137),('Tomorrowland','PG','2015','SciFi','786936846560',259899),('Tooken','R','2015','Comedy','883476147772',260160),('Tracers (w/ Digital Copy)','PG-13','2015','Action/Adventure','031398220480',261428),('Trainwreck','UR','2015','Comedy','025192349034',261930),('Trainwreck (Old Version)','UR','2015','Comedy','025192252143',261933),('Transporter Refueled','PG-13','2015','Action/Adventure','024543092476',262295),('Tremors 5: Bloodlines','PG-13','2015','SciFi','025192278396',262852),('Trumbo (2015)','R','2015','Drama','025192265105',264000),('Tumbledown (2015)','R','2015','Comedy','013132637297',264288),('Unexpected (2015)','R','2015','Comedy','687797161390',267981),('Unfinished Business','R','2015','Comedy','024543968832',268050),('Unnatural (2015)','R','2015','Horror','024543227601',268511),('Vacation','R','2015','Comedy','883929457434',269431),('Veil (2016)','R','2016','Action/Adventure','025192258152',270469),('Victor Frankenstein','PG-13','2015','Drama','024543968955',271548),('Visions (2015)','R','2015','Suspense/Thriller','025192257858',272478),('Visit (2015)','PG-13','2015','Horror','025192287466',272552),('Walk (2015)','PG','2015','Action/Adventure','043396463783',273917),('Walk In The Woods','R','2015','Comedy','025192325861',273974),('Walt Before Mickey','PG','2015','Drama','687797965394',274283),('Wannabe','R','2015','Drama','741952806790',274424),('War Pigs','R','2015','Action/Adventure','883476148984',274794),('We Are Your Friends','R','2015','Drama','883929487592',275800),('Wedding Ringer','R','2015','Comedy','043396446632',276221),('Wild Horses (2015)','R','2015','Drama','625828642081',279364),('Wolf Totem','PG-13','2015','Action/Adventure','043396465886',281176),('Woman In Gold','PG-13','2015','Drama','013132630229',281296),('Woodlawn','PG','2015','Drama','025192340260',281788),('World Made Straight','R','2015','Drama','687797159090',282370),('Yosemite (2015)','R','2015','Drama','012233528626',285783),('You Bury Your Own','MA15','2015','Suspense/Thriller','609408705847',285854),('Zipper','R','2015','Drama','687797162694',287315);
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
  CONSTRAINT `fk_orderdetails_dvdsis` FOREIGN KEY (`dvdid`) REFERENCES `dvds` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderdetails_orderid` FOREIGN KEY (`orderid`) REFERENCES `customer_order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
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

-- Dump completed on 2016-05-02 14:18:48
