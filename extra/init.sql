-- MySQL dump 10.11
--
-- Host: localhost    Database: falkia
-- ------------------------------------------------------
-- Server version	5.0.51a-24+lenny4

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
-- Table structure for table `additional_exam_groups`
--

DROP TABLE IF EXISTS `additional_exam_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `additional_exam_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `batch_id` int(11) default NULL,
  `exam_type` varchar(255) default NULL,
  `is_published` tinyint(1) default '0',
  `result_published` tinyint(1) default '0',
  `students_list` varchar(255) default NULL,
  `exam_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `additional_exam_groups`
--

LOCK TABLES `additional_exam_groups` WRITE;
/*!40000 ALTER TABLE `additional_exam_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_exam_scores`
--

DROP TABLE IF EXISTS `additional_exam_scores`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `additional_exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `additional_exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `additional_exam_scores`
--

LOCK TABLES `additional_exam_scores` WRITE;
/*!40000 ALTER TABLE `additional_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_exams`
--

DROP TABLE IF EXISTS `additional_exams`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `additional_exams` (
  `id` int(11) NOT NULL auto_increment,
  `additional_exam_group_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `maximum_marks` int(11) default NULL,
  `minimum_marks` int(11) default NULL,
  `grading_level_id` int(11) default NULL,
  `weightage` int(11) default '0',
  `event_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `additional_exams`
--

LOCK TABLES `additional_exams` WRITE;
/*!40000 ALTER TABLE `additional_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_fields`
--

DROP TABLE IF EXISTS `additional_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `additional_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `additional_fields`
--

LOCK TABLES `additional_fields` WRITE;
/*!40000 ALTER TABLE `additional_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_leaves`
--

DROP TABLE IF EXISTS `apply_leaves`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `apply_leaves` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `employee_leave_types_id` int(11) default NULL,
  `is_half_day` tinyint(1) default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `reason` varchar(255) default NULL,
  `approved` tinyint(1) default '0',
  `viewed_by_manager` tinyint(1) default '0',
  `manager_remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `apply_leaves`
--

