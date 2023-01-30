-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.9.3-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for sensetechbackend
CREATE DATABASE IF NOT EXISTS `sensetechbackend` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `sensetechbackend`;

-- Dumping structure for table sensetechbackend.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.auth_permission: ~32 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add blacklisted token', 7, 'add_blacklistedtoken'),
	(26, 'Can change blacklisted token', 7, 'change_blacklistedtoken'),
	(27, 'Can delete blacklisted token', 7, 'delete_blacklistedtoken'),
	(28, 'Can view blacklisted token', 7, 'view_blacklistedtoken'),
	(29, 'Can add outstanding token', 8, 'add_outstandingtoken'),
	(30, 'Can change outstanding token', 8, 'change_outstandingtoken'),
	(31, 'Can delete outstanding token', 8, 'delete_outstandingtoken'),
	(32, 'Can view outstanding token', 8, 'view_outstandingtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.auth_user: ~3 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$390000$9R9rxIjYVvBNpVjBg7iOS4$fH7unH6WT6XRV5nt7/tNJ1z87lPFSbTa8+KBw0gzAD8=', '2023-01-30 10:33:34.537105', 1, 'shiva', '', '', 'shivamanhar@gmail.com', 1, 1, '2023-01-30 09:14:19.185702'),
	(2, 'pbkdf2_sha256$390000$3mkQs5cUjS8FU9uucl89U2$FzxYFtqK1wjMuLxYngjf9atgUeOdB+mcmpEbxtktTXA=', NULL, 0, 'rajatjoshi@gmail.com', 'Rajat Joshi', '', 'rajatjoshi@gmail.com', 0, 1, '2023-01-30 10:33:17.535555'),
	(3, 'pbkdf2_sha256$390000$Htw5uwjwv2BshAvnFdqJ0J$rx+J8rJdLqpg7V5AU/ypVUOsna9gvEH1YWpVBDWRe94=', NULL, 0, 'shankar@gmail.com', 'Shankar', '', 'shankar@gmail.com', 0, 1, '2023-01-30 10:34:53.994608');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.django_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.django_content_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session'),
	(7, 'token_blacklist', 'blacklistedtoken'),
	(8, 'token_blacklist', 'outstandingtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.django_migrations: ~29 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2023-01-30 08:13:38.089508'),
	(2, 'auth', '0001_initial', '2023-01-30 08:13:38.308565'),
	(3, 'admin', '0001_initial', '2023-01-30 08:13:38.356476'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-30 08:13:38.362444'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-30 08:13:38.367394'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-30 08:13:38.399310'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-30 08:13:38.418022'),
	(8, 'auth', '0003_alter_user_email_max_length', '2023-01-30 08:13:38.432102'),
	(9, 'auth', '0004_alter_user_username_opts', '2023-01-30 08:13:38.437881'),
	(10, 'auth', '0005_alter_user_last_login_null', '2023-01-30 08:13:38.455846'),
	(11, 'auth', '0006_require_contenttypes_0002', '2023-01-30 08:13:38.456807'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-30 08:13:38.461795'),
	(13, 'auth', '0008_alter_user_username_max_length', '2023-01-30 08:13:38.474868'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-30 08:13:38.487865'),
	(15, 'auth', '0010_alter_group_name_max_length', '2023-01-30 08:13:38.501443'),
	(16, 'auth', '0011_update_proxy_permissions', '2023-01-30 08:13:38.506444'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-30 08:13:38.520193'),
	(18, 'sessions', '0001_initial', '2023-01-30 08:13:38.538206'),
	(19, 'token_blacklist', '0001_initial', '2023-01-30 09:07:08.128063'),
	(20, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2023-01-30 09:07:08.143685'),
	(21, 'token_blacklist', '0003_auto_20171017_2007', '2023-01-30 09:07:08.143685'),
	(22, 'token_blacklist', '0004_auto_20171017_2013', '2023-01-30 09:07:08.174927'),
	(23, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2023-01-30 09:07:08.190549'),
	(24, 'token_blacklist', '0006_auto_20171017_2113', '2023-01-30 09:07:08.206170'),
	(25, 'token_blacklist', '0007_auto_20171017_2214', '2023-01-30 09:07:09.346527'),
	(26, 'token_blacklist', '0008_migrate_to_bigautofield', '2023-01-30 09:07:09.502740'),
	(27, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2023-01-30 09:07:09.518390'),
	(28, 'token_blacklist', '0011_linearizes_history', '2023-01-30 09:07:09.518390'),
	(29, 'token_blacklist', '0012_alter_outstandingtoken_user', '2023-01-30 09:07:09.518390');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.django_session: ~1 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('30tdlnyllks8ij28qwxo08k40yny9kok', '.eJxVjDsOwjAQBe_iGln-KGuHkp4zWLveNQ4gR4qTCnF3iJQC2jcz76USbmtNW5clTazOyqrT70aYH9J2wHdst1nnua3LRHpX9EG7vs4sz8vh_h1U7PVboyOOhgpYj-BGzgFdKG4sTFGkZCYyYErwzgIg5-iFSQYUL0PwYNX7AxOdORs:1pMRTi:BFgmE3t-ubaLQVXkJtWixoiOcXW9yFScS2o2s5q_bSo', '2023-02-13 10:33:34.538552');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.token_blacklist_blacklistedtoken
CREATE TABLE IF NOT EXISTS `token_blacklist_blacklistedtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.token_blacklist_blacklistedtoken: ~0 rows (approximately)
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;

-- Dumping structure for table sensetechbackend.token_blacklist_outstandingtoken
CREATE TABLE IF NOT EXISTS `token_blacklist_outstandingtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table sensetechbackend.token_blacklist_outstandingtoken: ~24 rows (approximately)
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` (`id`, `token`, `created_at`, `expires_at`, `user_id`, `jti`) VALUES
	(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1NjU2MiwiaWF0IjoxNjc1MDcwMTYyLCJqdGkiOiI0Y2QyOGZlY2VlY2E0YmU2YTkwMjQ0ZDdjM2RiODRiMSIsInVzZXJfaWQiOjF9.4DtbiVYx-hp4zxkgKdSWcFBOEzy5iI12Hzh30YPs5W8', '2023-01-30 09:16:02.383218', '2023-01-31 09:16:02.000000', 1, '4cd28feceeca4be6a90244d7c3db84b1'),
	(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1NjU2MiwiaWF0IjoxNjc1MDcwMTYyLCJqdGkiOiI2YzEyYjExNDE4MDU0ZjMxOTlmMTFiZmVhYzgzODEwMyIsInVzZXJfaWQiOjF9.ma3VhlVeh39wtzzu1HzINvTGdxLDViBm0eWvrDGgPIw', '2023-01-30 09:16:02.441856', '2023-01-31 09:16:02.000000', 1, '6c12b11418054f3199f11bfeac838103'),
	(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1OTI1OSwiaWF0IjoxNjc1MDcyODU5LCJqdGkiOiIzMmI3YTU4MGY2YWY0ZmYzYjViMGUwZjQxYWE4ZDJjZiIsInVzZXJfaWQiOjF9.1da4SXTiVcpVA6yFclT7KbdBoqv81UHDqOzT9BSkGPk', '2023-01-30 10:00:59.010506', '2023-01-31 10:00:59.000000', 1, '32b7a580f6af4ff3b5b0e0f41aa8d2cf'),
	(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1OTI1OSwiaWF0IjoxNjc1MDcyODU5LCJqdGkiOiJmNDBmOTQ0NTlhZjI0M2M0YjhhNDFjMzdhZjg0ZTM1NCIsInVzZXJfaWQiOjF9.u_ZGbUmiBXgm65C9sVA_3WFgvcxe7D9D90O0bvmvuw0', '2023-01-30 10:00:59.030114', '2023-01-31 10:00:59.000000', 1, 'f40f94459af243c4b8a41c37af84e354'),
	(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1OTc2MCwiaWF0IjoxNjc1MDczMzYwLCJqdGkiOiIyNDcyZjI3ZjE5YTY0NjVlYWMyYWU0YThiNjA1OTBiMSIsInVzZXJfaWQiOjF9.y9RCybm5vJbEyP5X6OcOGimzZgFSlRx8E3wj0_Ct-QQ', '2023-01-30 10:09:20.985894', '2023-01-31 10:09:20.000000', 1, '2472f27f19a6465eac2ae4a8b60590b1'),
	(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1OTc2MCwiaWF0IjoxNjc1MDczMzYwLCJqdGkiOiI2NWJkNDMwOTY3MGQ0NGIwYjA2MzVmMWYxZWY3Y2RjYSIsInVzZXJfaWQiOjF9.XG4QvvPcfnVtQT-eDKABtOhjf0kfpVFX9fXwEjk_2tY', '2023-01-30 10:09:20.988392', '2023-01-31 10:09:20.000000', 1, '65bd4309670d44b0b0635f1f1ef7cdca'),
	(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1OTgyMywiaWF0IjoxNjc1MDczNDIzLCJqdGkiOiI2MzE4Yzc3MmJhMjE0OTUzYTQ1NDgxZWZlZTlkNmJhZSIsInVzZXJfaWQiOjF9.6Mu260rwLEvrB8eDEcbELycnOFjmh_ZyHMnZ-vGXhxI', '2023-01-30 10:10:23.543155', '2023-01-31 10:10:23.000000', 1, '6318c772ba214953a45481efee9d6bae'),
	(8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1OTgyMywiaWF0IjoxNjc1MDczNDIzLCJqdGkiOiIyZDI0MDQwNTk3MGE0ZjAxYWJmMGEzZjNhMDJmOTNmMSIsInVzZXJfaWQiOjF9.dU5BPzwbBaWxTBE1bvIqT4s2UZUa74J5LuZsrkjT-cA', '2023-01-30 10:10:23.547660', '2023-01-31 10:10:23.000000', 1, '2d240405970a4f01abf0a3f3a02f93f1'),
	(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1OTgzMSwiaWF0IjoxNjc1MDczNDMxLCJqdGkiOiIxNzIzYjE1ZjhiODU0YjFkYmRhZjUxYzgyYWZjNWE5YyIsInVzZXJfaWQiOjF9.QlaAdu_-99XZH3UfOLRNJjP8TyxovXYjehI-FCSyuvQ', '2023-01-30 10:10:31.950712', '2023-01-31 10:10:31.000000', 1, '1723b15f8b854b1dbdaf51c82afc5a9c'),
	(10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE1OTgzMSwiaWF0IjoxNjc1MDczNDMxLCJqdGkiOiIyNTY0YzVkNWE2MDc0N2RjOWI4NmY2OTViZTA0OWRjNSIsInVzZXJfaWQiOjF9.2YBGIdXXgzQdgtLk26EZy3o20u3rWiR_421jc5Fbr4c', '2023-01-30 10:10:31.954534', '2023-01-31 10:10:31.000000', 1, '2564c5d5a60747dc9b86f695be049dc5'),
	(11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MDE1OSwiaWF0IjoxNjc1MDczNzU5LCJqdGkiOiI2MGJmODQxOGQ4NGI0MWVmYjMxZDkzZGQ3NWE4NDUzZSIsInVzZXJfaWQiOjF9.xLEpIpow7eTE595MMaD4eEyu4O95elLNeNASxAqeEt0', '2023-01-30 10:15:59.631847', '2023-01-31 10:15:59.000000', 1, '60bf8418d84b41efb31d93dd75a8453e'),
	(12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MDE1OSwiaWF0IjoxNjc1MDczNzU5LCJqdGkiOiJiMGE1ZTFlMjg2YTI0YjQwYTllNmJkYjJiMmE1OGViYyIsInVzZXJfaWQiOjF9.MOXNhsqvC8btfRLmw6qOwmQAua3lagVlRsJYP7VlPD0', '2023-01-30 10:15:59.633789', '2023-01-31 10:15:59.000000', 1, 'b0a5e1e286a24b40a9e6bdb2b2a58ebc'),
	(13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MDM3NCwiaWF0IjoxNjc1MDczOTc0LCJqdGkiOiI1ZmE0NjU3YmZkZmQ0OWFkOTY4MjZhYzhiNGNkZGMwMyIsInVzZXJfaWQiOjF9.Cobqfb4ByD2bRMcfwzdoG39L49aWpC4BSrlhPm2A_QA', '2023-01-30 10:19:34.324263', '2023-01-31 10:19:34.000000', 1, '5fa4657bfdfd49ad96826ac8b4cddc03'),
	(14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MDM3NCwiaWF0IjoxNjc1MDczOTc0LCJqdGkiOiJkYTI0MGYxMmZiMTU0NDUyODNlZGNkMmNiYTBhMjRjMCIsInVzZXJfaWQiOjF9.DLmQ5_2UHqrZQU44B4Mcj6e7zWVCqJ5frHgra7kbMXs', '2023-01-30 10:19:34.328253', '2023-01-31 10:19:34.000000', 1, 'da240f12fb15445283edcd2cba0a24c0'),
	(15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MDQxMSwiaWF0IjoxNjc1MDc0MDExLCJqdGkiOiJjMTNlMzEzYWRmMzg0ODljYjYxNmJmYTkwNGQzY2M3YSIsInVzZXJfaWQiOjF9.j4XSRQXJMFjmMw5UAPECv1YyXU_zJRJj50J3Uty4254', '2023-01-30 10:20:11.342432', '2023-01-31 10:20:11.000000', 1, 'c13e313adf38489cb616bfa904d3cc7a'),
	(16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MDQxMSwiaWF0IjoxNjc1MDc0MDExLCJqdGkiOiIxZDc4Y2FhYmI2YjA0Mjc3YmYzNjllODY4OTVjOWI4YiIsInVzZXJfaWQiOjF9.tnbgRwsSTKQn8eK7KhUnEZNNckGu1syeqEUjSON5UXk', '2023-01-30 10:20:11.344426', '2023-01-31 10:20:11.000000', 1, '1d78caabb6b04277bf369e86895c9b8b'),
	(17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MTE5NywiaWF0IjoxNjc1MDc0Nzk3LCJqdGkiOiJjNTNiOTdiNmYyMjY0YTg2YmIwNDJlZWJlYjM2ZGQ4MSIsInVzZXJfaWQiOjJ9.8aMwJJQGjCkNSVCIFUBQ0lpnGpKmVpcsYtpvrl8_XpM', '2023-01-30 10:33:17.541111', '2023-01-31 10:33:17.000000', 2, 'c53b97b6f2264a86bb042eebeb36dd81'),
	(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MTI0MSwiaWF0IjoxNjc1MDc0ODQxLCJqdGkiOiIyNDJiMTAwMmRiNTY0ZDU2OTI0NmU5Y2Y5N2YxYWZlNiIsInVzZXJfaWQiOjJ9.Q6hPRWcJeDvKi67cArkB60H5uw4bQ3IHrwC5IhjkB7A', '2023-01-30 10:34:01.723350', '2023-01-31 10:34:01.000000', 2, '242b1002db564d569246e9cf97f1afe6'),
	(19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MTI0MSwiaWF0IjoxNjc1MDc0ODQxLCJqdGkiOiJkN2EyNDhjMzk4NzY0MmM4OWJiNDU3MmU4MjhjZjBhNCIsInVzZXJfaWQiOjJ9._8K5TBuBa2QS5gD09Sm8x3VSLp-C6Qo0CZDF2ANTHQM', '2023-01-30 10:34:01.727341', '2023-01-31 10:34:01.000000', 2, 'd7a248c3987642c89bb4572e828cf0a4'),
	(20, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MTI3MiwiaWF0IjoxNjc1MDc0ODcyLCJqdGkiOiIyNWZlZDllZDQ3OTA0ZjE2YTQzMGE1Zjc5NzFiZGFlZSIsInVzZXJfaWQiOjF9.KKAr3B9iQJ3LMQ19e1bzCv5NTpusAfXULoU9Ms9X30E', '2023-01-30 10:34:32.612643', '2023-01-31 10:34:32.000000', 1, '25fed9ed47904f16a430a5f7971bdaee'),
	(21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MTI3MiwiaWF0IjoxNjc1MDc0ODcyLCJqdGkiOiI1ODcwZDUxNTIxNjE0ZDhmODMxNjNkM2FiODE4ZjNlZiIsInVzZXJfaWQiOjF9.slKo2yFo_PHj1gF16XMgV6kuuv1DQe6iNVOwK-yLjJs', '2023-01-30 10:34:32.616668', '2023-01-31 10:34:32.000000', 1, '5870d51521614d8f83163d3ab818f3ef'),
	(22, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MTI5MywiaWF0IjoxNjc1MDc0ODkzLCJqdGkiOiIyNTdlY2E0MTNkNjQ0YWQzOThiYmQ0ZDg4NzViODUyYSIsInVzZXJfaWQiOjN9.LHI7maLFsAQxuEtZRlB6MkzhfRATBsEtTijjOhIgoWw', '2023-01-30 10:34:53.999901', '2023-01-31 10:34:53.000000', 3, '257eca413d644ad398bbd4d8875b852a'),
	(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MjYzOSwiaWF0IjoxNjc1MDc2MjM5LCJqdGkiOiIxNzM4OGIyMjdiOTI0MTI5OTM4ZTljMWE2OTE2MDdlZCIsInVzZXJfaWQiOjN9.WqzGQ4Eut4YH6hlKLB9XA1TfxXJ-1CdPFWkqyxYb4nY', '2023-01-30 10:57:19.506494', '2023-01-31 10:57:19.000000', 3, '17388b227b924129938e9c1a691607ed'),
	(24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NTE2MjYzOSwiaWF0IjoxNjc1MDc2MjM5LCJqdGkiOiI3MDBhNTEzNzllYzE0YmQ2YjA3MjljMDg5MmU4NzA3MiIsInVzZXJfaWQiOjN9.pP9EP9yvhdNLP4b91VAh7wHY6-AIqNf9XvUV8rBYqko', '2023-01-30 10:57:19.506494', '2023-01-31 10:57:19.000000', 3, '700a51379ec14bd6b0729c0892e87072');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
