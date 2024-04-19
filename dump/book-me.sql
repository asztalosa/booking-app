-- --------------------------------------------------------
-- Hoszt:                        127.0.0.1
-- Szerver verzió:               8.2.0 - MySQL Community Server - GPL
-- Szerver OS:                   Win64
-- HeidiSQL Verzió:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Adatbázis struktúra mentése a book_me.
DROP DATABASE IF EXISTS `book_me`;
CREATE DATABASE IF NOT EXISTS `book_me` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book_me`;

-- Struktúra mentése tábla book_me. address_types
DROP TABLE IF EXISTS `address_types`;
CREATE TABLE IF NOT EXISTS `address_types` (
  `id` int DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- Tábla adatainak mentése book_me.address_types: 2 rows
/*!40000 ALTER TABLE `address_types` DISABLE KEYS */;
INSERT INTO `address_types` (`id`, `name`) VALUES
	(1, 'billing'),
	(2, 'shipping');
/*!40000 ALTER TABLE `address_types` ENABLE KEYS */;

-- Struktúra mentése tábla book_me. adresses
DROP TABLE IF EXISTS `adresses`;
CREATE TABLE IF NOT EXISTS `adresses` (
  `id` int DEFAULT NULL,
  `address_type_id` int DEFAULT NULL,
  `street_address` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `postal_code` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `customer_id` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- Tábla adatainak mentése book_me.adresses: 22 rows
/*!40000 ALTER TABLE `adresses` DISABLE KEYS */;
INSERT INTO `adresses` (`id`, `address_type_id`, `street_address`, `city`, `state`, `postal_code`, `country`, `customer_id`) VALUES
	(1, 1, '48124 Orin Place', 'Matara', NULL, '81000', 'Sri Lanka', '3'),
	(2, 1, '58096 Daystar Hill', 'Budapest', 'Budapest', '1062', 'Hungary', '20'),
	(3, 1, '45 Anhalt Trail', 'Vreshtas', NULL, NULL, 'Albania', '11'),
	(4, 1, '22518 Mallory Street', 'Minuwangoda', NULL, '11550', 'Sri Lanka', '4'),
	(5, 1, '401 Elgar Pass', 'Remas', NULL, NULL, 'Albania', '7'),
	(6, 1, '9 Vermont Point', 'Békéscsaba', 'Békés', '5604', 'Hungary', '13'),
	(7, 1, '09 Spohn Junction', 'Ampara', NULL, '32000', 'Sri Lanka', '1'),
	(8, 1, '246 Almo Trail', 'Shkodër', NULL, NULL, 'Albania', '5'),
	(9, 1, '051 Pine View Way', 'Sigiriya', NULL, '21120', 'Sri Lanka', '16'),
	(10, 1, '88 Welch Pass', 'Kushovë', NULL, NULL, 'Albania', '15'),
	(11, 1, '8122 Mesta Avenue', 'Portëz', NULL, NULL, 'Albania', '21'),
	(12, 1, '7 Anderson Crossing', 'Sarandë', NULL, NULL, 'Albania', '17'),
	(13, 1, '33 Grasskamp Plaza', 'Kthella e Epërme', NULL, NULL, 'Albania', '9'),
	(14, 1, '5 Hallows Drive', 'Zall-Herr', NULL, NULL, 'Albania', '6'),
	(15, 1, '95 Village Way', 'Budapest', 'Budapest', '1239', 'Hungary', '12'),
	(16, 1, '3 Surrey Junction', 'Kolonnawa', NULL, '10600', 'Sri Lanka', '19'),
	(17, 1, '340 Clyde Gallagher Terrace', 'Moglicë', NULL, NULL, 'Albania', '10'),
	(18, 1, '356 Pierstorff Avenue', 'Karinë', NULL, NULL, 'Albania', '2'),
	(19, 1, '7 Carey Junction', 'Burrel', NULL, NULL, 'Albania', '14'),
	(20, 1, '579 Anderson Crossing', 'Shënmëri', NULL, NULL, 'Albania', '18'),
	(21, 1, '72430 Kipling Park', 'Hot', NULL, NULL, 'Albania', '8'),
	(22, 1, '15 Raven Way', 'Remas', NULL, NULL, 'Albania', '22');
/*!40000 ALTER TABLE `adresses` ENABLE KEYS */;

-- Struktúra mentése tábla book_me. apartments
DROP TABLE IF EXISTS `apartments`;
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int DEFAULT NULL,
  `apartment_name` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_hungarian_ci,
  `location` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `price_per_night` int DEFAULT NULL,
  `number_of_bedrooms` int DEFAULT NULL,
  `amenities` varchar(16) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `availability` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- Tábla adatainak mentése book_me.apartments: 32 rows
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` (`id`, `apartment_name`, `description`, `location`, `price_per_night`, `number_of_bedrooms`, `amenities`, `availability`) VALUES
	(1, 'Franecki Group', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Krajan Gebangan', 1, 1, 'Pool', '1'),
	(2, 'Renner LLC', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Dukay', 2, 2, 'Parking', '1'),
	(3, 'O\'Connell-Bashirian', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Ubá', 3, 3, 'WiFi', '0'),
	(4, 'Hodkiewicz, Shanahan and Stehr', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Santa Nino', 4, 4, 'Air Conditioning', '0'),
	(5, 'Bergnaum, Purdy and Anderson', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Libertad', 5, 5, 'Gym', '0'),
	(6, 'Kuhn-Prohaska', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Bugis', 6, 6, 'Gym', '1'),
	(7, 'Daugherty-Mills', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Dingjiayao', 7, 7, 'TV', '1'),
	(8, 'Kertzmann-Effertz', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Charlotte', 8, 8, 'Gym', '0'),
	(9, 'Schneider Inc', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Fresno', 9, 9, 'Pool', '1'),
	(10, 'Pollich, Veum and Treutel', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.', 'Gusong', 10, 10, 'Pool', '0'),
	(11, 'Murray Group', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Klampis', 11, 11, 'Dryer', '1'),
	(12, 'Gottlieb LLC', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'West End', 12, 12, 'Parking', '0'),
	(13, 'Powlowski-Turner', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Bojonegoro', 13, 13, 'Heating', '0'),
	(14, 'Murphy Inc', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Söderhamn', 14, 14, 'Heating', '1'),
	(15, 'Moen, Toy and Berge', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Sam Khok', 15, 15, 'Kitchen', '1'),
	(16, 'Heathcote-Green', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\r\n\r\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Jawa', 16, 16, 'WiFi', '1'),
	(17, 'Gerhold, Bode and Welch', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Chinch\'ŏn', 17, 17, 'Dryer', '1'),
	(18, 'Mann-Nicolas', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Krivyanskaya', 18, 18, 'Washer', '1'),
	(19, 'Smith, Fritsch and Hammes', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Tutayev', 19, 19, 'WiFi', '1'),
	(20, 'Rodriguez-Runolfsson', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'San Lorenzo', 20, 20, 'Kitchen', '0'),
	(21, 'Kunde-Crooks', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Tailing', 21, 21, 'Air Conditioning', '0'),
	(22, 'Labadie-Rice', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Kratovo', 22, 22, 'Air Conditioning', '0'),
	(23, 'Boyer, Rowe and Mitchell', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Itako', 23, 23, 'Dryer', '1'),
	(24, 'Fritsch Inc', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Wangchang', 24, 24, 'Washer', '1'),
	(25, 'Schuppe-Kuphal', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Barreira', 25, 25, 'Parking', '0'),
	(26, 'Yundt-Sawayn', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'San Pedro de Atacama', 26, 26, 'Gym', '0'),
	(27, 'Satterfield Group', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Boden', 27, 27, 'Dryer', '0'),
	(28, 'Brown, Kreiger and Parker', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Old Harbour Bay', 28, 28, 'WiFi', '0'),
	(29, 'Hahn Inc', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.', 'Põltsamaa', 29, 29, 'Dryer', '0'),
	(30, 'Feeney-Herman', 'In congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Finspång', 30, 30, 'Dryer', '1'),
	(31, 'Kilback-Koelpin', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Tinalmud', 31, 31, 'TV', '0'),
	(32, 'Kutch-Stehr', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Białobrzegi', 32, 32, 'WiFi', '0');
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;

-- Struktúra mentése tábla book_me. bookings
DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `booking_id` int DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `total_price` decimal(7,2) DEFAULT NULL,
  `booking_status` varchar(9) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `apartment_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- Tábla adatainak mentése book_me.bookings: 22 rows
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` (`booking_id`, `check_in_date`, `check_out_date`, `total_price`, `booking_status`, `apartment_id`, `customer_id`) VALUES
	(1, '2023-07-31', '2023-11-25', 5232.08, 'pending', 1, 1),
	(2, '2023-12-20', '2024-03-11', 9401.90, 'cancelled', 2, 2),
	(3, '2023-12-25', '2023-07-26', 2565.03, 'pending', 3, 3),
	(4, '2023-10-30', '2023-09-24', 3006.08, 'cancelled', 4, 4),
	(5, '2023-06-23', '2023-10-06', 2993.77, 'cancelled', 5, 5),
	(6, '2023-11-01', '2024-04-16', 5814.91, 'pending', 6, 6),
	(7, '2023-10-05', '2023-11-02', 3300.66, 'cancelled', 7, 7),
	(8, '2024-01-13', '2023-05-28', 9645.27, 'confirmed', 8, 8),
	(9, '2023-10-24', '2023-09-23', 3413.10, 'cancelled', 9, 9),
	(10, '2023-05-17', '2023-10-17', 7908.68, 'pending', 10, 10),
	(11, '2023-07-27', '2023-12-19', 182.90, 'pending', 11, 11),
	(12, '2024-04-14', '2023-07-31', 3253.18, 'cancelled', 12, 12),
	(13, '2023-04-19', '2023-11-22', 3235.44, 'pending', 13, 13),
	(14, '2024-04-01', '2023-11-30', 5837.02, 'pending', 14, 14),
	(15, '2024-04-12', '2023-12-10', 5715.25, 'confirmed', 15, 15),
	(16, '2023-08-23', '2023-08-03', 2379.02, 'confirmed', 16, 16),
	(17, '2023-08-16', '2023-06-28', 6561.08, 'cancelled', 17, 17),
	(18, '2023-11-18', '2024-02-24', 8181.54, 'cancelled', 18, 18),
	(19, '2023-04-21', '2023-11-29', 3997.26, 'cancelled', 19, 19),
	(20, '2023-07-02', '2023-04-27', 1759.33, 'pending', 20, 20),
	(21, '2023-06-03', '2023-06-19', 3948.27, 'pending', 21, 21),
	(22, '2023-10-09', '2024-03-24', 833.84, 'confirmed', 22, 22);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;

-- Struktúra mentése tábla book_me. cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.cache: ~0 rows (hozzávetőleg)

-- Struktúra mentése tábla book_me. cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.cache_locks: ~0 rows (hozzávetőleg)

-- Struktúra mentése tábla book_me. customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- Tábla adatainak mentése book_me.customers: 22 rows
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES
	(1, 'Collin', 'Ower', 'cower0@flavors.me', '723-793-6401'),
	(2, 'Caspar', 'Muncaster', 'cmuncaster1@xinhuanet.com', '998-612-9481'),
	(3, 'Frances', 'Euston', 'feuston2@etsy.com', '459-958-5976'),
	(4, 'Rochette', 'Clibbery', 'rclibbery3@yellowpages.com', '210-535-3196'),
	(5, 'Felicdad', 'Holtum', 'fholtum4@devhub.com', '690-709-5209'),
	(6, 'Brady', 'Klimashevich', 'bklimashevich5@people.com.cn', '157-639-2040'),
	(7, 'Jana', 'Pochet', 'jpochet6@house.gov', '878-237-2680'),
	(8, 'Edvard', 'Gyorffy', 'egyorffy7@shinystat.com', '672-176-5029'),
	(9, 'Reynolds', 'McGillicuddy', 'rmcgillicuddy8@arstechnica.com', '370-319-9987'),
	(10, 'Scarface', 'Jaggli', 'sjaggli9@loc.gov', '343-345-9924'),
	(11, 'Allard', 'Kidstone', 'akidstonea@icio.us', '793-523-5765'),
	(12, 'Pietrek', 'Sprigging', 'pspriggingb@ehow.com', '628-258-4690'),
	(13, 'Leonhard', 'Goreisr', 'lgoreisrc@epa.gov', '257-867-1946'),
	(14, 'Ronna', 'Brockherst', 'rbrockherstd@nyu.edu', '952-807-8825'),
	(15, 'Karie', 'Jarville', 'kjarvillee@jalbum.net', '703-457-3077'),
	(16, 'Kenny', 'Dubbin', 'kdubbinf@dion.ne.jp', '871-824-8600'),
	(17, 'Neron', 'Ansell', 'nansellg@live.com', '313-439-9480'),
	(18, 'Koo', 'Thornhill', 'kthornhillh@ask.com', '488-299-2139'),
	(19, 'Annissa', 'Dello', 'adelloi@nymag.com', '503-745-4072'),
	(20, 'Eba', 'Huckleby', 'ehucklebyj@sogou.com', '321-278-2955'),
	(21, 'Tanya', 'Voss', 'tvossk@va.gov', '459-413-4036'),
	(22, 'Faythe', 'Durek', 'fdurekl@jimdo.com', '909-727-6338');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Struktúra mentése tábla book_me. failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
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

-- Tábla adatainak mentése book_me.failed_jobs: ~0 rows (hozzávetőleg)

-- Struktúra mentése tábla book_me. jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.jobs: ~0 rows (hozzávetőleg)

-- Struktúra mentése tábla book_me. job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.job_batches: ~0 rows (hozzávetőleg)

-- Struktúra mentése tábla book_me. migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.migrations: ~2 rows (hozzávetőleg)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1);

-- Struktúra mentése tábla book_me. password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.password_reset_tokens: ~0 rows (hozzávetőleg)

-- Struktúra mentése tábla book_me. sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.sessions: ~1 rows (hozzávetőleg)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('AVrlOzBkoZUEaTiUFOVNgV5Rn29oB3AVFtWkMr7l', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVWZ3YjhPb1I3TE1oNm5aeUp0TzBHN0dzRndSYlg1VktEQVV6ZWNrWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9ib29rLW1lLmxvY2FsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1713364700),
	('dIDif3fccoI0sYl1X2ZA8pkZ3xYXIQjkh3vIphEN', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYnJFeUJFOXE1aFdIMEJETFM0aWdyWnlMdm1yY0JNbmhKMEdtYk14YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9ib29rLW1lLmxvY2FsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1713428459);

-- Struktúra mentése tábla book_me. users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.users: ~0 rows (hozzávetőleg)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Alex', 'jozsef.asztalosalex@medicover.hu', NULL, '$2y$12$neIh2KgGL0gCn2ZlXwuA9u9E77KoUmu/R/WkCMDS04z8AN7JvdH22', NULL, '2024-04-17 11:03:34', '2024-04-17 11:03:34');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
