-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce2025
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'clientes');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,33),(2,1,34),(3,1,35),(4,1,36),(5,1,37),(6,1,38),(7,1,39),(8,1,40);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Categoria',7,'add_categoria'),(26,'Can change Categoria',7,'change_categoria'),(27,'Can delete Categoria',7,'delete_categoria'),(28,'Can view Categoria',7,'view_categoria'),(29,'Can add Produto',8,'add_produto'),(30,'Can change Produto',8,'change_produto'),(31,'Can delete Produto',8,'delete_produto'),(32,'Can view Produto',8,'view_produto'),(33,'Can add pedido',9,'add_pedido'),(34,'Can change pedido',9,'change_pedido'),(35,'Can delete pedido',9,'delete_pedido'),(36,'Can view pedido',9,'view_pedido'),(37,'Can add Item Pedido',10,'add_itenspedido'),(38,'Can change Item Pedido',10,'change_itenspedido'),(39,'Can delete Item Pedido',10,'delete_itenspedido'),(40,'Can view Item Pedido',10,'view_itenspedido');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$O8S4OcKI0Q49NPOhyiKQg3$1YF5FwYfpd3tubSFokthekM1rQa7oBqRfdQ9j13xa+U=','2025-06-04 01:47:34.286290',1,'admin','','','admin@admin.com.br',1,1,'2025-05-14 00:34:18.295002');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_categoria`
--

DROP TABLE IF EXISTS `catalogo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_categoria`
--

LOCK TABLES `catalogo_categoria` WRITE;
/*!40000 ALTER TABLE `catalogo_categoria` DISABLE KEYS */;
INSERT INTO `catalogo_categoria` VALUES (1,'Mouse Óptico','mouse-optico'),(2,'Memória RAM','memoria-ram'),(3,'teclado mecanico','teclado-mecanico');
/*!40000 ALTER TABLE `catalogo_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_produto`
--

DROP TABLE IF EXISTS `catalogo_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_produto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `descricao` longtext NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `disponivel` tinyint(1) NOT NULL,
  `criado` datetime(6) NOT NULL,
  `atualizado` datetime(6) NOT NULL,
  `categoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `catalogo_produto_categoria_id_773a9958_fk_catalogo_categoria_id` (`categoria_id`),
  KEY `catalogo_produto_nome_54ffc60f` (`nome`),
  CONSTRAINT `catalogo_produto_categoria_id_773a9958_fk_catalogo_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `catalogo_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_produto`
--

