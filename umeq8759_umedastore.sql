-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: umeq8759_umedastore
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `actions_created_by_index` (`created_by`),
  KEY `actions_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('create','Create',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('delete','Delete',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',5,1),('index','Index',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',1,1),('update','Update',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',4,1),('view','View',NULL,NULL,'2024-11-22 09:32:53','2024-11-22 09:32:53',2,1);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('19685f46f490002e7861ce3a1c4e2f3f257cc4c5','i:3;',1732519332),('19685f46f490002e7861ce3a1c4e2f3f257cc4c5:timer','i:1732519332;',1732519332);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `customers_created_by_index` (`created_by`),
  KEY `customers_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_accounts`
--

DROP TABLE IF EXISTS `employee_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_accounts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_accounts_username_unique` (`username`),
  KEY `employee_accounts_employee_id_foreign` (`employee_id`),
  KEY `employee_accounts_created_by_index` (`created_by`),
  KEY `employee_accounts_updated_by_index` (`updated_by`),
  CONSTRAINT `employee_accounts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_accounts`
--

LOCK TABLES `employee_accounts` WRITE;
/*!40000 ALTER TABLE `employee_accounts` DISABLE KEYS */;
INSERT INTO `employee_accounts` VALUES ('9d8c81b8-8ef3-43f4-bad1-91e945693111','9d8c81b8-37ad-4402-88ec-c5b65afb08c6','developer@system',NULL,'$2y$12$ErcvK1y3D40AE7UosLvu/O0igq63Q5V6X7GXQtMpE./bgspZn75sm',NULL,'system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `employee_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_password_reset_tokens`
--

DROP TABLE IF EXISTS `employee_password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_password_reset_tokens`
--

LOCK TABLES `employee_password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `employee_password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_sessions`
--

