# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.26)
# Database: gyapom_cms
# Generation Time: 2017-12-27 18:10:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,NULL,1,'Category 1','category-1','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(2,NULL,1,'Category 2','category-2','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(3,NULL,1,'home-page','home-page','2016-12-29 15:40:05','2016-12-29 15:40:05'),
	(4,NULL,1,'general-page','general-page','2016-12-29 15:40:05','2016-12-29 15:40:05');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`)
VALUES
	(1,'Khululekani','test@yahoo.co.uk','this is a test','2016-12-30 17:22:07','2016-12-30 17:22:07'),
	(2,'Khululekani','test@yahoo.co.uk','this is a test','2016-12-30 17:27:45','2016-12-30 17:27:45'),
	(3,'Khululekani','sdfsdfsdfsd','sfsdf','2016-12-30 20:26:47','2016-12-30 20:26:47'),
	(4,'Khululekani','sdfsdfsdfsd','sfsdf','2016-12-30 20:36:08','2016-12-30 20:36:08'),
	(5,'Khululekani Mkhonza','ks.mkhonza@gmail.com','This is a test message lets hope this will persist.\r\n\r\nThanks,','2016-12-30 20:37:51','2016-12-30 20:37:51'),
	(6,'Khululekani Mkhonza','ks.mkhonza@gmail.com','This is a test message lets hope this will persist.\r\n\r\nThanks,','2016-12-30 20:49:59','2016-12-30 20:49:59'),
	(7,'Khululekani Mkhonza','ks.mkhonza@gmail.com','This is a test message lets hope this will persist.\r\n\r\nThanks,','2016-12-30 20:50:51','2016-12-30 20:50:51'),
	(8,'Khululekani Mkhonza','ks.mkhonza@gmail.com','This is a test message lets hope this will persist.\r\n\r\nThanks,','2016-12-30 20:51:14','2016-12-30 20:51:14'),
	(9,'Khululekani Mkhonza','ks.mkhonza@gmail.com','This is a test message lets hope this will persist.\r\n\r\nThanks,','2016-12-30 20:52:07','2016-12-30 20:52:07'),
	(10,'Karen Thebe','karen@gmail.com','Goodbye paperwork, Hello Gyapom!\r\nSecure 24hr access point of care at the palm of your hand. Goodbye paperwork, Hello Gyapom!\r\nSecure 24hr access point of care at the palm of your hand. Goodbye paperwork, Hello Gyapom!\r\nSecure 24hr access point of care at the palm of your hand.','2016-12-30 20:54:46','2016-12-30 20:54:46'),
	(11,'Nkululeko Makhethu','karenthebe@yahoo.co.uk','Goodbye paperwork, Hello Gyapom!\r\nSecure 24hr access point of care at the palm of your hand.','2016-12-30 21:08:53','2016-12-30 21:08:53'),
	(12,'Nkululeko Makhethu','karenthebe@yahoo.co.uk','Goodbye paperwork, Hello Gyapom!\r\nSecure 24hr access point of care at the palm of your hand.','2016-12-30 21:18:10','2016-12-30 21:18:10'),
	(13,'Nkululeko Makhethu','karenthebe@yahoo.co.uk','Goodbye paperwork, Hello Gyapom!\r\nSecure 24hr access point of care at the palm of your hand.','2016-12-30 21:19:57','2016-12-30 21:19:57'),
	(14,'Nkululeko Makhethu','karenthebe@yahoo.co.uk','Goodbye paperwork, Hello Gyapom!\r\nSecure 24hr access point of care at the palm of your hand.','2016-12-30 21:21:03','2016-12-30 21:21:03'),
	(15,'Nkululeko Makhethu','karenthebe@yahoo.co.uk','Goodbye paperwork, Hello Gyapom!\r\nSecure 24hr access point of care at the palm of your hand.','2016-12-30 21:30:11','2016-12-30 21:30:11'),
	(16,'Nkululeko Makhethu','karenthebe@yahoo.co.uk','Goodbye paperwork, Hello Gyapom!\r\nSecure 24hr access point of care at the palm of your hand.','2016-12-30 21:32:15','2016-12-30 21:32:15'),
	(17,'Karen Mkhithika','karenthebe@gmail.com','This is another test message chic lets see how this goes.\r\n','2016-12-30 21:36:24','2016-12-30 21:36:24'),
	(18,'Karen Mkhithika','karenthebe@gmail.com','This is another test message chic lets see how this goes.\r\n','2016-12-30 21:44:50','2016-12-30 21:44:50'),
	(19,'Test','sdfsdfsdf','sdfsdfsdfsdf','2016-12-31 00:10:40','2016-12-31 00:10:40'),
	(20,'Alwande Rorisang','alwande@gmail.com','Real time monitoring Our infrastructure is entirely scalable with the capacity to process enormous Web and IM traffic with no discernable delay during major peak periods. This ensures that Service Users get the the best available quality and their information is hardly compromised in the process.','2016-12-31 09:13:58','2016-12-31 09:13:58');

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`)
VALUES
	(1,1,'id','PRI','ID',1,0,1,1,0,1,''),
	(2,1,'author_id','text','Author',1,0,1,1,0,1,''),
	(3,1,'title','text','Title',1,1,1,1,1,1,''),
	(4,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,''),
	(5,1,'body','rich_text_box','Body',1,0,1,1,1,1,''),
	(6,1,'image','image','Post Image',0,1,1,1,1,1,'{\n\"resize\": {\n\"width\": \"1000\",\n\"height\": \"null\"\n},\n\"quality\": \"70%\",\n\"upsize\": true,\n\"thumbnails\": [\n{\n\"name\": \"medium\",\n\"scale\": \"50%\"\n},\n{\n\"name\": \"small\",\n\"scale\": \"25%\"\n},\n{\n\"name\": \"cropped\",\n\"crop\": {\n\"width\": \"300\",\n\"height\": \"250\"\n}\n}\n]\n}'),
	(7,1,'slug','text','slug',1,0,1,1,1,1,''),
	(8,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,''),
	(9,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,''),
	(10,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\n\"default\": \"DRAFT\",\n\"options\": {\n\"PUBLISHED\": \"published\",\n\"DRAFT\": \"draft\",\n\"PENDING\": \"pending\"\n}\n}'),
	(11,1,'created_at','timestamp','created_at',0,1,1,1,0,1,''),
	(12,1,'updated_at','timestamp','updated_at',0,0,1,1,0,1,''),
	(13,2,'id','PRI','id',1,0,0,0,0,0,''),
	(14,2,'author_id','text','author_id',1,0,0,0,0,0,''),
	(15,2,'title','text','title',1,1,1,1,1,1,''),
	(16,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,''),
	(17,2,'body','rich_text_box','body',1,0,1,1,1,1,''),
	(18,2,'slug','text','slug',1,0,1,1,1,1,''),
	(19,2,'meta_description','text','meta_description',1,0,1,1,1,1,''),
	(20,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,''),
	(21,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\n\"default\": \"INACTIVE\",\n\"options\": {\n\"INACTIVE\": \"INACTIVE\",\n\"ACTIVE\": \"ACTIVE\"\n}\n}'),
	(22,2,'created_at','timestamp','created_at',1,1,1,1,0,1,''),
	(23,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,''),
	(24,2,'image','image','image',0,1,1,1,1,1,''),
	(25,3,'id','PRI','id',1,0,0,0,0,0,''),
	(26,3,'name','text','name',1,1,1,1,1,1,''),
	(27,3,'email','text','email',1,1,1,1,1,1,''),
	(28,3,'password','password','password',1,0,0,1,1,0,''),
	(29,3,'remember_token','text','remember_token',0,0,0,0,0,0,''),
	(30,3,'created_at','timestamp','created_at',0,1,1,1,0,1,''),
	(31,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),
	(32,3,'avatar','image','avatar',0,1,1,1,1,1,''),
	(33,5,'id','PRI','id',1,0,0,0,0,0,''),
	(34,5,'name','text','name',1,1,1,1,1,1,''),
	(35,5,'created_at','timestamp','created_at',0,0,0,1,0,1,''),
	(36,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),
	(37,4,'id','PRI','id',1,0,0,0,0,0,''),
	(38,4,'parent_id','text','parent_id',0,0,1,1,1,1,''),
	(39,4,'order','text','order',1,1,1,1,1,1,''),
	(40,4,'name','text','name',1,1,1,1,1,1,''),
	(41,4,'slug','text','slug',1,1,1,1,1,1,''),
	(42,4,'created_at','timestamp','created_at',0,0,1,0,0,1,''),
	(43,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),
	(44,6,'id','PRI','id',1,0,0,0,0,0,''),
	(45,6,'name','text','Name',1,1,1,1,1,1,''),
	(46,6,'created_at','timestamp','created_at',0,0,0,0,0,0,''),
	(47,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,''),
	(48,6,'display_name','text','Display Name',1,1,1,1,1,1,''),
	(49,1,'seo_title','text','seo_title',0,1,1,1,1,1,''),
	(50,1,'featured','checkbox','featured',1,1,1,1,1,1,''),
	(51,3,'role_id','text','role_id',1,0,0,1,1,0,'');

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`)
VALUES
	(1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','',1,0,'2016-12-29 14:21:34','2016-12-29 14:21:34'),
	(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page','',1,0,'2016-12-29 14:21:34','2016-12-29 14:21:34'),
	(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','',1,0,'2016-12-29 14:21:34','2016-12-29 14:21:34'),
	(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category','',1,0,'2016-12-29 14:21:34','2016-12-29 14:21:34'),
	(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu','',1,0,'2016-12-29 14:21:34','2016-12-29 14:21:34'),
	(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role','',1,0,'2016-12-29 14:21:34','2016-12-29 14:21:34');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`)
VALUES
	(1,1,'Dashboard','/admin','_self','voyager-boat',NULL,NULL,1,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(2,1,'Media','/admin/media','_self','voyager-images',NULL,NULL,5,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(3,1,'Posts','/admin/posts','_self','voyager-news',NULL,NULL,6,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(4,1,'Users','/admin/users','_self','voyager-person',NULL,NULL,3,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(5,1,'Categories','/admin/categories','_self','voyager-categories',NULL,NULL,8,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(6,1,'Pages','/admin/pages','_self','voyager-file-text',NULL,NULL,7,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(7,1,'Roles','/admin/roles','_self','voyager-lock',NULL,NULL,2,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(8,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(9,1,'Menu Builder','/admin/menus','_self','voyager-list',NULL,8,10,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(10,1,'Database','/admin/database','_self','voyager-data',NULL,8,11,'2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(11,1,'Settings','/admin/settings','_self','voyager-settings',NULL,NULL,12,'2016-12-29 14:21:35','2016-12-29 14:21:35');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2016-12-29 14:21:35','2016-12-29 14:21:35');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_user_avatar',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_01_01_000000_create_pages_table',1),
	(6,'2016_01_01_000000_create_posts_table',1),
	(7,'2016_02_15_204651_create_categories_table',1),
	(8,'2016_05_19_173453_create_menu_table',1),
	(9,'2016_10_21_190000_create_roles_table',1),
	(10,'2016_10_21_190000_create_settings_table',1),
	(11,'2016_10_30_000000_set_user_avatar_nullable',1),
	(12,'2016_11_30_131710_add_user_role',1),
	(13,'2016_11_30_135954_create_permission_table',1),
	(14,'2016_11_30_141208_create_permission_role_table',1),
	(15,'2016_12_26_201236_data_types__add__server_side',1),
	(16,'2016_12_30_164910_create_contacts_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`)
VALUES
	(1,0,'Scurvy Page','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/AAgCCnqHfLlRub9syUdw.jpg','scurvy-page','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2016-12-29 14:21:35','2016-12-29 14:21:35');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse_admin','admin','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(2,'browse_database','admin','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(3,'browse_media','admin','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(4,'browse_settings','admin','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(5,'browse_menus','menus','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(6,'read_menus','menus','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(7,'edit_menus','menus','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(8,'add_menus','menus','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(9,'delete_menus','menus','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(10,'browse_pages','pages','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(11,'read_pages','pages','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(12,'edit_pages','pages','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(13,'add_pages','pages','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(14,'delete_pages','pages','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(15,'browse_roles','roles','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(16,'read_roles','roles','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(17,'edit_roles','roles','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(18,'add_roles','roles','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(19,'delete_roles','roles','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(20,'browse_users','users','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(21,'read_users','users','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(22,'edit_users','users','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(23,'add_users','users','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(24,'delete_users','users','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(25,'browse_posts','posts','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(26,'read_posts','posts','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(27,'edit_posts','posts','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(28,'add_posts','posts','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(29,'delete_posts','posts','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(30,'browse_categories','categories','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(31,'read_categories','categories','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(32,'edit_categories','categories','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(33,'add_categories','categories','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(34,'delete_categories','categories','2016-12-29 14:21:35','2016-12-29 14:21:35');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`)
VALUES
	(1,1,NULL,'Geo location aware application','','                              Real time location based tool which enables management to easily re-assign tasks should the need arise.                                                                                                        ','<p>Real time location based tool which enables management to easily re-assign tasks should the need arise.</p>','posts/December2016/9WEUt1yAH8qgmp43JItF.png','Geo location aware application','                                                                                                                                                                                    This is the meta description                                                                                                                                                                ','                                                                                                                                                                                    keyword1, keyword2, keyword3                                                                                                                                                                ','PUBLISHED',1,'2016-12-29 14:21:35','2016-12-30 12:50:51'),
	(2,1,NULL,'Secure pin authentication','','                                                            In the event your phone is lost or stolen, the application is password protected with an encrypted password. Your information therefore, does not land in the wrong hands. In the unlikely event that the application is run, the main office can send a kill command to wipe out the data.                                                    ','<p>In the event your phone is lost or stolen, the application is password protected with an encrypted password. Your information therefore, does not land in the wrong hands. In the unlikely event that the application is run, the main office can send a kill command to wipe out the data.</p>\r\n<ul>\r\n<li>Reliable and Secure Platform</li>\r\n<li>Everything is perfectly orgainized for future</li>\r\n<li>Attach large file easily</li>\r\n<li>Tons of features and easy to use and customize</li>\r\n</ul>','posts/December2016/JC0C4FANKH4kMwrvXRSK.png','secure-pin','                                                                                                                                                                                    Meta Description for sample post                                                                                                                                                                ','                                                                                                                                                                                    keyword1, keyword2, keyword3                                                                                                                                                                ','PUBLISHED',1,'2016-12-29 14:21:35','2016-12-30 10:45:51'),
	(3,1,NULL,'Real time monitoring','','Real time monitoring Our infrastructure is entirely scalable with the capacity to process enormous Web and IM traffic with no discernable delay during major peak periods. This ensures that Service Users get the the best available quality and their information is hardly compromised in the process.  ','<p>Real time monitoring Our infrastructure is entirely scalable with the capacity to process enormous Web and IM traffic with no discernable delay during major peak periods. This ensures that Service Users get the the best available quality and their information is hardly compromised in the process.</p>\r\n<ul>\r\n<li>Clean User Intuitive Interface</li>\r\n<li>Everything is perfectly orgainized for future</li>\r\n<li>Attach photo images</li>\r\n<li>Capture Signature</li>\r\n</ul>','posts/December2016/ciDJt65EFLTVn0SgrH4n.png','Real time monitoring','                                                                        This is the meta description                                                                ','                                                                        keyword1, keyword2, keyword3                                                                ','PUBLISHED',1,'2016-12-29 14:21:35','2016-12-29 15:42:49'),
	(5,1,NULL,'Banner','','                                                                                                                                                                                                                                                                                                                                                ','<p>Digital Solutions for care administration and management.</p>\r\n<p>Working together to promote efficiency and minimise waste in care.</p>\r\n<p>Secure 24hr access point of care at the palm of your hand.</p>','posts/December2016/rxCma3ZEA9JJZfxLWi6v.png','','                                                                                                                                                                                                                                                                                                                                                                                                                        ','                                                                                                                                                                                                                                                                                                                                                                                                                        ','PUBLISHED',1,'2016-12-30 10:17:50','2016-12-31 23:37:13'),
	(7,1,NULL,'CONTACT US','','                                                        ','<p><strong>Research and innovation Centre&nbsp;</strong></p>\r\n<p>Finch Close</p>\r\n<p>Nottingham</p>\r\n<p>NG7 2NN</p>\r\n<p><em>By appointment only</em></p>\r\n<p>&nbsp;</p>\r\n<p>Phone: 0115 824 3248</p>\r\n<p>Email: info[at]gyapom.com</p>\r\n<p>&nbsp;</p>',NULL,'contact-us','                                                                                                                                                                                                                                                                                                                                                    ','                                                                                                                                                                                                                                                                                                                                                    ','PUBLISHED',1,'2016-12-30 11:17:50','2016-12-30 13:14:15'),
	(9,1,NULL,'Finalist','','                                                                                                                        Green IT Project of the Year  2016                                                                                                      ','<p>Green IT Project of the Year 2016</p>','posts/January2017/jm43N01Sz4igTHpcXamC.png','awards','                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ','                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ','PUBLISHED',1,'2016-12-30 11:17:50','2017-01-01 00:33:28');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2016-12-29 14:21:35','2016-12-29 14:21:35'),
	(2,'user','Normal User','2016-12-29 14:21:35','2016-12-29 14:21:35');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`)
VALUES
	(1,'title','Site Title','Site Title','','text',1),
	(2,'description','Site Description','Site Description','','text',2),
	(3,'logo','Site Logo','','','image',3),
	(4,'admin_bg_image','Admin Background Image','','','image',6),
	(5,'admin_title','Admin Title','Voyager','','text',4),
	(6,'admin_description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',5),
	(7,'google_analytics_client_id','Google Analytics Client ID','','','text',6);

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `role_id`)
VALUES
	(1,'Admin','info@gyapom.com','$2y$10$Viv1z.UMCyWGfD7q3iFHkuGQOwJT5YWoUKgo14Bv.AHa37NFUnHyG','hl8XvyXMpFPF4qW4s5w0CXjcafgAK2Jm4O3HHlviahdpzfAnYKsxWdAYHOjV','2016-12-29 14:21:00','2016-12-30 02:11:55','users/December2016/Kb5G7NkNxlDI76ZRTbp3.jpg',1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