LOCK TABLES `catalogo_produto` WRITE;
/*!40000 ALTER TABLE `catalogo_produto` DISABLE KEYS */;
INSERT INTO `catalogo_produto` VALUES (1,'Mouse 1','mouse-1','opif pioj dasm io fdopijpoiasdm pi sdiopjh fpiahs dpi sadfnfopsdnfponasdap',124.58,'produtos/2025-05-13/mouse1.jfif',1,'2025-05-14 01:04:42.979630','2025-05-14 01:04:42.979653',1),(2,'Mouse 2','mouse-2','aiopiodf ipoaisd jiopf opimasd pom ipoasdf pi aspdfoi miopf aio fiasdm ioasfdm iom asfdiom asfdiopm afsd',123.87,'produtos/mouse-2.webp',0,'2025-05-14 01:15:52.708547','2025-05-14 01:25:46.590396',1),(3,'Mouse 3','mouse-3','iopsioa eiopmlclçkx xklklcklçz chhiopappo pvidampoi va aoipjclçkxl paidpopdosf pxcz pizxcvj apoijpi osad p pa pvva',85.23,'produtos/mouse-3.jpg',1,'2025-05-14 01:23:25.479715','2025-05-14 01:23:25.479743',1),(4,'Mouse 4','mouse-4','dpoipoai dspasfijpfasd ipsdajpiofpoi asdpio asdf jiooispd  ippsdfpoi  isadfoip ipoasdfopi ppoifadsi ipo',74.32,'produtos/mouse-4.jpg',1,'2025-05-14 01:24:07.823567','2025-05-14 01:24:07.823594',1),(5,'Teclado Mecânico 1','teclado-mecanico-1','fasd asd asd asd asdf asdf asdf asdf asdf',254.12,'produtos/teclado-mecanico-1.png',0,'2025-05-14 01:24:47.659417','2025-05-14 01:25:46.591929',3),(6,'Teclaco Mecânico 2','teclaco-mecanico-2','dfadfa asd asd fasd asdfasd fsad asdf asd asd f',122.44,'produtos/teclaco-mecanico-2.webp',1,'2025-05-14 01:25:34.599152','2025-05-14 01:25:34.599175',3),(7,'Teclado Mecânico 3','teclado-mecanico-3','fasd tre tewr ryt ewr wer yewr ywery wer ywery wery wer',222.32,'produtos/teclado-mecanico-3.webp',1,'2025-05-14 01:26:26.521867','2025-05-14 01:26:26.521889',3),(8,'Memória RAM','memoria-ram','Memória iudioiasdo pi psdfoiopa sdfpuio asiodpf iaosdf iopas dfpio asdiofp masdpiofm asd',352.24,'produtos/memoria-ram.png',1,'2025-05-14 01:26:56.719113','2025-05-14 01:26:56.719143',2),(9,'Memória 2','memoria-2','fasdaas asdf wef aef asf asd asd asd asd',654.21,'produtos/memoria-2.png',1,'2025-05-14 01:27:20.096868','2025-05-14 01:27:20.096890',2),(10,'Memória 3','memoria-3','gasdgasd asd asd asd gad gasdg asd gasd',245.54,'',1,'2025-05-14 01:27:38.261584','2025-05-14 01:27:38.261628',2);
/*!40000 ALTER TABLE `catalogo_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-05-14 00:35:19.557048','1','Mouse Óptico',1,'[{\"added\": {}}]',7,1),(2,'2025-05-14 00:35:30.050575','2','Memória RAM',1,'[{\"added\": {}}]',7,1),(3,'2025-05-14 00:35:53.665242','3','teclado mecanico',1,'[{\"added\": {}}]',7,1),(4,'2025-05-14 01:04:42.981550','1','Mouse 1',1,'[{\"added\": {}}]',8,1),(5,'2025-05-14 01:15:52.710150','2','Mouse 2',1,'[{\"added\": {}}]',8,1),(6,'2025-05-14 01:23:25.480736','3','Mouse 3',1,'[{\"added\": {}}]',8,1),(7,'2025-05-14 01:24:07.824778','4','Mouse 4',1,'[{\"added\": {}}]',8,1),(8,'2025-05-14 01:24:47.660349','5','Teclado Mecânico 1',1,'[{\"added\": {}}]',8,1),(9,'2025-05-14 01:25:34.600146','6','Teclaco Mecânico 2',1,'[{\"added\": {}}]',8,1),(10,'2025-05-14 01:25:46.591319','2','Mouse 2',2,'[{\"changed\": {\"fields\": [\"Disponivel\"]}}]',8,1),(11,'2025-05-14 01:25:46.592656','5','Teclado Mecânico 1',2,'[{\"changed\": {\"fields\": [\"Disponivel\"]}}]',8,1),(12,'2025-05-14 01:26:26.522857','7','Teclado Mecânico 3',1,'[{\"added\": {}}]',8,1),(13,'2025-05-14 01:26:56.720162','8','Memória RAM',1,'[{\"added\": {}}]',8,1),(14,'2025-05-14 01:27:20.097944','9','Memória 2',1,'[{\"added\": {}}]',8,1),(15,'2025-05-14 01:27:38.262860','10','Memória 3',1,'[{\"added\": {}}]',8,1),(16,'2025-06-04 01:49:05.683067','1','clientes',1,'[{\"added\": {}}]',3,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'catalogo','categoria'),(8,'catalogo','produto'),(5,'contenttypes','contenttype'),(10,'pedidos','itenspedido'),(9,'pedidos','pedido'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-14 00:24:04.549434'),(2,'auth','0001_initial','2025-05-14 00:24:05.212794'),(3,'admin','0001_initial','2025-05-14 00:24:05.384709'),(4,'admin','0002_logentry_remove_auto_add','2025-05-14 00:24:05.392016'),(5,'admin','0003_logentry_add_action_flag_choices','2025-05-14 00:24:05.399666'),(6,'contenttypes','0002_remove_content_type_name','2025-05-14 00:24:05.524821'),(7,'auth','0002_alter_permission_name_max_length','2025-05-14 00:24:05.606539'),(8,'auth','0003_alter_user_email_max_length','2025-05-14 00:24:05.636915'),(9,'auth','0004_alter_user_username_opts','2025-05-14 00:24:05.645099'),(10,'auth','0005_alter_user_last_login_null','2025-05-14 00:24:05.717265'),(11,'auth','0006_require_contenttypes_0002','2025-05-14 00:24:05.721830'),(12,'auth','0007_alter_validators_add_error_messages','2025-05-14 00:24:05.729038'),(13,'auth','0008_alter_user_username_max_length','2025-05-14 00:24:05.813866'),(14,'auth','0009_alter_user_last_name_max_length','2025-05-14 00:24:05.898416'),(15,'auth','0010_alter_group_name_max_length','2025-05-14 00:24:05.920926'),(16,'auth','0011_update_proxy_permissions','2025-05-14 00:24:05.929046'),(17,'auth','0012_alter_user_first_name_max_length','2025-05-14 00:24:06.010945'),(18,'catalogo','0001_initial','2025-05-14 00:24:06.156558'),(19,'sessions','0001_initial','2025-05-14 00:24:06.196259'),(20,'catalogo','0002_alter_produto_imagem','2025-06-04 01:40:38.841165'),(21,'pedidos','0001_initial','2025-06-04 01:40:39.244716');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bl1wr6ko6kl9352u6sjp2l8surnn2c6h','.eJxljMEOgjAQRP9lz6ZhW1ooR-9-A1m2i6AGtMCJ8O-WhMQQL3OY92ZWYIozVCtgtudnoWHuAwWBCrMLvKPwCBXo3Cqbw3YB86f9rNIqbWBLVk3L3NXLJLHuQyIIp64hfsqwg_Cg4T4qHoc59o3aFXXQSd3GIK_r4Z4OOpq6tPZtqVnnRWnYeUFy2mCwXoJQ1tjCUJa33jeu9bq1QsaxIDKiY2vSgGH7AvidUOU:1uMdE6:MI1qR-qHO6yweTWAJJJpWmFkCOGSlVqVHTLuGl7dQpc','2025-06-18 01:47:34.289852');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_itenspedido`
--

DROP TABLE IF EXISTS `pedidos_itenspedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_itenspedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `preco_unit` decimal(10,2) NOT NULL,
  `quantidade` smallint unsigned NOT NULL,
  `produto_id` bigint NOT NULL,
  `pedido_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_itenspedido_produto_id_2024a0e6_fk_catalogo_produto_id` (`produto_id`),
  KEY `pedidos_itenspedido_pedido_id_6e9ba3f5_fk_pedidos_pedido_id` (`pedido_id`),
  CONSTRAINT `pedidos_itenspedido_pedido_id_6e9ba3f5_fk_pedidos_pedido_id` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos_pedido` (`id`),
  CONSTRAINT `pedidos_itenspedido_produto_id_2024a0e6_fk_catalogo_produto_id` FOREIGN KEY (`produto_id`) REFERENCES `catalogo_produto` (`id`),
  CONSTRAINT `pedidos_itenspedido_chk_1` CHECK ((`quantidade` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_itenspedido`
--

LOCK TABLES `pedidos_itenspedido` WRITE;
/*!40000 ALTER TABLE `pedidos_itenspedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_itenspedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_pedido`
--

DROP TABLE IF EXISTS `pedidos_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `criado` datetime(6) NOT NULL,
  `atualizado` datetime(6) NOT NULL,
  `pago` tinyint(1) NOT NULL,
  `cliente_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_pedido_cliente_id_84f4fc73_fk_auth_user_id` (`cliente_id`),
  CONSTRAINT `pedidos_pedido_cliente_id_84f4fc73_fk_auth_user_id` FOREIGN KEY (`cliente_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_pedido`
--

LOCK TABLES `pedidos_pedido` WRITE;
/*!40000 ALTER TABLE `pedidos_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-03 22:16:57
