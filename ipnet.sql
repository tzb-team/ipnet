-- MySQL dump 10.13  Distrib 5.7.26, for Win64 (x86_64)
--
-- Host: localhost    Database: ipnet
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `acount_id` varchar(255) NOT NULL,
  `balance` double NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_contract`
--

DROP TABLE IF EXISTS `agent_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_contract` (
  `contract_id` varchar(255) NOT NULL,
  `authorizing_end` datetime DEFAULT NULL,
  `authorizing_nature` varchar(255) DEFAULT NULL,
  `authorizing_starter` datetime DEFAULT NULL,
  `acquiring_party` varchar(255) DEFAULT NULL,
  `acquiring_party_repre` varchar(255) DEFAULT NULL,
  `date_of_application` datetime DEFAULT NULL,
  `day1` int(11) NOT NULL,
  `day2` int(11) NOT NULL,
  `duties` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `id_of_application` varchar(255) DEFAULT NULL,
  `id_of_patent` varchar(255) DEFAULT NULL,
  `money1` int(11) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `patent_applicant` varchar(255) DEFAULT NULL,
  `patent_owner` varchar(255) DEFAULT NULL,
  `pay_day` datetime DEFAULT NULL,
  `payment_by_installment` varchar(255) DEFAULT NULL,
  `penalty1` int(11) NOT NULL,
  `penalty2` int(11) NOT NULL,
  `penalty3` int(11) NOT NULL,
  `penalty4` int(11) NOT NULL,
  `penalty5` int(11) NOT NULL,
  `penalty6` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `percent_one` int(11) NOT NULL,
  `percent_three` int(11) NOT NULL,
  `percent_two` int(11) NOT NULL,
  `pro_name` varchar(255) DEFAULT NULL,
  `protect_range` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `technical_data` varchar(255) DEFAULT NULL,
  `technical_instruction` varchar(255) DEFAULT NULL,
  `transferor` varchar(255) DEFAULT NULL,
  `transferor_repre` varchar(255) DEFAULT NULL,
  `use_fee` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_contract`
--

