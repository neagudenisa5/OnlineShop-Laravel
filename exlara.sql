-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: feb. 11, 2021 la 03:18 PM
-- Versiune server: 5.7.31
-- Versiune PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `exlara`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2020_12_29_140156_create_tasks_table', 1),
(4, '2020_12_30_131252_create_products_table', 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `photo`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Telefon mobil Samsung Galaxy A51', 'Dual SIM, 128GB, 4GB RAM, 4G, Prism Black', 'https://s13emagst.akamaized.net/products/27773/27772388/images/res_93b93954e4ca32ce8828807d454d1bb4.jpg?width=450&height=450&hash=6D71B40FA31C0569D060328639A55035', 1299.99, NULL, NULL),
(2, 'Ceas smartwatch Samsung Galaxy ', 'Galaxy Watch te conecteaza la lumea din jurul tau.\r\n', 'https://s13emagst.akamaized.net/products/16619/16618167/images/res_135d96c8543b04dfdcb66949b68087c2.jpg?width=450&height=450&hash=B959D7FEB0C80AAEDC2570587B9F98FE', 769.99, NULL, NULL),
(3, 'Adaptor Samsung USB Type C', 'Adaptor Samsung USB Type C - MicroUSB, White', 'https://s13emagst.akamaized.net/products/4049/4048449/images/res_3449b8b05566984fd334058430d0f419.jpg?width=450&height=450&hash=4E73B5896F1E188EF6F0E14A8F04FE46', 25.34, NULL, NULL),
(4, 'Casti bluetooth Samsung Galaxy ', 'Primele noastre casti wireless cu boxe pe doua cai concepute de AKG, cu sunete inalte de calitate.', 'https://s13emagst.akamaized.net/products/28140/28139608/images/res_9061029fa1995203ace7e71ece787a64.jpg?width=450&height=450&hash=CF88E7132B064899424E245D62CEF96D', 529.99, NULL, NULL),
(5, 'Husa de protectie Samsung Galaxy A51', 'Husa portofel Galaxy A51 S View are un buzunar ascuns in interior pentru a transporta in mod convenabil cardurile preferate, zilnic.', 'https://s13emagst.akamaized.net/products/28538/28537497/images/res_f8a0aab120f443cf4a4d918961ecc582.jpg?width=450&height=450&hash=6614959AEF6BE7C7E037131F49470E20', 131.99, NULL, NULL),
(6, 'Acumulator extern Samsung EB-P1100B', '10000 mAh, Dual USB + Micro USB, Pink', 'https://s13emagst.akamaized.net/products/19763/19762829/images/res_9000702ab0347404d4588243d0cc5d0c.jpg?width=450&height=450&hash=44BEDD5A07E134C126DDF6DAE24F94B3', 105, NULL, '2021-01-06 12:57:16'),
(7, 'Incarcator Samsung Super Fast', 'Incarcator Samsung Super Fast Travel Charger, 45W, USB-C, Black', 'https://s13emagst.akamaized.net/products/25064/25063989/images/res_7ee975304cdeec1df60d8d45e75e5907.jpg?width=450&height=450&hash=B2CFA29E586138A9D1CA3F5E1DD4A925', 147.89, NULL, NULL),
(8, 'Tableta Samsung Galaxy Tab A (2019)', 'Tableta Samsung Galaxy Tab A (2019), Quad Core, 8\", 2GB RAM, 32GB, Wi-Fi, Silver', 'https://s13emagst.akamaized.net/products/23962/23961761/images/res_c4471d105578d58b7cc1617f4f4e72f4.jpg?width=450&height=450&hash=8A9C5CEA82AF86966EF64753A3DBD53A', 629.49, NULL, NULL),
(9, 'Cablu de date/incarcare Samsung, Original', 'Cablu de date/incarcare Samsung, Original USB Type-C, S9/S9 Plus/S10, Alb Bulk', 'https://s13emagst.akamaized.net/products/20733/20732697/images/res_8d9a89ba960b8acf4213ced336e62c9a.jpg?width=450&height=450&hash=D4F36DC26964630E18CA5B6C0C27493D', 15, NULL, NULL),
(10, 'Casti Samsung ORIGINALE cu volum control si microfon', 'Casti Samsung ORIGINALE cu volum control si microfon, conector 3.5 mm Jack, model EO-EG920BW, in ambalaj original Samsung si cutie de depozitare, Alb', 'https://s13emagst.akamaized.net/products/26755/26754602/images/res_b9537c24b921a4534ebcab267899fd72.jpg?width=450&height=450&hash=20FD60CE34DEB1551CC5EF0F9FB829C9', 20.23, NULL, NULL),
(11, 'Folie sticla securizata Samsung Galaxy A40, 5D, Black', 'Aceasta este o sticla securizata speciala Samsung A40 ce reuseste sa va protejeze ecranul in totalitate.', 'https://s13emagst.akamaized.net/products/23264/23263131/images/res_71f78889406fdb6fad3c6220d6b4684f.jpg?width=450&height=450&hash=09BBB07C58463975DB599BCA711CD874', 46.29, NULL, NULL),
(12, 'Husa protectie Fully PC & Glass 360° Samsung Galaxy A10', 'Aceasta husa este net superioara celorlalte huse fata + spate de pe piata si NU prezinta acele „punctulete” pe capacul care acopera displayul, prezente la husele Full TPU 360°, care pot afecta usor vizibilitatea.', 'https://s13emagst.akamaized.net/products/27690/27689820/images/res_555e0cd31b4751c3cfc5aa83f88d9593.jpg?width=450&height=450&hash=CD8DDA56223052DED6DB8A8C3F959723', 16.09, NULL, NULL),
(14, 'Produs nou adaugat', 'Acest produs este nou adaugat ca sa testez functia adauga produs nou', 'https://airport-residences.ro/wp-content/uploads/2017/10/nou.png', 3, '2021-01-10 11:41:23', '2021-01-10 12:00:45');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Nicusor', 'nicu@yahoo.com', NULL, '$2y$10$93KP0nnokPWUUL0vKjC46OVNtTpL7SVWGpeQeNyRrB9m8QrkKZsy2', NULL, '2021-01-06 10:50:21', '2021-01-06 10:50:21'),
(2, 'Denisa', 'neagudenisa140@gmail.com', NULL, '$2y$10$PKs4dUs5cJ14CUdmwOUeKu9zmLZh2JykPvjz5yTEV8/H9FEZCKLEu', NULL, '2020-12-30 20:35:05', '2020-12-30 20:35:05'),
(4, 'Sergiu', 'sergiu@yahoo.com', NULL, '$2y$10$qO7xPOWL8BdzmPjxG3nc8eQYX31t9grNzss.4uiadDpynFA0WePAS', NULL, '2021-01-11 15:40:39', '2021-01-11 15:40:39'),
(5, 'Alina', 'alina@yahoo.com', NULL, '$2y$10$..AfFrlD3B.D3RaKqrq03.yMNd4rQDk4O8yzipAOMlexZSg/Ygv0q', NULL, '2021-01-11 15:41:57', '2021-01-11 15:41:57'),
(6, 'Cristina', 'cristina@yahoo.com', NULL, '$2y$10$lkXBxnB.3k9LKOgVFbchNOVCcFYaFd6jL/uNNyv1iuT4L5hvlMWpO', NULL, '2021-01-11 15:42:56', '2021-01-11 15:42:56'),
(7, 'Ion', 'ionel@gmail.com', NULL, '$2y$10$vThNLepHI1QNynqipNeTvOXXmuIVonAkKloYzcSi8rw2L9M8Ue2Vy', NULL, '2021-01-11 15:43:21', '2021-01-11 15:43:21'),
(8, 'Antonia', 'anto@yahoo.com', NULL, '$2y$10$BO0rReTFakMxSytdn3ChoeS/fs8BziX8sl2tkIRg7Aj8BgCDXt.Jm', NULL, '2021-01-11 15:44:21', '2021-01-11 15:44:21'),
(9, 'Stefania', 'stefania@yahoo.com', NULL, '$2y$10$7Hcjg5Y8SpklkonFGfpYqOyx8UD8iHchT4.RkOejKsZ5fmvLvfyXS', NULL, '2021-01-11 15:44:50', '2021-01-11 15:44:50'),
(10, 'Denis', 'denis@gmail.com', NULL, '$2y$10$Rwmfs7dXSFUX6T1pAy6ts.AOYj1Z9rhQkuAwhmCbZJFcx9gyuIXGS', NULL, '2021-01-11 15:45:30', '2021-01-11 15:45:30'),
(11, 'Anca', 'ancuta@gmail.com', NULL, '$2y$10$5xoW5C4zGjcanXHGUiHnQeJog6jNzW660KYSH6NyA5XAMkG0VZfBC', NULL, '2021-01-11 15:45:56', '2021-01-11 15:45:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