LOCK TABLES `apply_leaves` WRITE;
/*!40000 ALTER TABLE `apply_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_additional_details`
--

DROP TABLE IF EXISTS `archived_employee_additional_details`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `archived_employee_additional_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `additional_field_id` int(11) default NULL,
  `additional_info` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `archived_employee_additional_details`
--

LOCK TABLES `archived_employee_additional_details` WRITE;
/*!40000 ALTER TABLE `archived_employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_bank_details`
--

DROP TABLE IF EXISTS `archived_employee_bank_details`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `archived_employee_bank_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `bank_field_id` int(11) default NULL,
  `bank_info` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `archived_employee_bank_details`
--

LOCK TABLES `archived_employee_bank_details` WRITE;
/*!40000 ALTER TABLE `archived_employee_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_salary_structures`
--

DROP TABLE IF EXISTS `archived_employee_salary_structures`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `archived_employee_salary_structures` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `payroll_category_id` int(11) default NULL,
  `amount` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `archived_employee_salary_structures`
--

LOCK TABLES `archived_employee_salary_structures` WRITE;
/*!40000 ALTER TABLE `archived_employee_salary_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_salary_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employees`
--

DROP TABLE IF EXISTS `archived_employees`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `archived_employees` (
  `id` int(11) NOT NULL auto_increment,
  `employee_category_id` int(11) default NULL,
  `employee_number` varchar(255) default NULL,
  `joining_date` date default NULL,
  `first_name` varchar(255) default NULL,
  `middle_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `gender` tinyint(1) default NULL,
  `job_title` varchar(255) default NULL,
  `employee_position_id` int(11) default NULL,
  `employee_department_id` int(11) default NULL,
  `reporting_manager_id` int(11) default NULL,
  `employee_grade_id` int(11) default NULL,
  `qualification` varchar(255) default NULL,
  `experience_detail` text,
  `experience_year` int(11) default NULL,
  `experience_month` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `status_description` varchar(255) default NULL,
  `date_of_birth` date default NULL,
  `marital_status` varchar(255) default NULL,
  `children_count` int(11) default NULL,
  `father_name` varchar(255) default NULL,
  `mother_name` varchar(255) default NULL,
  `husband_name` varchar(255) default NULL,
  `blood_group` varchar(255) default NULL,
  `nationality_id` int(11) default NULL,
  `home_address_line1` varchar(255) default NULL,
  `home_address_line2` varchar(255) default NULL,
  `home_city` varchar(255) default NULL,
  `home_state` varchar(255) default NULL,
  `home_country_id` int(11) default NULL,
  `home_pin_code` varchar(255) default NULL,
  `office_address_line1` varchar(255) default NULL,
  `office_address_line2` varchar(255) default NULL,
  `office_city` varchar(255) default NULL,
  `office_state` varchar(255) default NULL,
  `office_country_id` int(11) default NULL,
  `office_pin_code` varchar(255) default NULL,
  `office_phone1` varchar(255) default NULL,
  `office_phone2` varchar(255) default NULL,
  `mobile_phone` varchar(255) default NULL,
  `home_phone` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `photo_file_name` varchar(255) default NULL,
  `photo_content_type` varchar(255) default NULL,
  `photo_data` mediumblob,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_size` int(11) default NULL,
  `former_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `archived_employees`
--

LOCK TABLES `archived_employees` WRITE;
/*!40000 ALTER TABLE `archived_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_exam_scores`
--

DROP TABLE IF EXISTS `archived_exam_scores`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `archived_exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_archived_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `archived_exam_scores`
--

LOCK TABLES `archived_exam_scores` WRITE;
/*!40000 ALTER TABLE `archived_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_guardians`
--

DROP TABLE IF EXISTS `archived_guardians`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `archived_guardians` (
  `id` int(11) NOT NULL auto_increment,
  `ward_id` int(11) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `relation` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `office_phone1` varchar(255) default NULL,
  `office_phone2` varchar(255) default NULL,
  `mobile_phone` varchar(255) default NULL,
  `office_address_line1` varchar(255) default NULL,
  `office_address_line2` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `country_id` int(11) default NULL,
  `dob` date default NULL,
  `occupation` varchar(255) default NULL,
  `income` varchar(255) default NULL,
  `education` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `archived_guardians`
--

LOCK TABLES `archived_guardians` WRITE;
/*!40000 ALTER TABLE `archived_guardians` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_students`
--

DROP TABLE IF EXISTS `archived_students`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `archived_students` (
  `id` int(11) NOT NULL auto_increment,
  `admission_no` varchar(255) default NULL,
  `class_roll_no` varchar(255) default NULL,
  `admission_date` date default NULL,
  `first_name` varchar(255) default NULL,
  `middle_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `batch_id` int(11) default NULL,
  `date_of_birth` date default NULL,
  `gender` varchar(255) default NULL,
  `blood_group` varchar(255) default NULL,
  `birth_place` varchar(255) default NULL,
  `nationality_id` int(11) default NULL,
  `language` varchar(255) default NULL,
  `religion` varchar(255) default NULL,
  `student_category_id` int(11) default NULL,
  `address_line1` varchar(255) default NULL,
  `address_line2` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `pin_code` varchar(255) default NULL,
  `country_id` int(11) default NULL,
  `phone1` varchar(255) default NULL,
  `phone2` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `photo_file_name` varchar(255) default NULL,
  `photo_content_type` varchar(255) default NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) default NULL,
  `is_active` tinyint(1) default '1',
  `is_deleted` tinyint(1) default '0',
  `immediate_contact_id` int(11) default NULL,
  `is_sms_enabled` tinyint(1) default '1',
  `former_id` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_size` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `archived_students`
--

LOCK TABLES `archived_students` WRITE;
/*!40000 ALTER TABLE `archived_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `description` text,
  `amount` int(11) default NULL,
  `is_inactive` tinyint(1) default '0',
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `attendances` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `period_table_entry_id` int(11) default NULL,
  `forenoon` tinyint(1) default '0',
  `afternoon` tinyint(1) default '0',
  `reason` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_fields`
--

DROP TABLE IF EXISTS `bank_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bank_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bank_fields`
--

LOCK TABLES `bank_fields` WRITE;
/*!40000 ALTER TABLE `bank_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_events`
--

DROP TABLE IF EXISTS `batch_events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `batch_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_batch_events_on_batch_id` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `batch_events`
--

LOCK TABLES `batch_events` WRITE;
/*!40000 ALTER TABLE `batch_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_students`
--

DROP TABLE IF EXISTS `batch_students`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `batch_students` (
  `student_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  KEY `index_batch_students_on_batch_id_and_student_id` (`batch_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `batch_students`
--

LOCK TABLES `batch_students` WRITE;
/*!40000 ALTER TABLE `batch_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `batches` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `course_id` int(11) default NULL,
  `start_date` datetime default NULL,
  `end_date` datetime default NULL,
  `is_active` tinyint(1) default '1',
  `is_deleted` tinyint(1) default '0',
  `employee_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_batches_on_is_deleted_and_is_active` (`is_deleted`,`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` VALUES (1,'2013 A',1,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(2,'2013 A',2,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(3,'2013 A',3,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(4,'2013 A',4,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(5,'2013 A',5,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(6,'2013 A',6,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(7,'2013 A',7,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(8,'2013 A',8,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(9,'2013 A',9,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(10,'2013 A',10,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(11,'2013 A',11,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL);
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_timings`
--

DROP TABLE IF EXISTS `class_timings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_timings` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `start_time` time default NULL,
  `end_time` time default NULL,
  `is_break` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_class_timings_on_batch_id_and_start_time_and_end_time` (`batch_id`,`start_time`,`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_timings`
--

LOCK TABLES `class_timings` WRITE;
/*!40000 ALTER TABLE `class_timings` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_timings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `configurations` (
  `id` int(11) NOT NULL auto_increment,
  `config_key` varchar(255) default NULL,
  `config_value` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_configurations_on_config_key` (`config_key`(10)),
  KEY `index_configurations_on_config_value` (`config_value`(10))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'InstitutionName','Al Noor Public School'),(2,'InstitutionAddress','Nisar Colony'),(3,'InstitutionPhoneNo','0412662283'),(4,'StudentAttendanceType','Daily'),(5,'CurrencyType','Rs.'),(6,'Locale','en'),(7,'AdmissionNumberAutoIncrement','1'),(8,'EmployeeNumberAutoIncrement','1'),(9,'TotalSmsCount','0'),(10,'AvailableModules','HR'),(11,'AvailableModules','Finance'),(12,'NetworkState','Online'),(13,'FinancialYearStartDate','2012-07-01'),(14,'FinancialYearEndDate','2013-06-30'),(15,'AutomaticLeaveReset','0'),(16,'LeaveResetPeriod','4'),(17,'LastAutoLeaveReset',NULL);
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua & Deps'),(7,'Argentina'),(8,'Armenia'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia Herzegovina'),(23,'Botswana'),(24,'Brazil'),(25,'Brunei'),(26,'Bulgaria'),(27,'Burkina'),(28,'Burundi'),(29,'Cambodia'),(30,'Cameroon'),(31,'Canada'),(32,'Cape Verde'),(33,'Central African Rep'),(34,'Chad'),(35,'Chile'),(36,'China'),(37,'Colombia'),(38,'Comoros'),(39,'Congo'),(40,'Congo {Democratic Rep}'),(41,'Costa Rica'),(42,'Croatia'),(43,'Cuba'),(44,'Cyprus'),(45,'Czech Republic'),(46,'Denmark'),(47,'Djibouti'),(48,'Dominica'),(49,'Dominican Republic'),(50,'East Timor'),(51,'Ecuador'),(52,'Egypt'),(53,'El Salvador'),(54,'Equatorial Guinea'),(55,'Eritrea'),(56,'Estonia'),(57,'Ethiopia'),(58,'Fiji'),(59,'Finland'),(60,'France'),(61,'Gabon'),(62,'Gambia'),(63,'Georgia'),(64,'Germany'),(65,'Ghana'),(66,'Greece'),(67,'Grenada'),(68,'Guatemala'),(69,'Guinea'),(70,'Guinea-Bissau'),(71,'Guyana'),(72,'Haiti'),(73,'Honduras'),(74,'Hungary'),(75,'Iceland'),(76,'India'),(77,'Indonesia'),(78,'Iran'),(79,'Iraq'),(80,'Ireland {Republic}'),(81,'Israel'),(82,'Italy'),(83,'Ivory Coast'),(84,'Jamaica'),(85,'Japan'),(86,'Jordan'),(87,'Kazakhstan'),(88,'Kenya'),(89,'Kiribati'),(90,'Korea North'),(91,'Korea South'),(92,'Kosovo'),(93,'Kuwait'),(94,'Kyrgyzstan'),(95,'Laos'),(96,'Latvia'),(97,'Lebanon'),(98,'Lesotho'),(99,'Liberia'),(100,'Libya'),(101,'Liechtenstein'),(102,'Lithuania'),(103,'Luxembourg'),(104,'Macedonia'),(105,'Madagascar'),(106,'Malawi'),(107,'Malaysia'),(108,'Maldives'),(109,'Mali'),(110,'Malta'),(111,'Montenegro'),(112,'Marshall Islands'),(113,'Mauritania'),(114,'Mauritius'),(115,'Mexico'),(116,'Micronesia'),(117,'Moldova'),(118,'Monaco'),(119,'Mongolia'),(120,'Morocco'),(121,'Mozambique'),(122,'Myanmar, {Burma}'),(123,'Namibia'),(124,'Nauru'),(125,'Nepal'),(126,'Netherlands'),(127,'New Zealand'),(128,'Nicaragua'),(129,'Niger'),(130,'Nigeria'),(131,'Norway'),(132,'Oman'),(133,'Pakistan'),(134,'Palau'),(135,'Panama'),(136,'Papua New Guinea'),(137,'Paraguay'),(138,'Peru'),(139,'Philippines'),(140,'Poland'),(141,'Portugal'),(142,'Qatar'),(143,'Romania'),(144,'Russian Federation'),(145,'Rwanda'),(146,'St Kitts & Nevis'),(147,'St Lucia'),(148,'Saint Vincent & the Grenadines'),(149,'Samoa'),(150,'San Marino'),(151,'Sao Tome & Principe'),(152,'Saudi Arabia'),(153,'Senegal'),(154,'Serbia'),(155,'Seychelles'),(156,'Sierra Leone'),(157,'Singapore'),(158,'Slovakia'),(159,'Slovenia'),(160,'Solomon Islands'),(161,'Somalia'),(162,'South Africa'),(163,'Spain'),(164,'Sri Lanka'),(165,'Sudan'),(166,'Suriname'),(167,'Swaziland'),(168,'Sweden'),(169,'Switzerland'),(170,'Syria'),(171,'Taiwan'),(172,'Tajikistan'),(173,'Tanzania'),(174,'Thailand'),(175,'Togo'),(176,'Tonga'),(177,'Trinidad & Tobago'),(178,'Tunisia'),(179,'Turkey'),(180,'Turkmenistan'),(181,'Tuvalu'),(182,'Uganda'),(183,'Ukraine'),(184,'United Arab Emirates'),(185,'United Kingdom'),(186,'United States'),(187,'Uruguay'),(188,'Uzbekistan'),(189,'Vanuatu'),(190,'Vatican City'),(191,'Venezuea'),(192,'Vietnam'),(193,'Yemen'),(194,'Zambia'),(195,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL auto_increment,
  `course_name` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `section_name` varchar(255) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Class I','01','',0,'2012-05-29 12:43:07','2012-05-29 12:47:34'),(2,'Class II','02','',0,'2012-05-29 12:44:23','2012-05-29 12:47:48'),(3,'Class III','03','',0,'2012-05-29 12:45:03','2012-05-29 12:48:00'),(4,'Class IV','04','',0,'2012-05-29 12:45:37','2012-05-29 12:48:13'),(5,'Class V','05','',0,'2012-05-29 12:46:29','2012-05-29 12:48:26'),(6,'Class VI','06','',0,'2012-05-29 12:47:09','2012-05-29 12:47:09'),(7,'Class VII','07','',0,'2012-05-29 12:48:59','2012-05-29 12:48:59'),(8,'Class VIII','08','',0,'2012-05-29 12:49:44','2012-05-29 12:49:44'),(9,'Nursery','N','',0,'2012-05-29 12:51:57','2012-05-29 12:51:57'),(10,'Pre Nursery','PN','',0,'2012-05-29 12:52:45','2012-05-29 12:52:45'),(11,'Prep','P','',0,'2012-05-29 12:53:43','2012-05-29 12:53:43');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elective_groups`
--

DROP TABLE IF EXISTS `elective_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `elective_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `batch_id` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `elective_groups`
--

LOCK TABLES `elective_groups` WRITE;
/*!40000 ALTER TABLE `elective_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `elective_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electives`
--

DROP TABLE IF EXISTS `electives`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `electives` (
  `id` int(11) NOT NULL auto_increment,
  `elective_group_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `electives`
--

LOCK TABLES `electives` WRITE;
/*!40000 ALTER TABLE `electives` DISABLE KEYS */;
/*!40000 ALTER TABLE `electives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_additional_details`
--

DROP TABLE IF EXISTS `employee_additional_details`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_additional_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `additional_field_id` int(11) default NULL,
  `additional_info` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_additional_details`
--

LOCK TABLES `employee_additional_details` WRITE;
/*!40000 ALTER TABLE `employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendances`
--

DROP TABLE IF EXISTS `employee_attendances`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_attendances` (
  `id` int(11) NOT NULL auto_increment,
  `attendance_date` date default NULL,
  `employee_id` int(11) default NULL,
  `employee_leave_type_id` int(11) default NULL,
  `reason` varchar(255) default NULL,
  `is_half_day` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_attendances`
--

LOCK TABLES `employee_attendances` WRITE;
/*!40000 ALTER TABLE `employee_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_bank_details`
--

DROP TABLE IF EXISTS `employee_bank_details`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_bank_details` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `bank_field_id` int(11) default NULL,
  `bank_info` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_bank_details`
--

LOCK TABLES `employee_bank_details` WRITE;
/*!40000 ALTER TABLE `employee_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_categories`
--

DROP TABLE IF EXISTS `employee_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `prefix` varchar(255) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_categories`
--

LOCK TABLES `employee_categories` WRITE;
/*!40000 ALTER TABLE `employee_categories` DISABLE KEYS */;
INSERT INTO `employee_categories` VALUES (1,'Falkia Admin','Admin',1),(3,'Teaching Staff','TS',1),(4,'Non-Teaching Staff','NTS',1),(5,'Finance','Fin',1),(6,'Contract Workers','CW',1);
/*!40000 ALTER TABLE `employee_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_department_events`
--

DROP TABLE IF EXISTS `employee_department_events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_department_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `employee_department_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_department_events`
--

LOCK TABLES `employee_department_events` WRITE;
/*!40000 ALTER TABLE `employee_department_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_department_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_departments`
--

DROP TABLE IF EXISTS `employee_departments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_departments` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_departments`
--

LOCK TABLES `employee_departments` WRITE;
/*!40000 ALTER TABLE `employee_departments` DISABLE KEYS */;
INSERT INTO `employee_departments` VALUES (1,'Admin','Falkia Admin',1),(2,'ISL','Islamic Studies',1),(3,'PAK','Pakistan Studies',1),(4,'MAT','Mathematics',1),(5,'ENG','English Language',1),(6,'URD','Urdu Language',1),(7,'SCI','General Science',1),(8,'COM','Computer',1),(9,'GAD','Drawing Gadgets',1),(10,'GKN','General Knowledge',1),(11,'TPT','Transportation',1),(12,'LAB','Computer Lab',1),(13,'LIB','Liberary',1);
/*!40000 ALTER TABLE `employee_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_grades`
--

DROP TABLE IF EXISTS `employee_grades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_grades` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `priority` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `max_hours_day` int(11) default NULL,
  `max_hours_week` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_grades`
--

LOCK TABLES `employee_grades` WRITE;
/*!40000 ALTER TABLE `employee_grades` DISABLE KEYS */;
INSERT INTO `employee_grades` VALUES (1,'Falkia Admin',0,1,NULL,NULL);
/*!40000 ALTER TABLE `employee_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leave_types`
--

DROP TABLE IF EXISTS `employee_leave_types`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_leave_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `status` tinyint(1) default NULL,
  `max_leave_count` varchar(255) default NULL,
  `carry_forward` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_leave_types`
--

LOCK TABLES `employee_leave_types` WRITE;
/*!40000 ALTER TABLE `employee_leave_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leaves`
--

DROP TABLE IF EXISTS `employee_leaves`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_leaves` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `employee_leave_type_id` int(11) default NULL,
  `leave_count` decimal(5,1) default '0.0',
  `leave_taken` decimal(5,1) default '0.0',
  `reset_date` date default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_leaves`
--

LOCK TABLES `employee_leaves` WRITE;
/*!40000 ALTER TABLE `employee_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_positions`
--

DROP TABLE IF EXISTS `employee_positions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_positions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `employee_category_id` int(11) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_positions`
--

LOCK TABLES `employee_positions` WRITE;
/*!40000 ALTER TABLE `employee_positions` DISABLE KEYS */;
INSERT INTO `employee_positions` VALUES (1,'Falkia Admin',1,1),(2,'Finance Manager',5,1),(5,'Accountant',5,1),(6,'Cashier',5,1),(7,'Record Keeper',5,1),(8,'Liberarian',4,1),(9,'Driver',4,1),(10,'Sweeper',6,1),(11,'Security Guard',6,1),(12,'Office Boy',4,1),(13,'Lab Incharge',4,1),(14,'Computer Administrator',4,1),(15,'Staff Administrator',3,1);
/*!40000 ALTER TABLE `employee_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salary_structures`
--

DROP TABLE IF EXISTS `employee_salary_structures`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employee_salary_structures` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `payroll_category_id` int(11) default NULL,
  `amount` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_salary_structures`
--

LOCK TABLES `employee_salary_structures` WRITE;
/*!40000 ALTER TABLE `employee_salary_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_salary_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL auto_increment,
  `employee_category_id` int(11) default NULL,
  `employee_number` varchar(255) default NULL,
  `joining_date` date default NULL,
  `first_name` varchar(255) default NULL,
  `middle_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `gender` tinyint(1) default NULL,
  `job_title` varchar(255) default NULL,
  `employee_position_id` int(11) default NULL,
  `employee_department_id` int(11) default NULL,
  `reporting_manager_id` int(11) default NULL,
  `employee_grade_id` int(11) default NULL,
  `qualification` varchar(255) default NULL,
  `experience_detail` text,
  `experience_year` int(11) default NULL,
  `experience_month` int(11) default NULL,
  `status` tinyint(1) default NULL,
  `status_description` varchar(255) default NULL,
  `date_of_birth` date default NULL,
  `marital_status` varchar(255) default NULL,
  `children_count` int(11) default NULL,
  `father_name` varchar(255) default NULL,
  `mother_name` varchar(255) default NULL,
  `husband_name` varchar(255) default NULL,
  `blood_group` varchar(255) default NULL,
  `nationality_id` int(11) default NULL,
  `home_address_line1` varchar(255) default NULL,
  `home_address_line2` varchar(255) default NULL,
  `home_city` varchar(255) default NULL,
  `home_state` varchar(255) default NULL,
  `home_country_id` int(11) default NULL,
  `home_pin_code` varchar(255) default NULL,
  `office_address_line1` varchar(255) default NULL,
  `office_address_line2` varchar(255) default NULL,
  `office_city` varchar(255) default NULL,
  `office_state` varchar(255) default NULL,
  `office_country_id` int(11) default NULL,
  `office_pin_code` varchar(255) default NULL,
  `office_phone1` varchar(255) default NULL,
  `office_phone2` varchar(255) default NULL,
  `mobile_phone` varchar(255) default NULL,
  `home_phone` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `photo_file_name` varchar(255) default NULL,
  `photo_content_type` varchar(255) default NULL,
  `photo_data` mediumblob,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `photo_file_size` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_employees_on_employee_number` (`employee_number`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,'admin','2012-05-28','Falkia',NULL,'Administrator',NULL,NULL,1,1,NULL,1,NULL,NULL,NULL,NULL,1,NULL,'2011-05-29',NULL,NULL,NULL,NULL,NULL,NULL,133,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','admin@falkia.com','',NULL,NULL,NULL,'2012-05-28 17:37:17','2012-05-28 20:09:12',NULL,1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_subjects`
--

DROP TABLE IF EXISTS `employees_subjects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `employees_subjects` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_employees_subjects_on_subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employees_subjects`
--

LOCK TABLES `employees_subjects` WRITE;
/*!40000 ALTER TABLE `employees_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `start_date` datetime default NULL,
  `end_date` datetime default NULL,
  `is_common` tinyint(1) default '0',
  `is_holiday` tinyint(1) default '0',
  `is_exam` tinyint(1) default '0',
  `is_due` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `origin_id` int(11) default NULL,
  `origin_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_events_on_is_common_and_is_holiday_and_is_exam` (`is_common`,`is_holiday`,`is_exam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_groups`
--

DROP TABLE IF EXISTS `exam_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `batch_id` int(11) default NULL,
  `exam_type` varchar(255) default NULL,
  `is_published` tinyint(1) default '0',
  `result_published` tinyint(1) default '0',
  `exam_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `exam_groups`
--

LOCK TABLES `exam_groups` WRITE;
/*!40000 ALTER TABLE `exam_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_scores`
--

DROP TABLE IF EXISTS `exam_scores`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `exam_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `exam_id` int(11) default NULL,
  `marks` decimal(7,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `remarks` varchar(255) default NULL,
  `is_failed` tinyint(1) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `exam_scores`
--

LOCK TABLES `exam_scores` WRITE;
/*!40000 ALTER TABLE `exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL auto_increment,
  `exam_group_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `maximum_marks` decimal(10,2) default NULL,
  `minimum_marks` decimal(10,2) default NULL,
  `grading_level_id` int(11) default NULL,
  `weightage` int(11) default '0',
  `event_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_exams_on_exam_group_id_and_subject_id` (`exam_group_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_collection_discounts`
--

DROP TABLE IF EXISTS `fee_collection_discounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `fee_collection_discounts` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `receiver_id` int(11) default NULL,
  `finance_fee_collection_id` int(11) default NULL,
  `discount` decimal(15,2) default NULL,
  `is_amount` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `fee_collection_discounts`
--

LOCK TABLES `fee_collection_discounts` WRITE;
/*!40000 ALTER TABLE `fee_collection_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_collection_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_collection_particulars`
--

DROP TABLE IF EXISTS `fee_collection_particulars`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `fee_collection_particulars` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `amount` decimal(12,2) default NULL,
  `finance_fee_collection_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `admission_no` varchar(255) default NULL,
  `student_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `fee_collection_particulars`
--

LOCK TABLES `fee_collection_particulars` WRITE;
/*!40000 ALTER TABLE `fee_collection_particulars` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_collection_particulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_discounts`
--

DROP TABLE IF EXISTS `fee_discounts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `fee_discounts` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `receiver_id` int(11) default NULL,
  `finance_fee_category_id` int(11) default NULL,
  `discount` decimal(15,2) default NULL,
  `is_amount` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `fee_discounts`
--

LOCK TABLES `fee_discounts` WRITE;
/*!40000 ALTER TABLE `fee_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_donations`
--

DROP TABLE IF EXISTS `finance_donations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `finance_donations` (
  `id` int(11) NOT NULL auto_increment,
  `donor` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `amount` decimal(15,2) default NULL,
  `transaction_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `transaction_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `finance_donations`
--

LOCK TABLES `finance_donations` WRITE;
/*!40000 ALTER TABLE `finance_donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_categories`
--

DROP TABLE IF EXISTS `finance_fee_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `finance_fee_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `batch_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `is_master` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `finance_fee_categories`
--

LOCK TABLES `finance_fee_categories` WRITE;
/*!40000 ALTER TABLE `finance_fee_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_collections`
--

DROP TABLE IF EXISTS `finance_fee_collections`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `finance_fee_collections` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `due_date` date default NULL,
  `fee_category_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `index_finance_fee_collections_on_fee_category_id` (`fee_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `finance_fee_collections`
--

LOCK TABLES `finance_fee_collections` WRITE;
/*!40000 ALTER TABLE `finance_fee_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_particulars`
--

DROP TABLE IF EXISTS `finance_fee_particulars`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `finance_fee_particulars` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `amount` decimal(15,2) default NULL,
  `finance_fee_category_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `admission_no` varchar(255) default NULL,
  `student_id` int(11) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `finance_fee_particulars`
--

LOCK TABLES `finance_fee_particulars` WRITE;
/*!40000 ALTER TABLE `finance_fee_particulars` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_particulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_structure_elements`
--

DROP TABLE IF EXISTS `finance_fee_structure_elements`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `finance_fee_structure_elements` (
  `id` int(11) NOT NULL auto_increment,
  `amount` decimal(15,2) default NULL,
  `label` varchar(255) default NULL,
  `batch_id` int(11) default NULL,
  `student_category_id` int(11) default NULL,
  `student_id` int(11) default NULL,
  `parent_id` int(11) default NULL,
  `fee_collection_id` int(11) default NULL,
  `deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `finance_fee_structure_elements`
--

LOCK TABLES `finance_fee_structure_elements` WRITE;
/*!40000 ALTER TABLE `finance_fee_structure_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_structure_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fees`
--

DROP TABLE IF EXISTS `finance_fees`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `finance_fees` (
  `id` int(11) NOT NULL auto_increment,
  `fee_collection_id` int(11) default NULL,
  `transaction_id` varchar(255) default NULL,
  `student_id` int(11) default NULL,
  `is_paid` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_finance_fees_on_fee_collection_id_and_student_id` (`fee_collection_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `finance_fees`
--

LOCK TABLES `finance_fees` WRITE;
/*!40000 ALTER TABLE `finance_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transaction_categories`
--

DROP TABLE IF EXISTS `finance_transaction_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `finance_transaction_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `is_income` tinyint(1) default NULL,
  `deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `finance_transaction_categories`
--

LOCK TABLES `finance_transaction_categories` WRITE;
/*!40000 ALTER TABLE `finance_transaction_categories` DISABLE KEYS */;
INSERT INTO `finance_transaction_categories` VALUES (1,'Salary',' ',0,0),(2,'Donation',' ',1,0),(3,'Fee',' ',1,0);
/*!40000 ALTER TABLE `finance_transaction_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transaction_triggers`
--

DROP TABLE IF EXISTS `finance_transaction_triggers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `finance_transaction_triggers` (
  `id` int(11) NOT NULL auto_increment,
  `finance_category_id` int(11) default NULL,
  `percentage` decimal(8,2) default NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `finance_transaction_triggers`
--

LOCK TABLES `finance_transaction_triggers` WRITE;
/*!40000 ALTER TABLE `finance_transaction_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_transaction_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transactions`
--

DROP TABLE IF EXISTS `finance_transactions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `finance_transactions` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `amount` decimal(15,2) default NULL,
  `fine_included` tinyint(1) default '0',
  `category_id` int(11) default NULL,
  `student_id` int(11) default NULL,
  `finance_fees_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `transaction_date` date default NULL,
  `fine_amount` decimal(10,2) default '0.00',
  `master_transaction_id` int(11) default '0',
  `finance_id` int(11) default NULL,
  `finance_type` varchar(255) default NULL,
  `payee_id` int(11) default NULL,
  `payee_type` varchar(255) default NULL,
  `receipt_no` varchar(255) default NULL,
  `voucher_no` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `finance_transactions`
--

LOCK TABLES `finance_transactions` WRITE;
/*!40000 ALTER TABLE `finance_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grading_levels`
--

DROP TABLE IF EXISTS `grading_levels`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `grading_levels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `batch_id` int(11) default NULL,
  `min_score` int(11) default NULL,
  `order` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grading_levels_on_batch_id_and_is_deleted` (`batch_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `grading_levels`
--

LOCK TABLES `grading_levels` WRITE;
/*!40000 ALTER TABLE `grading_levels` DISABLE KEYS */;
INSERT INTO `grading_levels` VALUES (1,'A',NULL,90,NULL,0,'2012-05-28 17:37:16','2012-05-28 17:37:16'),(2,'B',NULL,80,NULL,0,'2012-05-28 17:37:16','2012-05-28 17:37:16'),(3,'C',NULL,70,NULL,0,'2012-05-28 17:37:16','2012-05-28 17:37:16'),(4,'D',NULL,60,NULL,0,'2012-05-28 17:37:16','2012-05-28 17:37:16'),(5,'E',NULL,50,NULL,0,'2012-05-28 17:37:16','2012-05-28 17:37:16'),(6,'F',NULL,0,NULL,0,'2012-05-28 17:37:16','2012-05-28 17:37:16');
/*!40000 ALTER TABLE `grading_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_exams`
--

DROP TABLE IF EXISTS `grouped_exams`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `grouped_exams` (
  `id` int(11) NOT NULL auto_increment,
  `exam_group_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grouped_exams_on_batch_id` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `grouped_exams`
--

LOCK TABLES `grouped_exams` WRITE;
/*!40000 ALTER TABLE `grouped_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardians`
--

DROP TABLE IF EXISTS `guardians`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `guardians` (
  `id` int(11) NOT NULL auto_increment,
  `ward_id` int(11) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `relation` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `office_phone1` varchar(255) default NULL,
  `office_phone2` varchar(255) default NULL,
  `mobile_phone` varchar(255) default NULL,
  `office_address_line1` varchar(255) default NULL,
  `office_address_line2` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `country_id` int(11) default NULL,
  `dob` date default NULL,
  `occupation` varchar(255) default NULL,
  `income` varchar(255) default NULL,
  `education` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `guardians`
--

LOCK TABLES `guardians` WRITE;
/*!40000 ALTER TABLE `guardians` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individual_payslip_categories`
--

DROP TABLE IF EXISTS `individual_payslip_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `individual_payslip_categories` (
  `id` int(11) NOT NULL auto_increment,
  `employee_id` int(11) default NULL,
  `salary_date` date default NULL,
  `name` varchar(255) default NULL,
  `amount` varchar(255) default NULL,
  `is_deduction` tinyint(1) default NULL,
  `include_every_month` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `individual_payslip_categories`
--

LOCK TABLES `individual_payslip_categories` WRITE;
/*!40000 ALTER TABLE `individual_payslip_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `individual_payslip_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en'),(2,'Spanish','es');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liabilities`
--

DROP TABLE IF EXISTS `liabilities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `liabilities` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `description` text,
  `amount` int(11) default NULL,
  `is_solved` tinyint(1) default '0',
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `liabilities`
--

LOCK TABLES `liabilities` WRITE;
/*!40000 ALTER TABLE `liabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `liabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_payslips`
--

DROP TABLE IF EXISTS `monthly_payslips`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `monthly_payslips` (
  `id` int(11) NOT NULL auto_increment,
  `salary_date` date default NULL,
  `employee_id` int(11) default NULL,
  `payroll_category_id` int(11) default NULL,
  `amount` varchar(255) default NULL,
  `is_approved` tinyint(1) NOT NULL default '0',
  `approver_id` int(11) default NULL,
  `is_rejected` tinyint(1) NOT NULL default '0',
  `rejector_id` int(11) default NULL,
  `reason` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `monthly_payslips`
--

LOCK TABLES `monthly_payslips` WRITE;
/*!40000 ALTER TABLE `monthly_payslips` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_payslips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` text,
  `author_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Starting 29/05/2012','<p>&nbsp;This is v7, which is final almost.</p>',1,'2012-05-29 06:43:01','2012-05-29 06:43:01'),(2,'Settings Module Completed','<p>&nbsp;Pls Check</p>',1,'2012-05-30 10:01:17','2012-05-30 10:01:17');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_comments`
--

DROP TABLE IF EXISTS `news_comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `news_comments` (
  `id` int(11) NOT NULL auto_increment,
  `content` text,
  `news_id` int(11) default NULL,
  `author_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `news_comments`
--

LOCK TABLES `news_comments` WRITE;
/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_categories`
--

DROP TABLE IF EXISTS `payroll_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `payroll_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `percentage` float default NULL,
  `payroll_category_id` int(11) default NULL,
  `is_deduction` tinyint(1) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `payroll_categories`
--

LOCK TABLES `payroll_categories` WRITE;
/*!40000 ALTER TABLE `payroll_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period_entries`
--

DROP TABLE IF EXISTS `period_entries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `period_entries` (
  `id` int(11) NOT NULL auto_increment,
  `month_date` date default NULL,
  `batch_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `class_timing_id` int(11) default NULL,
  `employee_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_period_entries_on_month_date_and_batch_id` (`month_date`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `period_entries`
--

LOCK TABLES `period_entries` WRITE;
/*!40000 ALTER TABLE `period_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `period_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,'ExaminationControl','2012-05-28 17:37:17','2012-05-28 17:37:17','examination_control_privilege'),(2,'EnterResults','2012-05-28 17:37:17','2012-05-28 17:37:17','enter_results_privilege'),(3,'ViewResults','2012-05-28 17:37:17','2012-05-28 17:37:17','view_results_privilege'),(4,'Admission','2012-05-28 17:37:18','2012-05-28 17:37:18','admission_privilege'),(5,'StudentsControl','2012-05-28 17:37:18','2012-05-28 17:37:18','students_control_privilege'),(6,'ManageNews','2012-05-28 17:37:18','2012-05-28 17:37:18','manage_news_privilege'),(7,'ManageTimetable','2012-05-28 17:37:18','2012-05-28 17:37:18','manage_timetable_privilege'),(8,'StudentAttendanceView','2012-05-28 17:37:18','2012-05-28 17:37:18','student_attendance_view_privilege'),(9,'HrBasics','2012-05-28 17:37:18','2012-05-28 17:37:18','hr_basics_privilege'),(10,'AddNewBatch','2012-05-28 17:37:18','2012-05-28 17:37:18','add_new_batch_privilege'),(11,'SubjectMaster','2012-05-28 17:37:18','2012-05-28 17:37:18','subject_master_privilege'),(12,'EventManagement','2012-05-28 17:37:18','2012-05-28 17:37:18','event_management_privilege'),(13,'GeneralSettings','2012-05-28 17:37:18','2012-05-28 17:37:18','general_settings_privilege'),(14,'FinanceControl','2012-05-28 17:37:18','2012-05-28 17:37:18','finance_control_privilege'),(15,'TimetableView','2012-05-28 17:37:18','2012-05-28 17:37:18','timetable_view_privilege'),(16,'StudentAttendanceRegister','2012-05-28 17:37:18','2012-05-28 17:37:18','student_attendance_register_privilege'),(17,'EmployeeAttendance','2012-05-28 17:37:18','2012-05-28 17:37:18','employee_attendance_privilege'),(18,'PayslipPowers','2012-05-28 17:37:18','2012-05-28 17:37:18','payslip_powers_privilege'),(19,'EmployeeSearch','2012-05-28 17:37:18','2012-05-28 17:37:18','employee_search_privilege'),(20,'SMSManagement','2012-05-28 17:37:18','2012-05-28 17:37:18','sms_management_privilege');
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges_users`
--

DROP TABLE IF EXISTS `privileges_users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `privileges_users` (
  `user_id` int(11) default NULL,
  `privilege_id` int(11) default NULL,
  KEY `index_privileges_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `privileges_users`
--

LOCK TABLES `privileges_users` WRITE;
/*!40000 ALTER TABLE `privileges_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `privileges_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `reminders` (
  `id` int(11) NOT NULL auto_increment,
  `sender` int(11) default NULL,
  `recipient` int(11) default NULL,
  `subject` varchar(255) default NULL,
  `body` text,
  `is_read` tinyint(1) default '0',
  `is_deleted_by_sender` tinyint(1) default '0',
  `is_deleted_by_recipient` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_reminders_on_recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20090622100004'),('20090622102004'),('20090622104053'),('20090622104054'),('20090622114927'),('20090622115927'),('20090703074822'),('20090706170408'),('20090715234257'),('20090715234258'),('20090717124241'),('20090717126241'),('20090718050113'),('20090718050453'),('20090718050921'),('20090718052749'),('20090731092833'),('20090818045411'),('20090818050018'),('20090904071048'),('20090904071548'),('20090904071642'),('20090904071905'),('20090904071906'),('20090904071907'),('20090904071908'),('20090904071909'),('20090910062751'),('20090914095002'),('20090914114212'),('20090916052300'),('20090917052349'),('20090917065256'),('20090924081520'),('20090926071527'),('20091009093746'),('20091026065251'),('20091202050910'),('20091202053600'),('20091202104818'),('20091207084711'),('20091207085849'),('20091207090412'),('20091217191652'),('20091217201118'),('20091224063502'),('20100403073735'),('20100403092229'),('20100403093355'),('20100412105036'),('20100412105116'),('20100422110336'),('20100426094532'),('20100429093616'),('20100505075459'),('20100515063157'),('20100515063814'),('20100520073311'),('20100524093457'),('20100525055716'),('20100602115152'),('20100604103435'),('20100604103916'),('20100604104308'),('20100604104759'),('20100609073016'),('20100609074544'),('20100730092747'),('20100731053458'),('20100731054033'),('20100731055437'),('20101209063633'),('20110221051223'),('20110419101802'),('20110510121550'),('20110511053223'),('20110516110336'),('20110706114907'),('20110711100500'),('20110721122326'),('20110728115723'),('20110729055539'),('20110730100503'),('20110805072425'),('20110810052138'),('20110912062640'),('20110928054502'),('20111015111840'),('20111020074717'),('20111105052819');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL auto_increment,
  `settings_key` varchar(255) default NULL,
  `is_enabled` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sms_settings`
--

LOCK TABLES `sms_settings` WRITE;
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` VALUES (1,'ApplicationEnabled',0),(2,'ParentSmsEnabled',0),(3,'EmployeeSmsEnabled',0),(4,'StudentSmsEnabled',0),(5,'ResultPublishEnabled',0),(6,'StudentAdmissionEnabled',0),(7,'ExamScheduleResultEnabled',0),(8,'AttendanceEnabled',0),(9,'NewsEventsEnabled',0);
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_additional_details`
--

DROP TABLE IF EXISTS `student_additional_details`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `student_additional_details` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `additional_field_id` int(11) default NULL,
  `additional_info` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `student_additional_details`
--

LOCK TABLES `student_additional_details` WRITE;
/*!40000 ALTER TABLE `student_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_additional_fields`
--

DROP TABLE IF EXISTS `student_additional_fields`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `student_additional_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `status` tinyint(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `student_additional_fields`
--

LOCK TABLES `student_additional_fields` WRITE;
/*!40000 ALTER TABLE `student_additional_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_additional_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_categories`
--

DROP TABLE IF EXISTS `student_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `student_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `is_deleted` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `student_categories`
--

LOCK TABLES `student_categories` WRITE;
/*!40000 ALTER TABLE `student_categories` DISABLE KEYS */;
INSERT INTO `student_categories` VALUES (1,'General',0),(2,'Deserving',0),(3,'Sibling',0),(4,'Handicap',0);
/*!40000 ALTER TABLE `student_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_previous_datas`
--

DROP TABLE IF EXISTS `student_previous_datas`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `student_previous_datas` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `institution` varchar(255) default NULL,
  `year` varchar(255) default NULL,
  `course` varchar(255) default NULL,
  `total_mark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `student_previous_datas`
--

LOCK TABLES `student_previous_datas` WRITE;
/*!40000 ALTER TABLE `student_previous_datas` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_previous_datas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_previous_subject_marks`
--

DROP TABLE IF EXISTS `student_previous_subject_marks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `student_previous_subject_marks` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `subject` varchar(255) default NULL,
  `mark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `student_previous_subject_marks`
--

LOCK TABLES `student_previous_subject_marks` WRITE;
/*!40000 ALTER TABLE `student_previous_subject_marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_previous_subject_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `students` (
  `id` int(11) NOT NULL auto_increment,
  `admission_no` varchar(255) default NULL,
  `class_roll_no` varchar(255) default NULL,
  `admission_date` date default NULL,
  `first_name` varchar(255) default NULL,
  `middle_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `batch_id` int(11) default NULL,
  `date_of_birth` date default NULL,
  `gender` varchar(255) default NULL,
  `blood_group` varchar(255) default NULL,
  `birth_place` varchar(255) default NULL,
  `nationality_id` int(11) default NULL,
  `language` varchar(255) default NULL,
  `religion` varchar(255) default NULL,
  `student_category_id` int(11) default NULL,
  `address_line1` varchar(255) default NULL,
  `address_line2` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `pin_code` varchar(255) default NULL,
  `country_id` int(11) default NULL,
  `phone1` varchar(255) default NULL,
  `phone2` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `immediate_contact_id` int(11) default NULL,
  `is_sms_enabled` tinyint(1) default '1',
  `photo_file_name` varchar(255) default NULL,
  `photo_content_type` varchar(255) default NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) default NULL,
  `is_active` tinyint(1) default '1',
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `has_paid_fees` tinyint(1) default '0',
  `photo_file_size` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_students_on_admission_no` (`admission_no`(10)),
  KEY `index_students_on_first_name_and_middle_name_and_last_name` (`first_name`(10),`middle_name`(10),`last_name`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_subjects`
--

DROP TABLE IF EXISTS `students_subjects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `students_subjects` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_students_subjects_on_student_id_and_subject_id` (`student_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `students_subjects`
--

LOCK TABLES `students_subjects` WRITE;
/*!40000 ALTER TABLE `students_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `batch_id` int(11) default NULL,
  `no_exams` tinyint(1) default '0',
  `max_weekly_classes` int(11) default NULL,
  `elective_group_id` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_subjects_on_batch_id_and_elective_group_id_and_is_deleted` (`batch_id`,`elective_group_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Islamic Studies','IS',10,0,3,NULL,0,'2012-05-29 13:08:01','2012-05-29 13:08:01'),(2,'Pakistan Studies','PS',10,0,3,NULL,0,'2012-05-29 13:23:41','2012-05-29 13:23:41'),(3,'Islamic Studies','IS',1,0,3,NULL,0,'2012-05-29 17:15:40','2012-05-30 03:58:35'),(4,'Pakistan Studies','PS',1,0,3,NULL,0,'2012-05-29 17:16:29','2012-05-30 03:59:03'),(5,'Urdu Language','UL',1,0,6,NULL,0,'2012-05-29 17:26:13','2012-05-29 17:26:13'),(6,'Mathematics','MS',1,0,6,NULL,0,'2012-05-29 17:28:31','2012-05-30 04:00:02'),(7,'English Language','EL',1,0,6,NULL,0,'2012-05-29 17:36:55','2012-05-29 17:36:55'),(8,'Drawing Gadgets','DG',1,0,3,NULL,0,'2012-05-30 01:36:29','2012-05-30 04:01:04'),(9,'General Knowledge','GK',1,0,3,NULL,0,'2012-05-30 01:37:47','2012-05-30 01:37:47'),(10,'Islamic Studies','IS',2,0,6,NULL,0,'2012-05-30 01:40:37','2012-05-30 01:40:37'),(11,'Pakistan Studies','PS',2,0,6,NULL,0,'2012-05-30 01:41:34','2012-05-30 01:41:34'),(12,'Urdu Language','UL',2,0,6,NULL,0,'2012-05-30 01:42:56','2012-05-30 01:42:56'),(13,'Mathematics','MS',2,0,6,NULL,0,'2012-05-30 01:44:01','2012-05-30 09:45:18'),(14,'English Language','EL',2,0,6,NULL,0,'2012-05-30 01:45:43','2012-05-30 01:45:43'),(15,'Drawing Gadgets','DG',2,0,3,NULL,0,'2012-05-30 01:46:47','2012-05-30 09:45:40'),(16,'General Knowledge','GK',2,0,3,NULL,0,'2012-05-30 01:49:06','2012-05-30 01:49:06'),(17,'Islamic Studies','IS',3,0,3,NULL,0,'2012-05-30 01:51:11','2012-05-30 09:46:15'),(18,'Pakistan Studies','PS',3,0,3,NULL,0,'2012-05-30 01:52:27','2012-05-30 09:46:27'),(19,'Urdu Language','UL',3,0,6,NULL,0,'2012-05-30 01:53:30','2012-05-30 01:53:30'),(20,'Mathematics','MS',3,0,6,NULL,0,'2012-05-30 01:54:43','2012-05-30 09:49:14'),(21,'English Language','EL',3,0,6,NULL,0,'2012-05-30 01:55:34','2012-05-30 01:55:34'),(22,'Drawing Gadgets','DG',3,0,3,NULL,0,'2012-05-30 01:56:19','2012-05-30 09:46:58'),(23,'General Knowledge','GK',3,0,3,NULL,0,'2012-05-30 01:57:41','2012-05-30 01:57:41'),(24,'Islamic Studies','IS',4,0,3,NULL,0,'2012-05-30 01:59:07','2012-05-30 09:49:54'),(25,'Pakistan Studies','PS',4,0,3,NULL,0,'2012-05-30 02:00:07','2012-05-30 09:50:04'),(26,'Urdu Language','UL',4,0,6,NULL,0,'2012-05-30 02:02:16','2012-05-30 02:02:16'),(27,'Mathematics','MS',4,0,6,NULL,0,'2012-05-30 02:03:29','2012-05-30 09:50:19'),(28,'English Language','EL',4,0,6,NULL,0,'2012-05-30 02:04:28','2012-05-30 02:04:28'),(29,'Drawing Gadgets','DG',4,0,3,NULL,0,'2012-05-30 02:05:16','2012-05-30 09:50:46'),(30,'General Knowledge','GK',4,0,3,NULL,0,'2012-05-30 02:06:13','2012-05-30 02:06:13'),(31,'Islamic Studies','IS',5,0,3,NULL,0,'2012-05-30 02:12:00','2012-05-30 09:51:15'),(32,'Pakistan Studies','PS',5,0,3,NULL,0,'2012-05-30 02:12:54','2012-05-30 09:51:27'),(33,'Urdu Language','UL',5,0,6,NULL,0,'2012-05-30 02:13:39','2012-05-30 02:13:39'),(34,'Mathematics','MS',5,0,6,NULL,0,'2012-05-30 02:14:33','2012-05-30 09:51:41'),(35,'English Language','EL',5,0,6,NULL,0,'2012-05-30 02:15:21','2012-05-30 02:15:21'),(36,'Computer','CR',5,0,6,NULL,1,'2012-05-30 02:55:59','2012-05-30 09:53:17'),(37,'General Science','GS',5,0,3,NULL,0,'2012-05-30 03:01:48','2012-05-30 09:52:24'),(38,'Drawing Gadgets','DG',5,0,3,NULL,0,'2012-05-30 03:02:45','2012-05-30 09:52:51'),(39,'Islamic Studies','IS',6,0,3,NULL,0,'2012-05-30 03:04:34','2012-05-30 03:04:34'),(40,'Pakistan Studies','PS',6,0,3,NULL,0,'2012-05-30 03:05:18','2012-05-30 03:05:18'),(41,'Urdu Language','UL',6,0,6,NULL,0,'2012-05-30 03:06:41','2012-05-30 03:06:41'),(42,'Mathematics','MA',6,0,6,NULL,0,'2012-05-30 03:07:22','2012-05-30 03:07:22'),(43,'English Language','EL',6,0,6,NULL,0,'2012-05-30 03:08:05','2012-05-30 03:08:05'),(44,'General Science','GS',6,0,3,NULL,0,'2012-05-30 03:14:22','2012-05-30 09:57:16'),(45,'Computer','CO',6,0,3,NULL,0,'2012-05-30 03:15:22','2012-05-30 09:57:48'),(46,'Islamic Studies','IS',7,0,3,NULL,0,'2012-05-30 03:17:18','2012-05-30 03:17:18'),(47,'Pakistan Studies','PS',7,0,3,NULL,0,'2012-05-30 03:17:56','2012-05-30 03:17:56'),(48,'Urdu Language','UL',7,0,6,NULL,0,'2012-05-30 03:18:55','2012-05-30 03:18:55'),(49,'Mathematics','MS',7,0,6,NULL,0,'2012-05-30 03:19:35','2012-05-30 09:58:23'),(50,'English Language','EL',7,0,6,NULL,0,'2012-05-30 03:22:24','2012-05-30 03:22:24'),(51,'General Science','GS',7,0,3,NULL,0,'2012-05-30 03:23:25','2012-05-30 09:58:36'),(52,'Computer','CO',7,0,3,NULL,0,'2012-05-30 03:26:05','2012-05-30 09:58:46'),(53,'Islamic Studies','IS',8,0,3,NULL,0,'2012-05-30 03:29:01','2012-05-30 03:29:01'),(54,'Pakistan Studies','PS',8,0,3,NULL,0,'2012-05-30 03:30:19','2012-05-30 03:30:19'),(55,'Urdu Language','UL',8,0,6,NULL,0,'2012-05-30 03:31:14','2012-05-30 03:31:14'),(56,'Mathematics','MS',8,0,6,NULL,0,'2012-05-30 03:32:01','2012-05-30 09:59:21'),(57,'English Language','EL',8,0,6,NULL,0,'2012-05-30 03:33:02','2012-05-30 03:33:02'),(58,'General Science','GS',8,0,3,NULL,0,'2012-05-30 03:35:09','2012-05-30 09:59:32'),(59,'Computer','CO',8,0,3,NULL,0,'2012-05-30 03:39:09','2012-05-30 09:59:42'),(60,'Urdu Language','UL',10,0,6,NULL,0,'2012-05-30 03:42:03','2012-05-30 03:42:03'),(61,'Counting','CG',10,0,6,NULL,0,'2012-05-30 03:43:06','2012-05-30 09:40:32'),(62,'English Language','EL',10,0,6,NULL,0,'2012-05-30 03:44:05','2012-05-30 03:45:04'),(63,'Drawing Gadgets','DG',10,0,6,NULL,0,'2012-05-30 03:45:51','2012-05-30 03:45:51'),(64,'Islamic Studies','IS',9,0,3,NULL,0,'2012-05-30 03:47:23','2012-05-30 03:47:23'),(65,'Pakistan Studies','PS',9,0,3,NULL,0,'2012-05-30 03:48:06','2012-05-30 03:48:06'),(66,'Urdu Language','UL',9,0,6,NULL,0,'2012-05-30 03:49:01','2012-05-30 03:49:01'),(67,'Counting','CG',9,0,6,NULL,0,'2012-05-30 03:49:49','2012-05-30 09:39:44'),(68,'English Language','EL',9,0,6,NULL,0,'2012-05-30 03:50:41','2012-05-30 03:50:41'),(69,'Drawing Gadgets','DG',9,0,6,NULL,0,'2012-05-30 03:51:46','2012-05-30 03:51:46'),(70,'Islamic Studies','IS',11,0,3,NULL,0,'2012-05-30 03:53:00','2012-05-30 03:53:00'),(71,'Pakistan Studies','PS',11,0,3,NULL,0,'2012-05-30 03:53:42','2012-05-30 03:53:42'),(72,'Urdu Language','UL',11,0,6,NULL,0,'2012-05-30 03:54:32','2012-05-30 03:54:32'),(73,'Counting','CG',11,0,6,NULL,0,'2012-05-30 03:56:09','2012-05-30 09:40:05'),(74,'English Language','EL',11,0,6,NULL,0,'2012-05-30 03:56:59','2012-05-30 03:56:59'),(75,'Drawing Gadgets','DG',11,0,6,NULL,0,'2012-05-30 03:57:45','2012-05-30 03:57:45');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_entries`
--

DROP TABLE IF EXISTS `timetable_entries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `timetable_entries` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `weekday_id` int(11) default NULL,
  `class_timing_id` int(11) default NULL,
  `subject_id` int(11) default NULL,
  `employee_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `by_timetable` (`weekday_id`,`batch_id`,`class_timing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `timetable_entries`
--

LOCK TABLES `timetable_entries` WRITE;
/*!40000 ALTER TABLE `timetable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_events`
--

DROP TABLE IF EXISTS `user_events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_events` (
  `id` int(11) NOT NULL auto_increment,
  `event_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_events`
--

LOCK TABLES `user_events` WRITE;
/*!40000 ALTER TABLE `user_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `admin` tinyint(1) default NULL,
  `student` tinyint(1) default NULL,
  `employee` tinyint(1) default NULL,
  `hashed_password` varchar(255) default NULL,
  `salt` varchar(255) default NULL,
  `reset_password_code` varchar(255) default NULL,
  `reset_password_code_until` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_users_on_username` (`username`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Falkia','Administrator','admin@falkia.com',1,0,0,'32ff67a5b2c4a55ee902447cc7c40708aaec66d4','evarNAx8',NULL,NULL,'2012-05-28 17:37:17','2012-05-28 20:09:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekdays`
--

DROP TABLE IF EXISTS `weekdays`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `weekdays` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `weekday` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_weekdays_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `weekdays`
--

LOCK TABLES `weekdays` WRITE;
/*!40000 ALTER TABLE `weekdays` DISABLE KEYS */;
INSERT INTO `weekdays` VALUES (1,NULL,'1'),(2,NULL,'2'),(3,NULL,'3'),(4,NULL,'4'),(5,NULL,'5'),(6,NULL,'6');
/*!40000 ALTER TABLE `weekdays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-15  8:33:05