LOCK TABLES `agent_contract` WRITE;
/*!40000 ALTER TABLE `agent_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breakup_contract`
--

DROP TABLE IF EXISTS `breakup_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `breakup_contract` (
  `contract_id` varchar(255) NOT NULL,
  `day1` int(11) NOT NULL,
  `money1` int(11) NOT NULL,
  `money2` int(11) NOT NULL,
  `money3` int(11) NOT NULL,
  `money4` int(11) NOT NULL,
  `money5` int(11) NOT NULL,
  `person1` varchar(255) DEFAULT NULL,
  `person2` varchar(255) DEFAULT NULL,
  `reasons` tinyblob,
  `responsibilities` tinyblob,
  `str1` varchar(255) DEFAULT NULL,
  `str2` varchar(255) DEFAULT NULL,
  `time1` varchar(255) DEFAULT NULL,
  `time2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breakup_contract`
--

LOCK TABLES `breakup_contract` WRITE;
/*!40000 ALTER TABLE `breakup_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `breakup_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claim`
--

DROP TABLE IF EXISTS `claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claim` (
  `claimid` varchar(255) NOT NULL,
  `evaluate_id` varchar(255) DEFAULT NULL,
  `evaluate_moey` double NOT NULL,
  `government_money` double NOT NULL,
  `insurance_id` varchar(255) DEFAULT NULL,
  `insurance_money` double NOT NULL,
  `loanid` varchar(255) DEFAULT NULL,
  `loan_state` int(11) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`claimid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim`
--

LOCK TABLES `claim` WRITE;
/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_message`
--

DROP TABLE IF EXISTS `com_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_message` (
  `mid` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` varchar(255) DEFAULT NULL,
  `is_read` bit(1) NOT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_message`
--

LOCK TABLES `com_message` WRITE;
/*!40000 ALTER TABLE `com_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `com_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_user`
--

DROP TABLE IF EXISTS `com_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_user` (
  `userid` varchar(255) NOT NULL,
  `fans` int(11) NOT NULL,
  `interestedpost` int(11) NOT NULL,
  `interesteduser` int(11) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `releasedpost` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_user`
--

LOCK TABLES `com_user` WRITE;
/*!40000 ALTER TABLE `com_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `com_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_user_history`
--

DROP TABLE IF EXISTS `com_user_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_user_history` (
  `community_user_userid` varchar(255) NOT NULL,
  `history_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_nadyfpcjp86artwkjhnaehlv6` (`history_id`),
  KEY `FK4hiu5r8b9dmjs1opdc4347axr` (`community_user_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_user_history`
--

LOCK TABLES `com_user_history` WRITE;
/*!40000 ALTER TABLE `com_user_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `com_user_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_user_mines`
--

DROP TABLE IF EXISTS `com_user_mines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_user_mines` (
  `community_user_userid` varchar(255) NOT NULL,
  `mines_fid` bigint(20) NOT NULL,
  UNIQUE KEY `UK_3xqqb5r4ub1m1pf0oqgx7w7up` (`mines_fid`),
  KEY `FKl53vyuba1s6d4qewt7db1lg9c` (`community_user_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_user_mines`
--

LOCK TABLES `com_user_mines` WRITE;
/*!40000 ALTER TABLE `com_user_mines` DISABLE KEYS */;
/*!40000 ALTER TABLE `com_user_mines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_user`
--

DROP TABLE IF EXISTS `company_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_user` (
  `id` varchar(255) NOT NULL,
  `active_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bus_term` varchar(255) DEFAULT NULL,
  `business_num` varchar(255) DEFAULT NULL,
  `credit_code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `establish_date` datetime DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `fund` double NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `licence` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pay_code` varchar(255) DEFAULT NULL,
  `person_photo` varchar(255) DEFAULT NULL,
  `points` int(11) NOT NULL,
  `register_time` datetime DEFAULT NULL,
  `representative` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `statement` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `verified` bit(1) NOT NULL,
  `vertification` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
--   新增钱包地址
  `wallet_address` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_user`
--

LOCK TABLES `company_user` WRITE;
/*!40000 ALTER TABLE `company_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_user_bank_accounts`
--

DROP TABLE IF EXISTS `company_user_bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_user_bank_accounts` (
  `company_user_id` varchar(255) NOT NULL,
  `bank_accounts` varchar(255) DEFAULT NULL,
  KEY `FK7pvlxcvv54unvawt852k04fxg` (`company_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_user_bank_accounts`
--

LOCK TABLES `company_user_bank_accounts` WRITE;
/*!40000 ALTER TABLE `company_user_bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_user_bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_user_identities`
--

DROP TABLE IF EXISTS `company_user_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_user_identities` (
  `company_user_id` varchar(255) NOT NULL,
  `identities` varchar(255) DEFAULT NULL,
  KEY `FKq852meexqyd8yghuenjwn7vqx` (`company_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_user_identities`
--

LOCK TABLES `company_user_identities` WRITE;
/*!40000 ALTER TABLE `company_user_identities` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_user_identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `agent` varchar(255) DEFAULT NULL,
  `evaluation` double NOT NULL,
  `money` double NOT NULL,
  `over` bit(1) NOT NULL,
  `patentid` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `report` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `rule` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `tech` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance` (
  `id` varchar(255) NOT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `evaluation_company` varchar(255) DEFAULT NULL,
  `if_pass` int(11) DEFAULT NULL,
  `insurance_id` varchar(255) DEFAULT NULL,
  `insurance_url` varchar(255) DEFAULT NULL,
  `loan_id` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `patent_id` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `simple_id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `patent_id` varchar(255) DEFAULT NULL,
  `patent_pool_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`simple_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
  `loanid` varchar(255) NOT NULL,
  `accept_money` double NOT NULL,
  `accept_time` varchar(255) DEFAULT NULL,
  `actual_money` double NOT NULL,
  `actual_time` varchar(255) DEFAULT NULL,
  `application` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bank_id` varchar(255) DEFAULT NULL,
  `bank_pass` bit(1) NOT NULL,
  `banksign` varchar(255) DEFAULT NULL,
  `compensation` double NOT NULL,
  `contractid` varchar(255) DEFAULT NULL,
  `evaluation` double NOT NULL,
  `evaluation_pass` bit(1) NOT NULL,
  `evaluationsign` varchar(255) DEFAULT NULL,
  `expect_money` double NOT NULL,
  `expect_time` varchar(255) DEFAULT NULL,
  `financesign` varchar(255) DEFAULT NULL,
  `if_insurance` bit(1) NOT NULL,
  `insurance` varchar(255) DEFAULT NULL,
  `insurance_id` varchar(255) DEFAULT NULL,
  `insurance_pass` bit(1) NOT NULL,
  `insurance_expect_money` double NOT NULL,
  `insurance_expect_time` varchar(255) DEFAULT NULL,
  `insurancesign` varchar(255) DEFAULT NULL,
  `iposign` varchar(255) DEFAULT NULL,
  `owner_pass` bit(1) NOT NULL,
  `patent` varchar(255) DEFAULT NULL,
  `patentid` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `return_money` double NOT NULL,
  `state` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `way` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`loanid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_contract`
--

DROP TABLE IF EXISTS `loan_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan_contract` (
  `contract_id` varchar(255) NOT NULL,
  `fifth_money` varchar(255) DEFAULT NULL,
  `fourth_money` varchar(255) DEFAULT NULL,
  `fourth_time` datetime DEFAULT NULL,
  `legal_repre_of_a` varchar(255) DEFAULT NULL,
  `legal_repre_of_b` varchar(255) DEFAULT NULL,
  `ninteenth` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `party_a` varchar(255) DEFAULT NULL,
  `party_b` varchar(255) DEFAULT NULL,
  `pledge_end_time` datetime DEFAULT NULL,
  `pledge_start_time` datetime DEFAULT NULL,
  `postal_address_of_a` varchar(255) DEFAULT NULL,
  `postal_address_of_b` varchar(255) DEFAULT NULL,
  `register_date` varchar(255) DEFAULT NULL,
  `second_end_time` datetime DEFAULT NULL,
  `second_money` varchar(255) DEFAULT NULL,
  `second_start_time` datetime DEFAULT NULL,
  `sixteenth_percent` int(11) NOT NULL,
  `tenth_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_contract`
--

LOCK TABLES `loan_contract` WRITE;
/*!40000 ALTER TABLE `loan_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `param` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `mid` bigint(20) NOT NULL AUTO_INCREMENT,
  `event` varchar(255) DEFAULT NULL,
  `is_read` bit(1) NOT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mine`
--

DROP TABLE IF EXISTS `mine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mine` (
  `fid` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag` int(11) DEFAULT NULL,
  `tid` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mine`
--

LOCK TABLES `mine` WRITE;
/*!40000 ALTER TABLE `mine` DISABLE KEYS */;
/*!40000 ALTER TABLE `mine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent`
--

DROP TABLE IF EXISTS `patent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent` (
  `patent_id` varchar(255) NOT NULL,
  `apply_date` varchar(255) DEFAULT NULL,
  `patent_holder` varchar(255) DEFAULT NULL,
  `patent_name` varchar(255) DEFAULT NULL,
  `patent_type` varchar(255) DEFAULT NULL,
  `pool_id` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `valid_period` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`patent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent`
--

LOCK TABLES `patent` WRITE;
/*!40000 ALTER TABLE `patent` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_invitation_pool_id_list`
--

DROP TABLE IF EXISTS `patent_invitation_pool_id_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_invitation_pool_id_list` (
  `patent_patent_id` varchar(255) NOT NULL,
  `invitation_pool_id_list` varchar(255) DEFAULT NULL,
  KEY `FKps4dmwkn4ij75vf4or74p7sen` (`patent_patent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_invitation_pool_id_list`
--

LOCK TABLES `patent_invitation_pool_id_list` WRITE;
/*!40000 ALTER TABLE `patent_invitation_pool_id_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_invitation_pool_id_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_or_manager_rec`
--

DROP TABLE IF EXISTS `patent_or_manager_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_or_manager_rec` (
  `rec_id` varchar(255) NOT NULL,
  `day` datetime DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `points` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`rec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_or_manager_rec`
--

LOCK TABLES `patent_or_manager_rec` WRITE;
/*!40000 ALTER TABLE `patent_or_manager_rec` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_or_manager_rec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_pool_applypatents`
--

DROP TABLE IF EXISTS `patent_pool_applypatents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_pool_applypatents` (
  `patent_pool_id` varchar(255) NOT NULL,
  `applypatents` varchar(255) DEFAULT NULL,
  KEY `FK8v8qdj18sgu6hf1ndidox0xg1` (`patent_pool_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_pool_applypatents`
--

LOCK TABLES `patent_pool_applypatents` WRITE;
/*!40000 ALTER TABLE `patent_pool_applypatents` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_pool_applypatents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_pool_managers`
--

DROP TABLE IF EXISTS `patent_pool_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_pool_managers` (
  `patent_pool_id` varchar(255) NOT NULL,
  `managers` varchar(255) DEFAULT NULL,
  KEY `FKqnysi0yupmnu3aikb31ijpjyp` (`patent_pool_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_pool_managers`
--

LOCK TABLES `patent_pool_managers` WRITE;
/*!40000 ALTER TABLE `patent_pool_managers` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_pool_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_pool_patents`
--

DROP TABLE IF EXISTS `patent_pool_patents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_pool_patents` (
  `patent_pool_id` varchar(255) NOT NULL,
  `patents` varchar(255) DEFAULT NULL,
  KEY `FKcvd49d9k67td0bcuk4usx6pw` (`patent_pool_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_pool_patents`
--

LOCK TABLES `patent_pool_patents` WRITE;
/*!40000 ALTER TABLE `patent_pool_patents` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_pool_patents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent_pool_users`
--

DROP TABLE IF EXISTS `patent_pool_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent_pool_users` (
  `patent_pool_id` varchar(255) NOT NULL,
  `users` varchar(255) DEFAULT NULL,
  KEY `FKqov5v4m30mvcrws2vxcvy2o7s` (`patent_pool_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent_pool_users`
--

LOCK TABLES `patent_pool_users` WRITE;
/*!40000 ALTER TABLE `patent_pool_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent_pool_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permit_contract`
--

DROP TABLE IF EXISTS `permit_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permit_contract` (
  `contract_id` varchar(255) NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `partya_repre` varchar(255) DEFAULT NULL,
  `partyb_repre` varchar(255) DEFAULT NULL,
  `patent_id` varchar(255) DEFAULT NULL,
  `patent_name` varchar(255) DEFAULT NULL,
  `sign_address` varchar(255) DEFAULT NULL,
  `sign_date` datetime DEFAULT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permit_contract`
--

LOCK TABLES `permit_contract` WRITE;
/*!40000 ALTER TABLE `permit_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `permit_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_user`
--

DROP TABLE IF EXISTS `personal_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_user` (
  `id` varchar(255) NOT NULL,
  `rmb` double NOT NULL,
  `active_code` varchar(255) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `credits` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_photo` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `industry` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pay_code` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `verified` bit(1) NOT NULL,
  `vertification` varchar(255) DEFAULT NULL,
--   新增钱包地址
  `wallet_address` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_user`
--

LOCK TABLES `personal_user` WRITE;
/*!40000 ALTER TABLE `personal_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_user_bank_account`
--

DROP TABLE IF EXISTS `personal_user_bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_user_bank_account` (
  `personal_user_id` varchar(255) NOT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  KEY `FK9y23tpsuo9jj5pb7ut88njo5i` (`personal_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_user_bank_account`
--

LOCK TABLES `personal_user_bank_account` WRITE;
/*!40000 ALTER TABLE `personal_user_bank_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_user_bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_user_identities`
--

DROP TABLE IF EXISTS `personal_user_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_user_identities` (
  `personal_user_id` varchar(255) NOT NULL,
  `identities` int(11) DEFAULT NULL,
  KEY `FKd6fqur5dgj368yy4ho6xdfdxq` (`personal_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_user_identities`
--

LOCK TABLES `personal_user_identities` WRITE;
/*!40000 ALTER TABLE `personal_user_identities` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_user_identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool`
--

DROP TABLE IF EXISTS `pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool` (
  `id` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `industry` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool`
--

LOCK TABLES `pool` WRITE;
/*!40000 ALTER TABLE `pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `post_id` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `brief_intro` varchar(255) DEFAULT NULL,
  `content_url` varchar(255) DEFAULT NULL,
  `interest_num` bigint(20) NOT NULL,
  `post_name` varchar(255) DEFAULT NULL,
  `post_state` int(11) DEFAULT NULL,
  `publish_time` varchar(255) DEFAULT NULL,
  `remark_num` bigint(20) NOT NULL,
  `visits` bigint(20) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_post_tag`
--

DROP TABLE IF EXISTS `post_post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_post_tag` (
  `post_post_id` varchar(255) NOT NULL,
  `post_tag` varchar(255) DEFAULT NULL,
  KEY `FK72a7f6ps7bh3plrbsmcskhe9` (`post_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_post_tag`
--

LOCK TABLES `post_post_tag` WRITE;
/*!40000 ALTER TABLE `post_post_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_remark_content`
--

DROP TABLE IF EXISTS `post_remark_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_remark_content` (
  `post_post_id` varchar(255) NOT NULL,
  `remark_content_rid` bigint(20) NOT NULL,
  UNIQUE KEY `UK_n28kn9um9uwuniyei6mwg2iis` (`remark_content_rid`),
  KEY `FK5u36959yajq7c0r2dtn7781ki` (`post_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_remark_content`
--

LOCK TABLES `post_remark_content` WRITE;
/*!40000 ALTER TABLE `post_remark_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_remark_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `postid` varchar(255) DEFAULT NULL,
  `postname` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remark` (
  `rid` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` varchar(255) DEFAULT NULL,
  `remark_content` varchar(255) DEFAULT NULL,
  `remark_time` datetime DEFAULT NULL,
  `reviewer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remark`
--

LOCK TABLES `remark` WRITE;
/*!40000 ALTER TABLE `remark` DISABLE KEYS */;
/*!40000 ALTER TABLE `remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `require_rec`
--

DROP TABLE IF EXISTS `require_rec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `require_rec` (
  `rec_id` varchar(255) NOT NULL,
  `buyer_id` varchar(255) DEFAULT NULL,
  `day` datetime DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `points` int(11) NOT NULL,
  `require_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `require_rec`
--

LOCK TABLES `require_rec` WRITE;
/*!40000 ALTER TABLE `require_rec` DISABLE KEYS */;
/*!40000 ALTER TABLE `require_rec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transcation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ippoint` int(11) NOT NULL,
  `amount` double NOT NULL,
  `buyer` varchar(255) DEFAULT NULL,
  `buyer_bank_account` varchar(255) DEFAULT NULL,
  `patent_id` varchar(255) DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `seller_bank_account` varchar(255) DEFAULT NULL,
  `transcation_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transcation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_contract`
--

DROP TABLE IF EXISTS `transfer_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_contract` (
  `contract_id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `apply_end_time` datetime DEFAULT NULL,
  `apply_range` varchar(255) DEFAULT NULL,
  `apply_start_time` datetime DEFAULT NULL,
  `apply_way` varchar(255) DEFAULT NULL,
  `arbitration_commission` varchar(255) DEFAULT NULL,
  `assign_time` datetime DEFAULT NULL,
  `calculate_way` varchar(255) DEFAULT NULL,
  `choose` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `money1` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `num_list` tinyblob,
  `others_way` varchar(255) DEFAULT NULL,
  `patent_designer` varchar(255) DEFAULT NULL,
  `patent_id` varchar(255) DEFAULT NULL,
  `patent_owner` varchar(255) DEFAULT NULL,
  `pay` int(11) NOT NULL,
  `pay_way` varchar(255) DEFAULT NULL,
  `percent` varchar(255) DEFAULT NULL,
  `sixth_end_time` datetime DEFAULT NULL,
  `sixth_range` varchar(255) DEFAULT NULL,
  `sixth_start_time` datetime DEFAULT NULL,
  `sixth_way` varchar(255) DEFAULT NULL,
  `solve_way` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `str` varchar(255) DEFAULT NULL,
  `tenth_str1` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_contract`
--

LOCK TABLES `transfer_contract` WRITE;
/*!40000 ALTER TABLE `transfer_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_contract` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-21  9:20:49

ALTER TABLE ipnet.patent MODIFY COLUMN patent_type VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE ipnet.patent MODIFY COLUMN patent_name VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE ipnet.patent MODIFY COLUMN url VARCHAR(255)
CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;