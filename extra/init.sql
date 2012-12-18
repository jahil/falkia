-- MySQL dump 10.11
--
-- Host: localhost    Database: new
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
-- Table structure for table `assessment_scores`
--

DROP TABLE IF EXISTS `assessment_scores`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `assessment_scores` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `grade_points` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `exam_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `descriptive_indicator_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `score_index` (`student_id`,`batch_id`,`descriptive_indicator_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `assessment_scores`
--

LOCK TABLES `assessment_scores` WRITE;
/*!40000 ALTER TABLE `assessment_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_scores` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'Land and Building','Land and Building Detail',1000,0,0,'2012-09-24 19:26:51','2012-09-24 19:26:51');
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
  `month_date` date default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_attendances_on_month_date_and_batch_id` (`month_date`,`batch_id`),
  KEY `index_attendances_on_student_id_and_batch_id` (`student_id`,`batch_id`)
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
-- Table structure for table `batch_groups`
--

DROP TABLE IF EXISTS `batch_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `batch_groups` (
  `id` int(11) NOT NULL auto_increment,
  `course_id` int(11) default NULL,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `batch_groups`
--

LOCK TABLES `batch_groups` WRITE;
/*!40000 ALTER TABLE `batch_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_groups` ENABLE KEYS */;
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
  KEY `index_batches_on_is_deleted_and_is_active_and_course_id_and_name` (`is_deleted`,`is_active`,`course_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` VALUES (1,'1213',1,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(2,'1213',2,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(3,'1213',3,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(4,'1213A',4,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(5,'1213B',4,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(6,'1213A',5,'2012-09-26 00:00:00','2013-09-26 00:00:00',1,0,NULL),(7,'1213A',6,'2012-09-26 00:00:00','2013-09-26 00:00:00',1,0,NULL),(8,'1213A',7,'2012-09-26 00:00:00','2013-09-26 00:00:00',1,0,NULL),(9,'1213A',8,'2012-09-26 00:00:00','2013-09-26 00:00:00',1,0,NULL),(10,'1213A',9,'2012-09-26 00:00:00','2013-09-26 00:00:00',1,0,NULL),(11,'1213A',10,'2012-09-26 00:00:00','2013-09-26 00:00:00',1,0,NULL),(12,'1213A',11,'2012-09-26 00:00:00','2013-09-26 00:00:00',1,0,NULL),(13,'1213B',11,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(14,'1213B',10,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(15,'1213B',9,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(16,'1213B',8,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(17,'1213B',7,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(18,'1213B',6,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(19,'1213B',5,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(20,'1213A',12,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(21,'1213A',13,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(22,'1213B',12,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(23,'1213B',13,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(24,'1213A',14,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(25,'1213A',15,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(26,'1213B',14,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL),(27,'1213B',15,'2012-04-01 00:00:00','2013-03-31 00:00:00',1,0,NULL);
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_exam_categories`
--

DROP TABLE IF EXISTS `cce_exam_categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cce_exam_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `desc` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cce_exam_categories`
--

LOCK TABLES `cce_exam_categories` WRITE;
/*!40000 ALTER TABLE `cce_exam_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_exam_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_grade_sets`
--

DROP TABLE IF EXISTS `cce_grade_sets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cce_grade_sets` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cce_grade_sets`
--

LOCK TABLES `cce_grade_sets` WRITE;
/*!40000 ALTER TABLE `cce_grade_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_grade_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_grades`
--

DROP TABLE IF EXISTS `cce_grades`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cce_grades` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `grade_point` float default NULL,
  `cce_grade_set_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_cce_grades_on_cce_grade_set_id` (`cce_grade_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cce_grades`
--

LOCK TABLES `cce_grades` WRITE;
/*!40000 ALTER TABLE `cce_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_reports`
--

DROP TABLE IF EXISTS `cce_reports`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cce_reports` (
  `id` int(11) NOT NULL auto_increment,
  `observable_id` int(11) default NULL,
  `observable_type` varchar(255) default NULL,
  `student_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `grade_string` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `exam_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `cce_report_join_index` (`observable_id`,`student_id`,`batch_id`,`exam_id`,`observable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cce_reports`
--

LOCK TABLES `cce_reports` WRITE;
/*!40000 ALTER TABLE `cce_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_weightages`
--

DROP TABLE IF EXISTS `cce_weightages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cce_weightages` (
  `id` int(11) NOT NULL auto_increment,
  `weightage` int(11) default NULL,
  `criteria_type` varchar(255) default NULL,
  `cce_exam_category_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cce_weightages`
--

LOCK TABLES `cce_weightages` WRITE;
/*!40000 ALTER TABLE `cce_weightages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_weightages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_weightages_courses`
--

DROP TABLE IF EXISTS `cce_weightages_courses`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `cce_weightages_courses` (
  `cce_weightage_id` int(11) default NULL,
  `course_id` int(11) default NULL,
  KEY `index_cce_weightages_courses_on_cce_weightage_id` (`cce_weightage_id`),
  KEY `index_cce_weightages_courses_on_course_id` (`course_id`),
  KEY `index_for_join_table_cce_weightage_courses` (`course_id`,`cce_weightage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `cce_weightages_courses`
--

LOCK TABLES `cce_weightages_courses` WRITE;
/*!40000 ALTER TABLE `cce_weightages_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_weightages_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_designations`
--

DROP TABLE IF EXISTS `class_designations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `class_designations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `cgpa` decimal(15,2) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `marks` decimal(15,2) default NULL,
  `course_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `class_designations`
--

LOCK TABLES `class_designations` WRITE;
/*!40000 ALTER TABLE `class_designations` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_designations` ENABLE KEYS */;
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
  `is_deleted` tinyint(1) default '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'InstitutionName','New Little Folks High School'),(2,'InstitutionAddress','D-Type Colony. Faisalabad'),(3,'InstitutionPhoneNo','0412661725'),(4,'StudentAttendanceType','Daily'),(5,'CurrencyType','Rs.'),(6,'Locale','en'),(7,'AdmissionNumberAutoIncrement','1'),(8,'EmployeeNumberAutoIncrement','1'),(9,'TotalSmsCount','0'),(10,'NetworkState','Online'),(11,'FinancialYearStartDate','2012-07-01'),(12,'FinancialYearEndDate','2013-06-30'),(13,'AutomaticLeaveReset','0'),(14,'LeaveResetPeriod','4'),(15,'LastAutoLeaveReset',NULL),(16,'GPA','0'),(17,'CWA','0'),(18,'CCE','0'),(19,'DefaultCountry','133'),(20,'AvailableModules','HR'),(21,'AvailableModules','Finance'),(22,'EnableNewsCommentModeration','1'),(23,'TimeZone','25'),(24,'job/Batch/1','2012-11-01 13:36:47'),(25,'job/Batch/1','2012-11-01 13:36:48');
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
  `grading_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_courses_on_grading_type` (`grading_type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'   Pre Nursery','PN','',0,'2012-09-24 18:10:18','2012-09-27 19:35:34','0'),(2,'  Nursery','N','',0,'2012-09-24 18:12:08','2012-09-27 19:40:40','0'),(3,'    Play','P','',0,'2012-09-24 18:13:54','2012-09-27 19:33:51','0'),(4,'Class  I','1st.','',0,'2012-09-24 18:17:14','2012-09-27 19:11:29','0'),(5,'Class  II','2nd.','',0,'2012-09-26 19:44:59','2012-09-27 19:12:11','0'),(6,'Class  III','3rd.','',0,'2012-09-26 19:46:02','2012-09-27 19:13:31','0'),(7,'Class  IV','4th.','',0,'2012-09-26 19:46:50','2012-09-27 19:14:13','0'),(8,'Class  V','5th.','',0,'2012-09-26 19:48:01','2012-09-27 19:12:50','0'),(9,'Class  VI','6th.','',0,'2012-09-26 19:49:57','2012-09-27 19:14:55','0'),(10,'Class  VII','7th.','',0,'2012-09-26 19:51:52','2012-09-27 19:15:41','0'),(11,'Class  VIII','8th.','',0,'2012-09-26 19:52:41','2012-09-27 19:16:29','0'),(12,'Class Secondary','9th.','1st. Year',0,'2012-09-27 17:39:51','2012-09-27 19:10:43','0'),(13,'Class Secondary','10th.','2nd. Year',0,'2012-09-27 17:41:25','2012-09-27 19:19:00','0'),(14,'Higher Secondary','11th.','1st. Year',0,'2012-09-27 17:49:02','2012-09-27 18:50:30','0'),(15,'Higher Secondary','12th.','2nd. Year',0,'2012-09-27 18:54:35','2012-09-27 18:54:35','0');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_observation_groups`
--

DROP TABLE IF EXISTS `courses_observation_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `courses_observation_groups` (
  `course_id` int(11) default NULL,
  `observation_group_id` int(11) default NULL,
  KEY `index_courses_observation_groups_on_observation_group_id` (`observation_group_id`),
  KEY `index_courses_observation_groups_on_course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `courses_observation_groups`
--

LOCK TABLES `courses_observation_groups` WRITE;
/*!40000 ALTER TABLE `courses_observation_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_observation_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL auto_increment,
  `priority` int(11) default '0',
  `attempts` int(11) default '0',
  `handler` text,
  `last_error` text,
  `run_at` datetime default NULL,
  `locked_at` datetime default NULL,
  `failed_at` datetime default NULL,
  `locked_by` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_delayed_jobs_on_locked_by` (`locked_by`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptive_indicators`
--

DROP TABLE IF EXISTS `descriptive_indicators`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `descriptive_indicators` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `desc` varchar(255) default NULL,
  `describable_id` int(11) default NULL,
  `describable_type` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `sort_order` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `describable_index` (`describable_id`,`describable_type`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `descriptive_indicators`
--

LOCK TABLES `descriptive_indicators` WRITE;
/*!40000 ALTER TABLE `descriptive_indicators` DISABLE KEYS */;
/*!40000 ALTER TABLE `descriptive_indicators` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_categories`
--

LOCK TABLES `employee_categories` WRITE;
/*!40000 ALTER TABLE `employee_categories` DISABLE KEYS */;
INSERT INTO `employee_categories` VALUES (1,'System Admin','Admin',1),(2,'Contract Workers','CW',1),(3,'Finance','Fin',1),(4,'Teaching Staff','TS',1),(5,'Non-Teaching Staff','NTS',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_departments`
--

LOCK TABLES `employee_departments` WRITE;
/*!40000 ALTER TABLE `employee_departments` DISABLE KEYS */;
INSERT INTO `employee_departments` VALUES (1,'Admin','System Admin',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employee_grades`
--

LOCK TABLES `employee_grades` WRITE;
/*!40000 ALTER TABLE `employee_grades` DISABLE KEYS */;
INSERT INTO `employee_grades` VALUES (1,'System Admin',0,1,NULL,NULL),(2,'Principal',1,1,NULL,NULL),(3,'Head of Department',2,1,NULL,NULL),(4,'Teaching Staff',3,1,2,6);
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
INSERT INTO `employee_positions` VALUES (1,'System Admin',1,1),(2,'Accountant',3,1),(3,'Cashier',3,1),(4,'Computer Administrator',5,1),(5,'Driver',2,1),(6,'Finance Manager',3,1),(7,'Lab Incharge',5,1),(8,'Liberarian',5,1),(9,'Office Boy',2,1),(10,'Inventory Controller',5,1),(11,'Security Guard',2,1),(12,'Teaching Staff',4,1),(13,'Sweeper',2,1),(14,'Peon',2,1),(15,'HRM Administrator',1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,'admin','2012-09-24','Admin',NULL,'User',NULL,NULL,1,1,NULL,1,NULL,NULL,NULL,NULL,1,NULL,'2011-09-25',NULL,NULL,NULL,NULL,NULL,NULL,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'noreply@fedena.com',NULL,NULL,NULL,NULL,'2012-09-24 13:49:32','2012-09-24 13:49:32',NULL,1),(2,3,'E002','2012-11-01','Sadaqat','Ali','',1,'Finance Manager',6,1,NULL,1,'CA Inter','',NULL,NULL,1,NULL,'1990-11-01','single',NULL,'','','','Unknown',133,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'theconversant@gmail.com',NULL,NULL,NULL,NULL,'2012-11-01 09:40:17','2012-11-01 14:12:38',NULL,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Quaid Day','Very special cermony on Quaid day.','2012-12-25 09:00:00','2012-12-25 09:00:00',1,0,0,0,'2012-09-24 20:16:39','2012-09-24 20:16:39',NULL,NULL),(2,'Meeting','A meeting to start this application.','2012-11-01 00:00:00','2012-11-01 00:00:00',0,0,0,0,'2012-11-01 09:24:19','2012-11-01 09:24:19',NULL,NULL),(3,'Iqbal Day','It is informed that today is a Holy day as Iqbal Day.','2012-11-09 00:00:00','2012-11-09 00:00:00',1,1,0,0,'2012-11-01 14:07:35','2012-11-01 14:07:35',NULL,NULL);
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
  `is_final_exam` tinyint(1) NOT NULL default '0',
  `cce_exam_category_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `exam_groups`
--

LOCK TABLES `exam_groups` WRITE;
/*!40000 ALTER TABLE `exam_groups` DISABLE KEYS */;
INSERT INTO `exam_groups` VALUES (1,'1st. Term Exam',9,'MarksAndGrades',0,0,'2012-11-01',0,NULL);
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
-- Table structure for table `fa_criterias`
--

DROP TABLE IF EXISTS `fa_criterias`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `fa_criterias` (
  `id` int(11) NOT NULL auto_increment,
  `fa_name` varchar(255) default NULL,
  `desc` varchar(255) default NULL,
  `fa_group_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `sort_order` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_fa_criterias_on_fa_group_id` (`fa_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `fa_criterias`
--

LOCK TABLES `fa_criterias` WRITE;
/*!40000 ALTER TABLE `fa_criterias` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_criterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_groups`
--

DROP TABLE IF EXISTS `fa_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `fa_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `desc` text,
  `cce_exam_category_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `cce_grade_set_id` int(11) default NULL,
  `max_marks` float default '100',
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `fa_groups`
--

LOCK TABLES `fa_groups` WRITE;
/*!40000 ALTER TABLE `fa_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_groups_subjects`
--

DROP TABLE IF EXISTS `fa_groups_subjects`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `fa_groups_subjects` (
  `subject_id` int(11) default NULL,
  `fa_group_id` int(11) default NULL,
  KEY `index_fa_groups_subjects_on_subject_id` (`subject_id`),
  KEY `index_fa_groups_subjects_on_fa_group_id` (`fa_group_id`),
  KEY `score_index` (`fa_group_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `fa_groups_subjects`
--

LOCK TABLES `fa_groups_subjects` WRITE;
/*!40000 ALTER TABLE `fa_groups_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_groups_subjects` ENABLE KEYS */;
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
  `credit_points` decimal(15,2) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grading_levels_on_batch_id_and_is_deleted` (`batch_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `grading_levels`
--

LOCK TABLES `grading_levels` WRITE;
/*!40000 ALTER TABLE `grading_levels` DISABLE KEYS */;
INSERT INTO `grading_levels` VALUES (1,'A+',NULL,90,NULL,0,'2012-09-24 13:47:54','2012-09-28 07:35:38',NULL,'Extra Ordinary'),(2,'A',NULL,80,NULL,0,'2012-09-24 13:47:55','2012-09-28 07:37:05',NULL,'Excellent'),(3,'B',NULL,70,NULL,0,'2012-09-24 13:47:55','2012-09-28 07:37:37',NULL,'Very Good'),(4,'C',NULL,60,NULL,0,'2012-09-24 13:47:55','2012-09-28 07:38:08',NULL,'Good'),(5,'D',NULL,50,NULL,0,'2012-09-24 13:47:55','2012-09-28 07:38:50',NULL,'Satisfactory'),(6,'E',NULL,40,NULL,0,'2012-09-24 13:47:55','2012-09-28 07:39:38',NULL,'Pass'),(7,'F',NULL,0,NULL,0,'2012-09-28 07:46:03','2012-09-28 07:46:03',NULL,'Fail');
/*!40000 ALTER TABLE `grading_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_batches`
--

DROP TABLE IF EXISTS `grouped_batches`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `grouped_batches` (
  `id` int(11) NOT NULL auto_increment,
  `batch_group_id` int(11) default NULL,
  `batch_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grouped_batches_on_batch_group_id` (`batch_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `grouped_batches`
--

LOCK TABLES `grouped_batches` WRITE;
/*!40000 ALTER TABLE `grouped_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_exam_reports`
--

DROP TABLE IF EXISTS `grouped_exam_reports`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `grouped_exam_reports` (
  `id` int(11) NOT NULL auto_increment,
  `batch_id` int(11) default NULL,
  `student_id` int(11) default NULL,
  `exam_group_id` int(11) default NULL,
  `marks` decimal(15,2) default NULL,
  `score_type` varchar(255) default NULL,
  `subject_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `by_batch_student_and_score_type` (`batch_id`,`student_id`,`score_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `grouped_exam_reports`
--

LOCK TABLES `grouped_exam_reports` WRITE;
/*!40000 ALTER TABLE `grouped_exam_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_exam_reports` ENABLE KEYS */;
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
  `weightage` decimal(15,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_grouped_exams_on_batch_id` (`batch_id`),
  KEY `index_grouped_exams_on_batch_id_and_exam_group_id` (`batch_id`,`exam_group_id`)
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
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `guardians`
--

LOCK TABLES `guardians` WRITE;
/*!40000 ALTER TABLE `guardians` DISABLE KEYS */;
INSERT INTO `guardians` VALUES (1,1,'Muhammad','Irshad','Islam','named.conf@live.com','03457778625','','','P-171/B,','Peoples Colony','Faisalabad','Punjab',133,NULL,'Business','','FSc','2012-09-27 16:51:47','2012-09-27 16:52:33',3),(2,2,'Waseem','Ali','Father','fake@anymail.com','','','03006000000','House No.115','Nisar Colony','Faisalabad','Punjab',133,NULL,'Job Holder','25000 MP','BA','2012-09-27 20:12:44','2012-09-27 20:14:02',5),(3,3,'Niaz','Hussain','Father','','','','','House No.780','Samanabad','Faisalabad','Punjab',133,NULL,'Business','','','2012-09-27 20:51:54','2012-09-27 20:51:54',NULL);
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
  `remark` varchar(255) default NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Welcome to the New Release','<p>&nbsp;please check the new release <strong><em>2.3 version</em></strong>. It is more beautiful compared to the former.</p>',1,'2012-09-24 19:12:39','2012-09-24 19:16:13'),(2,'A New Era To School Management System','<p>&nbsp;Please visit the site and leave comments about it.</p>',1,'2012-11-01 09:08:50','2012-11-01 09:08:50'),(3,'Students Examination','<p>&nbsp;It is informed to all the students that their exam schedule will be announced on Monday.</p>',1,'2012-11-01 13:32:15','2012-11-01 13:32:15');
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
  `is_approved` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `news_comments`
--

LOCK TABLES `news_comments` WRITE;
/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;
INSERT INTO `news_comments` VALUES (1,'Yes it is! great app so far.',1,1,'2012-09-24 20:30:18','2012-09-24 20:30:18',1),(2,'I like it.',2,2,'2012-11-01 09:31:33','2012-11-01 09:31:33',0);
/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observation_groups`
--

DROP TABLE IF EXISTS `observation_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `observation_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `header_name` varchar(255) default NULL,
  `desc` varchar(255) default NULL,
  `cce_grade_set_id` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `observation_kind` varchar(255) default NULL,
  `max_marks` float default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `observation_groups`
--

LOCK TABLES `observation_groups` WRITE;
/*!40000 ALTER TABLE `observation_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `observation_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observations`
--

DROP TABLE IF EXISTS `observations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `observations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `desc` varchar(255) default NULL,
  `is_active` tinyint(1) default NULL,
  `observation_group_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `sort_order` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_observations_on_observation_group_id` (`observation_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `observations`
--

LOCK TABLES `observations` WRITE;
/*!40000 ALTER TABLE `observations` DISABLE KEYS */;
/*!40000 ALTER TABLE `observations` ENABLE KEYS */;
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
-- Table structure for table `previous_exam_scores`
--

DROP TABLE IF EXISTS `previous_exam_scores`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `previous_exam_scores` (
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
  KEY `index_previous_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `previous_exam_scores`
--

LOCK TABLES `previous_exam_scores` WRITE;
/*!40000 ALTER TABLE `previous_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `previous_exam_scores` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,'ExaminationControl','2012-09-24 13:47:31','2012-09-24 13:47:31','examination_control_privilege'),(2,'EnterResults','2012-09-24 13:47:31','2012-09-24 13:47:31','enter_results_privilege'),(3,'ViewResults','2012-09-24 13:47:31','2012-09-24 13:47:31','view_results_privilege'),(4,'Admission','2012-09-24 13:47:31','2012-09-24 13:47:31','admission_privilege'),(5,'StudentsControl','2012-09-24 13:47:31','2012-09-24 13:47:31','students_control_privilege'),(6,'ManageNews','2012-09-24 13:47:31','2012-09-24 13:47:31','manage_news_privilege'),(7,'ManageTimetable','2012-09-24 13:47:31','2012-09-24 13:47:31','manage_timetable_privilege'),(8,'StudentAttendanceView','2012-09-24 13:47:31','2012-09-24 13:47:31','student_attendance_view_privilege'),(9,'HrBasics','2012-09-24 13:47:31','2012-09-24 13:47:31','hr_basics_privilege'),(10,'AddNewBatch','2012-09-24 13:47:31','2012-09-24 13:47:31','add_new_batch_privilege'),(11,'SubjectMaster','2012-09-24 13:47:31','2012-09-24 13:47:31','subject_master_privilege'),(12,'EventManagement','2012-09-24 13:47:31','2012-09-24 13:47:31','event_management_privilege'),(13,'GeneralSettings','2012-09-24 13:47:31','2012-09-24 13:47:31','general_settings_privilege'),(14,'FinanceControl','2012-09-24 13:47:31','2012-09-24 13:47:31','finance_control_privilege'),(15,'TimetableView','2012-09-24 13:47:31','2012-09-24 13:47:31','timetable_view_privilege'),(16,'StudentAttendanceRegister','2012-09-24 13:47:31','2012-09-24 13:47:31','student_attendance_register_privilege'),(17,'EmployeeAttendance','2012-09-24 13:47:31','2012-09-24 13:47:31','employee_attendance_privilege'),(18,'PayslipPowers','2012-09-24 13:47:31','2012-09-24 13:47:31','payslip_powers_privilege'),(19,'EmployeeSearch','2012-09-24 13:47:31','2012-09-24 13:47:31','employee_search_privilege'),(20,'SMSManagement','2012-09-24 13:47:31','2012-09-24 13:47:31','sms_management_privilege'),(21,'StudentView','2012-09-24 13:47:40','2012-09-24 13:53:03','student_view_privilege');
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
INSERT INTO `privileges_users` VALUES (8,21),(8,1);
/*!40000 ALTER TABLE `privileges_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_levels`
--

DROP TABLE IF EXISTS `ranking_levels`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ranking_levels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `gpa` decimal(15,2) default NULL,
  `marks` decimal(15,2) default NULL,
  `subject_count` int(11) default NULL,
  `priority` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `full_course` tinyint(1) default '0',
  `course_id` int(11) default NULL,
  `subject_limit_type` varchar(255) default NULL,
  `marks_limit_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ranking_levels`
--

LOCK TABLES `ranking_levels` WRITE;
/*!40000 ALTER TABLE `ranking_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking_levels` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
INSERT INTO `reminders` VALUES (1,1,1,'New Event : Quaid Day',' New event description : Very special cermony on Quaid day.  Start Date : 25/12/2012 09:00 AM  End Date : 25/12/2012 09:00 AM',1,0,0,'2012-09-24 20:17:20','2012-09-25 07:45:46'),(2,2,1,'Reminder 1','My result card is not issued yet, please issue it as soon as possible.',1,0,0,'2012-11-01 09:31:06','2012-11-01 09:32:35'),(3,1,2,'Noted','Your request has been noted, please contact your teacher for further inquiry.',1,0,0,'2012-11-01 09:33:33','2012-11-01 14:03:50'),(4,2,1,'Noted','Sir, I already in contact with my tutor but he says it is not his duty.',1,0,0,'2012-11-01 14:04:57','2012-11-01 14:06:03'),(5,1,1,'New Event : Iqbal Day',' New event description : It is informed that today is a Holy day as Iqbal Day.  Start Date : 09/11/2012 12:00 AM  End Date : 09/11/2012 12:00 AM',0,0,0,'2012-11-01 14:08:11','2012-11-01 14:08:11'),(6,1,2,'New Event : Iqbal Day',' New event description : It is informed that today is a Holy day as Iqbal Day.  Start Date : 09/11/2012 12:00 AM  End Date : 09/11/2012 12:00 AM',0,0,0,'2012-11-01 14:08:11','2012-11-01 14:08:11'),(7,1,3,'New Event : Iqbal Day',' New event description : It is informed that today is a Holy day as Iqbal Day.  Start Date : 09/11/2012 12:00 AM  End Date : 09/11/2012 12:00 AM',0,0,0,'2012-11-01 14:08:11','2012-11-01 14:08:11'),(8,1,4,'New Event : Iqbal Day',' New event description : It is informed that today is a Holy day as Iqbal Day.  Start Date : 09/11/2012 12:00 AM  End Date : 09/11/2012 12:00 AM',0,0,0,'2012-11-01 14:08:11','2012-11-01 14:08:11'),(9,1,5,'New Event : Iqbal Day',' New event description : It is informed that today is a Holy day as Iqbal Day.  Start Date : 09/11/2012 12:00 AM  End Date : 09/11/2012 12:00 AM',0,0,0,'2012-11-01 14:08:11','2012-11-01 14:08:11'),(10,1,6,'New Event : Iqbal Day',' New event description : It is informed that today is a Holy day as Iqbal Day.  Start Date : 09/11/2012 12:00 AM  End Date : 09/11/2012 12:00 AM',0,0,0,'2012-11-01 14:08:11','2012-11-01 14:08:11'),(11,1,7,'New Event : Iqbal Day',' New event description : It is informed that today is a Holy day as Iqbal Day.  Start Date : 09/11/2012 12:00 AM  End Date : 09/11/2012 12:00 AM',0,0,0,'2012-11-01 14:08:11','2012-11-01 14:08:11'),(12,1,8,'New Event : Iqbal Day',' New event description : It is informed that today is a Holy day as Iqbal Day.  Start Date : 09/11/2012 12:00 AM  End Date : 09/11/2012 12:00 AM',0,0,0,'2012-11-01 14:08:11','2012-11-01 14:08:11');
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
INSERT INTO `schema_migrations` VALUES ('20090622100004'),('20090622102004'),('20090622104053'),('20090622104054'),('20090622114927'),('20090622115927'),('20090703074822'),('20090706170408'),('20090715234257'),('20090715234258'),('20090717124241'),('20090717126241'),('20090718050113'),('20090718050453'),('20090718050921'),('20090718052749'),('20090731092833'),('20090818045411'),('20090818050018'),('20090904071048'),('20090904071548'),('20090904071642'),('20090904071905'),('20090904071906'),('20090904071907'),('20090904071908'),('20090904071909'),('20090910062751'),('20090914095002'),('20090914114212'),('20090916052300'),('20090917052349'),('20090917065256'),('20090924081520'),('20090926071527'),('20091009093746'),('20091026065251'),('20091202050910'),('20091202053600'),('20091202104818'),('20091207084711'),('20091207085849'),('20091207090412'),('20091217191652'),('20091217201118'),('20091224063502'),('20100403073735'),('20100403092229'),('20100403093355'),('20100412105036'),('20100412105116'),('20100422110336'),('20100426094532'),('20100429093616'),('20100505075459'),('20100515063157'),('20100515063814'),('20100520073311'),('20100524093457'),('20100525055716'),('20100602115152'),('20100604103435'),('20100604103916'),('20100604104308'),('20100604104759'),('20100609073016'),('20100609074544'),('20100730092747'),('20100731053458'),('20100731054033'),('20100731055437'),('20101209063633'),('20110221051223'),('20110510121550'),('20110511053223'),('20110516110336'),('20110706114907'),('20110711100500'),('20110721122326'),('20110728115723'),('20110729055539'),('20110730100503'),('20110805072425'),('20110810052138'),('20110912062640'),('20110928054502'),('20111015111840'),('20111020074717'),('20111105052819'),('20120321065124'),('20120326114112'),('20120404051019'),('20120404051814'),('20120404052524'),('20120410081920'),('20120413090231'),('20120420085643'),('20120421061939'),('20120421062319'),('20120421062549'),('20120421062750'),('20120421062917'),('20120421063035'),('20120423061415'),('20120423100037'),('20120424092335'),('20120425052412'),('20120427102307'),('20120503062405'),('20120503112304'),('20120504123001'),('20120507064439'),('20120508085619'),('20120510070334'),('20120514050238'),('20120514050318'),('20120514050339'),('20120514050353'),('20120514050415'),('20120514050433'),('20120514050455'),('20120514050500'),('20120514050522'),('20120514050548'),('20120514050603'),('20120514063103'),('20120514063142'),('20120516052659'),('20120517112833'),('20120517122038'),('20120518091221'),('20120521120315'),('20120522065318'),('20120522065410'),('20120525100324'),('20120528060855'),('20120530120325'),('20120602095356'),('20120606050404'),('20120606050437'),('20120608090107'),('20120608090126'),('20120613063621'),('20120613070054'),('20120614092829'),('20120615084815'),('20120615085346'),('20120615103301'),('20120618053150'),('20120618102301'),('20120625072331'),('20120625073818'),('20120626082424'),('20120702062719'),('20120704103545'),('20120706090514'),('20120706103712'),('20120710054428'),('20120816045034');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_details`
--

DROP TABLE IF EXISTS `school_details`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `school_details` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) default NULL,
  `logo_file_name` varchar(255) default NULL,
  `logo_content_type` varchar(255) default NULL,
  `logo_file_size` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `school_details`
--

LOCK TABLES `school_details` WRITE;
/*!40000 ALTER TABLE `school_details` DISABLE KEYS */;
INSERT INTO `school_details` VALUES (1,NULL,NULL,NULL,NULL,'2012-09-24 17:47:34','2012-09-24 17:47:34');
/*!40000 ALTER TABLE `school_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_logs`
--

DROP TABLE IF EXISTS `sms_logs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sms_logs` (
  `id` int(11) NOT NULL auto_increment,
  `mobile` varchar(255) default NULL,
  `gateway_response` varchar(255) default NULL,
  `sms_message_id` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sms_logs`
--

LOCK TABLES `sms_logs` WRITE;
/*!40000 ALTER TABLE `sms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_messages`
--

DROP TABLE IF EXISTS `sms_messages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sms_messages` (
  `id` int(11) NOT NULL auto_increment,
  `body` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sms_messages`
--

LOCK TABLES `sms_messages` WRITE;
/*!40000 ALTER TABLE `sms_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_messages` ENABLE KEYS */;
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
INSERT INTO `sms_settings` VALUES (1,'ApplicationEnabled',1),(2,'ParentSmsEnabled',1),(3,'EmployeeSmsEnabled',1),(4,'StudentSmsEnabled',1),(5,'ResultPublishEnabled',0),(6,'StudentAdmissionEnabled',1),(7,'ExamScheduleResultEnabled',1),(8,'AttendanceEnabled',1),(9,'NewsEventsEnabled',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `student_categories`
--

LOCK TABLES `student_categories` WRITE;
/*!40000 ALTER TABLE `student_categories` DISABLE KEYS */;
INSERT INTO `student_categories` VALUES (1,'General',0),(2,'Handicap',0),(3,'Deserving',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `student_previous_datas`
--

LOCK TABLES `student_previous_datas` WRITE;
/*!40000 ALTER TABLE `student_previous_datas` DISABLE KEYS */;
INSERT INTO `student_previous_datas` VALUES (1,1,'Anmol Public School','2007','Prep','85');
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
  KEY `index_students_on_first_name_and_middle_name_and_last_name` (`first_name`(10),`middle_name`(10),`last_name`(10)),
  KEY `index_students_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'NLF001',NULL,'2008-09-17','Moeen','','Irshad',4,'2005-09-15','m','B+','Faisalabad',133,'Punjabi','Islam',NULL,'P-171/B,','Peoples Colony','Faisalabad','Punjab','',133,'0418727171','03457778625','theconversant@gmail.com',1,1,NULL,NULL,NULL,NULL,1,0,'2012-09-27 16:48:34','2012-09-27 16:52:33',0,NULL,2),(2,'NLF002',NULL,'2012-09-27','Azeem','','Ali',3,'2009-09-16','m','AB+','Faisalabad',133,'Punjabi','Islam',NULL,'House No.115','Nisar Colony','Faisalabad','Punjab','',133,'','','',2,1,NULL,NULL,NULL,NULL,1,0,'2012-09-27 20:03:56','2012-09-27 20:14:02',0,NULL,4),(3,'NLF003',NULL,'2012-09-27','Naeem','','Ahmed',3,'2009-05-13','m','A-','Faisalabad',133,'Punjabi','Islam',NULL,'House No.780','Samanabad','Faisalabad','Punjab','',133,'','03314567891','noemail@nomail.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2012-09-27 20:35:03','2012-09-27 20:35:03',0,NULL,6);
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
-- Table structure for table `subject_leaves`
--

DROP TABLE IF EXISTS `subject_leaves`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `subject_leaves` (
  `id` int(11) NOT NULL auto_increment,
  `student_id` int(11) default NULL,
  `month_date` date default NULL,
  `subject_id` int(11) default NULL,
  `employee_id` int(11) default NULL,
  `class_timing_id` int(11) default NULL,
  `reason` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `batch_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_subject_leaves_on_month_date_and_subject_id_and_batch_id` (`month_date`,`subject_id`,`batch_id`),
  KEY `index_subject_leaves_on_student_id_and_batch_id` (`student_id`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `subject_leaves`
--

LOCK TABLES `subject_leaves` WRITE;
/*!40000 ALTER TABLE `subject_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_leaves` ENABLE KEYS */;
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
  `credit_hours` decimal(15,2) default NULL,
  `prefer_consecutive` tinyint(1) default '0',
  `amount` decimal(15,2) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_subjects_on_batch_id_and_elective_group_id_and_is_deleted` (`batch_id`,`elective_group_id`,`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zones`
--

DROP TABLE IF EXISTS `time_zones`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `time_zones` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `difference_type` varchar(255) default NULL,
  `time_difference` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `time_zones`
--

LOCK TABLES `time_zones` WRITE;
/*!40000 ALTER TABLE `time_zones` DISABLE KEYS */;
INSERT INTO `time_zones` VALUES (1,'Greenwich Mean Time','GMT','+',0,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(2,'European Central Time','ECT','+',3600,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(3,'Eastern European Time','EET','+',7200,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(4,'Arabic Standard Time','ART','+',7200,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(5,'Eastern African Time','EAT','+',10800,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(6,'Middle East Time','MET','+',12600,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(7,'Near East Time','NET','+',14400,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(8,'Pakistan Lahore Time','PLT','+',18000,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(9,'Indian Standard Time','IST','+',19800,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(10,'Bangladesh Standard Time','BST','+',21600,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(11,'Vietnam Standard Time','VST','+',25200,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(12,'China Taiwan Time','CTT','+',28800,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(13,'Japan Standard Time','JST','+',32400,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(14,'Australia Central Time','ACT','+',34200,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(15,'Australia Eastern Time','AET','+',36000,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(16,'Solomon Standard Time','SST','+',39600,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(17,'New Zealand Standard Time','NST','+',43200,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(18,'Midway Islands Time','MIT','-',39600,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(19,'Hawaii Standard Time','HST','-',36000,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(20,'Alaska Standard Time','AST','-',32400,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(21,'Pacific Standard Time','PST','-',28800,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(22,'Phoenix Standard Time','PNT','-',25200,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(23,'Mountain Standard Time','MST','-',25200,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(24,'Central Standard Time','CST','-',21600,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(25,'Eastern Standard Time','EST','-',18000,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(26,'Indiana Eastern Standard Time','IET','-',18000,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(27,'Puerto Rico and US Virgin Islands Time','PRT','-',14400,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(28,'Canada Newfoundland Time','CNT','-',12600,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(29,'Argentina Standard Time','AGT','-',10800,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(30,'Brazil Eastern Time','BET','-',10800,'2012-09-24 13:47:40','2012-09-24 13:47:40'),(31,'Central African Time','CAT','-',3600,'2012-09-24 13:47:40','2012-09-24 13:47:40');
/*!40000 ALTER TABLE `time_zones` ENABLE KEYS */;
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
  `timetable_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_timetable_entries_on_timetable_id` (`timetable_id`)
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
-- Table structure for table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `timetables` (
  `id` int(11) NOT NULL auto_increment,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `is_active` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `by_start_and_end` (`start_date`,`end_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `timetables`
--

LOCK TABLES `timetables` WRITE;
/*!40000 ALTER TABLE `timetables` DISABLE KEYS */;
INSERT INTO `timetables` VALUES (1,'2012-04-01','2013-03-31',0,'2012-11-01 13:38:05','2012-11-01 13:38:05');
/*!40000 ALTER TABLE `timetables` ENABLE KEYS */;
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
  `parent` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_users_on_username` (`username`(10))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Admin','User','noreply@fedena.com',1,0,0,'73c31d1a0a4ec395586644957f2d85e0a961b20f','6mmu18k2',NULL,NULL,'2012-09-24 13:49:06','2012-09-24 13:51:13',NULL),(2,'NLF001','Moeen','Irshad','theconversant@gmail.com',0,1,0,'e84cc330992bda538f24ea2b770217b742ed72f9','PrT7QPT3',NULL,NULL,'2012-09-27 16:48:33','2012-11-01 09:26:44',NULL),(3,'pNLF001','Muhammad','Irshad','named.conf@live.com',0,0,0,'2620498491deb0da852ee20b09469edd98e68561','0wDX09LC',NULL,NULL,'2012-09-27 16:52:33','2012-09-27 16:52:33',1),(4,'NLF002','Azeem','Ali','',0,1,0,'a8b4c62d8b5cd4970198e24288709f094b20ce19','r1Ydi7lt',NULL,NULL,'2012-09-27 20:03:56','2012-09-27 20:03:56',NULL),(5,'pNLF002','Waseem','Ali','fake@anymail.com',0,0,0,'50fa4c79aa9cb0788974ce4b1e5eb059325b41b7','aKGiOK9w',NULL,NULL,'2012-09-27 20:14:02','2012-09-27 20:14:02',1),(6,'NLF003','Naeem','Ahmed','noemail@nomail.com',0,1,0,'3de5052138f92e13dc6dd5713ef37cc24fa79924','02OzFdHa',NULL,NULL,'2012-09-27 20:35:03','2012-09-27 20:35:03',NULL),(7,'E001','Farrukh','Iqbal','malikfarrukh_9024@yahoo.com',1,0,0,'bc392e8bac6c1c92aea3219efb2c0be501cad7ec','K7bMc4OA',NULL,NULL,'2012-11-01 09:35:51','2012-11-01 09:35:51',NULL),(8,'E002','Sadaqat','','theconversant@gmail.com',0,0,1,'f52888a841835080c48e374e90bfd410455c188a','xjTUOolS',NULL,NULL,'2012-11-01 09:40:17','2012-11-01 14:12:38',NULL);
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
  `name` varchar(255) default NULL,
  `sort_order` int(11) default NULL,
  `day_of_week` int(11) default NULL,
  `is_deleted` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `index_weekdays_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `weekdays`
--

LOCK TABLES `weekdays` WRITE;
/*!40000 ALTER TABLE `weekdays` DISABLE KEYS */;
INSERT INTO `weekdays` VALUES (1,NULL,'1',NULL,NULL,1,0),(2,NULL,'2',NULL,NULL,2,0),(3,NULL,'3',NULL,NULL,3,0),(4,NULL,'4',NULL,NULL,4,0),(5,NULL,'5',NULL,NULL,5,0),(6,NULL,'6',NULL,NULL,6,0);
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

-- Dump completed on 2012-11-08  8:14:29
