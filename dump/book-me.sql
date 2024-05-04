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
CREATE DATABASE IF NOT EXISTS `book_me` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book_me`;

-- Struktúra mentése tábla book_me. addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int DEFAULT NULL,
  `address_type_id` int DEFAULT NULL,
  `street_address` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `postal_code` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `customer_id` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- Tábla adatainak mentése book_me.addresses: 23 rows
DELETE FROM `addresses`;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` (`id`, `address_type_id`, `street_address`, `city`, `state`, `postal_code`, `country`, `customer_id`) VALUES
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
	(22, 1, '15 Raven Way', 'Remas', NULL, NULL, 'Albania', '22'),
	(23, 2, 'ASD 232', 'Teszt', 'BP', '1001', 'HU', '22');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;

-- Struktúra mentése tábla book_me. address_types
CREATE TABLE IF NOT EXISTS `address_types` (
  `id` int DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- Tábla adatainak mentése book_me.address_types: 2 rows
DELETE FROM `address_types`;
/*!40000 ALTER TABLE `address_types` DISABLE KEYS */;
INSERT INTO `address_types` (`id`, `name`) VALUES
	(1, 'billing'),
	(2, 'shipping');
/*!40000 ALTER TABLE `address_types` ENABLE KEYS */;

-- Struktúra mentése tábla book_me. apartments
CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int DEFAULT NULL,
  `apartment_name` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_hungarian_ci,
  `location` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `price_per_night` int DEFAULT NULL,
  `number_of_bedrooms` int DEFAULT NULL,
  `amenities` varchar(16) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `availability` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- Tábla adatainak mentése book_me.apartments: 32 rows
DELETE FROM `apartments`;
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` (`id`, `apartment_name`, `description`, `location`, `price_per_night`, `number_of_bedrooms`, `amenities`, `availability`, `image`) VALUES
	(1, 'Franecki Group', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Krajan Gebangan', 1, 1, 'Pool', '1', 'https://media.istockphoto.com/id/1278384351/hu/fot%C3%B3/ingatlan-berlini-t%C3%A1rsash%C3%A1zak-szoci%C3%A1lis-lak%C3%A1sok-%C3%A9s-t%C5%91kebefektet%C3%A9sek.jpg?s=1024x1024&w=is&k=20&c=NfkVl093Se_h8mrg76tyGuNeE6YQPqWQaLGK4v-NiqY='),
	(2, 'Renner LLC', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Dukay', 2, 2, 'Parking', '1', 'https://media.istockphoto.com/id/1950861755/hu/fot%C3%B3/condominiums.jpg?s=2048x2048&w=is&k=20&c=0E-lq8RieWnn8-CoAy9tkp6ELU__F_EwHRsDcPeiZv4='),
	(3, 'O\'Connell-Bashirian', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Ubá', 3, 3, 'WiFi', '0', 'https://media.istockphoto.com/id/1933499289/hu/fot%C3%B3/condominium-project.jpg?s=2048x2048&w=is&k=20&c=-NA4aYar4CWnv71q8lNJ5IHNLm5mxwyYZSIdmzA_2Po='),
	(4, 'Hodkiewicz, Shanahan and Stehr', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Santa Nino', 4, 4, 'Air Conditioning', '0', 'https://media.istockphoto.com/id/1405168422/hu/fot%C3%B3/minnesota-%C3%A1llami-capitolium-%C3%A9p%C3%BClete-st-paul-mn-usa.jpg?s=2048x2048&w=is&k=20&c=KOCaWNOsptlySiH43zk4UBGGHvi9fktVyOPWFx0yFTc='),
	(5, 'Bergnaum, Purdy and Anderson', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'Libertad', 5, 5, 'Gym', '0', 'https://media.istockphoto.com/id/1492424940/hu/fot%C3%B3/apartman-buidling.jpg?s=2048x2048&w=is&k=20&c=-rMr0tt-EgoznzQ-P-UmEAO726IXrTFsr8ZAfiFXOzI='),
	(6, 'Kuhn-Prohaska', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Bugis', 6, 6, 'Gym', '1', 'https://media.istockphoto.com/id/478016771/hu/fot%C3%B3/modern-luxus-ingatlan-h%C3%A1z-k%C3%BCls%C5%91-west-vancouver.jpg?s=1024x1024&w=is&k=20&c=CDHjgLvrb-IYrxyBD2RMGU3Q8M6HFVe3P9vOgbWpLOE='),
	(7, 'Daugherty-Mills', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Dingjiayao', 7, 7, 'TV', '1', 'https://media.istockphoto.com/id/1002006824/hu/fot%C3%B3/3d-renderel%C3%A9se-modern-hangulatos-h%C3%A1z-aranyos-%C5%91sszel.jpg?s=2048x2048&w=is&k=20&c=iIIkSm4kR03zYUnk32TC6Erk_XQUdTM67C7jfEo3Kls='),
	(8, 'Kertzmann-Effertz', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Charlotte', 8, 8, 'Gym', '0', 'https://media.istockphoto.com/id/929190776/hu/fot%C3%B3/3d-renderel%C3%A9se-modern-hangulatos-h%C3%A1z-a-foly%C3%B3n%C3%A1l-%C3%A9jjel.jpg?s=2048x2048&w=is&k=20&c=b4j7b62NQtK-vUSIPQNI1PA1GdP4Z7HiAGkdkHR05d4='),
	(9, 'Schneider Inc', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Fresno', 9, 9, 'Pool', '1', 'https://media.istockphoto.com/id/1393537665/hu/fot%C3%B3/modern-v%C3%A1rosh%C3%A1za-design.jpg?s=2048x2048&w=is&k=20&c=aBiqLXv64uGx5UbiSP1S8nHEZnp34n5vhBM_dFx2YPQ='),
	(10, 'Pollich, Veum and Treutel', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.', 'Gusong', 10, 10, 'Pool', '0', 'https://media.istockphoto.com/id/1658377279/hu/fot%C3%B3/a-modern-apartmankomplexum-el%C3%B6ln%C3%A9zete.jpg?s=612x612&w=0&k=20&c=cE1rFuwaTHZLbGTsAlKZwWPSnpk_hnSi6ZIuF4VEOos='),
	(11, 'Murray Group', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 'Klampis', 11, 11, 'Dryer', '1', 'https://media.istockphoto.com/id/1060808070/hu/fot%C3%B3/lak%C3%B3h%C3%A1zak-k%C3%A9k-%C3%A9gen-a-naps%C3%BCt%C3%A9ses-napon-k%C3%BCls%C5%91-homlokzata-egy-sor-sz%C3%ADnes-modern-v%C3%A1rosi-h%C3%A1zak.jpg?s=612x612&w=0&k=20&c=WUOyt7W2RDJse2g6I6DaNPt_O8TP3N9PC6UCqHL8-qM='),
	(12, 'Gottlieb LLC', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 'West End', 12, 12, 'Parking', '0', 'https://media.istockphoto.com/id/949099208/hu/fot%C3%B3/%C3%BAj-lak%C3%B3%C3%A9p%C3%BClet-negyed-padokkal.jpg?s=2048x2048&w=is&k=20&c=oP1cvn8cnHV_hHkMNYLquZmHnuuLl-mQrq5aRIDJMEA='),
	(13, 'Powlowski-Turner', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Bojonegoro', 13, 13, 'Heating', '0', 'https://media.istockphoto.com/id/1578597330/hu/fot%C3%B3/sz%C3%A1m%C3%ADt%C3%B3g%C3%A9p-%C3%A1ltal-gener%C3%A1lt-k%C3%A9p-egy-h%C3%A1zr%C3%B3l-%C3%A9p%C3%ADt%C3%A9szeti-megjelen%C3%ADt%C3%A9s-3d-renderel%C3%A9s-k%C3%BCls%C5%91-kialak%C3%ADt%C3%A1s.jpg?s=612x612&w=0&k=20&c=Fk3dC9lRNatH0e5zOy8zClc-MtZ0oEonTpk_PiU1hHs='),
	(14, 'Murphy Inc', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Söderhamn', 14, 14, 'Heating', '1', 'https://media.istockphoto.com/id/1338563299/hu/fot%C3%B3/kialak%C3%ADtott-k%C3%B6rny%C3%A9kbeli-t%C3%B6mb%C3%B6k.jpg?s=612x612&w=0&k=20&c=wAduU1xy5Z503Iie9vYiUl64Vk1qS5mfcpzbqd-mgx8='),
	(15, 'Moen, Toy and Berge', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Sam Khok', 15, 15, 'Kitchen', '1', 'https://media.istockphoto.com/id/1796787498/hu/fot%C3%B3/residence-house-blocks-flats.jpg?s=612x612&w=0&k=20&c=0o_5Uqaya73PNgfqZhdUPd6z_GS7AjiCShzBVo7a6kw='),
	(16, 'Heathcote-Green', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\r\n\r\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Jawa', 16, 16, 'WiFi', '1', 'https://media.istockphoto.com/id/1336500017/hu/fot%C3%B3/lak%C3%B3%C3%A9p%C3%BClet-udvara.jpg?s=612x612&w=0&k=20&c=CybqudVni-yJ8A3w4nntc6qvaFdGltlUNDEABO3Fjw0='),
	(17, 'Gerhold, Bode and Welch', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Chinch\'ŏn', 17, 17, 'Dryer', '1', 'https://media.istockphoto.com/id/1548506060/hu/fot%C3%B3/modell-st%C3%ADlus%C3%BA-h%C3%A1z-k%C3%BCls%C5%91-fest%C3%A9s-l%C3%A1tv%C3%A1ny-nyaral%C3%B3-lak%C3%B3%C3%A9p%C3%BClet.jpg?s=612x612&w=0&k=20&c=CVzp4JJ4ulssrNqEba7qKHZ5fKwTuKqfOCwOSF5eAVE='),
	(18, 'Mann-Nicolas', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Krivyanskaya', 18, 18, 'Washer', '1', 'https://media.istockphoto.com/id/537866563/hu/fot%C3%B3/h%C3%A1z-erk%C3%A9llyel-%C3%A9s-gyeppel.jpg?s=612x612&w=0&k=20&c=37VOOELCl9AyA-0JgAgluBlU-ULc5iUSuKsyyq8cwr0='),
	(19, 'Smith, Fritsch and Hammes', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Tutayev', 19, 19, 'WiFi', '1', 'https://media.istockphoto.com/id/98001268/hu/fot%C3%B3/kis-irodah%C3%A1z.jpg?s=612x612&w=0&k=20&c=nOvWwDt9Br_SHWocXfgP2-GZKTzVKqSJNXTGl3rqkyo='),
	(20, 'Rodriguez-Runolfsson', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'San Lorenzo', 20, 20, 'Kitchen', '0', 'https://media.istockphoto.com/id/1638529847/hu/fot%C3%B3/%C3%BAj-%C3%B6temeletes-v%C3%A1rosi-h%C3%A1zak-negyede.jpg?s=612x612&w=0&k=20&c=Tfqoq8NqN0QVxlfIyZ9wFVeD0I3kqtZH_EcB21sMzBQ='),
	(21, 'Kunde-Crooks', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Tailing', 21, 21, 'Air Conditioning', '0', 'https://media.istockphoto.com/id/1879630802/hu/fot%C3%B3/az-%C3%A9p%C3%BCletek-k%C3%BCls%C5%91-n%C3%A9zet%C3%A9nek-3d-renderel%C3%A9se-%C3%A9jszaka.jpg?s=612x612&w=0&k=20&c=YCoiXxEN40jAPtoqjsHccWisZ9CYGkysDjAeOB-iACE='),
	(22, 'Labadie-Rice', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Kratovo', 22, 22, 'Air Conditioning', '0', 'https://media.istockphoto.com/id/1460592292/hu/fot%C3%B3/luxush%C3%A1z-3d-s-renderel%C3%A9se-villa-k%C3%BCls%C5%91-n%C3%A9zete.jpg?s=612x612&w=0&k=20&c=Luv5rPgSfxNuK_IOifU7LHOPFJqST21RM6gWBhE8QJ8='),
	(23, 'Boyer, Rowe and Mitchell', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Itako', 23, 23, 'Dryer', '1', 'https://media.istockphoto.com/id/177381649/hu/fot%C3%B3/modern-h%C3%A1z.jpg?s=612x612&w=0&k=20&c=11k3P0TktsgDuFkiriuAEUCSFUJGEZOeoIqzQLueEBg='),
	(24, 'Fritsch Inc', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 'Wangchang', 24, 24, 'Washer', '1', 'https://media.istockphoto.com/id/1179121730/hu/fot%C3%B3/%C3%BAj-modern-lak%C3%B3%C3%A9p%C3%BCletek-komplexuma-f%C3%A1b%C3%B3l-k%C3%A9sz%C3%BClt-homlokzattal.jpg?s=612x612&w=0&k=20&c=_l3SMpDrVBptcgLjNG5ivRkqR31SKHQDTHoPxF0ufnc='),
	(25, 'Schuppe-Kuphal', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Barreira', 25, 25, 'Parking', '0', 'https://media.istockphoto.com/id/173574628/hu/fot%C3%B3/k%C3%B6z%C3%A9piskolai-homlokzat-%C5%91sszel.jpg?s=612x612&w=0&k=20&c=IHbSzCOtd_ThlK2-ksM0LrmHO5A6uCfmPEPxZeLxU0c='),
	(26, 'Yundt-Sawayn', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'San Pedro de Atacama', 26, 26, 'Gym', '0', 'https://media.istockphoto.com/id/623371638/hu/fot%C3%B3/3d-renderel%C3%A9s-gy%C3%B6ny%C3%B6r%C5%B1-modern-h%C3%A1z-a-faluban.jpg?s=612x612&w=0&k=20&c=zPrlyRNXiYdM4OSuhW2FNsYf6bk5tgM-nuDnDZ4-2r0='),
	(27, 'Satterfield Group', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Boden', 27, 27, 'Dryer', '0', 'https://media.istockphoto.com/id/1383862762/hu/fot%C3%B3/modern-apartmanh%C3%A1zak-sora.jpg?s=612x612&w=0&k=20&c=226WS1SmskAojKkxo-9Yfh-npw14lksaNoUVvumL5ZU='),
	(28, 'Brown, Kreiger and Parker', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Old Harbour Bay', 28, 28, 'WiFi', '0', 'https://media.istockphoto.com/id/1414924685/hu/fot%C3%B3/modern-fekete-lak%C3%B3%C3%A9p%C3%BClet-homlokzata.jpg?s=612x612&w=0&k=20&c=hXAfX3nNp_twHIB2ku6hgiilXs0r84hCRoR8VVzY36E='),
	(29, 'Hahn Inc', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.', 'Põltsamaa', 29, 29, 'Dryer', '0', 'https://media.istockphoto.com/id/2148352649/hu/fot%C3%B3/modern-house-exterior-evening-view-with-lawn-grass-3d-rendering.jpg?s=612x612&w=0&k=20&c=9WZ6B2SB4dl0VSWlBuhwf1RRWGUYJ01_jZtOdYEgXtU='),
	(30, 'Feeney-Herman', 'In congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Finspång', 30, 30, 'Dryer', '1', 'https://media.istockphoto.com/id/1424897883/hu/fot%C3%B3/modern-%C3%B6koh%C3%A1z-az-aire-foly%C3%B3-mellett-leedsben.jpg?s=612x612&w=0&k=20&c=0SKDmjBM6OMF_GaSDHEorbDXZ0_O0ZwJQ72AhsRxml8='),
	(31, 'Kilback-Koelpin', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'Tinalmud', 31, 31, 'TV', '0', 'https://media.istockphoto.com/id/883118126/hu/fot%C3%B3/%C3%A9p%C3%ADt%C3%A9szeti-fot%C3%B3k.jpg?s=612x612&w=0&k=20&c=y4ba-8MbI_qDIec97KH-mT-XJU7VolxMRFDAkeQ59mI='),
	(32, 'Kutch-Stehr', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Białobrzegi', 32, 32, 'WiFi', '0', 'https://media.istockphoto.com/id/1533673878/hu/fot%C3%B3/modern-kocka-villa-medenc%C3%A9vel-est%C3%A9nk%C3%A9nt.jpg?s=612x612&w=0&k=20&c=RSBBIMu_vb7GLI4tdfElNA1TRMLQ3QpQ2AP_jbROE2k=');
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;

-- Struktúra mentése tábla book_me. bookings
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
DELETE FROM `bookings`;
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
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.cache: ~0 rows (hozzávetőleg)
DELETE FROM `cache`;

-- Struktúra mentése tábla book_me. cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.cache_locks: ~0 rows (hozzávetőleg)
DELETE FROM `cache_locks`;

-- Struktúra mentése tábla book_me. customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_hungarian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- Tábla adatainak mentése book_me.customers: 22 rows
DELETE FROM `customers`;
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
DELETE FROM `failed_jobs`;

-- Struktúra mentése tábla book_me. jobs
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
DELETE FROM `jobs`;

-- Struktúra mentése tábla book_me. job_batches
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
DELETE FROM `job_batches`;

-- Struktúra mentése tábla book_me. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.migrations: ~2 rows (hozzávetőleg)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_04_22_090617_create_personal_access_tokens_table', 2);

-- Struktúra mentése tábla book_me. password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.password_reset_tokens: ~0 rows (hozzávetőleg)
DELETE FROM `password_reset_tokens`;

-- Struktúra mentése tábla book_me. personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Tábla adatainak mentése book_me.personal_access_tokens: ~0 rows (hozzávetőleg)
DELETE FROM `personal_access_tokens`;
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(6, 'App\\Models\\User', 1, 'my-app-token', '4dc054623e08aac5c2b85854326992d7350b8b7aa6579b7febc9c6e62f266baa', '["*"]', '2024-04-24 06:42:42', NULL, '2024-04-23 10:43:04', '2024-04-24 06:42:42');

-- Struktúra mentése tábla book_me. sessions
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
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('5bTBVIfPxPdY30mUs3YN0EB6ELMHaRdI7I05m4Vc', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2o1N2M2MHRpR0xMVEFheHpKOElmRUpSRHd6RXczM09PNU03ajN5OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9ib29rLW1lLmxvY2FsL2FwYXJ0bWVudC0vMiI7fX0=', 1714048910);

-- Struktúra mentése tábla book_me. users
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
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Alex', 'jozsef.asztalosalex@medicover.hu', NULL, '$2y$12$neIh2KgGL0gCn2ZlXwuA9u9E77KoUmu/R/WkCMDS04z8AN7JvdH22', NULL, '2024-04-17 11:03:34', '2024-04-17 11:03:34');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
