-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hospital
--

CREATE DATABASE IF NOT EXISTS hospital;
USE hospital;

--
-- Definition of table `departmentlist`
--

DROP TABLE IF EXISTS `departmentlist`;
CREATE TABLE `departmentlist` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `departname` varchar(45) default NULL,
  `description` varchar(45) default NULL,
  `departsta` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departmentlist`
--

/*!40000 ALTER TABLE `departmentlist` DISABLE KEYS */;
INSERT INTO `departmentlist` (`id`,`departname`,`description`,`departsta`) VALUES 
 (1,'General Surgery','asdedsf sjhajhg','active'),
 (2,'Obststrics','cndked oshv','Active'),
 (3,'sdsc','ght','nht'),
 (4,'sqweed','vfr','vfe'),
 (10,'hgfdhg','fgfdg','fgfd');
/*!40000 ALTER TABLE `departmentlist` ENABLE KEYS */;


--
-- Definition of table `doctorlist`
--

DROP TABLE IF EXISTS `doctorlist`;
CREATE TABLE `doctorlist` (
  `d_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) default NULL,
  `email_address` varchar(45) default NULL,
  `department` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `education_quylif` varchar(45) default NULL,
  `specilist` varchar(45) default NULL,
  PRIMARY KEY  (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorlist`
--

/*!40000 ALTER TABLE `doctorlist` DISABLE KEYS */;
INSERT INTO `doctorlist` (`d_id`,`name`,`email_address`,`department`,`address`,`mobile`,`education_quylif`,`specilist`) VALUES 
 (2,'Reaj','reaj@gmail.com','Obststrics','Savar','017548695525','MBBS','obststrics');
/*!40000 ALTER TABLE `doctorlist` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
