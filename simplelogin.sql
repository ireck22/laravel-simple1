-- --------------------------------------------------------
-- 主機:                           localhost
-- 伺服器版本:                        5.7.24 - MySQL Community Server (GPL)
-- 伺服器操作系統:                      Win64
-- HeidiSQL 版本:                  9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 傾印 simplelogin 的資料庫結構
CREATE DATABASE IF NOT EXISTS `simplelogin` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `simplelogin`;

-- 傾印  表格 simplelogin.account_info 結構
CREATE TABLE IF NOT EXISTS `account_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Remarks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  simplelogin.account_info 的資料：~11 rows (大約)
/*!40000 ALTER TABLE `account_info` DISABLE KEYS */;
INSERT INTO `account_info` (`id`, `user`, `password`, `username`, `gender`, `birthday`, `email`, `Remarks`, `created_at`, `updated_at`) VALUES
	(3, 'test1', NULL, 'will', 'man', '1989-09-01', '123@gmail.com', 'test', '2019-08-01 09:12:58', '2019-08-01 09:12:58'),
	(4, 'jacky', NULL, 'jacky chen', 'man', '1990-04-22', 'sss@gmail.com', 'test', '2019-08-02 12:57:37', '2019-08-02 12:57:37'),
	(6, 'sasd', NULL, 'sdsss', 'man', '1993-06-02', '22@gmail.com', 'test', '2019-08-02 13:01:15', '2019-08-02 13:01:15'),
	(7, 'aaa', NULL, 'aadasd', 'man', '1998-02-10', '22@gmail.com', '22', '2019-08-02 13:30:16', '2019-08-02 13:30:16'),
	(8, 'ireck11', NULL, 'jacky chang', 'man', '1999-03-04', '22@gmail.com', '22', '2019-08-02 13:46:05', '2019-08-02 13:46:05'),
	(9, 's11', NULL, '111', 'man', '1990-05-07', '22@gmail.com', '222', '2019-08-02 16:06:08', '2019-08-02 16:06:08'),
	(10, 'test33', NULL, 'ireck ww', '男', '1989-03-04', '123@gmail.com', '113', '2019-08-02 16:10:36', '2019-08-02 16:10:36'),
	(11, '66ee', NULL, 'Was', '女', '1990-08-09', '333@yahoo.com.tw', 'Test7', '2019-08-02 16:16:46', '2019-08-02 16:16:46'),
	(12, 'ireck', NULL, 'ireck chen', '男', '1992-03-04', 'sss@gmail.com', 'test11', '2019-08-07 10:36:08', '2019-08-07 10:36:08'),
	(13, 'ireck222', NULL, 'sss2ww', '男', '1988-02-03', '123@gmail.com', 'test', '2019-08-07 16:31:55', '2019-08-07 16:31:55'),
	(16, 'jacky', '123123', 'jacky chen', 'man', '1995-02-02', '123@gmail.com', 'test6', '2019-08-09 12:55:47', '2019-08-09 12:55:47');
/*!40000 ALTER TABLE `account_info` ENABLE KEYS */;

-- 傾印  表格 simplelogin.migrations 結構
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  simplelogin.migrations 的資料：~3 rows (大約)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_07_31_064352_create_account_info_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- 傾印  表格 simplelogin.password_resets 結構
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  simplelogin.password_resets 的資料：~2 rows (大約)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('222@gmail.com', '$2y$10$8j1/bEO7HJaIOIYDkZjHeOR8G3kVbTR8qh7KuyZYX/0dfYo6eqT1a', '2019-08-08 16:48:24'),
	('dragon9029@gmail.com', '$2y$10$L3PqhUHVLWfL0Sn8hXTgnO//zYGio0iqk7KU5xaCkrJEW.l5jAk4K', '2019-08-08 16:49:25');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- 傾印  表格 simplelogin.users 結構
CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 正在傾印表格  simplelogin.users 的資料：~2 rows (大約)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'ireck', '222@gmail.com', NULL, '$2y$10$bW1atXx23EUSYVo3NtFisu0IBQRbaCaTlV7NGjBjLkVcjK7JO3aPa', NULL, '2019-08-08 16:29:32', '2019-08-08 16:29:32'),
	(2, 'jacky', 'dragon9029@gmail.com', NULL, '$2y$10$Szw95LefQorWaovrxHUaVOq.fBK22XU/yJwY/FEEYxMWY2I4YTMT2', NULL, '2019-08-08 16:49:07', '2019-08-08 16:49:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
