# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.9)
# Database: badges
# Generation Time: 2012-04-19 15:40:16 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table badge_objectives
# ------------------------------------------------------------

DROP TABLE IF EXISTS `badge_objectives`;

CREATE TABLE `badge_objectives` (
  `badge_id` int(6) unsigned NOT NULL,
  `objective_id` int(6) NOT NULL,
  PRIMARY KEY (`badge_id`,`objective_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `badge_objectives` WRITE;
/*!40000 ALTER TABLE `badge_objectives` DISABLE KEYS */;

INSERT INTO `badge_objectives` (`badge_id`, `objective_id`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `badge_objectives` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table badge_source
# ------------------------------------------------------------

DROP TABLE IF EXISTS `badge_source`;

CREATE TABLE `badge_source` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `badge_source` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `badge_source` WRITE;
/*!40000 ALTER TABLE `badge_source` DISABLE KEYS */;

INSERT INTO `badge_source` (`id`, `badge_source`)
VALUES
	(1,'University of Lincoln');

/*!40000 ALTER TABLE `badge_source` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table badges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `badges`;

CREATE TABLE `badges` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `badge_name` varchar(255) NOT NULL DEFAULT '',
  `badge_source` int(3) NOT NULL,
  `badge_image` mediumtext,
  `version` varchar(15) DEFAULT NULL,
  `description` mediumtext,
  `criteria_uri` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `badges` WRITE;
/*!40000 ALTER TABLE `badges` DISABLE KEYS */;

INSERT INTO `badges` (`id`, `badge_name`, `badge_source`, `badge_image`, `version`, `description`, `criteria_uri`)
VALUES
	(1,'I Created A Badge!',1,'http://jamiemahoney.com/badge2/badge.png','0.1','This badge is a test badge to see if I can award badges!','http://lncd.org');

/*!40000 ALTER TABLE `badges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table badges_earned
# ------------------------------------------------------------

DROP TABLE IF EXISTS `badges_earned`;

CREATE TABLE `badges_earned` (
  `person_id` varchar(15) NOT NULL DEFAULT '',
  `badge_id` int(6) NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `badge_data` mediumtext NOT NULL,
  `assertion_uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `badge_id` (`badge_id`,`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `badges_earned` WRITE;
/*!40000 ALTER TABLE `badges_earned` DISABLE KEYS */;

INSERT INTO `badges_earned` (`person_id`, `badge_id`, `email_address`, `badge_data`, `assertion_uri`)
VALUES
	('002944',1,'jmahoney@lincoln.ac.uk','','002944e4ddb71.json');

/*!40000 ALTER TABLE `badges_earned` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table issuer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `issuer`;

CREATE TABLE `issuer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table objective_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `objective_types`;

CREATE TABLE `objective_types` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `objective_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `objective_types` WRITE;
/*!40000 ALTER TABLE `objective_types` DISABLE KEYS */;

INSERT INTO `objective_types` (`id`, `objective_type`)
VALUES
	(1,'Knowledge and Understanding'),
	(2,'Subject-Specific Intellectual Skills'),
	(3,'Subject-Specific Practical Skills'),
	(4,'Transferrable Skills and Attributes'),
	(5,'Test');

/*!40000 ALTER TABLE `objective_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table objectives
# ------------------------------------------------------------

DROP TABLE IF EXISTS `objectives`;

CREATE TABLE `objectives` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `objective_text` text NOT NULL,
  `objective_type_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `objectives` WRITE;
/*!40000 ALTER TABLE `objectives` DISABLE KEYS */;

INSERT INTO `objectives` (`id`, `objective_text`, `objective_type_id`)
VALUES
	(1,'Create a Badge',3),
	(8,'eggs',1),
	(9,'This is a test',1);

/*!40000 ALTER TABLE `objectives` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table objectives_complete
# ------------------------------------------------------------

DROP TABLE IF EXISTS `objectives_complete`;

CREATE TABLE `objectives_complete` (
  `person_id` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `objective_id` int(6) NOT NULL,
  PRIMARY KEY (`person_id`),
  KEY `objective_id` (`objective_id`,`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `objectives_complete` WRITE;
/*!40000 ALTER TABLE `objectives_complete` DISABLE KEYS */;

INSERT INTO `objectives_complete` (`person_id`, `objective_id`)
VALUES
	('002944',1);

/*!40000 ALTER TABLE `objectives_complete` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
