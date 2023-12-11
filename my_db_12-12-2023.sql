-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server-80_nespolo
-- Generation Time: Dec 11, 2023 at 11:20 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

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
(25, 'Can add collection', 7, 'add_collection'),
(26, 'Can change collection', 7, 'change_collection'),
(27, 'Can delete collection', 7, 'delete_collection'),
(28, 'Can view collection', 7, 'view_collection'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add allergeni', 9, 'add_allergeni'),
(34, 'Can change allergeni', 9, 'change_allergeni'),
(35, 'Can delete allergeni', 9, 'delete_allergeni'),
(36, 'Can view allergeni', 9, 'view_allergeni'),
(37, 'Can add tipo prodotto', 10, 'add_tipoprodotto'),
(38, 'Can change tipo prodotto', 10, 'change_tipoprodotto'),
(39, 'Can delete tipo prodotto', 10, 'delete_tipoprodotto'),
(40, 'Can view tipo prodotto', 10, 'view_tipoprodotto'),
(41, 'Can add commanda', 11, 'add_commanda'),
(42, 'Can change commanda', 11, 'change_commanda'),
(43, 'Can delete commanda', 11, 'delete_commanda'),
(44, 'Can view commanda', 11, 'view_commanda'),
(45, 'Can add conto', 12, 'add_conto'),
(46, 'Can change conto', 12, 'change_conto'),
(47, 'Can delete conto', 12, 'delete_conto'),
(48, 'Can view conto', 12, 'view_conto'),
(49, 'Can add conto bakup', 13, 'add_contobakup'),
(50, 'Can change conto bakup', 13, 'change_contobakup'),
(51, 'Can delete conto bakup', 13, 'delete_contobakup'),
(52, 'Can view conto bakup', 13, 'view_contobakup'),
(53, 'Can add tavolo', 14, 'add_tavolo'),
(54, 'Can change tavolo', 14, 'change_tavolo'),
(55, 'Can delete tavolo', 14, 'delete_tavolo'),
(56, 'Can view tavolo', 14, 'view_tavolo'),
(57, 'Can add product allergeni', 15, 'add_productallergeni'),
(58, 'Can change product allergeni', 15, 'change_productallergeni'),
(59, 'Can delete product allergeni', 15, 'delete_productallergeni'),
(60, 'Can view product allergeni', 15, 'view_productallergeni'),
(61, 'Can add ordine', 16, 'add_ordine'),
(62, 'Can change ordine', 16, 'change_ordine'),
(63, 'Can delete ordine', 16, 'delete_ordine'),
(64, 'Can view ordine', 16, 'view_ordine'),
(65, 'Can add elemento ordine', 17, 'add_elementoordine'),
(66, 'Can change elemento ordine', 17, 'change_elementoordine'),
(67, 'Can delete elemento ordine', 17, 'delete_elementoordine'),
(68, 'Can view elemento ordine', 17, 'view_elementoordine'),
(69, 'Can add tagged item', 18, 'add_taggeditem'),
(70, 'Can change tagged item', 18, 'change_taggeditem'),
(71, 'Can delete tagged item', 18, 'delete_taggeditem'),
(72, 'Can view tagged item', 18, 'view_taggeditem'),
(73, 'Can add tag', 19, 'add_tag'),
(74, 'Can change tag', 19, 'change_tag'),
(75, 'Can delete tag', 19, 'delete_tag'),
(76, 'Can view tag', 19, 'view_tag');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$sZIIFWsMYDUErhhn4MIJgb$9dPdodNVIVfaeYwqnAdLF2Rvu6CB+ygIpCTBhSWvJQ0=', '2023-12-10 18:01:48.177826', 1, 'root', '', '', 'ser.sebastiani@gmail.com', 1, 1, '2023-11-25 19:14:51.440862');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commanda_allergeni`
--

CREATE TABLE `commanda_allergeni` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_allergeni`
--

INSERT INTO `commanda_allergeni` (`id`, `title`, `number`) VALUES
(1, 'Glutine', 1),
(2, 'Uova', 2),
(3, 'Latticini', 3),
(4, 'Pesce', 4),
(5, 'Molluschi', 5),
(6, 'Crostacei', 6),
(7, 'Frutta a guscio', 7),
(8, 'Arachidi', 8),
(9, 'Soia', 9),
(10, 'Sesamo', 10),
(11, 'Senape', 11),
(12, 'Lupini', 12),
(13, 'Anidride solforosa e solfit', 13);

-- --------------------------------------------------------

--
-- Table structure for table `commanda_collection`
--

CREATE TABLE `commanda_collection` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_collection`
--

INSERT INTO `commanda_collection` (`id`, `title`) VALUES
(1, 'Pizzeria'),
(2, 'Cucina'),
(3, 'Bar');

-- --------------------------------------------------------

--
-- Table structure for table `commanda_conto`
--

CREATE TABLE `commanda_conto` (
  `id` bigint NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `tavolo_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commanda_contobakup`
--

CREATE TABLE `commanda_contobakup` (
  `id` bigint NOT NULL,
  `tavolo` varchar(255) NOT NULL,
  `order_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commanda_elementoordine`
--

CREATE TABLE `commanda_elementoordine` (
  `id` bigint NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL
) ;

--
-- Dumping data for table `commanda_elementoordine`
--

INSERT INTO `commanda_elementoordine` (`id`, `quantity`, `order_id`, `product_id`) VALUES
(8, 1, 25, 7),
(9, 1, 25, 73),
(11, 1, 24, 4),
(12, 3, 24, 29);

-- --------------------------------------------------------

--
-- Table structure for table `commanda_ordine`
--

CREATE TABLE `commanda_ordine` (
  `id` bigint NOT NULL,
  `tavolo_id` bigint NOT NULL,
  `payment_status` varchar(1) NOT NULL,
  `placed_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_ordine`
--

INSERT INTO `commanda_ordine` (`id`, `tavolo_id`, `payment_status`, `placed_at`) VALUES
(24, 11, 'P', '2023-12-11 17:14:54.231920'),
(25, 6, 'P', '2023-12-11 17:22:40.429153');

-- --------------------------------------------------------

--
-- Table structure for table `commanda_product`
--

CREATE TABLE `commanda_product` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `price` decimal(6,2) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `collection_id` bigint NOT NULL,
  `tipo_prodotto_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_product`
--

INSERT INTO `commanda_product` (`id`, `title`, `description`, `price`, `last_update`, `collection_id`, `tipo_prodotto_id`) VALUES
(2, 'Ragù', 'Ragù.', 8.00, '2023-11-26 00:35:37.749690', 2, 7),
(3, 'Pesto', 'Pesto.', 8.00, '2023-11-26 00:36:47.094417', 2, 7),
(4, 'Penne alla zingara', 'Ragù panna e porcini.', 9.00, '2023-11-25 22:37:23.350233', 2, 7),
(5, 'Coca piccola', 'Coca piccola.', 3.00, '2023-11-25 22:36:02.279041', 3, 2),
(6, 'Coca media', 'Coca media.', 4.00, '2023-11-25 22:35:57.543923', 3, 2),
(7, 'Margherita', 'Pomodoro, mozzarella.', 6.50, '2023-11-25 22:36:11.219716', 1, 9),
(8, 'Marinara', 'Pomodoro, aglio, origano.', 6.00, '2023-11-25 22:36:20.531274', 1, 9),
(9, 'Salamino piccante', 'Pomodoro, mozzarella, salame piccante.', 8.00, '2023-11-25 22:36:58.566439', 1, 9),
(10, 'Calsone classico', 'Prosciutto cotto, mozzarella.', 9.00, '2023-11-25 22:35:50.253482', 1, 11),
(11, 'Bomba', 'Pomodoro, mozzarella, salamino, capperi, peperoncino, nduja.', 10.00, '2023-11-25 22:35:44.375171', 1, 13),
(12, 'Prosciutto cotto', 'Pomodoro, mozzarella, prosciutto cotto.', 7.50, '2023-11-25 22:36:44.259975', 1, 9),
(13, 'Prosciutto crudo', 'Pomodoro, mozzarella, prosciutto crudo', 8.00, '2023-11-25 22:30:16.632572', 1, 9),
(14, 'Prosciutto e funghi', 'Pomodoro, mozzarella, prosciutto cotto, funghi.', 8.50, '2023-11-25 22:37:28.310034', 1, 9),
(15, 'Napoli', 'Pomodoro, mozzarella, capperi, acciughe.', 9.00, '2023-11-25 22:36:28.846985', 1, 9),
(16, 'Vera napoli', 'Pomodoro, mozzarella, capperi, pomodori ciliegini, aglio, origano.', 8.00, '2023-11-25 22:37:16.564949', 1, 9),
(17, '4 stagioni:', 'Pomodoro, mozzarella, prosciutto cotto, funghi, carciofi, olive.', 9.00, '2023-11-25 22:33:50.145485', 1, 9),
(18, 'Pomodoro', 'Pomodoro.', 6.50, '2023-11-26 00:35:53.319540', 2, 7),
(19, 'Arrabbiata', 'Arrabbiata.', 7.00, '2023-11-26 00:36:09.269953', 2, 7),
(20, 'Rosè', 'Rosè.', 7.00, '2023-11-26 00:36:18.168436', 2, 7),
(21, 'Nduja', 'Nduja.', 8.00, '2023-11-26 00:36:29.677742', 2, 7),
(22, '4 formaggi', '4 formaggi.', 8.00, '2023-11-26 00:37:30.282727', 2, 7),
(23, 'Panna e prosciutto cotto', 'Panna e prosciutto cotto.', 8.00, '2023-11-26 00:37:59.645158', 2, 7),
(24, 'Acqua 50 cl', 'Acqua 50 cl.', 1.50, '2023-11-26 00:39:09.207674', 3, 1),
(25, 'Acqua 1 L', 'Acqua 1 L.', 1.50, '2023-11-26 00:40:11.149111', 3, 1),
(26, 'Lattina Coca', 'Lattina Coca', 2.50, '2023-11-26 00:40:29.152857', 3, 1),
(27, 'Caraffa 1 L Coca', 'Caraffa 1 L Coca.', 9.00, '2023-11-26 00:43:02.090800', 3, 2),
(28, 'Birra piccola', 'Birra piccola.', 3.50, '2023-11-26 00:42:04.402628', 3, 2),
(29, 'Birra media', 'Birra media.', 4.50, '2023-11-26 00:42:29.549749', 3, 2),
(30, 'Caraffa 1 L Birra', 'Caraffa 1 L Birra.', 10.00, '2023-11-26 00:43:27.363917', 3, 2),
(31, 'Konig Ludwig hell 0.5l', 'Konig Ludwig hell 0.5l.', 4.00, '2023-11-26 00:44:06.803787', 3, 3),
(32, 'Ceres  33 cl', 'Ceres  33 cl.', 3.00, '2023-11-26 00:44:30.992550', 3, 3),
(33, 'Beck’s   33 cl', 'Beck’s   33 cl.', 3.00, '2023-11-26 00:44:56.716478', 3, 3),
(34, 'Tennent’s', 'Tennent’s.', 3.00, '2023-11-26 00:45:16.538643', 3, 3),
(35, 'Moretti  66 cl', 'Moretti  66 cl.', 3.00, '2023-11-26 00:45:34.878840', 3, 3),
(36, 'Haineken  66 cl', 'Haineken  66 cl', 4.00, '2023-11-26 00:46:03.955299', 3, 3),
(37, 'La Pieve Rosso Toscano', 'La Pieve Rosso Toscano', 6.00, '2023-11-26 00:46:33.684105', 3, 4),
(38, 'Chianti docg superiore', 'Chianti docg superiore', 10.00, '2023-11-26 00:46:55.107590', 3, 4),
(39, 'Negroamaro  Salento', 'Negroamaro  Salento', 12.00, '2023-11-26 00:47:35.888648', 3, 4),
(40, 'La Pieve bianco', 'La Pieve bianco', 6.00, '2023-11-26 00:48:02.046274', 3, 15),
(41, 'Pinot Grigio', 'Pinot Grigio', 10.00, '2023-11-26 00:48:20.505006', 3, 15),
(42, 'Chardonnay La Pieve', 'Chardonnay La Pieve', 12.00, '2023-11-26 00:48:37.630133', 3, 15),
(43, 'Capricciosa', 'Pomodoro, mozzarella, prosciutto cotto, funghi, carciofi, olive, wurstel.', 9.00, '2023-11-26 01:03:11.955833', 1, 9),
(44, 'Salsiccia', 'Pomodoro, mozzarella, salsiccia', 8.00, '2023-11-26 01:04:01.931679', 1, 9),
(45, 'Speck e mascarpone', 'Pomodoro, mozzarella, speck , mascarpone.', 8.00, '2023-11-26 01:05:33.976706', 1, 9),
(46, '4 formaggi', 'Pomodoro, mozzarella, scamorza, grana, gorgonzola.', 9.00, '2023-11-26 01:23:26.107855', 1, 9),
(47, 'Speck e scamorza', 'Pomodoro, mozzarella, speck, scamorza.', 8.00, '2023-11-26 01:24:23.857310', 1, 9),
(48, 'Vegetariana', 'Pomodoro, mozzarella, zucchine, melanzane, peperoni.', 7.00, '2023-11-26 01:25:10.925249', 1, 9),
(49, 'Tonno e cipolla', 'Pomodoro, mozzarella, tonno, cipolla.', 9.00, '2023-11-26 01:26:43.752876', 1, 9),
(50, 'Rucolina', 'Pomodoro, mozzarella, crudo e rucola.', 8.50, '2023-11-26 01:27:33.582930', 1, 9),
(51, 'Rustico', 'Tagliere di bruschette miste con sformatini.', 9.00, '2023-12-11 10:05:19.501066', 2, 5),
(52, 'Classico', 'Selezione di salumi toscani, formaggi, sottoli, crostini, zonzelle.', 9.00, '2023-12-11 10:09:21.184266', 2, 5),
(53, 'Nespolo', 'Selezione di formaggi con marmellate e miele, crostini, mozzarelline fior di latte, prosciutto crudo, zonzelle .', 9.00, '2023-12-11 10:18:10.040206', 3, 5),
(54, 'Piccante', 'Selezione di formaggi con marmellate e miele, crostini, mozzarelline fior di latte, prosciutto crudo, zonzelle .', 9.00, '2023-12-11 10:19:03.343324', 3, 5),
(55, 'Gustoso', 'Prosciutto crudo, gorgonzola, stracchino, rucola, zonzelle.', 9.00, '2023-12-11 10:20:00.084081', 3, 5),
(56, 'Gran Tagliere', 'Per due persone, a scelta tra classico, nespolo, gustoso e piccante.', 22.00, '2023-12-11 10:20:46.468966', 3, 5),
(57, 'Insalatona', 'Insalata mista, tonno, mozzarella, pomodori, olive nere.', 10.00, '2023-12-11 10:21:44.442975', 3, 8),
(58, 'Insalata di mare', 'Insalata mista, frutti di mare, pomodori, olive nere, prezzemolo.', 12.00, '2023-12-11 10:23:21.524049', 3, 8),
(59, 'Insalatona di tacchino', 'Insalata mista, tacchino arrosto, pomodoro, mozzarella.', 10.00, '2023-12-11 10:26:46.128203', 3, 8),
(60, 'Insalatona di salmone', 'Insalata mista, salmone affumicato, pomodoro, mozzarella, olive nere.', 12.00, '2023-12-11 10:27:36.911966', 3, 8),
(61, 'Biancaneve', 'Mozzarella.', 6.00, '2023-12-11 10:29:16.318409', 1, 10),
(62, 'Nespolo', 'Mozzarella, pomodoro a fette, prosciutto crudo, grana.', 9.00, '2023-12-11 10:29:57.002922', 1, 10),
(63, 'Inverno', 'Mozzarella, patatine fritte, funghi, rosmarino.', 10.00, '2023-12-11 11:04:37.950078', 1, 10),
(64, 'Porcini', 'Mozzarella, funghi porcini.', 11.00, '2023-12-11 11:05:18.211426', 1, 10),
(65, 'Salsiccia e friarielli', 'Mozzarella, salsiccia, friarielli.', 9.00, '2023-12-11 11:06:01.246597', 1, 10),
(66, 'Covaccino all’olio', 'Sale, olio.', 5.00, '2023-12-11 11:06:36.715442', 1, 10),
(67, 'Classico', 'Prosciutto cotto, mozzarella.', 9.00, '2023-12-11 14:46:46.873713', 1, 11),
(68, 'Ripieno', 'Prosciutto cotto, mozzarella, funghi, carciofi, olive.', 10.00, '2023-12-11 14:47:19.428628', 1, 11),
(69, 'Ricottino', 'Mozzarella, salamino piccante, ricotta, pepe.', 9.00, '2023-12-11 14:47:57.402897', 1, 11),
(70, 'Diavolo d’un calzone', 'Pomodoro, mozzarella, salamino piccante,capperi, parmigiano, peperoncino.', 10.00, '2023-12-11 14:48:35.288503', 1, 11),
(71, 'Andy', 'Mozzarella in cottura e prosciutto cotto in uscita.', 9.00, '2023-12-11 14:49:27.696131', 1, 12),
(72, 'Emma', 'Mozzarella in cottura, prosciutto crudo in uscita.', 9.00, '2023-12-11 14:49:59.788794', 1, 11),
(73, 'Maialona', 'Pomodoro, mozzarella, prosciutto cotto, salamino, salsiccia, wurstel.', 10.00, '2023-12-11 14:50:54.029698', 1, 13),
(74, 'Amore', 'Pomodoro, mozzarella, salamino piccante, peperoni, olive.', 9.00, '2023-12-11 16:41:04.990359', 1, 13),
(75, 'Frutti di mare', 'Pomodoro, mozzarella, salamino piccante, peperoni, olive.', 11.00, '2023-12-11 16:41:53.304309', 1, 13),
(76, 'Gorgonzola', 'Pomodoro, mozzarella, gorgonzola.', 8.50, '2023-12-11 16:42:31.355274', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `commanda_product_allergeni`
--

CREATE TABLE `commanda_product_allergeni` (
  `id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `allergeni_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_product_allergeni`
--

INSERT INTO `commanda_product_allergeni` (`id`, `product_id`, `allergeni_id`) VALUES
(7, 2, 13),
(21, 3, 3),
(22, 3, 7),
(17, 4, 1),
(14, 4, 2),
(18, 4, 3),
(15, 4, 13),
(25, 7, 1),
(26, 7, 2),
(27, 8, 1),
(28, 9, 1),
(29, 9, 3),
(30, 10, 1),
(31, 10, 3),
(32, 11, 1),
(33, 11, 3),
(34, 11, 13),
(35, 12, 1),
(36, 12, 3),
(37, 13, 1),
(38, 13, 3),
(39, 14, 1),
(40, 14, 3),
(41, 15, 1),
(42, 15, 3),
(43, 15, 4),
(44, 15, 13),
(45, 16, 1),
(46, 16, 3),
(47, 16, 13),
(48, 17, 1),
(49, 17, 3),
(50, 17, 13),
(59, 20, 3),
(63, 22, 3),
(64, 23, 3),
(65, 43, 1),
(66, 43, 3),
(67, 43, 13),
(68, 44, 1),
(69, 44, 13),
(70, 45, 1),
(71, 45, 3),
(72, 46, 1),
(73, 46, 3),
(74, 47, 1),
(75, 47, 3),
(76, 48, 1),
(77, 48, 3),
(78, 49, 1),
(79, 49, 3),
(80, 49, 4),
(81, 50, 1),
(82, 50, 3),
(83, 51, 1),
(84, 51, 2),
(85, 51, 3),
(86, 51, 13),
(87, 52, 1),
(88, 52, 3),
(89, 52, 13),
(90, 53, 1),
(91, 53, 3),
(92, 53, 13),
(93, 54, 1),
(94, 54, 3),
(95, 54, 13),
(96, 55, 1),
(97, 55, 3),
(98, 57, 3),
(99, 57, 13),
(100, 58, 3),
(101, 58, 4),
(102, 58, 5),
(103, 58, 6),
(104, 58, 13),
(105, 59, 3),
(106, 59, 13),
(107, 60, 3),
(108, 60, 4),
(109, 60, 13),
(110, 61, 1),
(111, 61, 3),
(112, 62, 1),
(113, 62, 3),
(114, 63, 1),
(115, 63, 3),
(116, 64, 1),
(117, 64, 3),
(118, 64, 13),
(119, 65, 1),
(120, 65, 3),
(121, 65, 13),
(122, 66, 1),
(123, 67, 1),
(124, 67, 3),
(125, 68, 1),
(126, 68, 3),
(127, 68, 13),
(128, 69, 1),
(129, 69, 3),
(130, 70, 1),
(131, 70, 3),
(132, 70, 13),
(133, 71, 1),
(134, 71, 3),
(135, 72, 1),
(136, 72, 3),
(137, 73, 1),
(138, 73, 3),
(139, 74, 1),
(140, 74, 3),
(141, 74, 13),
(142, 75, 1),
(143, 75, 3),
(144, 75, 4),
(145, 75, 5),
(146, 75, 6),
(147, 75, 13),
(148, 76, 1),
(149, 76, 3);

-- --------------------------------------------------------

--
-- Table structure for table `commanda_tavolo`
--

CREATE TABLE `commanda_tavolo` (
  `id` bigint NOT NULL,
  `nome` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_tavolo`
--

INSERT INTO `commanda_tavolo` (`id`, `nome`, `created_at`) VALUES
(6, 'rospigliosi', '2023-11-25 22:38:35.775136'),
(7, 'spinelli', '2023-11-25 23:58:15.413287'),
(8, 'sebastiani', '2023-11-26 01:51:11.141839'),
(11, 'test', '2023-12-11 17:21:37.449511');

-- --------------------------------------------------------

--
-- Table structure for table `commanda_tipoprodotto`
--

CREATE TABLE `commanda_tipoprodotto` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `collection_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_tipoprodotto`
--

INSERT INTO `commanda_tipoprodotto` (`id`, `title`, `description`, `collection_id`) VALUES
(1, 'Bibite', 'Bibite', 3),
(2, 'Bibite alla spina', 'Bibite alla spina', 3),
(3, 'Birre', 'Birre', 3),
(4, 'Vini rossi', 'Vini rossi', 3),
(5, 'Antipasti', 'Antipasti', 2),
(7, 'Primi', 'Primi Piatti', 2),
(8, 'Insalatone', 'Le nostre insalatone', 2),
(9, 'Pizze', 'Le nostre pizze', 1),
(10, 'Pizze binache', 'Le bianche', 1),
(11, 'Calzoni', 'I calzoni', 1),
(12, 'Panozzi', 'I panozzi', 1),
(13, 'Specialità', 'Le specialità', 1),
(14, 'Mega pizze', 'Le mega pizze', 1),
(15, 'Vini bianchi', 'Vini bianchi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-25 19:44:17.661279', '13', '1 - Anidride solforosa e solfit', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(2, '2023-11-25 19:44:23.928717', '8', '2 - Arachidi', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(3, '2023-11-25 19:44:51.009484', '6', '3 - Crostacei', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(4, '2023-11-25 19:44:51.011677', '7', '4 - Frutta a guscio', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(5, '2023-11-25 19:44:51.013996', '1', '5 - Glutine', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(6, '2023-11-25 19:44:51.016938', '3', '6 - Latticini', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(7, '2023-11-25 19:44:51.019495', '12', '7 - Lupini', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(8, '2023-11-25 19:44:51.021741', '5', '8 - Molluschi', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(9, '2023-11-25 19:44:51.023394', '4', '9 - Pesce', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(10, '2023-11-25 19:44:51.025197', '11', '10 - Senape', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(11, '2023-11-25 19:44:51.027582', '10', '11 - Sesamo', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(12, '2023-11-25 19:44:51.029401', '9', '12 - Soia', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(13, '2023-11-25 19:44:51.031245', '2', '13 - Uova', 2, '[{\"changed\": {\"fields\": [\"Number\"]}}]', 9, 1),
(14, '2023-11-25 19:46:11.069303', '1', 'Ragù', 1, '[{\"added\": {}}]', 8, 1),
(15, '2023-11-25 19:59:53.241951', '1', 'Ragù', 3, '', 8, 1),
(16, '2023-11-25 20:00:58.253020', '2', 'Ragù', 1, '[{\"added\": {}}]', 8, 1),
(17, '2023-11-25 20:01:44.338017', '3', 'Pesto', 1, '[{\"added\": {}}]', 8, 1),
(18, '2023-11-25 20:02:57.864305', '4', 'Penne alla zingara', 1, '[{\"added\": {}}]', 8, 1),
(19, '2023-11-25 20:07:22.893648', '5', 'Coca piccola', 1, '[{\"added\": {}}]', 8, 1),
(20, '2023-11-25 20:07:45.246579', '6', 'Coca media', 1, '[{\"added\": {}}]', 8, 1),
(21, '2023-11-25 20:12:56.429187', '4', 'Penne alla zingara', 2, '[{\"changed\": {\"fields\": [\"Allergeni\"]}}]', 8, 1),
(22, '2023-11-25 20:13:11.982922', '3', 'Pesto', 2, '[{\"changed\": {\"fields\": [\"Allergeni\"]}}]', 8, 1),
(23, '2023-11-25 20:14:10.352448', '2', 'Ragù', 2, '[{\"changed\": {\"fields\": [\"Allergeni\"]}}]', 8, 1),
(24, '2023-11-25 20:15:44.299461', '7', 'Margherita', 1, '[{\"added\": {}}]', 8, 1),
(25, '2023-11-25 20:16:31.680257', '8', 'Marinara', 1, '[{\"added\": {}}]', 8, 1),
(26, '2023-11-25 20:17:22.613454', '9', 'Salamino piccante', 1, '[{\"added\": {}}]', 8, 1),
(27, '2023-11-25 20:18:48.575289', '10', 'Calsone classico', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-11-25 20:20:32.952681', '11', 'Bomba', 1, '[{\"added\": {}}]', 8, 1),
(29, '2023-11-25 20:47:30.716357', '1', 'Tavolo object (1)', 1, '[{\"added\": {}}]', 14, 1),
(30, '2023-11-25 20:48:25.382247', '1', 'Tavolo object (1)', 3, '', 14, 1),
(31, '2023-11-25 20:51:48.507183', '2', 'Tavolo object (2)', 1, '[{\"added\": {}}]', 14, 1),
(32, '2023-11-25 20:52:01.493976', '3', 'Tavolo object (3)', 1, '[{\"added\": {}}]', 14, 1),
(33, '2023-11-25 20:52:12.050901', '4', 'Tavolo object (4)', 1, '[{\"added\": {}}]', 14, 1),
(34, '2023-11-25 20:52:26.097482', '5', 'Tavolo object (5)', 1, '[{\"added\": {}}]', 14, 1),
(35, '2023-11-25 20:54:00.167656', '1', 'Commanda object (1)', 1, '[{\"added\": {}}]', 11, 1),
(36, '2023-11-25 20:54:15.549671', '1', 'Commanda object (1)', 3, '', 11, 1),
(37, '2023-11-25 20:59:50.749759', '2', 'Commanda object (2)', 1, '[{\"added\": {}}]', 11, 1),
(38, '2023-11-25 21:00:27.988881', '2', 'Commanda object (2)', 3, '', 11, 1),
(39, '2023-11-25 21:02:13.210737', '3', 'Commanda object (3)', 1, '[{\"added\": {}}]', 11, 1),
(40, '2023-11-25 21:02:24.702975', '4', 'Commanda object (4)', 1, '[{\"added\": {}}]', 11, 1),
(41, '2023-11-25 21:18:53.958149', '4', 'Order for rospigliosi - Total: $6.50', 3, '', 11, 1),
(42, '2023-11-25 21:19:01.146118', '3', 'Order for rospigliosi - Total: $10.00', 3, '', 11, 1),
(43, '2023-11-25 21:19:16.264596', '5', 'Order for rospigliosi - Total: $13.00', 1, '[{\"added\": {}}]', 11, 1),
(44, '2023-11-25 21:19:35.355218', '5', 'Order for rospigliosi - Total: $19.00', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(45, '2023-11-25 21:19:42.469873', '5', 'Order for rospigliosi - Total: $16.00', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(46, '2023-11-25 21:19:57.503934', '5', 'Order for rospigliosi - Total: $20.00', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(47, '2023-11-25 21:20:06.723416', '5', 'Order for rospigliosi - Total: $10.00', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(48, '2023-11-25 21:20:12.880673', '5', 'Order for rospigliosi - Total: $4.00', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(49, '2023-11-25 21:20:35.527721', '5', 'Order for rospigliosi - Total: $4.00', 3, '', 11, 1),
(50, '2023-11-25 21:20:55.872623', '6', 'Order for rospigliosi - Total: $4.00', 1, '[{\"added\": {}}]', 11, 1),
(51, '2023-11-25 21:21:04.340127', '6', 'Order for rospigliosi - Total: $6.00', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(52, '2023-11-25 21:21:11.848301', '6', 'Order for rospigliosi - Total: $6.50', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(53, '2023-11-25 21:21:21.320368', '6', 'Order for rospigliosi - Total: $29.50', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(54, '2023-11-25 21:21:31.260820', '6', 'Order for rospigliosi - Total: $44.50', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(55, '2023-11-25 21:21:38.927054', '6', 'Order for rospigliosi - Total: $31.50', 2, '[{\"changed\": {\"fields\": [\"Product\"]}}]', 11, 1),
(56, '2023-11-25 21:21:49.902091', '6', 'Order for rospigliosi - Total: $31.50', 3, '', 11, 1),
(57, '2023-11-25 21:22:14.668561', '7', 'Order for rospigliosi - Total: $7.00', 1, '[{\"added\": {}}]', 11, 1),
(58, '2023-11-25 21:34:49.422014', '7', 'Commanda object (7)', 2, '[]', 11, 1),
(59, '2023-11-25 21:40:31.571751', '8', 'Commanda object (8)', 1, '[{\"added\": {}}]', 11, 1),
(60, '2023-11-25 21:40:43.464841', '8', 'Commanda object (8)', 3, '', 11, 1),
(61, '2023-11-25 22:04:21.573410', '9', 'Commanda object (9)', 1, '[{\"added\": {}}]', 11, 1),
(62, '2023-11-25 22:04:46.552879', '10', 'Commanda object (10)', 1, '[{\"added\": {}}]', 11, 1),
(63, '2023-11-25 22:05:40.393946', '10', 'Commanda object (10)', 3, '', 11, 1),
(64, '2023-11-25 22:05:40.403302', '9', 'Commanda object (9)', 3, '', 11, 1),
(65, '2023-11-25 22:19:18.721828', '1', 'Ordine object (1)', 1, '[{\"added\": {}}]', 16, 1),
(66, '2023-11-25 22:19:59.811333', '2', 'Ordine object (2)', 1, '[{\"added\": {}}]', 16, 1),
(67, '2023-11-25 22:20:30.856743', '1', 'Ordine object (1)', 3, '', 16, 1),
(68, '2023-11-25 22:20:38.423730', '2', 'Ordine object (2)', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 16, 1),
(69, '2023-11-25 22:21:42.283057', '3', 'Ordine object (3)', 1, '[{\"added\": {}}]', 16, 1),
(70, '2023-11-25 22:22:46.888888', '4', 'Ordine object (4)', 1, '[{\"added\": {}}]', 16, 1),
(71, '2023-11-25 22:23:40.287174', '3', 'Ordine object (3)', 3, '', 16, 1),
(72, '2023-11-25 22:24:02.606426', '5', 'Ordine object (5)', 1, '[{\"added\": {}}]', 16, 1),
(73, '2023-11-25 22:24:24.411091', '2', 'rospigliosi', 3, '', 14, 1),
(74, '2023-11-25 22:25:08.832996', '6', 'Ordine object (6)', 1, '[{\"added\": {}}]', 16, 1),
(75, '2023-11-25 22:25:31.120963', '5', 'spinelli', 3, '', 14, 1),
(76, '2023-11-25 22:29:37.433043', '12', 'Prosciutto cotto', 1, '[{\"added\": {}}]', 8, 1),
(77, '2023-11-25 22:30:16.707900', '13', 'Prosciutto crudo', 1, '[{\"added\": {}}]', 8, 1),
(78, '2023-11-25 22:31:05.279691', '14', 'Prosciutto e funghi', 1, '[{\"added\": {}}]', 8, 1),
(79, '2023-11-25 22:31:57.432336', '15', 'Napoli', 1, '[{\"added\": {}}]', 8, 1),
(80, '2023-11-25 22:33:00.461835', '16', 'Vera napoli', 1, '[{\"added\": {}}]', 8, 1),
(81, '2023-11-25 22:33:50.149812', '17', '4 stagioni:', 1, '[{\"added\": {}}]', 8, 1),
(82, '2023-11-25 22:33:55.518855', '12', 'Prosciutto cotto', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(83, '2023-11-25 22:34:04.874093', '9', 'Salamino piccante', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(84, '2023-11-25 22:35:44.377614', '11', 'Bomba', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(85, '2023-11-25 22:35:50.255874', '10', 'Calsone classico', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(86, '2023-11-25 22:35:57.547565', '6', 'Coca media', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(87, '2023-11-25 22:36:02.281445', '5', 'Coca piccola', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(88, '2023-11-25 22:36:11.222691', '7', 'Margherita', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(89, '2023-11-25 22:36:20.533935', '8', 'Marinara', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(90, '2023-11-25 22:36:28.850918', '15', 'Napoli', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(91, '2023-11-25 22:36:34.378158', '4', 'Penne alla zingara', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(92, '2023-11-25 22:36:39.593965', '3', 'Pesto', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(93, '2023-11-25 22:36:44.262645', '12', 'Prosciutto cotto', 2, '[]', 8, 1),
(94, '2023-11-25 22:36:49.433659', '14', 'Prosciutto e funghi', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(95, '2023-11-25 22:36:54.657279', '2', 'Ragù', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(96, '2023-11-25 22:36:58.568550', '9', 'Salamino piccante', 2, '[]', 8, 1),
(97, '2023-11-25 22:37:16.568628', '16', 'Vera napoli', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(98, '2023-11-25 22:37:20.757804', '4', 'Penne alla zingara', 2, '[]', 8, 1),
(99, '2023-11-25 22:37:23.352946', '4', 'Penne alla zingara', 2, '[]', 8, 1),
(100, '2023-11-25 22:37:28.312669', '14', 'Prosciutto e funghi', 2, '[]', 8, 1),
(101, '2023-11-25 22:38:10.452772', '4', '2', 3, '', 14, 1),
(102, '2023-11-25 22:38:10.462156', '3', '1', 3, '', 14, 1),
(103, '2023-11-25 22:38:35.776042', '6', 'rospigliosi', 1, '[{\"added\": {}}]', 14, 1),
(104, '2023-11-25 22:38:50.622512', '7', 'Ordine object (7)', 1, '[{\"added\": {}}]', 16, 1),
(105, '2023-11-25 22:46:47.083494', '8', 'Ordine object (8)', 1, '[{\"added\": {}}]', 16, 1),
(106, '2023-11-25 23:58:15.416804', '7', 'spinelli', 1, '[{\"added\": {}}]', 14, 1),
(107, '2023-11-25 23:58:26.776977', '9', 'Ordine object (9)', 1, '[{\"added\": {}}]', 16, 1),
(108, '2023-11-26 00:32:00.532020', '18', 'Pomodoro', 1, '[{\"added\": {}}]', 8, 1),
(109, '2023-11-26 00:32:37.856276', '19', 'Arrabbiata', 1, '[{\"added\": {}}]', 8, 1),
(110, '2023-11-26 00:34:30.169577', '20', 'Rosè', 1, '[{\"added\": {}}]', 8, 1),
(111, '2023-11-26 00:34:51.544122', '21', 'Nduja', 1, '[{\"added\": {}}]', 8, 1),
(112, '2023-11-26 00:35:37.754981', '2', 'Ragù', 2, '[{\"changed\": {\"fields\": [\"Allergeni\"]}}]', 8, 1),
(113, '2023-11-26 00:35:53.324130', '18', 'Pomodoro', 2, '[{\"changed\": {\"fields\": [\"Allergeni\"]}}]', 8, 1),
(114, '2023-11-26 00:36:09.278969', '19', 'Arrabbiata', 2, '[{\"changed\": {\"fields\": [\"Allergeni\"]}}]', 8, 1),
(115, '2023-11-26 00:36:18.173605', '20', 'Rosè', 2, '[{\"changed\": {\"fields\": [\"Allergeni\"]}}]', 8, 1),
(116, '2023-11-26 00:36:29.681500', '21', 'Nduja', 2, '[{\"changed\": {\"fields\": [\"Allergeni\"]}}]', 8, 1),
(117, '2023-11-26 00:36:47.097873', '3', 'Pesto', 2, '[{\"changed\": {\"fields\": [\"Allergeni\"]}}]', 8, 1),
(118, '2023-11-26 00:37:30.285547', '22', '4 formaggi', 1, '[{\"added\": {}}]', 8, 1),
(119, '2023-11-26 00:37:59.648950', '23', 'Panna e prosciutto cotto', 1, '[{\"added\": {}}]', 8, 1),
(120, '2023-11-26 00:39:09.210671', '24', 'Acqua 50 cl', 1, '[{\"added\": {}}]', 8, 1),
(121, '2023-11-26 00:39:52.952563', '25', 'Acqua 1 L', 1, '[{\"added\": {}}]', 8, 1),
(122, '2023-11-26 00:40:11.152196', '25', 'Acqua 1 L', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 8, 1),
(123, '2023-11-26 00:40:29.155452', '26', 'Lattina Coca', 1, '[{\"added\": {}}]', 8, 1),
(124, '2023-11-26 00:41:30.247110', '27', 'Caraffa 1 L', 1, '[{\"added\": {}}]', 8, 1),
(125, '2023-11-26 00:42:04.405286', '28', 'Birra piccola', 1, '[{\"added\": {}}]', 8, 1),
(126, '2023-11-26 00:42:29.552705', '29', 'Birra media', 1, '[{\"added\": {}}]', 8, 1),
(127, '2023-11-26 00:43:02.093795', '27', 'Caraffa 1 L Coca', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 8, 1),
(128, '2023-11-26 00:43:27.366939', '30', 'Caraffa 1 L Birra', 1, '[{\"added\": {}}]', 8, 1),
(129, '2023-11-26 00:44:06.806986', '31', 'Konig Ludwig hell 0.5l', 1, '[{\"added\": {}}]', 8, 1),
(130, '2023-11-26 00:44:30.996179', '32', 'Ceres  33 cl', 1, '[{\"added\": {}}]', 8, 1),
(131, '2023-11-26 00:44:56.720241', '33', 'Beck’s   33 cl', 1, '[{\"added\": {}}]', 8, 1),
(132, '2023-11-26 00:45:16.541284', '34', 'Tennent’s', 1, '[{\"added\": {}}]', 8, 1),
(133, '2023-11-26 00:45:34.881479', '35', 'Moretti  66 cl', 1, '[{\"added\": {}}]', 8, 1),
(134, '2023-11-26 00:46:03.958241', '36', 'Haineken  66 cl', 1, '[{\"added\": {}}]', 8, 1),
(135, '2023-11-26 00:46:33.687345', '37', 'La Pieve Rosso Toscano', 1, '[{\"added\": {}}]', 8, 1),
(136, '2023-11-26 00:46:55.111083', '38', 'Chianti docg superiore', 1, '[{\"added\": {}}]', 8, 1),
(137, '2023-11-26 00:47:35.891318', '39', 'Negroamaro  Salento', 1, '[{\"added\": {}}]', 8, 1),
(138, '2023-11-26 00:48:02.049347', '40', 'La Pieve bianco', 1, '[{\"added\": {}}]', 8, 1),
(139, '2023-11-26 00:48:20.508702', '41', 'Pinot Grigio', 1, '[{\"added\": {}}]', 8, 1),
(140, '2023-11-26 00:48:37.633022', '42', 'Chardonnay La Pieve', 1, '[{\"added\": {}}]', 8, 1),
(141, '2023-11-26 01:03:11.961156', '43', 'Capricciosa', 1, '[{\"added\": {}}]', 8, 1),
(142, '2023-11-26 01:04:01.935890', '44', 'Salsiccia', 1, '[{\"added\": {}}]', 8, 1),
(143, '2023-11-26 01:05:33.979924', '45', 'Speck e mascarpone', 1, '[{\"added\": {}}]', 8, 1),
(144, '2023-11-26 01:10:28.426441', '10', 'Ordine object (10)', 1, '[{\"added\": {}}]', 16, 1),
(145, '2023-11-26 01:13:18.292316', '6', 'rospigliosi', 2, '[]', 14, 1),
(146, '2023-11-26 01:23:26.112137', '46', '4 formaggi - Pizze', 1, '[{\"added\": {}}]', 8, 1),
(147, '2023-11-26 01:24:23.860808', '47', 'Speck e scamorza - Pizze', 1, '[{\"added\": {}}]', 8, 1),
(148, '2023-11-26 01:25:10.928380', '48', 'Vegetariana - Pizze', 1, '[{\"added\": {}}]', 8, 1),
(149, '2023-11-26 01:26:43.757918', '49', 'Tonno e cipolla - Pizze', 1, '[{\"added\": {}}]', 8, 1),
(150, '2023-11-26 01:27:33.587785', '50', 'Rucolina - Pizze', 1, '[{\"added\": {}}]', 8, 1),
(151, '2023-11-26 01:36:29.184560', '10', 'Ordine object (10)', 3, '', 16, 1),
(152, '2023-11-26 01:36:29.197658', '9', 'Ordine object (9)', 3, '', 16, 1),
(153, '2023-11-26 01:36:40.522549', '8', 'Ordine object (8)', 3, '', 16, 1),
(154, '2023-11-26 01:40:10.959986', '6', 'rospigliosi_bis', 2, '[{\"changed\": {\"fields\": [\"Nome\"]}}]', 14, 1),
(155, '2023-11-26 01:44:43.904922', '11', 'Ordine object (11)', 1, '[{\"added\": {}}]', 16, 1),
(156, '2023-11-26 01:44:58.677075', '12', 'Ordine object (12)', 1, '[{\"added\": {}}]', 16, 1),
(157, '2023-11-26 01:45:55.265396', '6', 'rospigliosi', 2, '[{\"changed\": {\"fields\": [\"Nome\"]}}]', 14, 1),
(158, '2023-11-26 01:47:29.939043', '12', 'Ordine object (12)', 3, '', 16, 1),
(159, '2023-11-26 01:47:37.470577', '11', 'Ordine object (11)', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 16, 1),
(160, '2023-11-26 01:51:11.142926', '8', 'sebastiani', 1, '[{\"added\": {}}]', 14, 1),
(161, '2023-11-26 01:51:28.271278', '13', 'Ordine object (13)', 1, '[{\"added\": {}}]', 16, 1),
(162, '2023-11-26 01:52:10.699898', '14', 'Ordine object (14)', 1, '[{\"added\": {}}]', 16, 1),
(163, '2023-11-26 01:53:03.428380', '13', 'Ordine object (13)', 3, '', 16, 1),
(164, '2023-11-26 01:53:19.544202', '14', 'Ordine object (14)', 2, '[]', 16, 1),
(165, '2023-11-26 01:56:17.498509', '15', 'Ordine object (15)', 1, '[{\"added\": {}}]', 16, 1),
(166, '2023-11-26 01:59:05.564854', '15', 'Ordine object (15)', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 16, 1),
(167, '2023-11-26 01:59:10.643893', '14', 'Ordine object (14)', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 16, 1),
(168, '2023-11-26 01:59:20.974851', '15', 'Ordine object (15)', 2, '[{\"changed\": {\"fields\": [\"Quantity\"]}}]', 16, 1),
(169, '2023-11-26 02:05:08.487755', '16', 'Ordine object (16)', 1, '[{\"added\": {}}]', 16, 1),
(170, '2023-11-26 02:06:30.589289', '17', 'Ordine object (17)', 1, '[{\"added\": {}}]', 16, 1),
(171, '2023-11-26 17:24:37.652501', '9', 'test', 1, '[{\"added\": {}}]', 14, 1),
(172, '2023-11-27 06:47:25.031656', '9', 'test', 3, '', 14, 1),
(173, '2023-11-27 06:48:46.059873', '18', 'Ordine object (18)', 1, '[{\"added\": {}}]', 16, 1),
(174, '2023-11-27 06:49:53.596848', '10', 'test', 1, '[{\"added\": {}}]', 14, 1),
(175, '2023-11-27 07:24:21.390691', '10', 'test', 3, '', 14, 1),
(176, '2023-12-11 10:05:19.523278', '51', 'Rustico - Antipasti', 1, '[{\"added\": {}}]', 8, 1),
(177, '2023-12-11 10:09:21.190541', '52', 'Classico - Antipasti', 1, '[{\"added\": {}}]', 8, 1),
(178, '2023-12-11 10:18:10.046714', '53', 'Nespolo - Antipasti', 1, '[{\"added\": {}}]', 8, 1),
(179, '2023-12-11 10:19:03.354388', '54', 'Piccante - Antipasti', 1, '[{\"added\": {}}]', 8, 1),
(180, '2023-12-11 10:20:00.092074', '55', 'Gustoso - Antipasti', 1, '[{\"added\": {}}]', 8, 1),
(181, '2023-12-11 10:20:46.471642', '56', 'Gran Tagliere - Antipasti', 1, '[{\"added\": {}}]', 8, 1),
(182, '2023-12-11 10:21:44.447793', '57', 'Insalatona - Insalatone', 1, '[{\"added\": {}}]', 8, 1),
(183, '2023-12-11 10:23:21.529387', '58', 'Insalata di mare - Insalatone', 1, '[{\"added\": {}}]', 8, 1),
(184, '2023-12-11 10:26:46.134838', '59', 'Insalatona di tacchino - Insalatone', 1, '[{\"added\": {}}]', 8, 1),
(185, '2023-12-11 10:27:36.916956', '60', 'Insalatona di salmone - Insalatone', 1, '[{\"added\": {}}]', 8, 1),
(186, '2023-12-11 10:29:16.325282', '61', 'Biancaneve - Pizze binache', 1, '[{\"added\": {}}]', 8, 1),
(187, '2023-12-11 10:29:57.006790', '62', 'Nespolo - Pizze binache', 1, '[{\"added\": {}}]', 8, 1),
(188, '2023-12-11 11:04:37.977725', '63', 'Inverno - Pizze binache', 1, '[{\"added\": {}}]', 8, 1),
(189, '2023-12-11 11:05:18.216602', '64', 'Porcini - Pizze binache', 1, '[{\"added\": {}}]', 8, 1),
(190, '2023-12-11 11:06:01.252225', '65', 'Salsiccia e friarielli - Pizze binache', 1, '[{\"added\": {}}]', 8, 1),
(191, '2023-12-11 11:06:36.719624', '66', 'Covaccino all’olio - Pizze binache', 1, '[{\"added\": {}}]', 8, 1),
(192, '2023-12-11 14:46:46.880044', '67', 'Classico - Calzoni', 1, '[{\"added\": {}}]', 8, 1),
(193, '2023-12-11 14:47:19.431988', '68', 'Ripieno - Calzoni', 1, '[{\"added\": {}}]', 8, 1),
(194, '2023-12-11 14:47:57.407946', '69', 'Ricottino - Calzoni', 1, '[{\"added\": {}}]', 8, 1),
(195, '2023-12-11 14:48:35.294216', '70', 'Diavolo d’un calzone - Calzoni', 1, '[{\"added\": {}}]', 8, 1),
(196, '2023-12-11 14:49:27.701517', '71', 'Andy - Panozzi', 1, '[{\"added\": {}}]', 8, 1),
(197, '2023-12-11 14:49:59.793505', '72', 'Emma - Calzoni', 1, '[{\"added\": {}}]', 8, 1),
(198, '2023-12-11 14:50:54.034101', '73', 'Maialona - Specialità', 1, '[{\"added\": {}}]', 8, 1),
(199, '2023-12-11 16:41:04.996330', '74', 'Amore - Specialità', 1, '[{\"added\": {}}]', 8, 1),
(200, '2023-12-11 16:41:53.309938', '75', 'Frutti di mare - Specialità', 1, '[{\"added\": {}}]', 8, 1),
(201, '2023-12-11 16:42:31.360182', '76', 'Gorgonzola - Specialità', 1, '[{\"added\": {}}]', 8, 1),
(202, '2023-12-11 16:49:26.806906', '19', 'Ordine object (19)', 1, '[{\"added\": {}}]', 16, 1),
(203, '2023-12-11 16:57:53.440923', '19', 'Ordine object (19)', 3, '', 16, 1),
(204, '2023-12-11 16:57:53.453726', '16', 'Ordine object (16)', 3, '', 16, 1),
(205, '2023-12-11 16:57:53.464985', '11', 'Ordine object (11)', 3, '', 16, 1),
(206, '2023-12-11 16:57:53.476480', '7', 'Ordine object (7)', 3, '', 16, 1),
(207, '2023-12-11 16:58:22.871658', '18', 'Ordine object (18)', 3, '', 16, 1),
(208, '2023-12-11 16:58:22.882432', '17', 'Ordine object (17)', 3, '', 16, 1),
(209, '2023-12-11 16:58:22.891997', '15', 'Ordine object (15)', 3, '', 16, 1),
(210, '2023-12-11 16:58:22.901437', '14', 'Ordine object (14)', 3, '', 16, 1),
(211, '2023-12-11 17:00:23.793749', '22', 'Ordine object (22)', 1, '[{\"added\": {}}]', 16, 1),
(212, '2023-12-11 17:01:16.094441', '23', 'Ordine object (23)', 1, '[{\"added\": {}}]', 16, 1),
(213, '2023-12-11 17:12:07.597927', '23', 'Ordine object (23)', 2, '[]', 16, 1),
(214, '2023-12-11 17:12:12.721712', '23', 'Ordine object (23)', 2, '[]', 16, 1),
(215, '2023-12-11 17:14:54.238829', '24', 'Ordine object (24)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (1)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (2)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (3)\"}}]', 16, 1),
(216, '2023-12-11 17:17:35.538564', '23', 'Ordine object (23)', 3, '', 16, 1),
(217, '2023-12-11 17:17:40.610790', '22', 'Ordine object (22)', 3, '', 16, 1),
(218, '2023-12-11 17:18:21.528759', '24', 'Ordine object (24)', 2, '[{\"changed\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (1)\", \"fields\": [\"Quantity\"]}}]', 16, 1),
(219, '2023-12-11 17:19:25.828706', '24', 'Ordine object (24)', 2, '[{\"changed\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (1)\", \"fields\": [\"Product\"]}}]', 16, 1),
(220, '2023-12-11 17:19:42.060200', '24', 'Ordine object (24)', 2, '[{\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (4)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (5)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (6)\"}}]', 16, 1),
(221, '2023-12-11 17:20:11.415835', '24', 'Ordine object (24)', 2, '[{\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}, {\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}]', 16, 1),
(222, '2023-12-11 17:20:24.260989', '24', 'Ordine object (24)', 2, '[{\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}, {\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}, {\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}, {\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}]', 16, 1),
(223, '2023-12-11 17:21:19.143869', '24', 'Ordine object (24)', 2, '[]', 16, 1),
(224, '2023-12-11 17:21:37.451315', '11', 'test', 1, '[{\"added\": {}}]', 14, 1),
(225, '2023-12-11 17:22:40.434226', '25', 'Ordine object (25)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (7)\"}}]', 16, 1),
(226, '2023-12-11 17:23:37.860065', '25', 'Ordine object (25)', 2, '[{\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (8)\"}}]', 16, 1),
(227, '2023-12-11 17:29:15.102437', '25', 'Ordine object (25)', 2, '[{\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (9)\"}}, {\"changed\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (8)\", \"fields\": [\"Product\"]}}]', 16, 1),
(228, '2023-12-11 17:29:23.517468', '24', 'Ordine object (24)', 2, '[]', 16, 1),
(229, '2023-12-11 17:29:34.664529', '25', 'Ordine object (25)', 2, '[{\"changed\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (7)\", \"fields\": [\"Quantity\"]}}]', 16, 1),
(230, '2023-12-11 17:42:09.466352', '24', 'Ordine object (24)', 2, '[{\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (10)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (11)\"}}, {\"added\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (12)\"}}]', 16, 1),
(231, '2023-12-11 17:46:48.476485', '24', 'Ordine object (24)', 2, '[{\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}]', 16, 1),
(232, '2023-12-11 18:56:00.669825', '24', 'Ordine object (24)', 2, '[{\"changed\": {\"fields\": [\"Tavolo\"]}}]', 16, 1),
(233, '2023-12-11 18:56:13.123778', '24', 'Ordine object (24)', 2, '[{\"changed\": {\"fields\": [\"Tavolo\"]}}]', 16, 1),
(234, '2023-12-11 22:39:24.135348', '1', 'Tag object (1)', 1, '[{\"added\": {}}]', 19, 1),
(235, '2023-12-11 22:43:10.861633', '25', 'Ordine object (25)', 2, '[{\"deleted\": {\"name\": \"elemento ordine\", \"object\": \"ElementoOrdine object (None)\"}}]', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'commanda', 'allergeni'),
(7, 'commanda', 'collection'),
(11, 'commanda', 'commanda'),
(12, 'commanda', 'conto'),
(13, 'commanda', 'contobakup'),
(17, 'commanda', 'elementoordine'),
(16, 'commanda', 'ordine'),
(8, 'commanda', 'product'),
(15, 'commanda', 'productallergeni'),
(14, 'commanda', 'tavolo'),
(10, 'commanda', 'tipoprodotto'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(19, 'tags', 'tag'),
(18, 'tags', 'taggeditem');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-25 19:11:51.677998'),
(2, 'auth', '0001_initial', '2023-11-25 19:11:53.078595'),
(3, 'admin', '0001_initial', '2023-11-25 19:11:53.357221'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-25 19:11:53.370269'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-25 19:11:53.386804'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-25 19:11:53.528821'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-25 19:11:53.645919'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-25 19:11:53.682449'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-25 19:11:53.694311'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-25 19:11:53.789672'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-25 19:11:53.798877'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-25 19:11:53.811717'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-25 19:11:53.943527'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-25 19:11:54.053261'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-25 19:11:54.082760'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-25 19:11:54.095708'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-25 19:11:54.203239'),
(18, 'commanda', '0001_initial', '2023-11-25 19:11:55.330414'),
(19, 'commanda', '0002_allergeni_product_allergeni', '2023-11-25 19:11:55.509190'),
(20, 'commanda', '0003_remove_product_allergeni_product_allergeni', '2023-11-25 19:11:55.904298'),
(21, 'commanda', '0004_alter_allergeni_options_alter_product_options_and_more', '2023-11-25 19:11:55.918950'),
(22, 'commanda', '0005_alter_product_allergeni', '2023-11-25 19:11:55.932691'),
(23, 'commanda', '0006_tipoprodotto_product_tipo_prodotto', '2023-11-25 19:11:56.105744'),
(24, 'commanda', '0007_tipoprodotto_description', '2023-11-25 19:11:56.148250'),
(25, 'commanda', '0008_alter_product_description', '2023-11-25 19:11:56.246304'),
(26, 'commanda', '0009_alter_product_description', '2023-11-25 19:11:56.258365'),
(27, 'commanda', '0010_allergeni_number', '2023-11-25 19:11:56.321255'),
(28, 'commanda', '0011_commanda_conto_contobakup_tavolo_and_more', '2023-11-25 19:11:57.594242'),
(29, 'commanda', '0012_alter_collection_options', '2023-11-25 19:11:57.602922'),
(30, 'sessions', '0001_initial', '2023-11-25 19:11:57.693305'),
(31, 'commanda', '0013_alter_product_tipo_prodotto', '2023-11-25 19:56:14.426008'),
(32, 'commanda', '0014_productallergeni', '2023-11-25 19:56:14.864256'),
(33, 'commanda', '0015_delete_productallergeni', '2023-11-25 19:59:09.982793'),
(34, 'commanda', '0016_alter_allergeni_options_remove_commanda_product_and_more', '2023-11-25 20:58:10.342314'),
(35, 'commanda', '0017_remove_commanda_product', '2023-11-25 21:54:46.985598'),
(36, 'commanda', '0018_commanda_product', '2023-11-25 21:56:10.592329'),
(37, 'commanda', '0019_remove_commanda_quantity', '2023-11-25 22:03:49.657376'),
(38, 'commanda', '0020_ordine_delete_commanda', '2023-11-25 22:17:06.338582'),
(39, 'commanda', '0021_alter_ordine_quantity', '2023-11-25 22:21:16.593975'),
(40, 'commanda', '0022_alter_product_price', '2023-12-10 18:12:08.491380'),
(41, 'commanda', '0023_remove_ordine_product_remove_ordine_quantity', '2023-12-11 17:00:12.199879'),
(42, 'commanda', '0024_alter_ordine_tavolo_elementoordine', '2023-12-11 17:03:08.883980'),
(43, 'commanda', '0025_ordine_payment_status_ordine_placed_at_and_more', '2023-12-11 17:11:00.257749'),
(44, 'tags', '0001_initial', '2023-12-11 19:02:01.345997'),
(45, 'commanda', '0026_tipoprodotto_collection', '2023-12-11 22:54:31.937285'),
(46, 'commanda', '0027_alter_tipoprodotto_collection', '2023-12-11 22:56:13.485131'),
(47, 'commanda', '0028_alter_tipoprodotto_collection', '2023-12-11 22:57:33.690838');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('iagdag2ecjruzgm20xdipplv4zgvn9mt', '.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcm2el3Q0gPajvId2i3zlNv6zIj3xV-0MGvPdPzcrh_BxVG_dZGW4tIzqiAwYFLKAmK0CY4AoGyiMkGomCyQ4-FRPZJSa8n0tZJqdj7A-14N90:1r6y7L:9IexXHKv-R6EeKlWfTe1RMMpLaXDxrIBPGvYmcwv9O8', '2023-12-09 19:15:03.808932'),
('oetw5rugln9c4xqas40ytrqp77nfv2xp', '.eJxVjMsOwiAQRf-FtSFAebp07zeQGRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmcm2el3Q0gPajvId2i3zlNv6zIj3xV-0MGvPdPzcrh_BxVG_dZGW4tIzqiAwYFLKAmK0CY4AoGyiMkGomCyQ4-FRPZJSa8n0tZJqdj7A-14N90:1rCO7g:moqLnUcmCheBt-unM0lpiE8ZJkPn3e4uWStDrvJKkcY', '2023-12-24 18:01:48.187837');

-- --------------------------------------------------------

--
-- Table structure for table `tags_tag`
--

CREATE TABLE `tags_tag` (
  `id` bigint NOT NULL,
  `label` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tags_tag`
--

INSERT INTO `tags_tag` (`id`, `label`) VALUES
(1, 'testo');

-- --------------------------------------------------------

--
-- Table structure for table `tags_taggeditem`
--

CREATE TABLE `tags_taggeditem` (
  `id` bigint NOT NULL,
  `object_id` int UNSIGNED NOT NULL,
  `content_type_id` int NOT NULL,
  `tag_id` bigint NOT NULL
) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `commanda_allergeni`
--
ALTER TABLE `commanda_allergeni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commanda_collection`
--
ALTER TABLE `commanda_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commanda_conto`
--
ALTER TABLE `commanda_conto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commanda_conto_tavolo_id_e92cab17_fk_commanda_tavolo_id` (`tavolo_id`);

--
-- Indexes for table `commanda_contobakup`
--
ALTER TABLE `commanda_contobakup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commanda_elementoordine`
--
ALTER TABLE `commanda_elementoordine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commanda_elementoordine_order_id_53f0f3b4_fk_commanda_ordine_id` (`order_id`),
  ADD KEY `commanda_elementoord_product_id_8e02318a_fk_commanda_` (`product_id`);

--
-- Indexes for table `commanda_ordine`
--
ALTER TABLE `commanda_ordine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `commanda_ordine_tavolo_id_a07154b4_uniq` (`tavolo_id`);

--
-- Indexes for table `commanda_product`
--
ALTER TABLE `commanda_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commanda_product_collection_id_28e45272_fk_commanda_` (`collection_id`),
  ADD KEY `commanda_product_tipo_prodotto_id_10e1a6e3_fk_commanda_` (`tipo_prodotto_id`);

--
-- Indexes for table `commanda_product_allergeni`
--
ALTER TABLE `commanda_product_allergeni`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `commanda_product_allergeni_product_id_allergeni_id_6903695b_uniq` (`product_id`,`allergeni_id`),
  ADD KEY `commanda_product_all_allergeni_id_dcf2a516_fk_commanda_` (`allergeni_id`);

--
-- Indexes for table `commanda_tavolo`
--
ALTER TABLE `commanda_tavolo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commanda_tipoprodotto`
--
ALTER TABLE `commanda_tipoprodotto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commanda_tipoprodott_collection_id_885fb5aa_fk_commanda_` (`collection_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `tags_tag`
--
ALTER TABLE `tags_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_taggeditem`
--
ALTER TABLE `tags_taggeditem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_taggeditem_content_type_id_03c84c71_fk_django_co` (`content_type_id`),
  ADD KEY `tags_taggeditem_tag_id_31864f91_fk_tags_tag_id` (`tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_allergeni`
--
ALTER TABLE `commanda_allergeni`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `commanda_collection`
--
ALTER TABLE `commanda_collection`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `commanda_conto`
--
ALTER TABLE `commanda_conto`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_contobakup`
--
ALTER TABLE `commanda_contobakup`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_elementoordine`
--
ALTER TABLE `commanda_elementoordine`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_ordine`
--
ALTER TABLE `commanda_ordine`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `commanda_product`
--
ALTER TABLE `commanda_product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `commanda_product_allergeni`
--
ALTER TABLE `commanda_product_allergeni`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `commanda_tavolo`
--
ALTER TABLE `commanda_tavolo`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `commanda_tipoprodotto`
--
ALTER TABLE `commanda_tipoprodotto`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tags_tag`
--
ALTER TABLE `tags_tag`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags_taggeditem`
--
ALTER TABLE `tags_taggeditem`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `commanda_conto`
--
ALTER TABLE `commanda_conto`
  ADD CONSTRAINT `commanda_conto_tavolo_id_e92cab17_fk_commanda_tavolo_id` FOREIGN KEY (`tavolo_id`) REFERENCES `commanda_tavolo` (`id`);

--
-- Constraints for table `commanda_elementoordine`
--
ALTER TABLE `commanda_elementoordine`
  ADD CONSTRAINT `commanda_elementoord_product_id_8e02318a_fk_commanda_` FOREIGN KEY (`product_id`) REFERENCES `commanda_product` (`id`),
  ADD CONSTRAINT `commanda_elementoordine_order_id_53f0f3b4_fk_commanda_ordine_id` FOREIGN KEY (`order_id`) REFERENCES `commanda_ordine` (`id`);

--
-- Constraints for table `commanda_ordine`
--
ALTER TABLE `commanda_ordine`
  ADD CONSTRAINT `commanda_ordine_tavolo_id_a07154b4_fk_commanda_tavolo_id` FOREIGN KEY (`tavolo_id`) REFERENCES `commanda_tavolo` (`id`);

--
-- Constraints for table `commanda_product`
--
ALTER TABLE `commanda_product`
  ADD CONSTRAINT `commanda_product_collection_id_28e45272_fk_commanda_` FOREIGN KEY (`collection_id`) REFERENCES `commanda_collection` (`id`),
  ADD CONSTRAINT `commanda_product_tipo_prodotto_id_10e1a6e3_fk_commanda_` FOREIGN KEY (`tipo_prodotto_id`) REFERENCES `commanda_tipoprodotto` (`id`);

--
-- Constraints for table `commanda_product_allergeni`
--
ALTER TABLE `commanda_product_allergeni`
  ADD CONSTRAINT `commanda_product_all_allergeni_id_dcf2a516_fk_commanda_` FOREIGN KEY (`allergeni_id`) REFERENCES `commanda_allergeni` (`id`),
  ADD CONSTRAINT `commanda_product_all_product_id_68e94c9a_fk_commanda_` FOREIGN KEY (`product_id`) REFERENCES `commanda_product` (`id`);

--
-- Constraints for table `commanda_tipoprodotto`
--
ALTER TABLE `commanda_tipoprodotto`
  ADD CONSTRAINT `commanda_tipoprodott_collection_id_885fb5aa_fk_commanda_` FOREIGN KEY (`collection_id`) REFERENCES `commanda_collection` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tags_taggeditem`
--
ALTER TABLE `tags_taggeditem`
  ADD CONSTRAINT `tags_taggeditem_content_type_id_03c84c71_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `tags_taggeditem_tag_id_31864f91_fk_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags_tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
