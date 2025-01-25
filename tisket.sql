/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `ticket` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `ticket`;

CREATE TABLE IF NOT EXISTS `groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT IGNORE INTO `groups` (`id`, `name`) VALUES
	(1, 'groupa1'),
	(2, 'groupa2'),
	(3, 'groupa3'),
	(4, 'groupa4'),
	(5, 'groupa5');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `group_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `groups` (`group_id`),
  CONSTRAINT `group_id_FK1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `name`, `email`, `group_id`) VALUES
	(1, 'алексей', 'alex@gmail.com', 1),
	(2, 'маша', 'masha@gmail.com', 2),
	(3, 'наташа', 'natali@gmail.com', 3),
	(4, 'миша', 'misha@gmail.com', 4),
	(5, 'нина', 'nina@gmail.com', 5),
	(6, 'вася', 'vasia@gmail.com', 3),
	(7, 'антон', 'anton@gmail.com', 2),
	(8, 'гена', 'gena@gmail.com', 4),
	(9, 'вита', 'vita@gmail.com', 1),
	(10, 'вова', 'vova@gmail.com', 5),
	(11, 'света', 'sveta@gmail.com', 1),
	(12, 'тома', 'toma@gmail.com', 5),
	(13, 'саша', 'sasha@gmail.com', 2),
	(14, 'юля', 'julia@gmail.com', 4),
	(15, 'рита', 'rita@gmail.com', 3),
	(16, 'таня', 'tania@gmail.com', 4),
	(17, 'мила', 'mila@gmail.com', 3),
	(18, 'гриша', 'grisha@gmail.com', 5),
	(19, 'соня', 'sonia@gmail.com', 1),
	(20, 'виктор', 'victor@gmail.com', 2),
	(21, 'джим', 'dgim@gmail.com', 3),
	(22, 'милана', 'milana@gmail.com', 5),
	(23, 'марина', 'matina@gmail.com', 1),
	(24, 'виталик', 'vitalik@gmail.com', 4),
	(25, 'толя', 'tolia@gmail.com', 2),
	(26, 'женя', 'jenia@gmail.com', 3),
	(27, 'давид', 'david@gmail.com', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