DROP TABLE IF EXISTS `employee_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_sessions_user_id_index` (`user_id`),
  KEY `employee_sessions_last_activity_index` (`last_activity`),
  CONSTRAINT `employee_sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `employee_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_sessions`
--

LOCK TABLES `employee_sessions` WRITE;
/*!40000 ALTER TABLE `employee_sessions` DISABLE KEYS */;
INSERT INTO `employee_sessions` VALUES ('XEv77lgFuyoHnWjYO0VEZrQXN1WfzAO0bOmElKo5','9d8c81b8-8ef3-43f4-bad1-91e945693111','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMmxMTDc1Ykp3RVFMNVRWa3NhMkw4YnVqeEw1OGFIMEVyZ05CN1R6TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMS9wcm9kdWN0LWNvbnRlbnQtc3BlY2lmaWNhdGlvbnMvZWRpdC85ZDkyNWFmZi1jNTQ2LTQ0ZjgtOWY5Ny1jMGZkY2YxMzM3MmYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7czozNjoiOWQ4YzgxYjgtOGVmMy00M2Y0LWJhZDEtOTFlOTQ1NjkzMTExIjt9',1732519563);
/*!40000 ALTER TABLE `employee_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`),
  KEY `employees_position_id_foreign` (`position_id`),
  KEY `employees_created_by_index` (`created_by`),
  KEY `employees_updated_by_index` (`updated_by`),
  CONSTRAINT `employees_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('9d8c81b8-37ad-4402-88ec-c5b65afb08c6','developer','Full Stack Developer','+6281380912181','developer@system',NULL,'system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplaces`
--

DROP TABLE IF EXISTS `marketplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketplaces` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `marketplaces_created_by_index` (`created_by`),
  KEY `marketplaces_updated_by_index` (`updated_by`),
  KEY `marketplaces_created_at_index` (`created_at`),
  KEY `marketplaces_updated_at_index` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplaces`
--

LOCK TABLES `marketplaces` WRITE;
/*!40000 ALTER TABLE `marketplaces` DISABLE KEYS */;
INSERT INTO `marketplaces` VALUES ('blibli','Blibli','https://www.blibli.com','/assets/images/no-image.webp','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('shopee','Shopee','https://shopee.co.id','/assets/images/no-image.webp','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('tokopedia','Tokopedia','https://www.tokopedia.com','/assets/images/no-image.webp','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1,1);
/*!40000 ALTER TABLE `marketplaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_properties`
--

DROP TABLE IF EXISTS `meta_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_properties` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_property_group_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `meta_properties_meta_property_group_id_foreign` (`meta_property_group_id`),
  KEY `meta_properties_created_by_index` (`created_by`),
  KEY `meta_properties_updated_by_index` (`updated_by`),
  CONSTRAINT `meta_properties_meta_property_group_id_foreign` FOREIGN KEY (`meta_property_group_id`) REFERENCES `meta_property_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_properties`
--

LOCK TABLES `meta_properties` WRITE;
/*!40000 ALTER TABLE `meta_properties` DISABLE KEYS */;
INSERT INTO `meta_properties` VALUES ('description','general','description','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('keywords','general','keywords','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('title','general','title','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1,1);
/*!40000 ALTER TABLE `meta_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_property_groups`
--

DROP TABLE IF EXISTS `meta_property_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_property_groups` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `meta_property_groups_created_by_index` (`created_by`),
  KEY `meta_property_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_property_groups`
--

LOCK TABLES `meta_property_groups` WRITE;
/*!40000 ALTER TABLE `meta_property_groups` DISABLE KEYS */;
INSERT INTO `meta_property_groups` VALUES ('facebook','Facebook','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',2,1),('general','(General)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1,1),('instagram','Instagram','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',3,1),('tiktok','Tiktok','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',4,1),('twitter','Twitter','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',5,1);
/*!40000 ALTER TABLE `meta_property_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0000_09_30_042036_create_positions_table',1),(2,'0001_01_01_000000_create_users_table',1),(3,'0001_01_01_000001_create_cache_table',1),(4,'0001_01_01_000002_create_jobs_table',1),(5,'2024_08_30_043431_create_pages_table',1),(6,'2024_08_30_043441_create_actions_table',1),(7,'2024_08_30_043458_create_permissions_table',1),(8,'2024_09_30_035334_create_employees_table',1),(9,'2024_09_30_035339_create_employee_accounts_table',1),(10,'2024_10_01_090408_create_personal_access_tokens_table',1),(11,'2024_10_01_090410_create_marketplaces_table',1),(12,'2024_10_01_090413_create_meta_property_groups_table',1),(13,'2024_10_01_090415_create_meta_properties_table',1),(14,'2024_10_03_073200_create_product_category_seconds_table',1),(15,'2024_10_03_073202_create_product_category_firsts_table',1),(16,'2024_10_10_064954_create_products_table',1),(17,'2024_10_10_081200_create_product_contents_table',1),(18,'2024_10_10_081205_create_product_content_metas_table',1),(19,'2024_10_10_081208_create_product_content_displays_table',1),(20,'2024_10_10_081210_create_product_content_videos_table',1),(21,'2024_10_10_081222_create_product_content_features_table',1),(22,'2024_10_10_081245_create_product_content_marketplaces_table',1),(23,'2024_10_10_081340_create_product_content_specifications_table',1),(24,'2024_10_10_081401_create_product_content_qnas_table',1),(25,'2024_11_12_162024_create_product_content_reviews_table',1),(26,'2024_11_18_160201_create_customers_table',1),(27,'2024_11_18_160233_create_sales_carts_table',1),(28,'2024_11_18_160300_create_sales_cart_detail_table',1),(29,'2024_11_18_160313_create_sales_orders_table',1),(30,'2024_11_18_160332_create_sales_order_detail_table',1),(31,'2024_11_18_160359_create_sales_invoices_table',1),(32,'2024_11_18_160428_create_sales_payments_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pages_created_by_index` (`created_by`),
  KEY `pages_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES ('dashboard','Dashboard','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee','Employee','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account','Employee Account','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page','Page','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission','Permission','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position','Position','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product','Product','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first','Product Category First','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `permissions_page_id_foreign` (`page_id`),
  KEY `permissions_action_id_foreign` (`action_id`),
  KEY `permissions_created_by_index` (`created_by`),
  KEY `permissions_updated_by_index` (`updated_by`),
  CONSTRAINT `permissions_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permissions_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('dashboard_index','dashboard','index','Dashboard (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_create','employee_account','create','Employee Account (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_delete','employee_account','delete','Employee Account (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_index','employee_account','index','Employee Account (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_update','employee_account','update','Employee Account (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_account_view','employee_account','view','Employee Account (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_create','employee','create','Employee (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_delete','employee','delete','Employee (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_index','employee','index','Employee (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_update','employee','update','Employee (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('employee_view','employee','view','Employee (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_create','page','create','Page (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_delete','page','delete','Page (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_index','page','index','Page (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_update','page','update','Page (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('page_view','page','view','Page (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_create','permission','create','Permission (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_delete','permission','delete','Permission (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_index','permission','index','Permission (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_update','permission','update','Permission (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('permission_view','permission','view','Permission (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_create','position','create','Position (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_delete','position','delete','Position (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_index','position','index','Position (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_update','position','update','Position (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('position_view','position','view','Position (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_create','product_category_first','create','Product Category First (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_delete','product_category_first','delete','Product Category First (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_index','product_category_first','index','Product Category First (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_update','product_category_first','update','Product Category First (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_category_first_view','product_category_first','view','Product Category First (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_create','product','create','Product (Create)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_delete','product','delete','Product (Delete)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_index','product','index','Product (Index)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_update','product','update','Product (Update)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('product_view','product','view','Product (View)','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `positions_created_by_index` (`created_by`),
  KEY `positions_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES ('admin','Admin','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1),('developer','Developer','system','system','2024-11-22 09:32:53','2024-11-22 09:32:53',1);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category_firsts`
--

DROP TABLE IF EXISTS `product_category_firsts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_firsts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_second_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_category_firsts_product_category_second_id_foreign` (`product_category_second_id`),
  KEY `product_category_firsts_slug_index` (`slug`),
  KEY `product_category_firsts_created_by_index` (`created_by`),
  KEY `product_category_firsts_updated_by_index` (`updated_by`),
  CONSTRAINT `product_category_firsts_product_category_second_id_foreign` FOREIGN KEY (`product_category_second_id`) REFERENCES `product_category_seconds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_firsts`
--

LOCK TABLES `product_category_firsts` WRITE;
/*!40000 ALTER TABLE `product_category_firsts` DISABLE KEYS */;
INSERT INTO `product_category_firsts` VALUES ('9d8c824c-07fb-4c33-a1e8-3444ab0bd339','9d8c8235-70a3-4269-b59e-62a371e947d6','(TIdak Ada)','tidak-ada',NULL,'developer@system','developer@system','2024-11-22 09:34:30','2024-11-22 09:34:30',1),('9d91f131-e42a-4153-8f7e-65951df0ca9b','9d8c8235-70a3-4269-b59e-62a371e947d6','Air Purifier','air-purifier',NULL,'developer@system','developer@system','2024-11-25 02:23:44','2024-11-25 02:23:44',1),('9d91f145-19ee-4f94-8fae-cf0644d8ff4d','9d8c8235-70a3-4269-b59e-62a371e947d6','Audio','audio',NULL,'developer@system','developer@system','2024-11-25 02:23:56','2024-11-25 02:23:56',1),('9d91f156-ecc9-4fae-9028-e97c6dd64ef8','9d8c8235-70a3-4269-b59e-62a371e947d6','Beauty & Care','beauty-care',NULL,'developer@system','developer@system','2024-11-25 02:24:08','2024-11-25 02:24:08',1),('9d91f16b-daf8-40f7-a1b8-7f4ab583233c','9d8c8235-70a3-4269-b59e-62a371e947d6','Kitchen','kitchen',NULL,'developer@system','developer@system','2024-11-25 02:24:21','2024-11-25 02:24:21',1),('9d91f194-0b61-4c88-9b29-71d5b246b324','9d8c8235-70a3-4269-b59e-62a371e947d6','Vacuum Cleaner','vacuum-cleaner',NULL,'developer@system','developer@system','2024-11-25 02:24:48','2024-11-25 02:24:48',1),('9d921edb-16e9-4179-b9fd-354880275193','9d8c8235-70a3-4269-b59e-62a371e947d6','Robot Vacuum Cleaner','robot-vacuum-cleaner',NULL,'developer@system','developer@system','2024-11-25 04:31:24','2024-11-25 04:31:24',1);
/*!40000 ALTER TABLE `product_category_firsts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category_seconds`
--

DROP TABLE IF EXISTS `product_category_seconds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_seconds` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_category_seconds_slug_index` (`slug`),
  KEY `product_category_seconds_created_by_index` (`created_by`),
  KEY `product_category_seconds_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_seconds`
--

LOCK TABLES `product_category_seconds` WRITE;
/*!40000 ALTER TABLE `product_category_seconds` DISABLE KEYS */;
INSERT INTO `product_category_seconds` VALUES ('9d8c8235-70a3-4269-b59e-62a371e947d6','(TIdak Ada)','tidak-ada',NULL,'developer@system','developer@system','2024-11-22 09:34:15','2024-11-22 09:34:15',1);
/*!40000 ALTER TABLE `product_category_seconds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_displays`
--

DROP TABLE IF EXISTS `product_content_displays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_displays` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_displays_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_displays_created_by_index` (`created_by`),
  KEY `product_content_displays_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_displays_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_displays`
--

LOCK TABLES `product_content_displays` WRITE;
/*!40000 ALTER TABLE `product_content_displays` DISABLE KEYS */;
INSERT INTO `product_content_displays` VALUES ('9d8c84cd-478f-4bad-b402-03d852f7adcd','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 01','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164130.webp','developer@system','developer@system','2024-11-22 09:41:30','2024-11-22 09:41:30',1,1),('9d8c84db-6fb8-4bb0-891b-f884b9560530','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 02','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164139.webp','developer@system','developer@system','2024-11-22 09:41:39','2024-11-22 09:41:39',2,1),('9d8c84e7-b268-4ae3-a9da-b931c49fb37c','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 03','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164147.webp','developer@system','developer@system','2024-11-22 09:41:47','2024-11-22 09:41:47',3,1),('9d8c84f4-142c-4387-a96e-d9269cb17703','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 04','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164155.webp','developer@system','developer@system','2024-11-22 09:41:55','2024-11-22 09:41:55',4,1),('9d8c8504-2ae0-4bfb-9155-e3e49293f748','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 05','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164206.webp','developer@system','developer@system','2024-11-22 09:42:06','2024-11-22 09:42:06',5,1),('9d8c8513-c628-476c-a5c3-16eb92c5b61f','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 06','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164216.webp','developer@system','developer@system','2024-11-22 09:42:16','2024-11-22 09:42:16',6,1),('9d8c8524-1ef5-43e7-bde1-c81bfaa17d31','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 07','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164227.webp','developer@system','developer@system','2024-11-22 09:42:27','2024-11-22 09:42:27',7,1),('9d8c8533-e54f-4099-a888-f7bd5845aaa2','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 08','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164237.webp','developer@system','developer@system','2024-11-22 09:42:37','2024-11-22 09:42:37',8,1),('9d8c8540-0ced-4de4-9d3a-91d36dac7767','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 09','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164245.webp','developer@system','developer@system','2024-11-22 09:42:45','2024-11-22 09:42:45',9,1),('9d8c854e-447b-463e-ba7c-307f200f38db','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Display Image 10','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-displays/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-display-image_2024-11-22-164254.webp','developer@system','developer@system','2024-11-22 09:42:54','2024-11-22 09:42:54',10,1),('9d92269a-0c5d-469f-a746-c96294ee0820','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Waku White Display Image 01','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-displays/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-display-image_2024-11-25-115304.jpg','developer@system','developer@system','2024-11-25 04:53:04','2024-11-25 04:53:04',1,1),('9d9226ab-91a9-4dbd-9582-f825c3c664ee','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Waku White Display Image 02','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-displays/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-display-image_2024-11-25-115320.jpg','developer@system','developer@system','2024-11-25 04:53:15','2024-11-25 04:53:15',2,1),('9d923d69-a217-49f0-9a8a-482060be4541','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Waku White Display Image 03','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-displays/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-display-image_2024-11-25-125651.jpg','developer@system','developer@system','2024-11-25 05:56:51','2024-11-25 05:56:51',3,1),('9d923d7f-0d5c-4cca-861c-cb50c6578fda','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Waku White Display Image 04','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-displays/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-display-image_2024-11-25-125705.jpg','developer@system','developer@system','2024-11-25 05:57:05','2024-11-25 05:57:05',4,1),('9d923d92-a025-4059-8a27-22ccabedd9e9','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Waku White Display Image 05','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-displays/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-display-image_2024-11-25-125718.jpg','developer@system','developer@system','2024-11-25 05:57:18','2024-11-25 05:57:18',5,1);
/*!40000 ALTER TABLE `product_content_displays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_features`
--

DROP TABLE IF EXISTS `product_content_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_features` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_features_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_features_created_by_index` (`created_by`),
  KEY `product_content_features_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_features_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_features`
--

LOCK TABLES `product_content_features` WRITE;
/*!40000 ALTER TABLE `product_content_features` DISABLE KEYS */;
INSERT INTO `product_content_features` VALUES ('9d8c8702-3250-489c-b588-2ae48e59e01f','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','SELF-CLEANING SMART MOP, THE WHOLE HOUSE IS CLEAN AND INTELLIGENT','All in one, membersihkan seluruh area rumah','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-164831.webp','developer@system','developer@system','2024-11-22 09:47:40','2024-11-22 09:48:31',1,1),('9d8c877a-b1e3-4b86-9eb0-d9a199679714','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','HIGH ACCURACY LIDAR MAPPING NAVIGATION SYSTEM','Sensor pemetaan LDS dan sistem navigasi LiDAR canggih menayangkan zona yang dibersihkan','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-164859.webp','developer@system','developer@system','2024-11-22 09:48:59','2024-11-22 09:48:59',2,1),('9d8c87a3-53c9-41ca-baf0-c3bc21d2fe82','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','AUTOMATIC CARPET DETECTION AND POWER BOOST TECHNOLOGY','Sensor pendeteksi karpet mencegah robot naik ke permukaan karpet saat mode pel dan meningkatkan tenaga saat mode vakum','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-164926.webp','developer@system','developer@system','2024-11-22 09:49:26','2024-11-22 09:49:26',3,1),('9d8c87d8-aa4c-4a0f-affe-ecc59a826253','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','POWERFUL 5000 PA SUCTION POWER','Daya hisap kuat dengan tingkat kebisingan yang rendah sehingga tidak mengganggu beristirahat di rumah','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-165001.webp','developer@system','developer@system','2024-11-22 09:50:01','2024-11-22 09:50:01',4,1),('9d8c87f6-9ee8-4fdd-ab0b-433dc5c48ae4','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','4 STAGES SUCTION POWER','Memiliki 4 tingkat daya hisap yaitu silent gear, mid range, standard, & high gear','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-165020.webp','developer@system','developer@system','2024-11-22 09:50:20','2024-11-22 09:50:20',5,1),('9d8c882a-2b94-48e6-a925-5a7c6d6e0b02','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','LONGER BATTERY LIFE, 240 MINUTES OPTIMIZED CLEANING','Baterai memiliki daya tahan yang lebih lama, tanpa perlu sering-sering mengisi ulang daya','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-165054.webp','developer@system','developer@system','2024-11-22 09:50:54','2024-11-22 09:50:54',6,1),('9d8c884a-9e9a-42a3-b537-9613bbd915cf','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','BE CONNECTED TO YOUR SMARTPHONE FOR EASY CONTROL','Terkoneksi dengan aplikasi Tuya, Google Home dan Amazon Alexa untuk membuat jadwal kerja otomatis','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-165115.webp','developer@system','developer@system','2024-11-22 09:51:15','2024-11-22 09:51:15',7,1),('9d8c886d-1451-40c6-b10c-9b7970952f55','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','MULTIPLE CLEANING MODES AT YOUR SERVICE','Tersedia 4 mode pilihan untuk membersihkan ruangan dan area yang diinginkan','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-165138.webp','developer@system','developer@system','2024-11-22 09:51:38','2024-11-22 09:51:38',8,1),('9d8c888b-f753-4efb-83ed-828aa2a59607','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','STERILIZED MOPPING TO COMBAT GREASY AND STICKY FLOORS','Mengubah air menjadi disinfectant untuk mengangkat noda membandel secara lebih maksimal','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-165158.webp','developer@system','developer@system','2024-11-22 09:51:58','2024-11-22 09:51:58',9,1),('9d8c88b6-b6aa-4bbc-a10a-a6e2ad3dbd60','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','DUAL OSCILLATING MOP, HIGHER CLEANING EFFICIENCY','Dengan Double Mob Design, robot dirancang untuk membersihkan dengan cepat dan efisien','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-165226.webp','developer@system','developer@system','2024-11-22 09:52:26','2024-11-22 09:52:26',10,1),('9d8c88d5-e89d-4840-9feb-7ab2cdbf387a','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','SELF-CHARGING, CLEAN AND WORRY FREE','Setelah selesai atau baterai lemah, Tomo kembali ke station pengisian daya secara otomatis','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-165247.webp','developer@system','developer@system','2024-11-22 09:52:47','2024-11-22 09:52:47',11,1),('9d8c88f2-3151-4b09-9747-a7fe0cf3fa97','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','60-DAYS HANDSFREE CLEANING WITH INTELLIGENT VACUUM AND MOPPING SYSTEM','Membersihkan lantai secara otomatis dengan perlindungan sterilisasi anti bacterial','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-features/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-feature-image_2024-11-22-165305.webp','developer@system','developer@system','2024-11-22 09:53:05','2024-11-22 09:53:05',12,1),('9d924087-b302-439b-a5fe-77d018b44b04','9d92242f-9316-4ce7-a312-b9c9ddecbc73','LIGHTWEIGHT, POWERFUL SUCTION & LOW NOISE','Design yang handly dan ringan dengan daya hisap yang kuat tetapi tidak berisik.','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-features/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-feature-image_2024-11-25-130534.jpg','developer@system','developer@system','2024-11-25 06:05:34','2024-11-25 06:05:34',1,1),('9d9241d0-cf0f-436b-a8df-146f4fe77c63','9d92242f-9316-4ce7-a312-b9c9ddecbc73','TAMPING ABILITY 8000 BEATS/MIN','Mampu mengangkat partikel kecil yang menempel pada permukaan dengan kecepatan 8000 ketukan/menit.','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-features/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-feature-image_2024-11-25-130909.jpg','developer@system','developer@system','2024-11-25 06:09:09','2024-11-25 06:09:09',2,1),('9d9241f7-e4e8-49eb-b718-74deda9cb71f','9d92242f-9316-4ce7-a312-b9c9ddecbc73','CYCLONE TECHNOLOGY','Dilengkapi dengan Teknologi Cyclone dengan daya hisap yang kuat dan stabil.','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-features/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-feature-image_2024-11-25-130935.jpg','developer@system','developer@system','2024-11-25 06:09:35','2024-11-25 06:09:35',3,1),('9d924235-131e-4384-b92e-a224e9e61dd8','9d92242f-9316-4ce7-a312-b9c9ddecbc73','AIR CIRCULATION LONG LASTING ENGINE LIFE','Sirkulasi udara dirancang agar mesin dapat bertahan lama dan tidak mudah panas.','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-features/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-feature-image_2024-11-25-131015.jpg','developer@system','developer@system','2024-11-25 06:10:15','2024-11-25 06:10:15',4,1),('9d924267-7470-40c5-97ee-cfbbf842852d','9d92242f-9316-4ce7-a312-b9c9ddecbc73','POWERED WITH UV-C LIGHT (KILL 99.9% OF GERMS & DUST MITES)','Sinar UV-C yang mampu membasmi kuman dan tungau debu 99.9% secara efektif.','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-features/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-feature-image_2024-11-25-131048.jpg','developer@system','developer@system','2024-11-25 06:10:48','2024-11-25 06:10:48',5,1),('9d924b7d-e8b7-42cf-9fad-90cd7fd5f9aa','9d9249f6-650b-4416-854b-8014c0798637','LOW-NOISE, EASY TO USE AND PORTABLE','Vakum kecil bersuara lembut yang mudah digunakan dan praktis dapat dibawa ke berbagai tempat.','/files/product-contents/9d9249f6-650b-4416-854b-8014c0798637/product-content-features/9d9249f6-650b-4416-854b-8014c0798637_product-content-feature-image_2024-11-25-134041.jpg','developer@system','developer@system','2024-11-25 06:36:13','2024-11-25 06:40:41',1,1),('9d924b9f-6b71-4eef-960b-0f3046fa0c9c','9d9249f6-650b-4416-854b-8014c0798637','IDEAL FOR CLEANING DUST OR CRUBMS','Cocok untuk membersihkan debu dan serpihan kotoran.','/files/product-contents/9d9249f6-650b-4416-854b-8014c0798637/product-content-features/9d9249f6-650b-4416-854b-8014c0798637_product-content-feature-image_2024-11-25-133738.jpg','developer@system','developer@system','2024-11-25 06:36:35','2024-11-25 06:37:38',2,1),('9d924c25-b2ed-4235-b554-1ec14fec2332','9d9249f6-650b-4416-854b-8014c0798637','EFFICIENTLY COLLECT ALL PET HAIR AND SMALL PIECES OF PAPER','Efektif mengumpulkan kotoran kecil seperti bulu, rambut, dan potongan kertas.','/files/product-contents/9d9249f6-650b-4416-854b-8014c0798637/product-content-features/9d9249f6-650b-4416-854b-8014c0798637_product-content-feature-image_2024-11-25-133803.jpg','developer@system','developer@system','2024-11-25 06:38:03','2024-11-25 06:38:03',3,1),('9d924ca9-5580-414a-927f-e1589beb6f4f','9d9249f6-650b-4416-854b-8014c0798637','EQUIPPED WITH SPECIAL SUCTION NOZZLE FOR CREVICES CLEANING','Dilengkapi dengan mulut pipa yang mampu membersihkan di celah yang sulit dijangkau.','/files/product-contents/9d9249f6-650b-4416-854b-8014c0798637/product-content-features/9d9249f6-650b-4416-854b-8014c0798637_product-content-feature-image_2024-11-25-134007.jpg','developer@system','developer@system','2024-11-25 06:39:29','2024-11-25 06:40:07',4,1),('9d924d41-c9c7-4aba-ab07-fa133663e528','9d9249f6-650b-4416-854b-8014c0798637','360 DEGREE RISING TYPE STRONG POWER','Mengangkat kotoran dengan putaran 360° tanpa menyebar.','/files/product-contents/9d9249f6-650b-4416-854b-8014c0798637/product-content-features/9d9249f6-650b-4416-854b-8014c0798637_product-content-feature-image_2024-11-25-134109.jpg','developer@system','developer@system','2024-11-25 06:41:09','2024-11-25 06:41:09',5,1),('9d924fd7-cfd2-463a-8f88-64efbf09bce0','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','WET DRY VACUUM & MOP','U-Stik Duo memiliki fungsi vacuum dan pel, all in one step.','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-134823.webp','developer@system','developer@system','2024-11-25 06:48:23','2024-11-25 06:48:23',1,1),('9d925002-485e-415b-9608-366d6450eb73','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','MULTIFUNCTION CLEANING TOOLS','Vacuum cleaner cordless yang mampu mengangkat dan pel kotoran pada permukaan lantai keramik, lantai kayu, & karpet','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-134851.webp','developer@system','developer@system','2024-11-25 06:48:51','2024-11-25 06:48:51',2,1),('9d925029-7e00-42ed-b74f-d4a3b9d6e630','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','11000 PA STRONG SUCTION POWER LIFTING UP DIRTS AND STAINS','Dengan daya hisap yang kuat, vacuum cleaner dapat membersihkan kotoran dengan sangat cepat.','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-134916.webp','developer@system','developer@system','2024-11-25 06:49:16','2024-11-25 06:49:16',3,1),('9d925050-56d1-4585-922b-90d478237b76','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','RECHARGEABLE & LONGER RUNTIME','Baterai stick vacuum cleaner mampu bertahan hingga 50 menit dan dapat membersihkan seluruh ruangan yang ada.','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-134942.webp','developer@system','developer@system','2024-11-25 06:49:42','2024-11-25 06:49:42',4,1),('9d925070-1f86-474e-bdaa-3e21e81a188d','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','BIGGER DUAL WATER TANK','Memiliki 2 tangki air sehingga dapat memisahkan antara tangki air bersih dan kotor.','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-135155.webp','developer@system','developer@system','2024-11-25 06:50:03','2024-11-25 06:51:55',5,1),('9d925150-8327-4e89-b401-41619f168fda','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','STERILIZATION FUNCTION','Elektrolisis mengubah air menjadi desinfektan untuk mensterilkan kuman dan bakteri hingga 99,99%','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-135230.webp','developer@system','developer@system','2024-11-25 06:52:30','2024-11-25 06:52:30',6,1),('9d925185-dc48-48e2-a6cc-bb0e8bd62793','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','SMART SENSE TECHNOLOGY','Secara otomatis mengatur daya hisap ketika mendeteksi jumlah debu atau kotoran yang ada.','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-135305.webp','developer@system','developer@system','2024-11-25 06:53:05','2024-11-25 06:53:05',7,1),('9d9251b3-1e32-49a9-91e2-2bc9dcea38fb','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','AN EDGE TO EDGE CLEANING DESIGN','Design vacuum cleaner dirancang untuk mempermudah pembersihan sudut-sudut ruangan.','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-135334.webp','developer@system','developer@system','2024-11-25 06:53:34','2024-11-25 06:53:34',8,1),('9d9251f2-88a1-4ee1-b101-995704d9e885','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','SMART VOICE ASSISTANT & LED SCREEN DISPLAY','Dilengkapi dengan fitur Smart Voice Assistant sebagai pengingat pemeliharaan melalui asisten suara bawaan.','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-135416.webp','developer@system','developer@system','2024-11-25 06:54:16','2024-11-25 06:54:16',9,1),('9d925223-fe3f-4ec7-9ff1-2f3590329c9c','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','RECYCLEABLE HEPA FILTER','Hemat biaya & hepa filter dapat di-recycle','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-features/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-feature-image_2024-11-25-135448.webp','developer@system','developer@system','2024-11-25 06:54:48','2024-11-25 06:54:48',10,1);
/*!40000 ALTER TABLE `product_content_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_marketplaces`
--

DROP TABLE IF EXISTS `product_content_marketplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_marketplaces` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketplace_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_marketplaces_marketplace_id_foreign` (`marketplace_id`),
  KEY `product_content_marketplaces_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_marketplaces_created_by_index` (`created_by`),
  KEY `product_content_marketplaces_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_marketplaces_marketplace_id_foreign` FOREIGN KEY (`marketplace_id`) REFERENCES `marketplaces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_content_marketplaces_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_marketplaces`
--

LOCK TABLES `product_content_marketplaces` WRITE;
/*!40000 ALTER TABLE `product_content_marketplaces` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_content_marketplaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_metas`
--

DROP TABLE IF EXISTS `product_content_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_metas` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_property_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_content_metas_product_content_id_meta_property_id_unique` (`product_content_id`,`meta_property_id`),
  KEY `product_content_metas_meta_property_id_foreign` (`meta_property_id`),
  KEY `product_content_metas_created_by_index` (`created_by`),
  KEY `product_content_metas_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_metas_meta_property_id_foreign` FOREIGN KEY (`meta_property_id`) REFERENCES `meta_properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_content_metas_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_metas`
--

LOCK TABLES `product_content_metas` WRITE;
/*!40000 ALTER TABLE `product_content_metas` DISABLE KEYS */;
INSERT INTO `product_content_metas` VALUES ('9d8c8a3e-faa4-4775-8388-8aa028c82d77','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','title','Umeda Tomo R8 Smart Robotic Vacuum Cleaner with Mob Combo and Auto Empty Station','developer@system','developer@system','2024-11-22 09:56:43','2024-11-22 09:56:43',1,1),('9d8c8a4f-d577-4555-a7fd-d65af0439cbb','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','description','Smart Robot Vacuum and Mop Combo dengan fitur terlengkap dapat menyapu, mengepel, membilas dan mengeringkan kain mop hingga fungsi sterilisasi. Tomo R8 dilengkapi sistem navigasi canggih, mengenali dan memetakan ruangan dengan lebih efisien dan presisi.','developer@system','developer@system','2024-11-22 09:56:54','2024-11-22 09:56:54',2,1),('9d8c8a72-e92c-4a99-8f0a-542dba4fd9f6','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','keywords','robot vacuum cleaner, robot vacuum, robot vakum, robotic vacuum cleaner,  vacuum cleaner terbaik, auto empty station. self empty dustbin','developer@system','developer@system','2024-11-22 09:57:17','2024-11-22 09:57:17',3,1),('9d922585-05fc-4557-a117-7c9982c5f546','9d92242f-9316-4ce7-a312-b9c9ddecbc73','title','Umeda Waku White - UV-C Dust Mite Vacuum Cleaner','developer@system','developer@system','2024-11-25 04:50:02','2024-11-25 04:50:02',1,1),('9d9225b1-ed14-414b-9c8e-3ace5e8ac3ad','9d92242f-9316-4ce7-a312-b9c9ddecbc73','description','Vacuum cleaner yang sangat efektif membunuh bakteri dan tungau di berbagai jenis permukaan seperti tempat tidur, selimut, kasur, bantal, sofa, matras dan lainnya.','developer@system','developer@system','2024-11-25 04:50:32','2024-11-25 04:50:32',2,1),('9d9225e8-33ec-4474-a74f-02d5bc31517f','9d92242f-9316-4ce7-a312-b9c9ddecbc73','keywords','umeda waku, vacum cleaner, tungau debu, vakum pembersih, uvc dust mite','developer@system','developer@system','2024-11-25 04:51:07','2024-11-25 04:51:07',3,1);
/*!40000 ALTER TABLE `product_content_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_qnas`
--

DROP TABLE IF EXISTS `product_content_qnas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_qnas` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_qnas_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_qnas_created_by_index` (`created_by`),
  KEY `product_content_qnas_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_qnas_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_qnas`
--

LOCK TABLES `product_content_qnas` WRITE;
/*!40000 ALTER TABLE `product_content_qnas` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_content_qnas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_reviews`
--

DROP TABLE IF EXISTS `product_content_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_reviews` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` float NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_reviews_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_reviews_created_by_index` (`created_by`),
  KEY `product_content_reviews_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_reviews_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_reviews`
--

LOCK TABLES `product_content_reviews` WRITE;
/*!40000 ALTER TABLE `product_content_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_content_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_specifications`
--

DROP TABLE IF EXISTS `product_content_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_specifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_specifications_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_specifications_created_by_index` (`created_by`),
  KEY `product_content_specifications_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_specifications_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_specifications`
--

LOCK TABLES `product_content_specifications` WRITE;
/*!40000 ALTER TABLE `product_content_specifications` DISABLE KEYS */;
INSERT INTO `product_content_specifications` VALUES ('9d8c8925-1a95-4792-b502-5e16fcee2fa4','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Battery','5200 mAh Li-ion, working time up to 240mins','developer@system','developer@system','2024-11-22 09:53:38','2024-11-22 09:53:38',1,1),('9d8c8937-0cdd-41bf-b1ec-c035295a2fb9','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Suction Power','Up to 5000 Pa','developer@system','developer@system','2024-11-22 09:53:50','2024-11-22 09:53:50',2,1),('9d8c8945-989f-4149-8792-6d6d02c446f8','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Power','50 W','developer@system','developer@system','2024-11-22 09:54:00','2024-11-22 09:54:00',3,1),('9d8c8959-e4fc-494e-9f28-004d522f2578','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Noise','< 70 dB','developer@system','developer@system','2024-11-22 09:54:13','2024-11-22 09:54:13',4,1),('9d8c8976-7959-4db1-8b34-45bc11b809a5','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Dustbag Capacity','3 L','developer@system','developer@system','2024-11-22 09:54:32','2024-11-22 09:54:32',5,1),('9d8c89a3-4f94-4655-9070-521bea86951d','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Dirty Water Tank Capacity','4 L','developer@system','developer@system','2024-11-22 09:55:01','2024-11-22 09:55:01',6,1),('9d8c89be-3ae8-463c-b814-8e0666e9204b','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Clean Water Tank Capacity','4 L','developer@system','developer@system','2024-11-22 09:55:19','2024-11-22 09:55:19',7,1),('9d8c89d4-61da-4e15-951c-34fcca133aa6','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Charging Time','< 5 hours','developer@system','developer@system','2024-11-22 09:55:33','2024-11-22 09:55:33',8,1),('9d8c89f0-a8b4-4892-90e5-89dd98b50427','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Working Time','up to 240 min','developer@system','developer@system','2024-11-22 09:55:52','2024-11-22 09:55:52',9,1),('9d8c89fe-def6-4943-ae7f-6e3101a40f87','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Dimension','430 x 430 x 455 mm','developer@system','developer@system','2024-11-22 09:56:01','2024-11-22 09:56:01',10,1),('9d923f0b-ecb1-4bed-8dce-ca1a741dcfdc','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Power','300 W','developer@system','developer@system','2024-11-25 06:01:25','2024-11-25 06:01:25',1,1),('9d923f42-f1d1-459b-bcc3-d8ec7a92d58e','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Voltage','220 V','developer@system','developer@system','2024-11-25 06:02:01','2024-11-25 06:02:01',2,1),('9d923f58-5c20-4702-91ef-76cf78905a90','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Frequency','50 Hz','developer@system','developer@system','2024-11-25 06:02:15','2024-11-25 06:02:15',3,1),('9d923f73-84df-47bb-b779-528eefa34722','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Dust Capacity','0.2 L','developer@system','developer@system','2024-11-25 06:02:33','2024-11-25 06:02:33',4,1),('9d923f8f-56e4-4e12-a280-55630cdc5694','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Suction','12000 Pa','developer@system','developer@system','2024-11-25 06:02:51','2024-11-25 06:02:51',5,1),('9d923fa6-447f-446c-86ac-1c29fe91b9a2','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Length of Cable','5 m','developer@system','developer@system','2024-11-25 06:03:06','2024-11-25 06:03:06',6,1),('9d923fbb-e2de-4f59-a3dd-70cd82008c41','9d92242f-9316-4ce7-a312-b9c9ddecbc73','N.W/G.W','102/1.5 kg','developer@system','developer@system','2024-11-25 06:03:20','2024-11-25 06:03:20',7,1),('9d923fd3-a1db-40b8-a947-9d116e2c4769','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Dimension','290 x 230 x 150 mm','developer@system','developer@system','2024-11-25 06:03:36','2024-11-25 06:03:36',8,1),('9d924a94-6230-4a9c-b38a-eb6349844e02','9d9249f6-650b-4416-854b-8014c0798637','Charging Voltage','5 V','developer@system','developer@system','2024-11-25 06:33:40','2024-11-25 06:33:40',1,1),('9d924aa8-46b3-4caf-8633-b7f6438baf9b','9d9249f6-650b-4416-854b-8014c0798637','Charging Current','600 mA','developer@system','developer@system','2024-11-25 06:33:53','2024-11-25 06:33:53',2,1),('9d924abb-3c9e-43e8-9659-bb74eb6e71be','9d9249f6-650b-4416-854b-8014c0798637','Power','2 W','developer@system','developer@system','2024-11-25 06:34:05','2024-11-25 06:34:05',3,1),('9d924b01-23a3-4d43-a3b7-8f47b0898302','9d9249f6-650b-4416-854b-8014c0798637','Battery Voltage','3.7 V','developer@system','developer@system','2024-11-25 06:34:51','2024-11-25 06:34:51',4,1),('9d924b15-fafd-43bb-a4f4-e2d6714eaa9a','9d9249f6-650b-4416-854b-8014c0798637','Battery Capacity','500 mAh','developer@system','developer@system','2024-11-25 06:35:05','2024-11-25 06:35:05',5,1),('9d924b2b-985b-4fc8-9667-f65d45b17dbe','9d9249f6-650b-4416-854b-8014c0798637','Product Material','ABS','developer@system','developer@system','2024-11-25 06:35:19','2024-11-25 06:35:19',6,1),('9d924b45-8770-485d-8803-5b5d7d22ed58','9d9249f6-650b-4416-854b-8014c0798637','Product Size','112 x 85 x 58 mm','developer@system','developer@system','2024-11-25 06:35:36','2024-11-25 06:35:36',7,1),('9d924ea3-be65-430c-ac61-7ba8ddef1023','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Suction Power','11.000 Pa','developer@system','developer@system','2024-11-25 06:45:01','2024-11-25 06:45:01',1,1),('9d924eba-91f6-4a83-819b-ee4f18e52afd','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Battery Capacity','3000 mAh','developer@system','developer@system','2024-11-25 06:45:16','2024-11-25 06:45:16',2,1),('9d924ed2-c6a5-4c6d-a5f6-adeec0b552a5','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Charging Time','4 - 4.5 hours','developer@system','developer@system','2024-11-25 06:45:32','2024-11-25 06:45:32',3,1),('9d924eed-61ce-46e7-9010-db0a532fcb04','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Clean Water Tank','630 ml','developer@system','developer@system','2024-11-25 06:45:49','2024-11-25 06:45:49',4,1),('9d924f04-0b59-4d47-852a-c9787f7746b0','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Dirty Water Tank','500 ml','developer@system','developer@system','2024-11-25 06:46:04','2024-11-25 06:46:04',5,1),('9d924f2a-afd9-49f4-9ce4-d98ab169a1bd','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Rated Output','35V','developer@system','developer@system','2024-11-25 06:46:29','2024-11-25 06:46:29',6,1),('9d924f47-06e8-4d1c-98c8-99ac7553dd5b','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Rated Input','100-240V','developer@system','developer@system','2024-11-25 06:46:48','2024-11-25 06:46:48',7,1),('9d924f5c-a750-47c1-a973-d0b449e45ad4','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Rated Voltage','29.6V','developer@system','developer@system','2024-11-25 06:47:02','2024-11-25 06:47:02',8,1),('9d924f70-8bf2-401e-9ee9-d3039ce544d4','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Longer Runtime','50 mins','developer@system','developer@system','2024-11-25 06:47:15','2024-11-25 06:47:15',9,1),('9d924f85-cbe6-46dc-9a13-94ebe6fd7b49','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','Product Dimensions','1100 x 275 x 220 mm','developer@system','developer@system','2024-11-25 06:47:29','2024-11-25 06:47:29',10,1),('9d925c67-bf6e-468c-89e8-22af1ab6b496','9d925aff-c546-44f8-9f97-c0fdcf13372f','Voltage','220 V','developer@system','developer@system','2024-11-25 07:23:30','2024-11-25 07:23:30',1,1),('9d925c7b-aa6d-4218-bf0d-3e97263edc2c','9d925aff-c546-44f8-9f97-c0fdcf13372f','Power','1200 W','developer@system','developer@system','2024-11-25 07:23:43','2024-11-25 07:23:43',2,1),('9d925c99-c6b8-4577-bcfb-c93928309d37','9d925aff-c546-44f8-9f97-c0fdcf13372f','Suction power','20000 Pa','developer@system','developer@system','2024-11-25 07:24:03','2024-11-25 07:24:03',3,1),('9d925cb7-0c43-4e84-9056-0dd2534a5c52','9d925aff-c546-44f8-9f97-c0fdcf13372f','Dust Capacity','3 L','developer@system','developer@system','2024-11-25 07:24:22','2024-11-25 07:24:22',4,1),('9d925d4f-e8b0-44ef-87f1-772da0433036','9d925aff-c546-44f8-9f97-c0fdcf13372f','Cord Length','5 m','developer@system','developer@system','2024-11-25 07:26:03','2024-11-25 07:26:03',5,1);
/*!40000 ALTER TABLE `product_content_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_content_videos`
--

DROP TABLE IF EXISTS `product_content_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_content_videos` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordinal` tinyint unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_content_videos_product_content_id_foreign` (`product_content_id`),
  KEY `product_content_videos_created_by_index` (`created_by`),
  KEY `product_content_videos_updated_by_index` (`updated_by`),
  CONSTRAINT `product_content_videos_product_content_id_foreign` FOREIGN KEY (`product_content_id`) REFERENCES `product_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_content_videos`
--

LOCK TABLES `product_content_videos` WRITE;
/*!40000 ALTER TABLE `product_content_videos` DISABLE KEYS */;
INSERT INTO `product_content_videos` VALUES ('9d8c860a-1ec6-4db6-a038-04e65e8dc6dd','9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','Tomo R8 Video 01','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-videos/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-video-image_2024-11-22-164457.webp','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/product-content-videos/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-video_2024-11-22-164457.webm','developer@system','developer@system','2024-11-22 09:44:57','2024-11-22 09:44:57',1,1),('9d923dc0-bd39-423e-93c4-1253972c8aef','9d92242f-9316-4ce7-a312-b9c9ddecbc73','Waku White Video 01','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-videos/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-video-image_2024-11-25-125748.jpg','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/product-content-videos/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-video_2024-11-25-130828.webm','developer@system','developer@system','2024-11-25 05:57:48','2024-11-25 06:08:28',1,1),('9d924783-cfa5-4a09-a042-ec7b9ee4b845','9d92474d-617a-4245-b80f-34520752913c','Dehumidifier UDH1500 Video 01','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-videos/9d92474d-617a-4245-b80f-34520752913c_product-content-video-image_2024-11-25-132506.jpg','/files/product-contents/9d92474d-617a-4245-b80f-34520752913c/product-content-videos/9d92474d-617a-4245-b80f-34520752913c_product-content-video_2024-11-25-132506.mp4','developer@system','developer@system','2024-11-25 06:25:06','2024-11-25 06:25:06',1,1),('9d92483c-0cdb-4402-a03c-61911850a296','9d9247ea-a600-4e05-a735-870e1a80b5b9','Bru Video 01','/files/product-contents/9d9247ea-a600-4e05-a735-870e1a80b5b9/product-content-videos/9d9247ea-a600-4e05-a735-870e1a80b5b9_product-content-video-image_2024-11-25-132706.webp','/files/product-contents/9d9247ea-a600-4e05-a735-870e1a80b5b9/product-content-videos/9d9247ea-a600-4e05-a735-870e1a80b5b9_product-content-video_2024-11-25-132706.webm','developer@system','developer@system','2024-11-25 06:27:06','2024-11-25 06:27:06',1,1),('9d924a41-b13a-418f-9579-91ae5d71b102','9d9249f6-650b-4416-854b-8014c0798637','Minito Video 01','/files/product-contents/9d9249f6-650b-4416-854b-8014c0798637/product-content-videos/9d9249f6-650b-4416-854b-8014c0798637_product-content-video-image_2024-11-25-133246.jpg','/files/product-contents/9d9249f6-650b-4416-854b-8014c0798637/product-content-videos/9d9249f6-650b-4416-854b-8014c0798637_product-content-video_2024-11-25-133246.webm','developer@system','developer@system','2024-11-25 06:32:46','2024-11-25 06:32:46',1,1),('9d924e6e-b075-4d5b-b4cf-e13a72880de8','9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','U-Stik Duo Video 01','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-videos/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-video-image_2024-11-25-134426.webp','/files/product-contents/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d/product-content-videos/9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d_product-content-video_2024-11-25-134426.webm','developer@system','developer@system','2024-11-25 06:44:26','2024-11-25 06:44:26',1,1),('9d925bee-8357-4443-8d23-dd3321c9da11','9d925aff-c546-44f8-9f97-c0fdcf13372f','DX208E Video 01','/files/product-contents/9d925aff-c546-44f8-9f97-c0fdcf13372f/product-content-videos/9d925aff-c546-44f8-9f97-c0fdcf13372f_product-content-video-image_2024-11-25-142211.jpg','/files/product-contents/9d925aff-c546-44f8-9f97-c0fdcf13372f/product-content-videos/9d925aff-c546-44f8-9f97-c0fdcf13372f_product-content-video_2024-11-25-142211.webm','developer@system','developer@system','2024-11-25 07:22:11','2024-11-25 07:22:11',1,1);
/*!40000 ALTER TABLE `product_content_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_contents`
--

DROP TABLE IF EXISTS `product_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_contents` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_contents_url_unique` (`url`),
  KEY `product_contents_product_id_foreign` (`product_id`),
  KEY `product_contents_created_by_index` (`created_by`),
  KEY `product_contents_updated_by_index` (`updated_by`),
  CONSTRAINT `product_contents_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_contents`
--

LOCK TABLES `product_contents` WRITE;
/*!40000 ALTER TABLE `product_contents` DISABLE KEYS */;
INSERT INTO `product_contents` VALUES ('9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf','9d8c82ff-5235-4912-b6a4-09c7e9f21554','Umeda Tomo R8 Smart Robotic Vacuum Cleaner with Mob Combo and Auto Empty Station','umeda-tomo-r8-smart-robotic-vacuum-cleaner-with-mob-combo-and-auto-empty-station','/p/umeda-tomo-r8-smart-robotic-vacuum-cleaner-with-mob-combo-and-auto-empty-station','/files/product-contents/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf/9d8c8437-a4aa-4b2f-949b-f2ef7c4a1aaf_product-content-image_2024-11-25-114313.webp','developer@system','developer@system','2024-11-22 09:39:52','2024-11-25 04:43:13',1),('9d92242f-9316-4ce7-a312-b9c9ddecbc73','9d9221c3-6cbd-4e89-8a87-7163601846bf','Umeda Waku White - UV-C Dust Mite Vacuum Cleaner ','umeda-waku-white-uv-c-dust-mite-vacuum-cleaner','/p/umeda-waku-white-uv-c-dust-mite-vacuum-cleaner','/files/product-contents/9d92242f-9316-4ce7-a312-b9c9ddecbc73/9d92242f-9316-4ce7-a312-b9c9ddecbc73_product-content-image_2024-11-25-114618.jpg','developer@system','developer@system','2024-11-25 04:46:18','2024-11-25 04:48:15',1),('9d924352-2700-4371-ab3c-aa1c755a460a','9d921a9d-b199-4162-a45b-1f550129a4d8','Besu - Bluetooth Speaker Table','besu-bluetooth-speaker-table','/p/besu-bluetooth-speaker-table','/files/product-contents//_product-content-image_2024-11-25-131322.jpg','developer@system','developer@system','2024-11-25 06:13:22','2024-11-25 06:13:22',1),('9d9243e9-f977-43d2-b3ca-3d24319e5bea','9d92188c-5b2f-4264-a521-69c753f53f2d','Air360 - Hepa 13 Filter Air Purifier','air360-hepa-13-filter-air-purifier','/p/air360-hepa-13-filter-air-purifier','/files/product-contents//_product-content-image_2024-11-25-131501.jpg','developer@system','developer@system','2024-11-25 06:15:01','2024-11-25 06:15:01',1),('9d9244fd-0195-4635-8368-f19ecb5b4eac','9d921dad-a34e-408a-9851-1b97123ce299','Omuni Steam Air Fryer Oven 30 IN 1 / Oven Listrik Kapasitas 25L','omuni-steam-air-fryer-oven-30-in-1-oven-listrik-kapasitas-25l','/p/omuni-steam-air-fryer-oven-30-in-1-oven-listrik-kapasitas-25l','/files/product-contents//_product-content-image_2024-11-25-131802.jpg','developer@system','developer@system','2024-11-25 06:18:02','2024-11-25 06:18:02',1),('9d924584-ccd9-4111-841b-a7d988579c52','9d921ce1-064b-4e4f-8284-42a48767af42','Genki - Digital Air Fryer Low Watt 650w 4 Liter 10in1','genki-digital-air-fryer-low-watt-650w-4-liter-10in1','/p/genki-digital-air-fryer-low-watt-650w-4-liter-10in1','/files/product-contents//_product-content-image_2024-11-25-131931.jpg','developer@system','developer@system','2024-11-25 06:19:31','2024-11-25 06:19:31',1),('9d92474d-617a-4245-b80f-34520752913c','9d921a55-b427-4326-9430-58538a3b8e68','Dehumidifier UDH1500 Serap Air dan Penyerap Kelembaban Udara','dehumidifier-udh1500-serap-air-dan-penyerap-kelembaban-udara','/p/dehumidifier-udh1500-serap-air-dan-penyerap-kelembaban-udara','/files/product-contents//_product-content-image_2024-11-25-132430.webp','developer@system','developer@system','2024-11-25 06:24:30','2024-11-25 06:24:30',1),('9d9247ea-a600-4e05-a735-870e1a80b5b9','9d921c9c-8acf-42ae-9f77-ba7484373589','Bru Mesin Kopi Multi Kapsul - Espresso Capsule Coffee Maker','bru-mesin-kopi-multi-kapsul-espresso-capsule-coffee-maker','/p/bru-mesin-kopi-multi-kapsul-espresso-capsule-coffee-maker','/files/product-contents//_product-content-image_2024-11-25-132613.webp','developer@system','developer@system','2024-11-25 06:26:13','2024-11-25 06:26:13',1),('9d9248de-70d5-4c11-9183-bd47968753a0','9d921d6f-3160-44b7-a843-6abc26691a08','Okome - Digital Low Carbo Rice Cooker','okome-digital-low-carbo-rice-cooker','/p/okome-digital-low-carbo-rice-cooker','/files/product-contents//_product-content-image_2024-11-25-132853.jpg','developer@system','developer@system','2024-11-25 06:28:53','2024-11-25 06:28:53',1),('9d924953-e27a-45fc-94d2-39087b184a79','9d921d26-4501-40a8-9269-fc76b4378869','Grind and Brew Mesin Kopi Otomatis 2in1 / Coffee Grinder / Coffee Maker / Drip Coffee','grind-and-brew-mesin-kopi-otomatis-2in1-coffee-grinder-coffee-maker-drip-coffee','/p/grind-and-brew-mesin-kopi-otomatis-2in1-coffee-grinder-coffee-maker-drip-coffee','/files/product-contents//_product-content-image_2024-11-25-133010.webp','developer@system','developer@system','2024-11-25 06:30:10','2024-11-25 06:30:10',1),('9d9249f6-650b-4416-854b-8014c0798637','9d92207d-6edf-403b-900e-380251e8ea31','Minito - Mini Desktop Vacuum Cleaner ','minito-mini-desktop-vacuum-cleaner','/p/minito-mini-desktop-vacuum-cleaner','/files/product-contents//_product-content-image_2024-11-25-133156.jpg','developer@system','developer@system','2024-11-25 06:31:56','2024-11-25 06:31:56',1),('9d924dc0-fe1e-4622-ba2b-101ddb9c0d0d','9d9220bd-a343-4dcc-8355-8606820bef7a','U-Stik Duo - Smart Stick Cordless Vacuum Cleaner','u-stik-duo-smart-stick-cordless-vacuum-cleaner','/p/u-stik-duo-smart-stick-cordless-vacuum-cleaner','/files/product-contents//_product-content-image_2024-11-25-134232.webp','developer@system','developer@system','2024-11-25 06:42:32','2024-11-25 06:42:32',1),('9d925aff-c546-44f8-9f97-c0fdcf13372f','9d922040-8cd0-4d93-b956-d55fa02be427','DX208E - Canister Vacuum Cleaner','dx208e-canister-vacuum-cleaner','/p/dx208e-canister-vacuum-cleaner','/files/product-contents/9d925aff-c546-44f8-9f97-c0fdcf13372f/9d925aff-c546-44f8-9f97-c0fdcf13372f_product-content-image_2024-11-25-142119.jpg','developer@system','developer@system','2024-11-25 07:19:34','2024-11-25 07:21:19',1);
/*!40000 ALTER TABLE `product_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category_first_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` decimal(15,2) NOT NULL,
  `availability` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `products_product_category_first_id_foreign` (`product_category_first_id`),
  KEY `products_availability_index` (`availability`),
  KEY `products_created_by_index` (`created_by`),
  KEY `products_updated_by_index` (`updated_by`),
  CONSTRAINT `products_product_category_first_id_foreign` FOREIGN KEY (`product_category_first_id`) REFERENCES `product_category_firsts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('9d8c82ff-5235-4912-b6a4-09c7e9f21554','9d921edb-16e9-4179-b9fd-354880275193','Tomo R8',0.00,'in-stock','/files/images/products/product_image-tomo_r8_2024-11-25-103528.webp','developer@system','developer@system','2024-11-22 09:36:27','2024-11-25 04:31:54',1),('9d92188c-5b2f-4264-a521-69c753f53f2d','9d91f131-e42a-4153-8f7e-65951df0ca9b','Air360',0.00,'in-stock','/files/images/products/product_image-air360_2024-11-25-111346.jpg','developer@system','developer@system','2024-11-25 04:13:46','2024-11-25 04:13:46',1),('9d921a55-b427-4326-9430-58538a3b8e68','9d91f131-e42a-4153-8f7e-65951df0ca9b','Dehumidifier UDH1500',0.00,'in-stock','/files/images/products/product_image-dehumidifier_udh1500_2024-11-25-111846.webp','developer@system','developer@system','2024-11-25 04:18:46','2024-11-25 04:18:46',1),('9d921a9d-b199-4162-a45b-1f550129a4d8','9d91f145-19ee-4f94-8fae-cf0644d8ff4d','Besu',0.00,'in-stock','/files/images/products/product_image-besu_2024-11-25-111933.jpg','developer@system','developer@system','2024-11-25 04:19:33','2024-11-25 04:19:33',1),('9d921c3e-c1c2-49f3-9bb2-75a5c2060dc8','9d91f156-ecc9-4fae-9028-e97c6dd64ef8','UTH700',0.00,'in-stock','/files/images/products/product_image-uth700_2024-11-25-112406.webp','developer@system','developer@system','2024-11-25 04:24:06','2024-11-25 04:24:06',1),('9d921c9c-8acf-42ae-9f77-ba7484373589','9d91f16b-daf8-40f7-a1b8-7f4ab583233c','Bru',0.00,'in-stock','/files/images/products/product_image-bru_2024-11-25-112508.webp','developer@system','developer@system','2024-11-25 04:25:08','2024-11-25 04:25:08',1),('9d921ce1-064b-4e4f-8284-42a48767af42','9d91f16b-daf8-40f7-a1b8-7f4ab583233c','Genki',0.00,'in-stock','/files/images/products/product_image-genki_2024-11-25-112552.webp','developer@system','developer@system','2024-11-25 04:25:52','2024-11-25 04:25:52',1),('9d921d26-4501-40a8-9269-fc76b4378869','9d91f16b-daf8-40f7-a1b8-7f4ab583233c','Grind & Brew',0.00,'in-stock','/files/images/products/product_image-grind_brew_2024-11-25-112638.webp','developer@system','developer@system','2024-11-25 04:26:38','2024-11-25 04:26:38',1),('9d921d6f-3160-44b7-a843-6abc26691a08','9d91f16b-daf8-40f7-a1b8-7f4ab583233c','Okome',0.00,'in-stock','/files/images/products/product_image-okome_2024-11-25-112726.jpg','developer@system','developer@system','2024-11-25 04:27:26','2024-11-25 04:27:26',1),('9d921dad-a34e-408a-9851-1b97123ce299','9d91f16b-daf8-40f7-a1b8-7f4ab583233c','Omuni',0.00,'in-stock','/files/images/products/product_image-omuni_2024-11-25-112807.webp','developer@system','developer@system','2024-11-25 04:28:07','2024-11-25 04:28:07',1),('9d921f66-fcb5-406d-a6ba-f70e6657a99c','9d921edb-16e9-4179-b9fd-354880275193','Tomo R2',0.00,'in-stock','/files/images/products/product_image-tomo_r2_2024-11-25-113256.jpg','developer@system','developer@system','2024-11-25 04:32:56','2024-11-25 04:32:56',1),('9d921fc2-1ebf-46ba-a613-29cd580781e7','9d921edb-16e9-4179-b9fd-354880275193','Tomo Zoom Laser',0.00,'in-stock','/files/images/products/product_image-tomo_zoom_laser_2024-11-25-113356.webp','developer@system','developer@system','2024-11-25 04:33:56','2024-11-25 04:33:56',1),('9d921ffa-27e2-4d82-9337-7dff69167ff9','9d921edb-16e9-4179-b9fd-354880275193','Tomo Zoom',0.00,'in-stock','/files/images/products/product_image-tomo_zoom_2024-11-25-113432.webp','developer@system','developer@system','2024-11-25 04:34:32','2024-11-25 04:34:32',1),('9d922040-8cd0-4d93-b956-d55fa02be427','9d91f194-0b61-4c88-9b29-71d5b246b324','DX208E',0.00,'in-stock','/files/images/products/product_image-dx208e_2024-11-25-113518.jpg','developer@system','developer@system','2024-11-25 04:35:18','2024-11-25 04:35:18',1),('9d92207d-6edf-403b-900e-380251e8ea31','9d91f194-0b61-4c88-9b29-71d5b246b324','Minito',0.00,'in-stock','/files/images/products/product_image-minito_2024-11-25-113558.jpg','developer@system','developer@system','2024-11-25 04:35:58','2024-11-25 04:35:58',1),('9d9220bd-a343-4dcc-8355-8606820bef7a','9d91f194-0b61-4c88-9b29-71d5b246b324','U-Stik Duo',0.00,'in-stock','/files/images/products/product_image-u_stik_duo_2024-11-25-113640.webp','developer@system','developer@system','2024-11-25 04:36:40','2024-11-25 04:36:40',1),('9d9220fb-6eed-40f6-a0aa-ab387bc8379c','9d91f194-0b61-4c88-9b29-71d5b246b324','U-Stik Cordless',0.00,'in-stock','/files/images/products/product_image-u_stik_cordless_2024-11-25-113721.jpg','developer@system','developer@system','2024-11-25 04:37:21','2024-11-25 04:37:21',1),('9d92213e-6e83-4876-8bed-6b7291e960e9','9d91f194-0b61-4c88-9b29-71d5b246b324','U-Stik Lite',0.00,'in-stock','/files/images/products/product_image-u_stik_lite_2024-11-25-113805.jpg','developer@system','developer@system','2024-11-25 04:38:05','2024-11-25 04:38:05',1),('9d9221c3-6cbd-4e89-8a87-7163601846bf','9d91f194-0b61-4c88-9b29-71d5b246b324','Waku White',0.00,'in-stock','/files/images/products/product_image-waku_white_2024-11-25-113932.jpg','developer@system','developer@system','2024-11-25 04:39:32','2024-11-25 04:39:32',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_cart_detail`
--

DROP TABLE IF EXISTS `sales_cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_cart_detail` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_cart_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_cart_detail_sales_cart_id_foreign` (`sales_cart_id`),
  KEY `sales_cart_detail_product_id_foreign` (`product_id`),
  KEY `sales_cart_detail_created_by_index` (`created_by`),
  KEY `sales_cart_detail_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_cart_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_cart_detail_sales_cart_id_foreign` FOREIGN KEY (`sales_cart_id`) REFERENCES `sales_carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_cart_detail`
--

LOCK TABLES `sales_cart_detail` WRITE;
/*!40000 ALTER TABLE `sales_cart_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_carts`
--

DROP TABLE IF EXISTS `sales_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_carts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_carts_session_id_foreign` (`session_id`),
  KEY `sales_carts_created_by_index` (`created_by`),
  KEY `sales_carts_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_carts_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_carts`
--

LOCK TABLES `sales_carts` WRITE;
/*!40000 ALTER TABLE `sales_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_invoices`
--

DROP TABLE IF EXISTS `sales_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_invoices` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_invoices_sales_order_id_foreign` (`sales_order_id`),
  KEY `sales_invoices_date_index` (`date`),
  KEY `sales_invoices_number_index` (`number`),
  KEY `sales_invoices_created_by_index` (`created_by`),
  KEY `sales_invoices_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_invoices_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_invoices`
--

LOCK TABLES `sales_invoices` WRITE;
/*!40000 ALTER TABLE `sales_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_order_detail`
--

DROP TABLE IF EXISTS `sales_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_order_detail` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_order_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_order_detail_sales_order_id_foreign` (`sales_order_id`),
  KEY `sales_order_detail_product_id_foreign` (`product_id`),
  KEY `sales_order_detail_created_by_index` (`created_by`),
  KEY `sales_order_detail_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_order_detail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_order_detail_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_order_detail`
--

LOCK TABLES `sales_order_detail` WRITE;
/*!40000 ALTER TABLE `sales_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_orders`
--

DROP TABLE IF EXISTS `sales_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_orders` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snap_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snap_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_orders_employee_id_foreign` (`employee_id`),
  KEY `sales_orders_customer_id_foreign` (`customer_id`),
  KEY `sales_orders_snap_url_index` (`snap_url`),
  KEY `sales_orders_snap_token_index` (`snap_token`),
  KEY `sales_orders_date_index` (`date`),
  KEY `sales_orders_number_index` (`number`),
  KEY `sales_orders_created_by_index` (`created_by`),
  KEY `sales_orders_updated_by_index` (`updated_by`),
  KEY `sales_orders_status_index` (`status`),
  CONSTRAINT `sales_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sales_orders_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_orders`
--

LOCK TABLES `sales_orders` WRITE;
/*!40000 ALTER TABLE `sales_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_payments`
--

DROP TABLE IF EXISTS `sales_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_payments` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_invoice_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `sales_payments_sales_invoice_id_foreign` (`sales_invoice_id`),
  KEY `sales_payments_date_index` (`date`),
  KEY `sales_payments_number_index` (`number`),
  KEY `sales_payments_created_by_index` (`created_by`),
  KEY `sales_payments_updated_by_index` (`updated_by`),
  CONSTRAINT `sales_payments_sales_invoice_id_foreign` FOREIGN KEY (`sales_invoice_id`) REFERENCES `sales_invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_payments`
--

LOCK TABLES `sales_payments` WRITE;
/*!40000 ALTER TABLE `sales_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`),
  CONSTRAINT `sessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('BcOrKRrbQbLNwnasXvZ7P2C4iBpQZTIGAj6S8GzW',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjVKV1VRQ3RjeHJRTnk3M0hwT3UwaVl1bjg4dzZITnY2UWRmNXZ3SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1732497532),('CQ6wJQWOOSL7qs9oO2xeEDruoDsn50jPvD56gRVP',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXhqTGF0U3FteGJic3dHc2UyanlNR0FTNHdJcVJGQVZiOXhLa01iMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly91bWVkYXN0b3JlLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1732500902);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-25 14:29:03
