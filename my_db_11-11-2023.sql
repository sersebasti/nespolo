-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server-80
-- Generation Time: Nov 11, 2023 at 08:04 PM
-- Server version: 8.0.35
-- PHP Version: 8.2.12

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
(29, 'Can add promotion', 8, 'add_promotion'),
(30, 'Can change promotion', 8, 'change_promotion'),
(31, 'Can delete promotion', 8, 'delete_promotion'),
(32, 'Can view promotion', 8, 'view_promotion'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add customer', 10, 'add_customer'),
(38, 'Can change customer', 10, 'change_customer'),
(39, 'Can delete customer', 10, 'delete_customer'),
(40, 'Can view customer', 10, 'view_customer'),
(41, 'Can add adress', 11, 'add_adress'),
(42, 'Can change adress', 11, 'change_adress'),
(43, 'Can delete adress', 11, 'delete_adress'),
(44, 'Can view adress', 11, 'view_adress'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add order item', 13, 'add_orderitem'),
(50, 'Can change order item', 13, 'change_orderitem'),
(51, 'Can delete order item', 13, 'delete_orderitem'),
(52, 'Can view order item', 13, 'view_orderitem'),
(53, 'Can add cart', 14, 'add_cart'),
(54, 'Can change cart', 14, 'change_cart'),
(55, 'Can delete cart', 14, 'delete_cart'),
(56, 'Can view cart', 14, 'view_cart'),
(57, 'Can add cart item', 15, 'add_cartitem'),
(58, 'Can change cart item', 15, 'change_cartitem'),
(59, 'Can delete cart item', 15, 'delete_cartitem'),
(60, 'Can view cart item', 15, 'view_cartitem'),
(61, 'Can add allergeni', 16, 'add_allergeni'),
(62, 'Can change allergeni', 16, 'change_allergeni'),
(63, 'Can delete allergeni', 16, 'delete_allergeni'),
(64, 'Can view allergeni', 16, 'view_allergeni'),
(65, 'Can add tipo prodotto', 17, 'add_tipoprodotto'),
(66, 'Can change tipo prodotto', 17, 'change_tipoprodotto'),
(67, 'Can delete tipo prodotto', 17, 'delete_tipoprodotto'),
(68, 'Can view tipo prodotto', 17, 'view_tipoprodotto');

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
(1, 'pbkdf2_sha256$600000$2PQSuSsoSGUIYUq2dcyDfJ$hB2lSZoF9xBK01n8CLgOK40eNugtDYfNiVHh88tng7U=', '2023-11-11 09:52:37.113880', 1, 'root', '', '', 'ser.sebastiani@gmail.com', 1, 1, '2023-11-11 09:52:23.304099');

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
-- Table structure for table `commanda_adress`
--

CREATE TABLE `commanda_adress` (
  `id` bigint NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int DEFAULT NULL,
  `customer_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commanda_allergeni`
--

CREATE TABLE `commanda_allergeni` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_allergeni`
--

INSERT INTO `commanda_allergeni` (`id`, `title`) VALUES
(1, 'Glutine'),
(2, 'Uova'),
(3, 'Latticini'),
(4, 'Pesce'),
(5, 'Molluschi'),
(6, 'Crostacei'),
(7, 'Frutta a guscio'),
(8, 'Arachidi'),
(9, 'Soia'),
(10, 'Sesamo'),
(11, 'Senape'),
(12, 'Lupini'),
(13, 'Anidride solforosa e solfit');

-- --------------------------------------------------------

--
-- Table structure for table `commanda_allergeni_copy`
--

CREATE TABLE `commanda_allergeni_copy` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_allergeni_copy`
--

INSERT INTO `commanda_allergeni_copy` (`id`, `title`) VALUES
(1, 'Glutine'),
(2, 'Uova'),
(3, 'Latticini'),
(4, 'Pesce'),
(5, 'Molluschi'),
(6, 'Crostacei'),
(7, 'Frutta a guscio'),
(8, 'Arachidi'),
(9, 'Soia'),
(10, 'Sesamo'),
(11, 'Senape'),
(12, 'Lupini'),
(13, 'Anidride solforosa e solfit');

-- --------------------------------------------------------

--
-- Table structure for table `commanda_cart`
--

CREATE TABLE `commanda_cart` (
  `id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commanda_cartitem`
--

CREATE TABLE `commanda_cartitem` (
  `id` bigint NOT NULL,
  `quantity` smallint UNSIGNED NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL
) ;

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
(3, 'Bibite');

-- --------------------------------------------------------

--
-- Table structure for table `commanda_customer`
--

CREATE TABLE `commanda_customer` (
  `id` bigint NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `membership` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commanda_order`
--

CREATE TABLE `commanda_order` (
  `id` bigint NOT NULL,
  `placed_at` datetime(6) NOT NULL,
  `payment_status` varchar(1) NOT NULL,
  `customer_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commanda_orderitem`
--

CREATE TABLE `commanda_orderitem` (
  `id` bigint NOT NULL,
  `quantity` smallint UNSIGNED NOT NULL,
  `unit_price` decimal(6,2) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL
) ;

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
  `tipo_prodotto_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_product`
--

INSERT INTO `commanda_product` (`id`, `title`, `description`, `price`, `last_update`, `collection_id`, `tipo_prodotto_id`) VALUES
(4, 'Nepolo', 'Selezione di formaggi con marmellate e miele, crostini, mozzarelline fior di latte, prosciutto crudo, zonzelle', 9.00, '2023-11-11 11:27:03.645735', 2, 5),
(10, 'Acqua 50 cL', 'Acqua 50 cL', 1.00, '2023-11-11 10:24:34.998646', 3, 1),
(11, 'Acqua 1 L', 'Acqua 1 L', 1.50, '2023-11-11 10:24:07.854787', 3, 1),
(12, 'Lattina', 'Lattina', 2.50, '2023-11-11 10:25:08.134084', 3, 1),
(13, 'Coca piccola', 'Coca piccola', 3.00, '2023-11-11 10:25:34.026005', 3, 2),
(14, 'Coca media', 'Coca media', 4.00, '2023-11-11 10:26:24.462469', 3, 2),
(15, 'Caraffa 1 L', 'Caraffa 1 L', 9.00, '2023-11-11 10:27:01.514558', 3, 2),
(16, 'Birra piccola', 'Birra piccola', 3.50, '2023-11-11 10:27:42.400329', 3, 2),
(17, 'Birra media', 'Birra media', 4.50, '2023-11-11 10:28:14.270906', 3, 2),
(18, 'La Pieve Rosso Toscano', '', 6.00, '2023-11-11 12:11:10.346248', 3, 4);

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
(2, 4, 1),
(3, 4, 3),
(1, 4, 13);

-- --------------------------------------------------------

--
-- Table structure for table `commanda_promotion`
--

CREATE TABLE `commanda_promotion` (
  `id` bigint NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commanda_tipoprodotto`
--

CREATE TABLE `commanda_tipoprodotto` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `commanda_tipoprodotto`
--

INSERT INTO `commanda_tipoprodotto` (`id`, `title`, `description`) VALUES
(1, 'Bibite', 'Bibite'),
(2, 'Bibite alla spina', 'Bibite alla spina'),
(3, 'Birre', 'Birre'),
(4, 'Vini rossi', 'Vini rossi'),
(5, 'Antipasti', 'Antipasti'),
(7, 'Primi', 'Primi Piatti'),
(8, 'Insalatone', 'Le nostre insalatone'),
(9, 'Pizze', 'Le nostre pizze'),
(10, 'Pizze binache', 'Le bianche'),
(11, 'Calzoni', 'I calzoni'),
(12, 'Panozzi', 'I panozzi'),
(13, 'Specialità', 'Le specialità'),
(14, 'Mega pizze', 'Le mega pizze'),
(15, 'Vini bianchi', 'Vini bianchi');

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
(1, '2023-11-11 10:09:21.934988', '6', 'Acqua', 1, '[{\"added\": {}}]', 9, 1),
(2, '2023-11-11 10:10:09.132157', '6', 'Acqua', 3, '', 9, 1),
(3, '2023-11-11 10:12:51.670633', '7', 's', 1, '[{\"added\": {}}]', 9, 1),
(4, '2023-11-11 10:13:04.044882', '7', 's', 3, '', 9, 1),
(5, '2023-11-11 10:18:46.353258', '9', 'Acqua', 1, '[{\"added\": {}}]', 9, 1),
(6, '2023-11-11 10:18:52.565857', '9', 'Acqua', 3, '', 9, 1),
(7, '2023-11-11 10:19:06.149354', '10', 'Acqua', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-11-11 10:19:25.411236', '10', 'Acqua', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(9, '2023-11-11 10:19:51.450791', '4', 'Nepolo', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 9, 1),
(10, '2023-11-11 10:23:42.630238', '11', 'Acqua 1 L', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(11, '2023-11-11 10:23:56.071208', '10', 'Acqua 50 cl', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 9, 1),
(12, '2023-11-11 10:24:07.858624', '11', 'Acqua 1 L', 2, '[]', 9, 1),
(13, '2023-11-11 10:24:35.002527', '10', 'Acqua 50 cL', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 9, 1),
(14, '2023-11-11 10:25:08.140873', '12', 'Lattina', 1, '[{\"added\": {}}]', 9, 1),
(15, '2023-11-11 10:25:34.028770', '13', 'Coca piccola', 1, '[{\"added\": {}}]', 9, 1),
(16, '2023-11-11 10:26:02.716836', '14', 'Coca media', 1, '[{\"added\": {}}]', 9, 1),
(17, '2023-11-11 10:26:24.465031', '14', 'Coca media', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 9, 1),
(18, '2023-11-11 10:27:01.518458', '15', 'Caraffa 1 L', 1, '[{\"added\": {}}]', 9, 1),
(19, '2023-11-11 10:27:42.403717', '16', 'Birra piccola', 1, '[{\"added\": {}}]', 9, 1),
(20, '2023-11-11 10:28:14.273886', '17', 'Birra media', 1, '[{\"added\": {}}]', 9, 1),
(21, '2023-11-11 10:42:24.419426', '1', 'TipoProdotto object (1)', 1, '[{\"added\": {}}]', 17, 1),
(22, '2023-11-11 10:43:14.528186', '2', 'Bibite alla spina', 1, '[{\"added\": {}}]', 17, 1),
(23, '2023-11-11 10:43:23.939294', '3', 'Birre', 1, '[{\"added\": {}}]', 17, 1),
(24, '2023-11-11 10:43:42.171177', '4', 'I nostri vini', 1, '[{\"added\": {}}]', 17, 1),
(25, '2023-11-11 11:26:49.043329', '5', 'Antipasti', 1, '[{\"added\": {}}]', 17, 1),
(26, '2023-11-11 11:27:03.648984', '4', 'Nepolo', 2, '[{\"changed\": {\"fields\": [\"Tipo prodotto\"]}}]', 9, 1),
(27, '2023-11-11 11:56:27.130604', '6', 'I nostri vini', 1, '[{\"added\": {}}]', 17, 1),
(28, '2023-11-11 11:56:41.183317', '6', 'I nostri vini', 3, '', 17, 1),
(29, '2023-11-11 11:57:55.149386', '4', 'Vini', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 17, 1),
(30, '2023-11-11 11:58:33.405267', '7', 'Primi Piatti', 1, '[{\"added\": {}}]', 17, 1),
(31, '2023-11-11 11:58:38.801286', '5', 'Antipasti', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 17, 1),
(32, '2023-11-11 11:58:41.361661', '4', 'Vini', 2, '[]', 17, 1),
(33, '2023-11-11 11:58:46.385091', '3', 'Birre', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 17, 1),
(34, '2023-11-11 11:58:51.034739', '2', 'Bibite alla spina', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 17, 1),
(35, '2023-11-11 11:59:06.816311', '1', 'Bibite', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 17, 1),
(36, '2023-11-11 12:00:01.827440', '8', 'Insalatone', 1, '[{\"added\": {}}]', 17, 1),
(37, '2023-11-11 12:00:42.253556', '9', 'Pizze', 1, '[{\"added\": {}}]', 17, 1),
(38, '2023-11-11 12:01:52.063840', '7', 'Primi', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 17, 1),
(39, '2023-11-11 12:03:01.612541', '10', 'Pizze Binache', 1, '[{\"added\": {}}]', 17, 1),
(40, '2023-11-11 12:03:27.008766', '11', 'Calzoni', 1, '[{\"added\": {}}]', 17, 1),
(41, '2023-11-11 12:03:42.992066', '12', 'Panozzi', 1, '[{\"added\": {}}]', 17, 1),
(42, '2023-11-11 12:04:04.465906', '13', 'Specialità', 1, '[{\"added\": {}}]', 17, 1),
(43, '2023-11-11 12:04:28.988554', '14', 'Mega pizze', 1, '[{\"added\": {}}]', 17, 1),
(44, '2023-11-11 12:06:17.210241', '4', 'Vini rossi', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\"]}}]', 17, 1),
(45, '2023-11-11 12:06:24.385933', '4', 'Vini rossi', 2, '[]', 17, 1),
(46, '2023-11-11 12:06:25.969437', '4', 'Vini rossi', 2, '[]', 17, 1),
(47, '2023-11-11 12:06:36.748579', '15', 'Vini bianchi', 1, '[{\"added\": {}}]', 17, 1),
(48, '2023-11-11 12:06:41.479312', '14', 'Mega pizze', 2, '[]', 17, 1),
(49, '2023-11-11 12:06:49.395746', '14', 'Mega pizze', 2, '[]', 17, 1),
(50, '2023-11-11 12:06:54.452244', '13', 'Specialità', 2, '[]', 17, 1),
(51, '2023-11-11 12:06:57.523008', '12', 'Panozzi', 2, '[]', 17, 1),
(52, '2023-11-11 12:06:59.439422', '15', 'Vini bianchi', 2, '[]', 17, 1),
(53, '2023-11-11 12:07:05.873565', '11', 'Calzoni', 2, '[]', 17, 1),
(54, '2023-11-11 12:07:10.059668', '10', 'Pizze Binache', 2, '[]', 17, 1),
(55, '2023-11-11 12:07:12.374263', '15', 'Vini bianchi', 2, '[]', 17, 1),
(56, '2023-11-11 12:07:19.776612', '10', 'Pizze binache', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 17, 1),
(57, '2023-11-11 12:07:24.642971', '9', 'Pizze', 2, '[]', 17, 1),
(58, '2023-11-11 12:07:29.888671', '8', 'Insalatone', 2, '[]', 17, 1),
(59, '2023-11-11 12:07:32.591354', '5', 'Antipasti', 2, '[]', 17, 1),
(60, '2023-11-11 12:07:38.318231', '3', 'Birre', 2, '[]', 17, 1),
(61, '2023-11-11 12:07:40.223561', '2', 'Bibite alla spina', 2, '[]', 17, 1),
(62, '2023-11-11 12:07:42.975358', '1', 'Bibite', 2, '[]', 17, 1),
(63, '2023-11-11 12:11:10.353507', '18', 'La Pieve Rosso Toscano', 1, '[{\"added\": {}}]', 9, 1);

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
(11, 'commanda', 'adress'),
(16, 'commanda', 'allergeni'),
(14, 'commanda', 'cart'),
(15, 'commanda', 'cartitem'),
(7, 'commanda', 'collection'),
(10, 'commanda', 'customer'),
(12, 'commanda', 'order'),
(13, 'commanda', 'orderitem'),
(9, 'commanda', 'product'),
(8, 'commanda', 'promotion'),
(17, 'commanda', 'tipoprodotto'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2023-10-26 16:27:46.825252'),
(2, 'auth', '0001_initial', '2023-10-26 16:27:47.993545'),
(3, 'admin', '0001_initial', '2023-10-26 16:27:48.244438'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-26 16:27:48.256583'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-26 16:27:48.272448'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-26 16:27:48.407447'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-26 16:27:48.521472'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-26 16:27:48.554146'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-26 16:27:48.565692'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-26 16:27:48.669785'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-26 16:27:48.678492'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-26 16:27:48.691954'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-26 16:27:48.822015'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-26 16:27:48.929451'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-26 16:27:48.957805'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-26 16:27:48.974524'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-26 16:27:49.108806'),
(18, 'sessions', '0001_initial', '2023-10-26 16:27:49.193624'),
(19, 'commanda', '0001_initial', '2023-10-26 16:35:07.269353'),
(20, 'commanda', '0002_allergeni_product_allergeni', '2023-10-26 16:48:34.242016'),
(21, 'commanda', '0003_remove_product_allergeni_product_allergeni', '2023-11-11 09:29:44.868005'),
(22, 'commanda', '0004_alter_allergeni_options_alter_product_options_and_more', '2023-11-11 10:10:58.332651'),
(23, 'commanda', '0005_alter_product_allergeni', '2023-11-11 10:39:38.166240'),
(30, 'commanda', '0006_tipoprodotto_product_tipo_prodotto', '2023-11-11 11:21:17.465027'),
(31, 'commanda', '0007_tipoprodotto_description', '2023-11-11 11:57:31.169471'),
(32, 'commanda', '0008_alter_product_description', '2023-11-11 12:09:43.218850'),
(33, 'commanda', '0009_alter_product_description', '2023-11-11 12:11:06.697250');

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
('m6hz8xdjxmr4n7h1hy06ntwpnu56ooj2', '.eJxVjM0OwiAQhN-FsyH8LNh69O4zkGVZpGogKe3J-O62SQ96nPm-mbcIuC4lrJ3nMCVxEVqcfruI9OS6g_TAem-SWl3mKcpdkQft8tYSv66H-3dQsJdt7ZnIDQA-Jgal0Azs3GhQIZKCrAnpnFTMIxmLFkFbB96YvEWI4K34fAHxUzfa:1r1kfN:AuiEyDxiaVC6pywhWvuBakN7WCCFFtwPEH7YRPLuEhg', '2023-11-25 09:52:37.126204');

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
-- Indexes for table `commanda_adress`
--
ALTER TABLE `commanda_adress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commanda_adress_customer_id_ed9a84cc_fk_commanda_customer_id` (`customer_id`);

--
-- Indexes for table `commanda_allergeni`
--
ALTER TABLE `commanda_allergeni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commanda_allergeni_copy`
--
ALTER TABLE `commanda_allergeni_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commanda_cart`
--
ALTER TABLE `commanda_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commanda_cartitem`
--
ALTER TABLE `commanda_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commanda_cartitem_cart_id_93728bce_fk_commanda_cart_id` (`cart_id`),
  ADD KEY `commanda_cartitem_product_id_ef8a8a9c_fk_commanda_product_id` (`product_id`);

--
-- Indexes for table `commanda_collection`
--
ALTER TABLE `commanda_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commanda_customer`
--
ALTER TABLE `commanda_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `commanda_order`
--
ALTER TABLE `commanda_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commanda_order_customer_id_ace8c4f0_fk_commanda_customer_id` (`customer_id`);

--
-- Indexes for table `commanda_orderitem`
--
ALTER TABLE `commanda_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commanda_orderitem_order_id_8690524e_fk_commanda_order_id` (`order_id`),
  ADD KEY `commanda_orderitem_product_id_83c85bea_fk_commanda_product_id` (`product_id`);

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
-- Indexes for table `commanda_promotion`
--
ALTER TABLE `commanda_promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commanda_tipoprodotto`
--
ALTER TABLE `commanda_tipoprodotto`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
-- AUTO_INCREMENT for table `commanda_adress`
--
ALTER TABLE `commanda_adress`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_allergeni`
--
ALTER TABLE `commanda_allergeni`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `commanda_allergeni_copy`
--
ALTER TABLE `commanda_allergeni_copy`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `commanda_cart`
--
ALTER TABLE `commanda_cart`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_cartitem`
--
ALTER TABLE `commanda_cartitem`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_collection`
--
ALTER TABLE `commanda_collection`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `commanda_customer`
--
ALTER TABLE `commanda_customer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_order`
--
ALTER TABLE `commanda_order`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_orderitem`
--
ALTER TABLE `commanda_orderitem`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commanda_product`
--
ALTER TABLE `commanda_product`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `commanda_product_allergeni`
--
ALTER TABLE `commanda_product_allergeni`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `commanda_promotion`
--
ALTER TABLE `commanda_promotion`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
-- Constraints for table `commanda_adress`
--
ALTER TABLE `commanda_adress`
  ADD CONSTRAINT `commanda_adress_customer_id_ed9a84cc_fk_commanda_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `commanda_customer` (`id`);

--
-- Constraints for table `commanda_cartitem`
--
ALTER TABLE `commanda_cartitem`
  ADD CONSTRAINT `commanda_cartitem_cart_id_93728bce_fk_commanda_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `commanda_cart` (`id`),
  ADD CONSTRAINT `commanda_cartitem_product_id_ef8a8a9c_fk_commanda_product_id` FOREIGN KEY (`product_id`) REFERENCES `commanda_product` (`id`);

--
-- Constraints for table `commanda_order`
--
ALTER TABLE `commanda_order`
  ADD CONSTRAINT `commanda_order_customer_id_ace8c4f0_fk_commanda_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `commanda_customer` (`id`);

--
-- Constraints for table `commanda_orderitem`
--
ALTER TABLE `commanda_orderitem`
  ADD CONSTRAINT `commanda_orderitem_order_id_8690524e_fk_commanda_order_id` FOREIGN KEY (`order_id`) REFERENCES `commanda_order` (`id`),
  ADD CONSTRAINT `commanda_orderitem_product_id_83c85bea_fk_commanda_product_id` FOREIGN KEY (`product_id`) REFERENCES `commanda_product` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
