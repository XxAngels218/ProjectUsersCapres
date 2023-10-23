CREATE DATABASE  IF NOT EXISTS `usuariosgobierno` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `usuariosgobierno`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: usuariosgobierno
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Servicios Legales','2023-10-24 02:47:03','2023-10-24 02:47:03'),(2,'Recursos Humanos','2023-10-24 02:47:03','2023-10-24 02:47:03'),(3,'Desarrollo Económico','2023-10-24 02:47:03','2023-10-24 02:47:03'),(4,'Finanzas','2023-10-24 02:47:03','2023-10-24 02:47:03'),(5,'Salud Pública','2023-10-24 02:47:03','2023-10-24 02:47:03'),(6,'Educación','2023-10-24 02:47:03','2023-10-24 02:47:03'),(7,'Planificación Urbana','2023-10-24 02:47:03','2023-10-24 02:47:03'),(8,'Medio Ambiente','2023-10-24 02:47:03','2023-10-24 02:47:03'),(9,'Informática','2023-10-24 02:47:03','2023-10-24 02:47:03');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (11,'2014_10_12_100000_create_password_resets_table',1),(12,'2019_08_19_000000_create_failed_jobs_table',1),(13,'2019_12_14_000001_create_personal_access_tokens_table',1),(14,'2023_10_23_201203_create_areas_table',1),(15,'2030_10_25_000000_create_users_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo_electronico` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_correo_electronico_unique` (`correo_electronico`),
  KEY `users_area_id_foreign` (`area_id`),
  CONSTRAINT `users_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Jerod','Kshlerin','M','Sudan','Washington','822 Lindgren Inlet\nJoannyborough, AZ 80863','1986-06-05','dorn@example.net',9,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(3,'Tomas','Corkery','F','Mauritania','North Carolina','North Carolina','1983-01-20','filiberto.thiel@example.com',9,'2023-10-24 02:47:03','2023-10-24 04:29:03'),(4,'Odie','Block','F','Peru','Louisiana','42817 Auer Manor Suite 029\nGaylordburgh, WY 31188-1424','1983-12-17','odavis@example.org',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(5,'Lolita','West','M','Cameroon','Connecticut','3680 Batz Grove\nSouth Jazmyn, TN 81881','1994-06-18','abbey.nicolas@example.com',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(6,'Eddie','Gerhold','M','Sweden','Vermont','467 Craig Fort Suite 229\nAufderharstad, KY 44147','1997-09-26','elnora.blanda@example.org',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(7,'Jaqueline','Koepp','F','Russian Federation','New York','531 Pfannerstill Rue Apt. 651\nNew Eva, TN 73707','2009-12-20','grady26@example.com',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(8,'Roma','Goldner','F','Honduras','Washington','30557 Malvina Port Apt. 615\nEast Hayley, NV 33421','1981-07-06','jtorphy@example.com',9,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(9,'Ona','Hilpert','M','Zambia','Wyoming','36010 Kuphal Corner Suite 449\nNew Ivoryburgh, NV 07897-3158','2009-09-19','schaefer.hellen@example.net',9,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(10,'Gladys','Wilkinson','F','Uruguay','Delaware','3067 Keeling Spur\nNorth Quincy, VA 49608-1953','2009-09-19','juanita24@example.net',9,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(11,'Brittany','Grant','F','Macedonia','West Virginia','99448 Buckridge Shores Apt. 080\nSouth Grantview, DC 64005-3643','2002-06-22','hbechtelar@example.org',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(12,'Bartholome','Gutmann','F','Azerbaijan','Montana','7765 Kennedi Bypass\nHeidenreichport, MN 22255','2014-09-13','arvid70@example.com',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(13,'Korey','Green','F','Colombia','Kansas','847 Kohler Light\nLake Johannside, CO 57899-7276','1971-02-08','lgerhold@example.com',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(14,'Aaron','Ward','M','Libyan Arab Jamahiriya','Rhode Island','248 Schaden Neck Suite 921\nNew Elissamouth, VT 41471-6437','2015-03-04','trudie53@example.com',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(15,'Shemar','Dare','F','Gambia','District of Columbia','306 Zieme Vista Apt. 950\nLillianbury, ME 40585-9197','2021-08-04','zpurdy@example.com',9,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(16,'Jany','Olson','M','Hungary','Alaska','752 Hettinger Garden\nStromanburgh, DE 75351','1998-11-08','reid.leuschke@example.net',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(17,'Aubrey','Turner','M','Azerbaijan','South Carolina','73923 Sanford Mission Suite 406\nHaleyfurt, WI 73079-0783','2017-06-15','jacobson.jewel@example.net',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(18,'Jessie','Olson','M','Papua New Guinea','District of Columbia','152 Lucile Stream\nLake Justenberg, NE 87941','1990-02-23','lking@example.org',9,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(19,'Pinkie','Larkin','M','Finland','Nebraska','239 Sterling Via\nAnthonystad, CO 16665','1980-06-23','kmayert@example.org',1,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(20,'Johnathon','Wolff','M','Macao','Nevada','6816 Stark Row\nClaudiemouth, MA 46507-7681','1982-06-15','marshall.skiles@example.net',9,'2023-10-24 02:47:03','2023-10-24 02:47:03'),(21,'Angel','Escobar','M','El Salvador','Morazan','dora alwood','2023-10-19','angelescobar4445@gmail.com',1,'2023-10-24 04:21:40','2023-10-24 04:21:40');
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

-- Dump completed on 2023-10-23 17:06:34
