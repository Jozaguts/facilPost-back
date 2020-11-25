-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: api
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2020_11_21_055302_create_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'authToken','79d52d191cf54e0971dfd187e8829f31826d63b65518f229eeb89be6a65ebdf2','[\"*\"]','2020-11-25 07:19:31','2020-11-22 00:13:21','2020-11-25 07:19:31'),(2,'App\\Models\\User',5,'authToken','d93fe515a9447498de5d58fbb4fc7431b01c319e487599db0e67509755ba1257','[\"*\"]',NULL,'2020-11-24 06:15:52','2020-11-24 06:15:52'),(3,'App\\Models\\User',6,'authToken','2d87ee4065b96d614469539c7aaad20cf85f02707163b8c45d4e14160481fcaf','[\"*\"]',NULL,'2020-11-24 07:13:31','2020-11-24 07:13:31'),(4,'App\\Models\\User',7,'authToken','2202fc284c695d0aee7948e3fb55b21c54e0046bf651552bf8d73635eea10824','[\"*\"]',NULL,'2020-11-24 07:23:14','2020-11-24 07:23:14'),(5,'App\\Models\\User',8,'authToken','7fae2af4bf9d2b98e1df258ff369b825a0badf69f9b00664e1ada586ade11380','[\"*\"]',NULL,'2020-11-24 08:02:06','2020-11-24 08:02:06'),(6,'App\\Models\\User',9,'authToken','f32f4512bfb4113af06f1c23d10194b1f41491864ca934842a5e6dcf1feaab50','[\"*\"]',NULL,'2020-11-24 08:04:31','2020-11-24 08:04:31'),(7,'App\\Models\\User',9,'authToken','fc1a4b60bbe5e6bbd3e8241aa85da5b63d9f2f88366b0a60385425a000bcd617','[\"*\"]',NULL,'2020-11-24 08:04:41','2020-11-24 08:04:41'),(8,'App\\Models\\User',9,'authToken','a330fa52fae663f6db07009ab3a79bf80bc0c15d7265932314741817fec06205','[\"*\"]',NULL,'2020-11-24 08:11:45','2020-11-24 08:11:45'),(9,'App\\Models\\User',10,'authToken','992bd5d92b26e87b6637f0dad5a0ea8218656dd3547596e91beaa4355a02e4d1','[\"*\"]',NULL,'2020-11-24 09:25:21','2020-11-24 09:25:21'),(10,'App\\Models\\User',10,'authToken','73e19321b5637953cffb7ae2796af055e08999995338e356ce2e8c43aa3ed3e7','[\"*\"]',NULL,'2020-11-24 09:25:55','2020-11-24 09:25:55'),(11,'App\\Models\\User',10,'authToken','c80435b76705aaf180dc3242ec1e0e62a1767fbfd0e6f4c15e09cac1f331681a','[\"*\"]',NULL,'2020-11-24 09:26:48','2020-11-24 09:26:48'),(12,'App\\Models\\User',10,'authToken','56dad03586c50ad24a26beefb6dde64e373a6818cbe14757f17e7bc5a6450ff0','[\"*\"]',NULL,'2020-11-24 09:27:15','2020-11-24 09:27:15'),(13,'App\\Models\\User',10,'authToken','d26bad14a89181cf1ef5fe3f0bccf6338f3ac82d4332b34bd7cf47d1b2bcb65a','[\"*\"]',NULL,'2020-11-24 09:28:24','2020-11-24 09:28:24'),(14,'App\\Models\\User',10,'authToken','ea16f57efd2447150110f56ac85b1bb6a14b0dfa750579594c1ed5f2c624f3ef','[\"*\"]',NULL,'2020-11-24 09:31:12','2020-11-24 09:31:12'),(15,'App\\Models\\User',10,'authToken','a6e9a079433c93ab21173c16a6687ddef436d3cd009cdf8d3685de99f7be968c','[\"*\"]',NULL,'2020-11-24 09:31:38','2020-11-24 09:31:38'),(16,'App\\Models\\User',10,'authToken','a7fdc107e10f504333a7364129a0ed49f3b8919ce65c11a5bd8e0e40145234f9','[\"*\"]',NULL,'2020-11-24 09:50:38','2020-11-24 09:50:38'),(17,'App\\Models\\User',10,'authToken','ae4fd9209bc08175e7575fe05240b3f1631503ae5927415a23d3f643bf4cbe87','[\"*\"]',NULL,'2020-11-24 10:22:34','2020-11-24 10:22:34'),(18,'App\\Models\\User',10,'authToken','7aaf2410b0ecb702acb7580c44607c0778ebc5990c8d89625869c57fe8378d57','[\"*\"]',NULL,'2020-11-24 10:22:48','2020-11-24 10:22:48'),(19,'App\\Models\\User',10,'authToken','765a377f907780442a75e074cfe4aabe3d11d9dadc9b646cb81ed6786486dcdf','[\"*\"]',NULL,'2020-11-24 10:46:07','2020-11-24 10:46:07'),(20,'App\\Models\\User',10,'authToken','c5f03688f461ff40263aefc787c55f493d237fc5604fa9695cfd161e8222d3d0','[\"*\"]',NULL,'2020-11-24 10:47:05','2020-11-24 10:47:05'),(21,'App\\Models\\User',10,'authToken','6d3afa096f316c25bb0a2013e12dfeda3500079db9a9f27827b84250dca66d21','[\"*\"]',NULL,'2020-11-24 10:47:13','2020-11-24 10:47:13'),(22,'App\\Models\\User',10,'authToken','71a3da8336dca7e393f900f5b41c0dfa7152567d33c5134cefacea316961aeec','[\"*\"]',NULL,'2020-11-24 21:34:08','2020-11-24 21:34:08'),(23,'App\\Models\\User',10,'authToken','f19ea0211231bc4344eee5fe652e4188f515881072db7e2cc02cbb5bbe10eb5f','[\"*\"]',NULL,'2020-11-24 21:46:00','2020-11-24 21:46:00'),(24,'App\\Models\\User',10,'authToken','490e09137da8ac25571479485df36ab6f2a1bc4ed8ca4a88a660923a913bf53e','[\"*\"]',NULL,'2020-11-24 22:08:38','2020-11-24 22:08:38'),(25,'App\\Models\\User',10,'authToken','2201c8ec5d073bbc39861838d5c3a391095c72cf4f99a90b75f5a027c7a87465','[\"*\"]',NULL,'2020-11-24 22:12:21','2020-11-24 22:12:21'),(26,'App\\Models\\User',1,'authToken','5e8327fc2d0363e2de4d523f00dd2de4bf7a0ae760ffdda0c9a0977d431750c2','[\"*\"]',NULL,'2020-11-25 00:21:39','2020-11-25 00:21:39'),(27,'App\\Models\\User',1,'authToken','4876b575d7e8509d9f4bb658168e2f526cec34594115c9193a208bbec8510131','[\"*\"]',NULL,'2020-11-25 00:22:09','2020-11-25 00:22:09'),(28,'App\\Models\\User',10,'authToken','54c377e089fcea021accd8f20b7599603739b993af251a6b343ca3d63021d6a3','[\"*\"]','2020-11-25 06:05:44','2020-11-25 03:57:13','2020-11-25 06:05:44'),(29,'App\\Models\\User',10,'authToken','7449fdb3432c4453558683e445829f2a127b01c74d45b9ae4c57a0de3b49a6e6','[\"*\"]','2020-11-25 08:48:42','2020-11-25 06:20:02','2020-11-25 08:48:42'),(30,'App\\Models\\User',10,'authToken','d8872f235809357b839561b9f7ac2efe06231a542d4856ea08e86849aa208437','[\"*\"]',NULL,'2020-11-25 08:49:28','2020-11-25 08:49:28');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` decimal(5,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('test',8.00,7,'public/images/headline Linkedin_1606267513.png',1,'2020-11-25 08:32:03','2020-11-21 23:24:27','2020-11-25 08:32:03'),('maxime',288.00,71,'https://via.placeholder.com/320x480.png/00bbaa?text=ad',2,'2020-11-22 02:10:35','2020-11-21 23:24:27','2020-11-22 02:10:35'),('dolor',278.00,16,'https://via.placeholder.com/320x480.png/00dd00?text=odit',3,'2020-11-22 01:02:34','2020-11-21 23:24:27','2020-11-22 01:02:34'),('inventore',330.00,74,'https://via.placeholder.com/320x480.png/009900?text=atque',4,'2020-11-22 01:04:17','2020-11-21 23:24:27','2020-11-22 01:04:17'),('TEST',100.00,100,'public/images/Colorful Business Data General Linkedin Banner_1606271111.png',5,'2020-11-25 08:33:35','2020-11-21 23:24:27','2020-11-25 08:33:35'),('TEST',235.00,60,'public/images/headline Linkedin_1606272117.png',6,'2020-11-25 08:47:57','2020-11-21 23:24:27','2020-11-25 08:47:57'),('sasasas',319.00,75,'https://via.placeholder.com/320x480.png/0099ff?text=quibusdam',7,'2020-11-25 08:48:27','2020-11-21 23:24:27','2020-11-25 08:48:27'),('reprehenderit',244.00,74,'https://via.placeholder.com/320x480.png/00aa99?text=omnis',8,'2020-11-25 08:48:33','2020-11-21 23:24:27','2020-11-25 08:48:33'),('est',249.00,40,'https://via.placeholder.com/320x480.png/0099aa?text=nostrum',9,'2020-11-25 08:48:36','2020-11-21 23:24:27','2020-11-25 08:48:36'),('quod',445.00,33,'https://via.placeholder.com/320x480.png/00ddff?text=cupiditate',10,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('facere',169.00,3,'https://via.placeholder.com/320x480.png/005522?text=sint',11,'2020-11-25 08:48:42','2020-11-21 23:24:27','2020-11-25 08:48:42'),('excepturi',293.00,54,'https://via.placeholder.com/320x480.png/005588?text=officia',12,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('temporibus',394.00,36,'https://via.placeholder.com/320x480.png/00ff11?text=quod',13,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('distinctio',415.00,31,'https://via.placeholder.com/320x480.png/00dd22?text=perferendis',14,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('nihil',345.00,48,'https://via.placeholder.com/320x480.png/000011?text=ratione',15,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('consequatur',134.00,50,'https://via.placeholder.com/320x480.png/00cc55?text=eos',16,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('praesentium',402.00,0,'https://via.placeholder.com/320x480.png/006699?text=incidunt',17,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('sed',485.00,13,'https://via.placeholder.com/320x480.png/0066ff?text=quia',18,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('architecto',274.00,29,'https://via.placeholder.com/320x480.png/00cc88?text=quis',19,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('minus',334.00,74,'https://via.placeholder.com/320x480.png/00ccff?text=iste',20,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('veniam',494.00,51,'https://via.placeholder.com/320x480.png/005599?text=repellendus',21,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('eos',203.00,73,'https://via.placeholder.com/320x480.png/00ffcc?text=quia',22,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('rem',491.00,71,'https://via.placeholder.com/320x480.png/00bb33?text=iusto',23,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('quisquam',294.00,40,'https://via.placeholder.com/320x480.png/004422?text=qui',24,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('et',200.00,0,'https://via.placeholder.com/320x480.png/003333?text=occaecati',25,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('exercitationem',115.00,58,'https://via.placeholder.com/320x480.png/0044ee?text=sed',26,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('ut',229.00,26,'https://via.placeholder.com/320x480.png/0099ee?text=in',27,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('dolores',491.00,53,'https://via.placeholder.com/320x480.png/00ccee?text=exercitationem',28,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('et',219.00,47,'https://via.placeholder.com/320x480.png/009999?text=ut',29,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('accusamus',379.00,10,'https://via.placeholder.com/320x480.png/00bb22?text=exercitationem',30,NULL,'2020-11-21 23:24:27','2020-11-21 23:24:27'),('test',20.00,20,'test',31,NULL,'2020-11-22 00:16:32','2020-11-22 00:16:32'),('test',20.00,20,'test',32,NULL,'2020-11-22 01:01:19','2020-11-22 01:01:19'),('test2',202.00,202,'test2',33,NULL,'2020-11-22 01:01:41','2020-11-22 01:01:41'),('testFetch',20.30,10,'https://test.com',34,NULL,'2020-11-22 01:45:13','2020-11-22 01:45:13'),('testFetch',20.30,10,'https://test.com',35,NULL,'2020-11-22 01:45:51','2020-11-22 01:45:51'),('testFetch',20.30,10,'https://test.com',36,NULL,'2020-11-22 01:45:53','2020-11-22 01:45:53'),('testFetch',20.30,10,'https://test.com',37,NULL,'2020-11-22 01:45:57','2020-11-22 01:45:57'),('testFetch',20.30,10,'https://test.com',38,NULL,'2020-11-22 01:45:58','2020-11-22 01:45:58'),('testFetch',20.30,10,'https://test.com',39,NULL,'2020-11-22 01:46:02','2020-11-22 01:46:02'),('testFetch',20.30,10,'https://test.com',40,NULL,'2020-11-22 01:46:06','2020-11-22 01:46:06'),('testFetch',20.30,10,'https://test.com',41,NULL,'2020-11-22 01:46:19','2020-11-22 01:46:19'),('testFetch',20.30,10,'https://test.com',42,NULL,'2020-11-22 01:46:25','2020-11-22 01:46:25'),('testFetch',20.30,10,'https://test.com',43,NULL,'2020-11-22 01:46:29','2020-11-22 01:46:29'),('testFetch',20.30,10,'https://test.com',44,NULL,'2020-11-22 01:46:30','2020-11-22 01:46:30'),('testFetch',20.30,10,'https://test.com',45,NULL,'2020-11-22 01:47:46','2020-11-22 01:47:46'),('testFetch',20.30,10,'https://test.com',46,NULL,'2020-11-22 01:47:48','2020-11-22 01:47:48'),('testFetch',20.30,10,'https://test.com',47,NULL,'2020-11-22 01:47:52','2020-11-22 01:47:52'),('testFetch',20.30,10,'https://test.com',48,NULL,'2020-11-22 01:50:47','2020-11-22 01:50:47'),('testFetch',20.30,10,'https://test.com',49,NULL,'2020-11-22 01:51:39','2020-11-22 01:51:39'),('testFetch',20.30,10,'https://test.com',50,NULL,'2020-11-22 01:51:53','2020-11-22 01:51:53'),('testFetch',20.30,10,'https://test.com',51,NULL,'2020-11-22 01:51:57','2020-11-22 01:51:57'),('testFetch',20.30,10,'https://test.com',52,NULL,'2020-11-22 01:51:57','2020-11-22 01:51:57'),('testFetch',20.30,10,'https://test.com',53,NULL,'2020-11-22 01:52:02','2020-11-22 01:52:02'),('testFetch',20.30,10,'https://test.com',54,NULL,'2020-11-22 01:52:05','2020-11-22 01:52:05'),('testFetch',20.30,10,'https://test.com',55,NULL,'2020-11-22 01:52:35','2020-11-22 01:52:35'),('testFetch',20.30,10,'https://test.com',56,NULL,'2020-11-22 01:53:10','2020-11-22 01:53:10'),('testFetch',20.30,10,'https://test.com',57,NULL,'2020-11-22 01:53:12','2020-11-22 01:53:12'),('testFetch',20.30,10,'https://test.com',58,NULL,'2020-11-22 01:53:14','2020-11-22 01:53:14'),('testFetch',20.30,10,'https://test.com',59,NULL,'2020-11-22 01:53:31','2020-11-22 01:53:31'),('testFetch',20.30,10,'https://test.com',60,NULL,'2020-11-22 01:53:34','2020-11-22 01:53:34'),('testFetch',20.30,10,'https://test.com',61,NULL,'2020-11-22 01:53:39','2020-11-22 01:53:39'),('testFetch',20.30,10,'https://test.com',62,NULL,'2020-11-22 01:53:41','2020-11-22 01:53:41'),('testFetch',20.30,10,'https://test.com',63,NULL,'2020-11-22 01:59:07','2020-11-22 01:59:07'),('testFetch',20.30,10,'https://test.com',64,NULL,'2020-11-22 01:59:10','2020-11-22 01:59:10'),('testFetch',20.30,10,'https://test.com',65,NULL,'2020-11-22 02:00:41','2020-11-22 02:00:41'),('testFetch',20.30,10,'https://test.com',66,NULL,'2020-11-22 02:00:46','2020-11-22 02:00:46'),('testFetch',20.30,10,'https://test.com',67,NULL,'2020-11-22 02:00:49','2020-11-22 02:00:49'),('testFetch',20.30,10,'https://test.com',68,NULL,'2020-11-22 02:00:50','2020-11-22 02:00:50'),('testFetch',20.30,10,'https://test.com',69,NULL,'2020-11-22 02:00:52','2020-11-22 02:00:52'),('testFetch',20.30,10,'https://test.com',70,NULL,'2020-11-22 02:00:57','2020-11-22 02:00:57'),('testFetch',20.30,10,'https://test.com',71,NULL,'2020-11-22 02:01:10','2020-11-22 02:01:10'),('testFetch',20.30,10,'https://test.com',72,NULL,'2020-11-22 02:01:18','2020-11-22 02:01:18'),('testFetch',20.30,10,'https://test.com',73,NULL,'2020-11-22 02:01:21','2020-11-22 02:01:21'),('testFetch',20.30,10,'https://test.com',74,NULL,'2020-11-22 02:01:39','2020-11-22 02:01:39'),('testFetch',20.30,10,'https://test.com',75,NULL,'2020-11-22 02:01:42','2020-11-22 02:01:42'),('testFetch',20.30,10,'https://test.com',76,NULL,'2020-11-22 02:01:45','2020-11-22 02:01:45'),('testFetch',20.30,10,'https://test.com',77,NULL,'2020-11-22 02:01:51','2020-11-22 02:01:51'),('testFetch',20.30,10,'https://test.com',78,NULL,'2020-11-22 02:01:53','2020-11-22 02:01:53'),('testFetch',20.30,10,'https://test.com',79,NULL,'2020-11-22 02:01:56','2020-11-22 02:01:56'),('testFetch',20.30,10,'https://test.com',80,NULL,'2020-11-22 02:02:01','2020-11-22 02:02:01'),('testFetch',20.30,10,'https://test.com',81,NULL,'2020-11-22 02:02:18','2020-11-22 02:02:18'),('testFetch',20.30,10,'https://test.com',82,NULL,'2020-11-22 02:02:39','2020-11-22 02:02:39'),('testFetch',20.30,10,'https://test.com',83,NULL,'2020-11-22 02:02:56','2020-11-22 02:02:56'),('test2',202.00,0,'https://fakeimg.pl/350x400/',84,NULL,'2020-11-23 22:21:34','2020-11-23 22:21:34'),('test2',202.00,0,'https://fakeimg.pl/350x400/',85,NULL,'2020-11-24 11:42:38','2020-11-24 11:42:38');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sagit Gutiérrez','admin@example.com','2020-11-21 23:24:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BafAL66GP4','2020-11-21 23:24:27','2020-11-21 23:24:27'),(2,'Dejon Wolf','tillman.consuelo@example.net','2020-11-21 23:24:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BNfeWRMc1T','2020-11-21 23:24:27','2020-11-21 23:24:27'),(3,'Freda Mayer','jacobs.jerod@example.com','2020-11-21 23:24:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','A7UAeeGlW2','2020-11-21 23:24:27','2020-11-21 23:24:27'),(4,'Mr. Orion Rosenbaum','roslyn.ledner@example.org','2020-11-21 23:24:27','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pzgnFbGQpk','2020-11-21 23:24:27','2020-11-21 23:24:27'),(5,'Jose Sagit','jozaguts@gmail.com',NULL,'password',NULL,'2020-11-24 06:15:52','2020-11-24 06:15:52'),(6,'Jose Sagit','jozagut2s@gmail.com',NULL,'eeeeeee',NULL,'2020-11-24 07:13:31','2020-11-24 07:13:31'),(7,'Jose Sagit','jozagsuts@gmail.com',NULL,'s',NULL,'2020-11-24 07:23:14','2020-11-24 07:23:14'),(8,'Jose Sagit','jozaguts22@gmail.com',NULL,'password',NULL,'2020-11-24 08:02:06','2020-11-24 08:02:06'),(9,'Jose Sagit','jozagutssss@gmail.com',NULL,'$2y$10$LSiUvxhSVUgFtEESULiCcOuxxDyt7tgRk3JU6LL3fGPCLGiZCzmG.',NULL,'2020-11-24 08:04:31','2020-11-24 08:04:31'),(10,'Jose Sagit','jozaguts3@gmail.com',NULL,'$2y$10$uwiPqwTYjRdVFLpjPmKua.AaVl7GIvSb1R4owCh/Mk3ijw8WS.ko.',NULL,'2020-11-24 09:25:21','2020-11-24 09:25:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'api'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-24 20:56:16
