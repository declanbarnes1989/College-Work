-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: smartshopdw
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `customer_details`
--

DROP TABLE IF EXISTS `customer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_details` (
  `Cust_id` int(11) NOT NULL,
  `F_Name` varchar(50) DEFAULT NULL,
  `L_Name` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_details`
--

LOCK TABLES `customer_details` WRITE;
/*!40000 ALTER TABLE `customer_details` DISABLE KEYS */;
INSERT INTO `customer_details` VALUES (1,'Teresa','Palmer','China'),(2,'Julie','Davis','Indonesia'),(3,'Virginia','Gutierrez','China'),(4,'Judy','Clark','South Korea'),(5,'Raymond','Rogers','Japan'),(6,'Christina','Sanders','Indonesia'),(7,'Betty','Wheeler','Russia'),(8,'Peter','Ellis','Peru'),(9,'Betty','Young','Yemen'),(10,'Shirley','Baker','Sierra Leone'),(11,'Stephen','Wright','Russia'),(12,'Douglas','Greene','Japan'),(13,'Carl','Wagner','Philippines'),(14,'Kimberly','Rose','China'),(15,'Mary','Reid','Philippines'),(16,'Patricia','Brooks','Jamaica'),(17,'Amanda','Kim','Sweden'),(18,'Theresa','Hicks','Indonesia'),(19,'Roy','Bailey','North Korea'),(20,'Betty','Arnold','Lithuania'),(21,'Lawrence','Lynch','Honduras'),(22,'Carl','Kennedy','Kazakhstan'),(23,'Joan','Phillips','Mongolia'),(24,'Cynthia','Boyd','Czech Republic'),(25,'Roger','Simmons','France'),(26,'Ernest','George','Greece'),(27,'Michael','Green','Haiti'),(28,'Stephanie','Baker','Czech Republic'),(29,'Gregory','Medina','Mexico'),(30,'Doris','Reed','Portugal'),(31,'Scott','Montgomery','China'),(32,'Fred','Cole','China'),(33,'Wayne','Knight','China'),(34,'William','Castillo','Peru'),(35,'Willie','Riley','Indonesia'),(36,'Larry','Graham','China'),(37,'Emily','Ruiz','China'),(38,'Joe','Hawkins','Sweden'),(39,'Ruby','Warren','China'),(40,'Ryan','Hart','China'),(41,'Adam','Larson','China'),(42,'Wanda','Mitchell','Indonesia'),(43,'Paula','Carpenter','Kosovo'),(44,'Chris','Russell','Indonesia'),(45,'Lisa','Washington','China'),(46,'James','Miller','China'),(47,'Donald','Clark','Russia'),(48,'Antonio','Weaver','Russia'),(49,'Karen','Young','China'),(50,'Douglas','Gutierrez','China'),(51,'Janice','Day','Indonesia'),(52,'Laura','Mccoy','Libya'),(53,'Christina','Carter','Mexico'),(54,'Keith','West','Philippines'),(55,'Kimberly','Jenkins','Peru'),(56,'Terry','Lane','Brazil'),(57,'Judy','Burns','Russia'),(58,'Aaron','Wheeler','Swaziland'),(59,'Jonathan','Collins','Indonesia'),(60,'Michael','Kennedy','Pakistan'),(61,'Brian','Morales','Ukraine'),(62,'Katherine','Adams','Indonesia'),(63,'Keith','Collins','Greece'),(64,'Frank','Arnold','Czech Republic'),(65,'Denise','Mcdonald','Uzbekistan'),(66,'Willie','Turner','Austria'),(67,'Jeffrey','Hill','France'),(68,'Jacqueline','Ferguson','Russia'),(69,'Sandra','Lane','Philippines'),(70,'Betty','Graham','Egypt'),(71,'Gloria','Lawrence','Senegal'),(72,'Diane','Ryan','Poland'),(73,'Ryan','Carr','France'),(74,'Lillian','Hicks','Philippines'),(75,'Jeremy','Carter','Morocco'),(76,'Brenda','Garza','Indonesia'),(77,'Brian','Scott','Russia'),(78,'Annie','Welch','Czech Republic'),(79,'Todd','Ramos','Thailand'),(80,'Patrick','Hall','Bolivia'),(81,'Joan','Garza','Ukraine'),(82,'Russell','Lopez','Dominican Republic'),(83,'Joe','Nelson','Laos'),(84,'Christopher','Larson','United States'),(85,'Ernest','Bailey','Indonesia'),(86,'Jacqueline','Williamson','Brazil'),(87,'Arthur','Rose','Sweden'),(88,'Paula','Sanders','Egypt'),(89,'Rose','Russell','China'),(90,'Clarence','Cole','Spain'),(91,'Frances','Ford','China'),(92,'Shirley','Tucker','China'),(93,'Bobby','Owens','Vietnam'),(94,'Phyllis','Mitchell','China'),(95,'Emily','Kelly','Indonesia'),(96,'Linda','Porter','Russia'),(97,'Anne','Thomas','Thailand'),(98,'Debra','Boyd','Portugal'),(99,'Donna','Gutierrez','Mongolia'),(100,'Shirley','Kennedy','Japan'),(101,'Brandon','Dunn','Indonesia'),(102,'Jack','Freeman','Armenia'),(103,'Judy','Gomez','China'),(104,'Mildred','Russell','China'),(105,'Billy','Weaver','China'),(106,'Doris','Griffin','Sweden'),(107,'Mary','Stone','Cuba'),(108,'Alice','Simpson','Sweden'),(109,'Teresa','Jackson','Philippines'),(110,'Carlos','Bennett','United States'),(111,'Phillip','Rodriguez','Poland'),(112,'Judith','Miller','Brazil'),(113,'Thomas','Fields','China'),(114,'Bonnie','Richards','Indonesia'),(115,'Sharon','Fisher','France'),(116,'Ruby','Perry','Syria'),(117,'Diana','Fisher','Indonesia'),(118,'Billy','Carpenter','China'),(119,'Donald','Crawford','China'),(120,'Jimmy','Austin','China'),(121,'Eugene','Gomez','Portugal'),(122,'Johnny','Hall','Lithuania'),(123,'Janet','Edwards','Uruguay'),(124,'Tina','Hunt','China'),(125,'Angela','Cruz','Norway'),(126,'William','Jones','Sudan'),(127,'Nicole','Reed','Indonesia'),(128,'David','Montgomery','Peru'),(129,'Douglas','King','Portugal'),(130,'Anna','Wilson','China'),(131,'Carolyn','Ramos','Philippines'),(132,'Jason','Phillips','Nigeria'),(133,'Juan','Richards','Pakistan'),(134,'Diana','Bradley','Slovenia'),(135,'Randy','Simpson','Russia'),(136,'Ralph','Ellis','China'),(137,'Teresa','Gonzales','China'),(138,'Diane','Robinson','Indonesia'),(139,'Russell','Perry','Sweden'),(140,'Kelly','Larson','Morocco'),(141,'Adam','Sims','Malaysia'),(142,'Justin','Hunt','Palestinian Territory'),(143,'Marilyn','Black','Indonesia'),(144,'Christine','Fuller','China'),(145,'Heather','Stanley','Botswana'),(146,'Lillian','Graham','Mongolia'),(147,'Martin','Lawson','Ireland'),(148,'Karen','Gray','China'),(149,'Philip','Reid','Bulgaria'),(150,'Wanda','Russell','Hungary'),(151,'Amanda','Baker','China'),(152,'Clarence','Larson','Russia'),(153,'Marilyn','Gordon','China'),(154,'Ruth','Wright','Canada'),(155,'Brian','Stewart','Japan'),(156,'Arthur','Hill','Indonesia'),(157,'Michelle','Bishop','Poland'),(158,'Joe','Carroll','Samoa'),(159,'Bruce','Payne','Kosovo'),(160,'Dorothy','Duncan','Haiti'),(161,'Janet','Young','Costa Rica'),(162,'Sandra','Riley','Indonesia'),(163,'Wayne','Tucker','Armenia'),(164,'Craig','Burton','Greece'),(165,'Deborah','Bennett','China'),(166,'Lori','Gonzalez','Poland'),(167,'Donald','Burton','Iran'),(168,'Betty','Green','Czech Republic'),(169,'Eugene','Hanson','Slovenia'),(170,'Bonnie','Taylor','Indonesia'),(171,'Joan','Bennett','Indonesia'),(172,'Martha','Edwards','Canada'),(173,'Norma','Thompson','South Africa'),(174,'Angela','Nguyen','Greece'),(175,'Kenneth','Freeman','Portugal'),(176,'Ann','Allen','China'),(177,'Robert','Howard','Iran'),(178,'Maria','Daniels','Indonesia'),(179,'Christina','Wheeler','Bosnia and Herzegovina'),(180,'Ruth','Spencer','Brazil'),(181,'John','Freeman','Indonesia'),(182,'Sean','Fox','Indonesia'),(183,'Joyce','Perkins','Latvia'),(184,'William','Alvarez','China'),(185,'Brenda','Simpson','China'),(186,'Marilyn','Wagner','Kosovo'),(187,'Larry','Henry','Haiti'),(188,'Robin','Franklin','Ireland'),(189,'Roy','Nguyen','Mongolia'),(190,'Heather','Wood','Indonesia'),(191,'Sandra','Howell','Sweden'),(192,'Christina','Russell','Indonesia'),(193,'Todd','Burke','China'),(194,'Paul','Kim','Philippines'),(195,'Gary','Hudson','Sudan'),(196,'Brenda','Owens','China'),(197,'Joe','Shaw','Poland'),(198,'Stephanie','Mccoy','Russia'),(199,'Jack','Thomas','Tanzania'),(200,'Eric','Williamson','Bulgaria'),(201,'Ronald','Murray','Indonesia'),(202,'Kathleen','Hicks','Brazil'),(203,'Carlos','Weaver','Peru'),(204,'Shirley','Butler','Sweden'),(205,'Melissa','Elliott','China'),(206,'Jesse','Harrison','Poland'),(207,'Catherine','Alvarez','China'),(208,'Stephanie','Reyes','Myanmar'),(209,'John','Rose','China'),(210,'Judith','Washington','Japan'),(211,'Judy','Owens','Brazil'),(212,'Doris','Jackson','Brazil'),(213,'Alice','Romero','Mexico'),(214,'Angela','Edwards','Croatia'),(215,'Jimmy','Black','Pakistan'),(216,'Benjamin','Ellis','Poland'),(217,'Ruby','Patterson','Nicaragua'),(218,'Janice','Cook','United States'),(219,'George','Pierce','South Korea'),(220,'Billy','Perez','Democratic Republic of the Congo'),(221,'Matthew','Boyd','Burkina Faso'),(222,'Jonathan','Lawson','Slovenia'),(223,'Carl','West','Brazil'),(224,'Phyllis','Cooper','Indonesia'),(225,'Donald','Dunn','Chile'),(226,'Jean','Duncan','Russia'),(227,'Russell','Black','Czech Republic'),(228,'Frances','Washington','Portugal'),(229,'Daniel','Howell','France'),(230,'Adam','Morgan','Thailand'),(231,'Teresa','Morgan','China'),(232,'Terry','Ruiz','United States'),(233,'Jessica','Moreno','Tajikistan'),(234,'Carolyn','Rodriguez','New Zealand'),(235,'Ernest','Andrews','Japan'),(236,'Louise','Sullivan','Thailand'),(237,'Scott','Martinez','France'),(238,'Timothy','Fernandez','Poland'),(239,'Wayne','Davis','Poland'),(240,'Jesse','Stephens','Portugal'),(241,'Louise','Roberts','Indonesia'),(242,'Phillip','Johnson','Kazakhstan'),(243,'Jane','Phillips','Philippines'),(244,'Anne','Peters','Yemen'),(245,'Philip','Lane','Canada'),(246,'Ruth','Moore','Indonesia'),(247,'Stephen','West','Peru'),(248,'Brian','Taylor','China'),(249,'Jose','Snyder','China'),(250,'John','Riley','United States'),(251,'Roger','King','Ukraine'),(252,'Julia','Mendoza','France'),(253,'Doris','Burton','Philippines'),(254,'Roger','Fernandez','Macedonia'),(255,'Timothy','Richardson','Brazil'),(256,'Denise','Stone','China'),(257,'Teresa','Hanson','China'),(258,'Albert','Richardson','Indonesia'),(259,'Julie','Fields','Russia'),(260,'Stephanie','Ford','Indonesia'),(261,'Daniel','Price','China'),(262,'Andrew','Grant','China'),(263,'Lisa','Hayes','Indonesia'),(264,'Rose','Adams','Czech Republic'),(265,'Jonathan','Carr','Japan'),(266,'Christopher','Rice','Ukraine'),(267,'Amy','Nelson','Mauritius'),(268,'Donald','Lee','France'),(269,'Steve','Rodriguez','China'),(270,'Beverly','Allen','Colombia'),(271,'Aaron','Ward','Indonesia'),(272,'Martha','Clark','Poland'),(273,'Dorothy','Stone','South Korea'),(274,'Earl','Diaz','Indonesia'),(275,'Carl','Marshall','Czech Republic'),(276,'Brian','Carter','Syria'),(277,'Linda','Perkins','Indonesia'),(278,'Theresa','Walker','China'),(279,'Albert','Bailey','China'),(280,'Jennifer','Carter','Japan'),(281,'Janet','Brown','Belarus'),(282,'Jessica','Nelson','China'),(283,'Ralph','Hunter','Gambia'),(284,'Norma','Franklin','Pakistan'),(285,'Cynthia','Allen','Indonesia'),(286,'Denise','Butler','Palestinian Territory'),(287,'Evelyn','Young','China'),(288,'Jose','Burns','Indonesia'),(289,'Steve','Allen','Finland'),(290,'Pamela','Patterson','Bulgaria'),(291,'Stephen','Simpson','China'),(292,'Todd','Schmidt','Venezuela'),(293,'Karen','Reynolds','Philippines'),(294,'Jessica','Pierce','Czech Republic'),(295,'Jerry','Hawkins','Armenia'),(296,'Susan','Fuller','South Korea'),(297,'Joshua','Henderson','Palestinian Territory'),(298,'Timothy','Warren','Russia'),(299,'Melissa','Harvey','Sri Lanka'),(300,'Jean','Fuller','Philippines'),(301,'Judith','Mills','Lithuania'),(302,'Harold','Grant','Indonesia'),(303,'Barbara','Wilson','United Kingdom'),(304,'Joyce','Castillo','Russia'),(305,'Scott','Franklin','Portugal'),(306,'Jean','Black','Indonesia'),(307,'Margaret','Hart','Russia'),(308,'Tammy','Richardson','Indonesia'),(309,'Jack','Franklin','China'),(310,'Willie','Wells','Guatemala'),(311,'Lillian','Miller','China'),(312,'Anne','Bryant','Indonesia'),(313,'Nicholas','Bennett','China'),(314,'Debra','Hughes','China'),(315,'Anthony','Roberts','Indonesia'),(316,'Betty','Garza','Canada'),(317,'Ann','Hernandez','Russia'),(318,'Nicole','Stanley','United States'),(319,'Shawn','Marshall','Russia'),(320,'Timothy','Dixon','Argentina'),(321,'Christopher','Daniels','Colombia'),(322,'Terry','Duncan','France'),(323,'Anna','Hunt','Philippines'),(324,'Barbara','Jones','Senegal'),(325,'Kathy','Mills','Brazil'),(326,'Adam','Wilson','Indonesia'),(327,'Donald','Watkins','Argentina'),(328,'Justin','Duncan','Mexico'),(329,'Denise','Simpson','United Arab Emirates'),(330,'Joshua','Reid','United States'),(331,'Jason','Vasquez','China'),(332,'Jean','Russell','Brazil'),(333,'Maria','Armstrong','China'),(334,'Christina','Robertson','Philippines'),(335,'Walter','Olson','China'),(336,'Denise','Ross','Iraq'),(337,'Teresa','Stevens','Indonesia'),(338,'Timothy','Marshall','China'),(339,'Kenneth','Arnold','Brazil'),(340,'Tina','Wells','Vietnam'),(341,'Ernest','Mccoy','Czech Republic'),(342,'Samuel','Alvarez','Thailand'),(343,'Linda','Murray','Canada'),(344,'Jonathan','Moore','China'),(345,'Donna','Peterson','China'),(346,'Martha','Lawrence','France'),(347,'Jerry','Perez','Indonesia'),(348,'Billy','Wheeler','Indonesia'),(349,'David','Watkins','Argentina'),(350,'Robert','Clark','Poland'),(351,'Laura','Harrison','Japan'),(352,'Shawn','Gray','Malta'),(353,'Linda','Thomas','China'),(354,'Ruth','Griffin','Peru'),(355,'Michael','Chapman','Czech Republic'),(356,'Jesse','Ray','Mexico'),(357,'Evelyn','Ellis','Russia'),(358,'Karen','Wheeler','China'),(359,'Daniel','Harvey','Indonesia'),(360,'Teresa','Stewart','Philippines'),(361,'Joseph','Cooper','Indonesia'),(362,'Donald','Allen','Sweden'),(363,'Judith','Hill','Portugal'),(364,'Gloria','Wilson','China'),(365,'Howard','Murray','China'),(366,'Russell','Roberts','Japan'),(367,'Frances','Scott','Indonesia'),(368,'Matthew','Young','Brazil'),(369,'Elizabeth','Lopez','Malta'),(370,'Albert','Montgomery','Portugal'),(371,'John','Meyer','Indonesia'),(372,'Adam','Jones','China'),(373,'Maria','Green','China'),(374,'Jeffrey','Stewart','Russia'),(375,'Jimmy','Lynch','Poland'),(376,'Kathryn','Diaz','Austria'),(377,'Bonnie','Hunt','Colombia'),(378,'Frances','Holmes','Portugal'),(379,'Heather','Howell','Indonesia'),(380,'Richard','Johnston','Ireland'),(381,'Tammy','Greene','Argentina'),(382,'David','Cooper','Czech Republic'),(383,'Nancy','Vasquez','Indonesia'),(384,'Amy','Ray','South Africa'),(385,'Joshua','Peterson','Indonesia'),(386,'Kevin','Hansen','Indonesia'),(387,'Douglas','Johnston','Isle of Man'),(388,'Marilyn','Duncan','Democratic Republic of the Congo'),(389,'Joe','Hart','Indonesia'),(390,'Barbara','Lewis','China'),(391,'Pamela','Gonzales','China'),(392,'Jack','Baker','Poland'),(393,'Christine','Pierce','Indonesia'),(394,'Robin','Reynolds','Sweden'),(395,'Heather','Clark','China'),(396,'Paul','Berry','Pakistan'),(397,'Paul','Martin','Thailand'),(398,'Christopher','Graham','China'),(399,'Jean','Cooper','Albania'),(400,'Aaron','Kelly','Ukraine'),(401,'Elizabeth','Brown','Indonesia'),(402,'Sarah','Gordon','Brazil'),(403,'Sarah','Black','China'),(404,'Norma','Romero','Indonesia'),(405,'Heather','Franklin','Poland'),(406,'Larry','Watkins','Sweden'),(407,'Amanda','Berry','Indonesia'),(408,'Patricia','Grant','Philippines'),(409,'Robin','Shaw','Indonesia'),(410,'Scott','Jacobs','Sweden'),(411,'Anna','Franklin','Portugal'),(412,'Aaron','Morris','Czech Republic'),(413,'Dorothy','Nelson','Madagascar'),(414,'Alice','Nelson','Venezuela'),(415,'Steven','Schmidt','China'),(416,'Diana','Wood','France'),(417,'Jose','Simmons','Sierra Leone'),(418,'Kelly','Thomas','Laos'),(419,'Judith','Schmidt','Poland'),(420,'Paula','Mason','Malaysia'),(421,'Angela','Williams','China'),(422,'Kathleen','Perry','Micronesia'),(423,'Barbara','Ferguson','Ireland'),(424,'Denise','Kelley','Sudan'),(425,'Donald','Woods','Russia'),(426,'Kimberly','Medina','Egypt'),(427,'Andrew','Hicks','Philippines'),(428,'Jennifer','Burton','Uzbekistan'),(429,'Joseph','King','Greece'),(430,'Heather','Garrett','Canada'),(431,'Gary','Sims','China'),(432,'Kenneth','George','Indonesia'),(433,'Jennifer','Ryan','Philippines'),(434,'Ralph','Arnold','China'),(435,'George','Lawson','China'),(436,'Jimmy','Medina','Indonesia'),(437,'Sharon','Williams','Bulgaria'),(438,'Phillip','Robertson','Yemen'),(439,'Adam','Stanley','Georgia'),(440,'Catherine','Reed','China'),(441,'Virginia','Little','Morocco'),(442,'Lawrence','Grant','Peru'),(443,'Virginia','Gilbert','Portugal'),(444,'Bruce','Price','Peru'),(445,'Joan','Henry','Russia'),(446,'Christopher','Lawrence','Indonesia'),(447,'Ann','Oliver','Brazil'),(448,'Donald','Bennett','France'),(449,'Wanda','Little','Russia'),(450,'Irene','Lane','Czech Republic'),(451,'Paul','Wright','Russia'),(452,'Stephen','Hill','Russia'),(453,'Paula','Matthews','Palestinian Territory'),(454,'Carl','Wells','Peru'),(455,'Anthony','Perry','Mexico'),(456,'Keith','Morris','Denmark'),(457,'Diane','Adams','Jamaica'),(458,'Ronald','Spencer','Indonesia'),(459,'Barbara','Diaz','Tunisia'),(460,'Justin','Ward','Micronesia'),(461,'Jonathan','Austin','South Africa'),(462,'Carol','Price','Indonesia'),(463,'Donna','Spencer','Iran'),(464,'Rachel','Ortiz','Sweden'),(465,'Beverly','Arnold','China'),(466,'Bobby','Phillips','Israel'),(467,'Juan','Hawkins','Finland'),(468,'William','Reyes','Malaysia'),(469,'Eric','Rice','China'),(470,'Stephen','Rodriguez','Croatia'),(471,'Marie','Woods','Brazil'),(472,'Christina','Gardner','United States'),(473,'Joseph','Dixon','Indonesia'),(474,'Phillip','Fuller','Vietnam'),(475,'Melissa','Berry','Germany'),(476,'Doris','Bryant','Brazil'),(477,'Amy','Campbell','Portugal'),(478,'Stephanie','Mcdonald','China'),(479,'Anne','Clark','Finland'),(480,'Antonio','Morris','Russia'),(481,'Eric','Fowler','Philippines'),(482,'Jose','Patterson','Russia'),(483,'Shawn','Franklin','Thailand'),(484,'Patrick','Fowler','China'),(485,'Mary','Walker','Saint Lucia'),(486,'Barbara','Carpenter','Nigeria'),(487,'Bruce','Walker','Zambia'),(488,'Martha','Rogers','Indonesia'),(489,'Linda','Murray','Czech Republic'),(490,'Lois','Morgan','Russia'),(491,'Albert','Phillips','Brazil'),(492,'Lori','Burton','Vietnam'),(493,'Joseph','Grant','Japan'),(494,'Phyllis','Ryan','Panama'),(495,'Howard','Burke','Malawi'),(496,'Victor','White','Thailand'),(497,'Elizabeth','Hall','Japan'),(498,'Christina','Parker','Afghanistan'),(499,'Bonnie','Moreno','Poland'),(500,'Eugene','Carr','France'),(501,'Jason','West','Burkina Faso'),(502,'Gary','Hill','France'),(503,'Samuel','Russell','China'),(504,'Patricia','Williamson','Indonesia'),(505,'Julie','Burns','Nigeria'),(506,'Arthur','Berry','France'),(507,'Lillian','Spencer','Indonesia'),(508,'Michael','Andrews','China'),(509,'Carl','Morrison','Finland'),(510,'Ralph','Woods','Indonesia'),(511,'Randy','Wells','China'),(512,'Margaret','Scott','Indonesia'),(513,'Douglas','Bell','Portugal'),(514,'Terry','Barnes','Sweden'),(515,'Brandon','Bryant','Indonesia'),(516,'Bobby','Hicks','Ukraine'),(517,'Bruce','Dixon','Portugal'),(518,'Rose','Kelley','Panama'),(519,'Virginia','Martinez','China'),(520,'Deborah','Mendoza','Canada'),(521,'Jesse','Brooks','China'),(522,'Diane','Johnston','China'),(523,'Cynthia','Hall','China'),(524,'Earl','Vasquez','China'),(525,'Harry','Nelson','Botswana'),(526,'Michelle','Larson','Philippines'),(527,'Todd','Bennett','Ukraine'),(528,'Kathleen','Hughes','Canada'),(529,'John','Pierce','Indonesia'),(530,'Laura','Howell','Russia'),(531,'Brandon','Wood','Lithuania'),(532,'Aaron','Kelley','Russia'),(533,'Carol','Fuller','United States'),(534,'Judy','Hall','Ivory Coast'),(535,'Terry','Ryan','Lithuania'),(536,'Jason','Jenkins','Palestinian Territory'),(537,'Gloria','Simpson','Indonesia'),(538,'Willie','Hamilton','Pakistan'),(539,'Andrew','Sullivan','Indonesia'),(540,'Carl','Ramirez','China'),(541,'Jeffrey','Foster','France'),(542,'Lillian','Gibson','Indonesia'),(543,'Cheryl','Chapman','Vietnam'),(544,'Susan','Ramos','Russia'),(545,'Victor','Robertson','Brazil'),(546,'Chris','Kelly','Philippines'),(547,'Martin','Williamson','Japan'),(548,'Louis','Taylor','Canada'),(549,'Alice','Evans','Indonesia'),(550,'Amy','Lane','Kazakhstan'),(551,'Nicholas','Pierce','Indonesia'),(552,'Julie','Perry','France'),(553,'Antonio','Harper','Czech Republic'),(554,'Benjamin','Rivera','Indonesia'),(555,'Chris','Welch','Poland'),(556,'Gloria','Rivera','Bosnia and Herzegovina'),(557,'Wanda','Hill','Indonesia'),(558,'Patrick','Duncan','Colombia'),(559,'Janice','Carter','Philippines'),(560,'Janet','Burke','Philippines'),(561,'Richard','Tucker','Philippines'),(562,'Gerald','Stanley','Bangladesh'),(563,'Janice','Armstrong','Indonesia'),(564,'Judy','Owens','Kyrgyzstan'),(565,'Donna','Peters','China'),(566,'Karen','Morales','China'),(567,'Patricia','Collins','Serbia'),(568,'Kathryn','Schmidt','Bosnia and Herzegovina'),(569,'Sean','West','Indonesia'),(570,'Scott','Ellis','Armenia'),(571,'Diana','Welch','Vietnam'),(572,'Kenneth','Hicks','Brazil'),(573,'Phillip','Henderson','China'),(574,'Ryan','Sims','Czech Republic'),(575,'Adam','Collins','China'),(576,'Phyllis','Frazier','Peru'),(577,'Deborah','Simpson','China'),(578,'Craig','Kennedy','Nigeria'),(579,'Beverly','Bryant','Philippines'),(580,'Paul','Roberts','Brazil'),(581,'Ann','Cunningham','France'),(582,'Joe','Peterson','United States'),(583,'Eugene','Wilson','Haiti'),(584,'Bobby','Mills','Japan'),(585,'Janice','Edwards','Japan'),(586,'Joseph','Thompson','France'),(587,'Ann','Perez','Indonesia'),(588,'Raymond','Kim','Zambia'),(589,'Roger','Mitchell','Portugal'),(590,'Carol','Johnston','Indonesia'),(591,'Martin','Johnson','Peru'),(592,'Nicole','Reynolds','Indonesia'),(593,'Angela','Meyer','China'),(594,'Lisa','Henry','China'),(595,'Robert','Mccoy','Netherlands'),(596,'Andrew','Rice','Philippines'),(597,'Jane','Fowler','Indonesia'),(598,'Susan','Burns','Japan'),(599,'Kevin','Hicks','South Africa'),(600,'Jeremy','Banks','Philippines'),(601,'Christine','Henry','Brazil'),(602,'Howard','Carpenter','Zambia'),(603,'Melissa','Wilson','Indonesia'),(604,'Cynthia','Green','Albania'),(605,'Susan','Armstrong','Burundi'),(606,'Lois','Baker','Uzbekistan'),(607,'Kevin','Long','China'),(608,'Ruby','Porter','Japan'),(609,'Donald','Cole','France'),(610,'Doris','Edwards','China'),(611,'Johnny','Anderson','Poland'),(612,'George','Stanley','Indonesia'),(613,'Ashley','Wood','China'),(614,'Teresa','Jenkins','Philippines'),(615,'Joshua','Richards','Ireland'),(616,'Russell','Ross','Czech Republic'),(617,'Maria','Stephens','Nigeria'),(618,'Brandon','Duncan','France'),(619,'Matthew','Gonzalez','China'),(620,'Fred','Stewart','Sweden'),(621,'Norma','Welch','China'),(622,'Diane','Hughes','Yemen'),(623,'Roy','Green','Russia'),(624,'Jack','Elliott','Portugal'),(625,'Janet','Ramos','Malaysia'),(626,'Shirley','Lawrence','Uganda'),(627,'Brandon','Knight','France'),(628,'Jack','Grant','Portugal'),(629,'Gregory','Hughes','France'),(630,'Joyce','Walker','Serbia'),(631,'Johnny','Cunningham','Indonesia'),(632,'Willie','Payne','Czech Republic'),(633,'Robin','Howard','Nigeria'),(634,'Frances','Warren','China'),(635,'Jane','Warren','Belgium'),(636,'Willie','Rice','Uganda'),(637,'Janet','Lee','Indonesia'),(638,'Diane','Warren','Indonesia'),(639,'Gary','Moore','China'),(640,'Louis','Matthews','Kenya'),(641,'Louis','Hawkins','Palestinian Territory'),(642,'George','Bowman','Uruguay'),(643,'Cynthia','Coleman','Ukraine'),(644,'Lois','Sanchez','Russia'),(645,'Amy','Dean','France'),(646,'Virginia','Jackson','Tanzania'),(647,'Donna','Hill','Cameroon'),(648,'William','Morris','Japan'),(649,'Betty','Johnson','Mexico'),(650,'Christopher','Roberts','Barbados'),(651,'Frank','Gonzalez','Costa Rica'),(652,'Emily','Reid','Syria'),(653,'Deborah','Gordon','Russia'),(654,'Gloria','Montgomery','Dominican Republic'),(655,'Nancy','Ryan','Russia'),(656,'Julia','Chapman','Brazil'),(657,'Anthony','Boyd','Finland'),(658,'Anne','Sullivan','United Arab Emirates'),(659,'Keith','Gonzalez','Portugal'),(660,'Jerry','Meyer','Burundi'),(661,'Amy','Sims','Indonesia'),(662,'Lawrence','Oliver','China'),(663,'Steven','Miller','United States'),(664,'Jeffrey','Hart','Azerbaijan'),(665,'Larry','Riley','Afghanistan'),(666,'Arthur','Robertson','China'),(667,'Julie','Dixon','China'),(668,'Willie','Simpson','Lithuania'),(669,'Kevin','Holmes','Philippines'),(670,'Diane','Banks','Palestinian Territory'),(671,'Doris','Moreno','Poland'),(672,'Sean','Ramirez','China'),(673,'Sarah','Woods','Sweden'),(674,'Irene','Kennedy','China'),(675,'Chris','Lee','Russia'),(676,'Fred','Fowler','Mexico'),(677,'Helen','Russell','Poland'),(678,'Douglas','Elliott','China'),(679,'Russell','Sanders','Philippines'),(680,'Charles','Wallace','Switzerland'),(681,'Rebecca','Armstrong','Brazil'),(682,'Bonnie','Kennedy','Sweden'),(683,'Jessica','Stewart','China'),(684,'Jessica','Garza','Indonesia'),(685,'Laura','Alvarez','Kazakhstan'),(686,'Joseph','Boyd','Vietnam'),(687,'Kelly','Henderson','China'),(688,'Mildred','Andrews','Mexico'),(689,'Diana','Mills','Bangladesh'),(690,'Rachel','Ward','China'),(691,'Helen','Henry','China'),(692,'Bruce','Chapman','Poland'),(693,'Frank','Jacobs','Ukraine'),(694,'Irene','Russell','Pakistan'),(695,'James','Russell','United Kingdom'),(696,'Wayne','Patterson','Venezuela'),(697,'Gloria','Johnston','Armenia'),(698,'Eric','Robertson','China'),(699,'Joan','King','Russia'),(700,'Patricia','Allen','Colombia'),(701,'Russell','Weaver','Colombia'),(702,'Kathryn','Olson','France'),(703,'Louise','Watson','China'),(704,'Nicole','Hernandez','Cuba'),(705,'Shawn','Mendoza','Russia'),(706,'Lois','Richardson','China'),(707,'Stephanie','Meyer','Thailand'),(708,'Matthew','Stone','Mongolia'),(709,'Bonnie','Griffin','China'),(710,'Karen','Wagner','China'),(711,'Todd','Jenkins','United States'),(712,'Dennis','Freeman','China'),(713,'Joan','Thomas','China'),(714,'Christina','Daniels','Colombia'),(715,'Matthew','Adams','Russia'),(716,'Kathryn','Daniels','Indonesia'),(717,'Lawrence','Price','Cameroon'),(718,'Julia','Barnes','Sweden'),(719,'Margaret','Burns','Czech Republic'),(720,'Mark','Rogers','United States'),(721,'Jonathan','Woods','Poland'),(722,'Willie','Burke','Sweden'),(723,'Denise','Boyd','Cameroon'),(724,'Elizabeth','Rice','Mexico'),(725,'Judith','Rice','Peru'),(726,'Bobby','Williams','Indonesia'),(727,'Richard','Taylor','Ukraine'),(728,'Timothy','Robinson','Equatorial Guinea'),(729,'Marie','Weaver','Sweden'),(730,'Kelly','Hunt','Ukraine'),(731,'Harry','Crawford','Indonesia'),(732,'Diane','Price','China'),(733,'Gary','Martinez','China'),(734,'Kevin','Hawkins','China'),(735,'Lori','Mitchell','Brazil'),(736,'Willie','Clark','Afghanistan'),(737,'Gerald','Holmes','Botswana'),(738,'Jimmy','Kelley','Sweden'),(739,'Amanda','Russell','Poland'),(740,'Kelly','Ramirez','Brazil'),(741,'Christine','Ellis','China'),(742,'Amanda','Mendoza','Iran'),(743,'Kathleen','Freeman','China'),(744,'Walter','Hart','Portugal'),(745,'Phillip','Robinson','Pakistan'),(746,'Walter','Watkins','China'),(747,'Larry','Duncan','Russia'),(748,'Jeffrey','Henderson','Thailand'),(749,'Mark','Bowman','Iran'),(750,'Jesse','Kennedy','Indonesia'),(751,'Paul','Murphy','Madagascar'),(752,'Brandon','Hanson','Sweden'),(753,'Harry','Scott','Indonesia'),(754,'Janet','Reed','China'),(755,'Theresa','Fields','Colombia'),(756,'Martha','Moreno','Indonesia'),(757,'Eugene','Schmidt','Mexico'),(758,'Kenneth','Austin','Sweden'),(759,'Theresa','Foster','Brazil'),(760,'Diana','Kim','China'),(761,'Daniel','Stanley','Indonesia'),(762,'Rebecca','Perkins','Vietnam'),(763,'Russell','Patterson','Ukraine'),(764,'Barbara','Gilbert','Indonesia'),(765,'Shawn','Boyd','New Zealand'),(766,'Jason','Meyer','Bosnia and Herzegovina'),(767,'Charles','Moreno','Indonesia'),(768,'Carl','Robertson','Indonesia'),(769,'Chris','Howell','Greece'),(770,'Howard','Adams','Brazil'),(771,'Joshua','Wright','China'),(772,'Michelle','Oliver','France'),(773,'Heather','Hicks','Nicaragua'),(774,'Diane','Morales','Indonesia'),(775,'Randy','Hanson','Syria'),(776,'Benjamin','Myers','Indonesia'),(777,'Jacqueline','Olson','Russia'),(778,'Gary','Sims','Poland'),(779,'Jennifer','Hall','Indonesia'),(780,'Frances','Snyder','China'),(781,'Steven','Rodriguez','Venezuela'),(782,'Willie','Rice','China'),(783,'Ashley','Stanley','Ireland'),(784,'Justin','Fernandez','Zimbabwe'),(785,'Linda','Daniels','China'),(786,'Donna','Dixon','Ireland'),(787,'Kelly','Peters','Costa Rica'),(788,'Jeremy','Brooks','Ukraine'),(789,'Kimberly','Murray','China'),(790,'Anthony','Morales','Malaysia'),(791,'Aaron','Olson','Micronesia'),(792,'Stephanie','Lawrence','Colombia'),(793,'Sara','Long','Sweden'),(794,'Gloria','Sanders','South Korea'),(795,'Nancy','Jones','Brazil'),(796,'Melissa','George','Indonesia'),(797,'Louis','Watson','China'),(798,'Cynthia','Adams','Botswana'),(799,'Gerald','Hansen','France'),(800,'Carolyn','Medina','Burkina Faso'),(801,'Tammy','Johnson','Greece'),(802,'Diana','Wheeler','Indonesia'),(803,'Earl','Dean','Russia'),(804,'Joshua','Scott','Sierra Leone'),(805,'Shawn','Simmons','Poland'),(806,'Emily','Greene','Finland'),(807,'Tammy','Murray','Greece'),(808,'Joe','Owens','Thailand'),(809,'Randy','Welch','China'),(810,'Ryan','Butler','Brazil'),(811,'Doris','Scott','Colombia'),(812,'Diane','Jones','Myanmar'),(813,'Albert','Stewart','Portugal'),(814,'Robert','Kelly','Peru'),(815,'Ashley','Stone','Poland'),(816,'Judy','Simmons','Czech Republic'),(817,'Shirley','Ryan','China'),(818,'Sarah','Hall','Russia'),(819,'Pamela','Gutierrez','Sierra Leone'),(820,'Sandra','Hughes','Palestinian Territory'),(821,'Johnny','Lane','South Korea'),(822,'Virginia','Romero','Ukraine'),(823,'Rebecca','Lawson','Pakistan'),(824,'Kathryn','Kelley','Indonesia'),(825,'Joshua','Sanders','Indonesia'),(826,'Timothy','Fernandez','Portugal'),(827,'Clarence','Franklin','China'),(828,'Marilyn','Howard','Philippines'),(829,'Margaret','Fields','Russia'),(830,'Anthony','Collins','Ireland'),(831,'Walter','Morris','Paraguay'),(832,'Richard','Fowler','Brazil'),(833,'Gary','Lopez','China'),(834,'Louise','Hunter','Russia'),(835,'Carlos','Reyes','Indonesia'),(836,'Kathy','Meyer','Indonesia'),(837,'Norma','Montgomery','Philippines'),(838,'Jesse','Gonzalez','Morocco'),(839,'Shirley','Carter','Netherlands'),(840,'Martin','Cook','China'),(841,'Phillip','Wilson','Japan'),(842,'Walter','Diaz','China'),(843,'Ruby','Morgan','Canada'),(844,'Todd','Green','Hungary'),(845,'Marie','Clark','Chile'),(846,'Patrick','Lane','Palestinian Territory'),(847,'Juan','Hunter','Philippines'),(848,'Carlos','Castillo','Philippines'),(849,'Doris','Little','Norway'),(850,'Carl','Burton','Indonesia'),(851,'Stephen','Marshall','Ghana'),(852,'Jason','Riley','Argentina'),(853,'Steve','Simmons','Bulgaria'),(854,'Michael','Evans','Sweden'),(855,'Linda','Bell','United States'),(856,'Jeremy','Diaz','China'),(857,'Bruce','Wallace','Sri Lanka'),(858,'Kimberly','Moore','Indonesia'),(859,'Sara','Riley','Sweden'),(860,'Phyllis','Patterson','China'),(861,'Lori','Fernandez','Netherlands'),(862,'Brian','Butler','Chile'),(863,'Donald','Hill','United States'),(864,'Phillip','Stevens','Ecuador'),(865,'Nicole','Burns','China'),(866,'Jeremy','Day','Vietnam'),(867,'Bruce','Powell','Philippines'),(868,'Bonnie','Andrews','Poland'),(869,'Angela','Miller','Bolivia'),(870,'Nancy','Johnson','Honduras'),(871,'Clarence','West','China'),(872,'Brian','Gordon','China'),(873,'Jonathan','Richardson','Indonesia'),(874,'Russell','Palmer','Mongolia'),(875,'Lori','Green','Philippines'),(876,'Stephanie','Taylor','Russia'),(877,'Jessica','Campbell','Mongolia'),(878,'William','Fernandez','Bhutan'),(879,'Joseph','Bowman','Thailand'),(880,'Jessica','Payne','Palestinian Territory'),(881,'Phyllis','Chapman','Indonesia'),(882,'Justin','Roberts','Egypt'),(883,'Chris','Holmes','Philippines'),(884,'Harry','Ray','Indonesia'),(885,'Betty','Lynch','France'),(886,'Johnny','Henderson','China'),(887,'Roy','Cooper','United States'),(888,'Janet','James','Ghana'),(889,'Ashley','Shaw','Egypt'),(890,'Chris','Ford','China'),(891,'Gerald','Peters','Hungary'),(892,'Doris','Johnson','Norway'),(893,'Matthew','Rodriguez','China'),(894,'Steven','Palmer','China'),(895,'Deborah','Reed','Philippines'),(896,'Frances','Holmes','Indonesia'),(897,'Doris','Mccoy','Brazil'),(898,'Stephen','Morris','Mexico'),(899,'Keith','Barnes','Albania'),(900,'Robin','Weaver','South Korea'),(901,'Ernest','Ramirez','Indonesia'),(902,'Ryan','Cox','China'),(903,'Justin','Rivera','China'),(904,'Michael','Webb','Indonesia'),(905,'Annie','Austin','China'),(906,'Joyce','Shaw','China'),(907,'Kathryn','Morrison','Palestinian Territory'),(908,'Rebecca','Tucker','Russia'),(909,'Dorothy','Bryant','Kosovo'),(910,'Anna','Holmes','Philippines'),(911,'Joan','Chapman','Brazil'),(912,'Jimmy','Simmons','Madagascar'),(913,'Kathryn','Elliott','Japan'),(914,'Terry','Walker','Costa Rica'),(915,'Rachel','Peters','Palestinian Territory'),(916,'Irene','Matthews','China'),(917,'David','Brooks','Philippines'),(918,'William','Elliott','Indonesia'),(919,'Theresa','Marshall','Peru'),(920,'Nicholas','Olson','Philippines'),(921,'Louis','Warren','Slovenia'),(922,'Lois','Green','Indonesia'),(923,'Kathryn','Walker','China'),(924,'Donald','Mccoy','Indonesia'),(925,'Robin','Griffin','China'),(926,'Martha','Warren','China'),(927,'Louis','Jacobs','Czech Republic'),(928,'Roy','Reyes','Brazil'),(929,'Kevin','Mitchell','Mexico'),(930,'Shawn','Wells','Slovenia'),(931,'Mildred','Gonzalez','China'),(932,'Shirley','Garrett','Senegal'),(933,'Keith','Porter','China'),(934,'Norma','Myers','Canada'),(935,'Henry','Fernandez','Czech Republic'),(936,'Deborah','Greene','Indonesia'),(937,'Wanda','George','Indonesia'),(938,'Christine','Gray','Tajikistan'),(939,'Shirley','Morales','Germany'),(940,'Richard','Payne','Spain'),(941,'Rebecca','Sanders','Portugal'),(942,'Steven','Flores','China'),(943,'Jessica','Bryant','United States'),(944,'Rachel','Price','Russia'),(945,'Gerald','Myers','Tanzania'),(946,'Marilyn','Nichols','China'),(947,'David','Lee','Peru'),(948,'Kimberly','Sanders','Uganda'),(949,'Joyce','Jenkins','Malaysia'),(950,'Alice','Elliott','Portugal'),(951,'Samuel','Gutierrez','Mexico'),(952,'Kenneth','Stewart','China'),(953,'Kenneth','Banks','Brazil'),(954,'Gerald','Oliver','Indonesia'),(955,'Susan','Diaz','China'),(956,'Dennis','Snyder','Russia'),(957,'Katherine','Morgan','China'),(958,'Bonnie','Watkins','Indonesia'),(959,'Diane','Arnold','China'),(960,'Judith','Rivera','Egypt'),(961,'Christine','Hansen','Indonesia'),(962,'Ashley','Williams','Brazil'),(963,'Lori','Reynolds','Brazil'),(964,'Dennis','King','Argentina'),(965,'Amy','Ramirez','Pakistan'),(966,'Jonathan','Hughes','Cuba'),(967,'Jane','Freeman','Iceland'),(968,'Aaron','Foster','Indonesia'),(969,'Diane','Moore','Vietnam'),(970,'Bobby','Garcia','United States'),(971,'Keith','Fowler','Mexico'),(972,'Samuel','Williamson','Kazakhstan'),(973,'Marie','Reid','Germany'),(974,'Kimberly','Kim','Indonesia'),(975,'Sandra','Elliott','China'),(976,'Thomas','Williamson','China'),(977,'Lisa','Wright','United States'),(978,'Daniel','Hernandez','Mexico'),(979,'Jean','Carr','Sweden'),(980,'Robert','Collins','China'),(981,'Antonio','Walker','Belarus'),(982,'Jason','Gray','China'),(983,'Sara','Wood','Brazil'),(984,'Ruth','Mitchell','Poland'),(985,'Margaret','Harrison','China'),(986,'Emily','George','China'),(987,'Ernest','Franklin','Thailand'),(988,'Patrick','Cox','China'),(989,'Victor','Reynolds','Indonesia'),(990,'Judy','Davis','Portugal'),(991,'Elizabeth','Nichols','Indonesia'),(992,'Ernest','Collins','Russia'),(993,'Ann','Gray','Russia'),(994,'Kathy','Rose','Cameroon'),(995,'Howard','Porter','Iran'),(996,'Sara','Tucker','Indonesia'),(997,'Wanda','Ray','China'),(998,'Clarence','Ortiz','Latvia'),(999,'Brian','Alvarez','China'),(1000,'Craig','Carroll','Philippines');
/*!40000 ALTER TABLE `customer_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-27 19:10:19