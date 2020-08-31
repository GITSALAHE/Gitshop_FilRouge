-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 01 sep. 2020 à 00:04
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `idCart` int(11) NOT NULL,
  `idP` int(11) NOT NULL,
  `idU` int(11) NOT NULL,
  `qte` varchar(255) NOT NULL,
  `idSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`idCart`, `idP`, `idU`, `qte`, `idSize`) VALUES
(98, 10, 6, '1', 10);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `idC` int(11) NOT NULL,
  `nameCategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`idC`, `nameCategory`) VALUES
(10, 'Samsung'),
(12, 'IPhone');

-- --------------------------------------------------------

--
-- Structure de la table `mirrormx_customer_chat_data`
--

CREATE TABLE `mirrormx_customer_chat_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mirrormx_customer_chat_department`
--

CREATE TABLE `mirrormx_customer_chat_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mirrormx_customer_chat_department`
--

INSERT INTO `mirrormx_customer_chat_department` (`id`, `name`, `description`) VALUES
(1, 'Admins', 'Admins of websites');

-- --------------------------------------------------------

--
-- Structure de la table `mirrormx_customer_chat_message`
--

CREATE TABLE `mirrormx_customer_chat_message` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `talk_id` int(10) UNSIGNED NOT NULL,
  `extra` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mirrormx_customer_chat_message`
--

INSERT INTO `mirrormx_customer_chat_message` (`id`, `from_id`, `to_id`, `body`, `datetime`, `talk_id`, `extra`) VALUES
(1, 2, -1, '', '2020-07-19 22:08:39', 1, '{\"type\":\"talk_start\"}'),
(2, 2, -1, 'hi', '2020-07-19 22:08:51', 1, NULL),
(3, 1, -1, 'hi mr bochaib', '2020-07-19 22:09:26', 1, NULL),
(4, -2, -1, '', '2020-07-19 22:09:26', 1, '{\"type\":\"talk_owner\",\"id\":1,\"user\":\"gitsalah\"}'),
(5, 2, -1, '&lt;3', '2020-07-19 22:09:41', 1, NULL),
(6, 1, -1, 'download.jpg', '2020-07-19 22:10:51', 1, '{\"type\":\"files\",\"files\":[{\"name\":\"download.jpg\",\"size\":11946,\"type\":\"image\\/jpeg\"}]}'),
(7, 1, -1, 'hahahahaha', '2020-07-19 22:11:16', 1, NULL),
(8, -2, -1, '', '2020-07-19 22:11:45', 1, '{\"type\":\"talk_close\"}'),
(9, 3, -1, '', '2020-07-19 22:18:07', 2, '{\"type\":\"talk_start\"}'),
(10, 3, -1, 'HELLO', '2020-07-19 22:26:52', 2, NULL),
(11, -2, -1, '', '2020-07-19 22:48:27', 2, '{\"type\":\"talk_close\"}'),
(12, 5, -1, '', '2020-07-19 22:49:13', 3, '{\"type\":\"talk_start\"}'),
(13, 5, -1, 'yeah', '2020-07-19 22:49:20', 3, NULL),
(14, 1, 4, 'HELLO ', '2020-07-19 23:00:20', 4, NULL),
(15, -2, -1, '', '2020-07-19 23:02:41', 3, '{\"type\":\"talk_close\"}'),
(16, 6, -1, '', '2020-07-20 16:29:13', 5, '{\"type\":\"talk_start\"}'),
(17, 6, -1, 'hi', '2020-07-20 16:29:20', 5, NULL),
(18, 1, -1, 'test', '2020-07-20 16:29:51', 5, NULL),
(19, -2, -1, '', '2020-07-20 16:29:51', 5, '{\"type\":\"talk_owner\",\"id\":1,\"user\":\"gitsalah\"}'),
(20, 7, -1, '', '2020-07-23 02:20:57', 6, '{\"type\":\"talk_start\"}'),
(21, 8, -1, '', '2020-07-29 10:01:52', 7, '{\"type\":\"talk_start\"}'),
(22, 8, -1, 'HELLO', '2020-07-29 10:02:23', 7, NULL),
(23, -2, -1, '', '2020-07-29 10:02:50', 7, '{\"type\":\"talk_close\"}'),
(24, 9, -1, '', '2020-07-29 10:03:10', 8, '{\"type\":\"talk_start\"}'),
(25, 9, -1, 'hi how u doing', '2020-07-29 10:03:18', 8, NULL),
(26, 10, -1, '', '2020-07-29 12:04:38', 9, '{\"type\":\"talk_start\"}'),
(27, 10, -1, 'hi', '2020-07-29 12:04:43', 9, NULL),
(28, 11, -1, '', '2020-08-06 14:11:36', 10, '{\"type\":\"talk_start\"}'),
(29, 11, -1, 'hi', '2020-08-06 14:11:41', 10, NULL),
(30, 4, -1, 'hi', '2020-08-06 14:11:55', 10, NULL),
(31, -2, -1, '', '2020-08-06 14:11:55', 10, '{\"type\":\"talk_owner\",\"id\":4,\"user\":\"mariem\"}'),
(32, 11, -1, 'hi', '2020-08-07 15:49:59', 10, NULL),
(33, 4, 11, 'hello', '2020-08-07 15:50:12', 10, NULL),
(34, 12, -1, '', '2020-08-14 18:12:45', 11, '{\"type\":\"talk_start\"}'),
(35, 12, -1, 'hi', '2020-08-14 18:12:50', 11, NULL),
(36, 1, -1, 'hello sir', '2020-08-14 18:12:59', 11, NULL),
(37, -2, -1, '', '2020-08-14 18:12:59', 11, '{\"type\":\"talk_owner\",\"id\":1,\"user\":\"gitsalah\"}');

-- --------------------------------------------------------

--
-- Structure de la table `mirrormx_customer_chat_shared_file`
--

CREATE TABLE `mirrormx_customer_chat_shared_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `name` varchar(32) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` int(10) UNSIGNED DEFAULT NULL,
  `upload_id` int(10) UNSIGNED NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mirrormx_customer_chat_shared_file`
--

INSERT INTO `mirrormx_customer_chat_shared_file` (`id`, `original_name`, `name`, `type`, `size`, `upload_id`, `password`) VALUES
(1, 'download.jpg', '5tyeL9cfJGRdJbhhdY8sXA7midmDdMy', 'image/jpeg', 11946, 1, 'zhKROO8QWajsnN6240J6bSzD5EF1PK3');

-- --------------------------------------------------------

--
-- Structure de la table `mirrormx_customer_chat_talk`
--

CREATE TABLE `mirrormx_customer_chat_talk` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(32) DEFAULT NULL,
  `department_id` smallint(5) UNSIGNED DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `extra` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mirrormx_customer_chat_talk`
--

INSERT INTO `mirrormx_customer_chat_talk` (`id`, `state`, `department_id`, `owner`, `last_activity`, `extra`) VALUES
(1, 'closed', NULL, 1, '2020-07-19 22:11:16', NULL),
(2, 'closed', NULL, NULL, '2020-07-19 22:18:07', NULL),
(3, 'closed', 1, NULL, '2020-07-19 22:49:13', NULL),
(4, 'closed', NULL, 1, '2020-07-21 18:11:27', NULL),
(5, 'closed', 1, 1, '2020-07-21 18:11:27', NULL),
(6, 'closed', 1, NULL, '2020-07-23 12:44:05', NULL),
(7, 'closed', 1, NULL, '2020-07-29 10:01:52', NULL),
(8, 'closed', 1, NULL, '2020-07-29 11:03:38', NULL),
(9, 'closed', 1, NULL, '2020-07-30 12:22:07', NULL),
(10, 'closed', 1, 4, '2020-08-07 15:50:12', NULL),
(11, 'in_progress', 1, 1, '2020-08-14 18:12:59', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mirrormx_customer_chat_upload`
--

CREATE TABLE `mirrormx_customer_chat_upload` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `state` varchar(16) NOT NULL,
  `files_info` text DEFAULT NULL,
  `size` int(10) UNSIGNED DEFAULT NULL,
  `progress` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mirrormx_customer_chat_upload`
--

INSERT INTO `mirrormx_customer_chat_upload` (`id`, `message_id`, `state`, `files_info`, `size`, `progress`) VALUES
(1, 6, 'uploaded', '[{\"name\":\"download.jpg\",\"type\":\"image\\/jpeg\",\"size\":11946}]', 11946, 11946);

-- --------------------------------------------------------

--
-- Structure de la table `mirrormx_customer_chat_user`
--

CREATE TABLE `mirrormx_customer_chat_user` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `mail` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `info` text DEFAULT NULL,
  `roles` varchar(128) DEFAULT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mirrormx_customer_chat_user`
--

INSERT INTO `mirrormx_customer_chat_user` (`id`, `name`, `mail`, `password`, `image`, `info`, `roles`, `last_activity`) VALUES
(1, 'gitsalah', 'gitsalah@eshop.com', 'c66790b8d5087bdc85681ae7e2127b7b7f106179', NULL, '{\"ip\":\"::1\"}', 'ADMIN,OPERATOR', '2020-08-14 18:13:15'),
(2, 'BOCHAIB-1595192919', 'bochaib@gmail.com', 'x', '/eshop/backoffice/livechat/upload/default-avatars/c.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/eshop\\/views\\/\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/84.0.4147.89 Safari\\/537.36 Edg\\/84.0.522.40\",\"browserName\":\"chrome\",\"browserVersion\":\"84.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"en\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"regionCode\":\"11\",\"regionName\":\"Marrakech-Tensift-Al Haouz\",\"city\":\"Marrakesh\",\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":31.6315,\"longitude\":-8.0083,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '0000-00-00 00:00:00'),
(3, 'visitor.95204-1595193487', 'no@e.mail.provided', 'x', '/eshop/backoffice/livechat/img/avatar.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/eshop\\/views\\/\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/84.0.4147.89 Safari\\/537.36 Edg\\/84.0.522.40\",\"browserName\":\"chrome\",\"browserVersion\":\"84.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"en\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"regionCode\":\"11\",\"regionName\":\"Marrakech-Tensift-Al Haouz\",\"city\":\"Marrakesh\",\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":31.6315,\"longitude\":-8.0083,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '0000-00-00 00:00:00'),
(4, 'mariem', 'test@gmail.com', 'c66790b8d5087bdc85681ae7e2127b7b7f106179', '/eshop/backoffice/livechat/upload/default-avatars/b.png', '{\"ip\":\"::1\"}', 'OPERATOR', '2020-08-08 22:15:23'),
(5, 'Mick-1595195353', 'kaops@gmail.com', 'x', '/eshop/backoffice/livechat/upload/default-avatars/f.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/eshop\\/views\\/\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/84.0.4147.89 Safari\\/537.36 Edg\\/84.0.522.40\",\"browserName\":\"chrome\",\"browserVersion\":\"84.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"en\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"regionCode\":\"11\",\"regionName\":\"Marrakech-Tensift-Al Haouz\",\"city\":\"Marrakesh\",\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":31.6315,\"longitude\":-8.0083,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '0000-00-00 00:00:00'),
(6, 'zniti-1595258953', 'zniti@gmail.com', 'x', '/eshop/backoffice/livechat/upload/default-avatars/a.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/eshop\\/views\\/\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/84.0.4147.89 Safari\\/537.36 Edg\\/84.0.522.40\",\"browserName\":\"chrome\",\"browserVersion\":\"84.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"en\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"city\":null,\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":32,\"longitude\":-5,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '2020-07-20 16:30:27'),
(7, '&lt;script&gt;alert(\'heello\')&lt', 'mariem@eshop.com', 'x', '/eshop/backoffice/livechat/upload/default-avatars/g.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/eshop\\/views\\/\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/84.0.4147.89 Safari\\/537.36 Edg\\/84.0.522.40\",\"browserName\":\"chrome\",\"browserVersion\":\"84.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"fr\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"city\":null,\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":32,\"longitude\":-5,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '2020-07-23 02:21:02'),
(8, 'USERGEST-1596013312', 'salah.bouanba3@gmail.com', 'x', '/eshop/backoffice/livechat/upload/default-avatars/a.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/eshop\\/views\\/\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/84.0.4147.89 Safari\\/537.36 Edg\\/84.0.522.48\",\"browserName\":\"chrome\",\"browserVersion\":\"84.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"fr\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"regionCode\":\"13\",\"regionName\":\"Region de Souss-Massa-Draa\",\"city\":\"Agadir\",\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":30.4207,\"longitude\":-9.5932,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '0000-00-00 00:00:00'),
(9, 'TEST-1596013390', 'test@gmzil.com', 'x', '/eshop/backoffice/livechat/upload/default-avatars/a.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/eshop\\/views\\/\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/84.0.4147.89 Safari\\/537.36 Edg\\/84.0.522.48\",\"browserName\":\"chrome\",\"browserVersion\":\"84.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"fr\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"regionCode\":\"13\",\"regionName\":\"Region de Souss-Massa-Draa\",\"city\":\"Agadir\",\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":30.4207,\"longitude\":-9.5932,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '2020-07-29 10:03:26'),
(10, 'test-1596020678', 'test@gmzil.com', 'x', '/eshop/backoffice/livechat/upload/default-avatars/a.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/eshop\\/views\\/index.php\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/84.0.4147.89 Safari\\/537.36 Edg\\/84.0.522.48\",\"browserName\":\"chrome\",\"browserVersion\":\"84.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"fr\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"city\":null,\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":32,\"longitude\":-5,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '2020-07-29 12:17:48'),
(11, 'okmk k-1596719496', 'mariem@gmail.com', 'x', '/eshop/backoffice/livechat/upload/default-avatars/c.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/eshop\\/views\\/index.php\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.113 Safari\\/537.36\",\"browserName\":\"chrome\",\"browserVersion\":\"81.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"fr\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"city\":null,\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":32,\"longitude\":-5,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '2020-08-07 15:53:47'),
(12, 'ZNITI-1597425165', 'zniti@gmail.com', 'x', '/eshop/backoffice/livechat/upload/default-avatars/a.png', '{\"ip\":\"::1\",\"referer\":\"http:\\/\\/localhost\\/MshopVgitsalah\\/views\\/\",\"userAgent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/84.0.4147.125 Safari\\/537.36 Edg\\/84.0.522.59\",\"browserName\":\"chrome\",\"browserVersion\":\"84.0\",\"os\":\"windows\",\"engine\":\"webkit\",\"language\":\"fr\",\"geoloc\":{\"countryCode\":\"MA\",\"countryName\":\"Morocco\",\"city\":null,\"zipCode\":null,\"timeZone\":\"Africa\\/Casablanca\",\"latitude\":32,\"longitude\":-5,\"metroCode\":null,\"utcOffset\":-60}}', 'GUEST', '2020-08-14 18:22:41');

-- --------------------------------------------------------

--
-- Structure de la table `mirrormx_customer_chat_user_department`
--

CREATE TABLE `mirrormx_customer_chat_user_department` (
  `user_id` int(11) NOT NULL,
  `department_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mirrormx_customer_chat_user_department`
--

INSERT INTO `mirrormx_customer_chat_user_department` (`user_id`, `department_id`) VALUES
(1, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `idOrder` int(11) NOT NULL,
  `orderNumber` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `idU` int(11) NOT NULL,
  `idP` int(11) NOT NULL,
  `qte` varchar(255) NOT NULL,
  `calculated` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `price` varchar(255) NOT NULL,
  `paypal` tinyint(4) NOT NULL,
  `cod` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`idOrder`, `orderNumber`, `status`, `firstname`, `lastname`, `address`, `zip`, `city`, `phone_number`, `email`, `idU`, `idP`, `qte`, `calculated`, `created_at`, `price`, `paypal`, `cod`) VALUES
(70, 'Mshop', 'pending', 'SALAHEDDINE', 'BOUANBA', 'lot 161 AL MANAR YASSAMIN', '40000', 'Marrakesh', '0646274243', 'salah.bouanba2@gmail.com', 6, 35, '2', 0, '2020-08-28 10:57:18', '4.798', 0, 1),
(71, 'Mshop70', 'pending', 'SALAHEDDINE', 'BOUANBA', 'lot 161 AL MANAR YASSAMIN', '40000', 'Settat', '0646274243', 'salah.bouanba2@gmail.com', 6, 38, '1', 0, '2020-08-28 10:58:41', '1.999', 0, 1),
(72, 'Mshop70', 'pending', 'SALAHEDDINE', 'BOUANBA', 'lot 161 AL MANAR YASSAMIN', '40000', 'Settat', '0646274243', 'salah.bouanba2@gmail.com', 6, 33, '1', 0, '2020-08-28 10:58:41', '1.299', 0, 1),
(73, 'Mshop72', 'shipped', 'okmk', 'ksdzede', '12 Rue omam quartie hopital', '042424', 'Safi', '0644569834', 'mariem@gmail.com', 27, 42, '2', 0, '2020-08-28 14:09:25', '2.698', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset`
--

CREATE TABLE `password_reset` (
  `idReset` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `idU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `idP` int(11) NOT NULL,
  `nameProduct` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Qte` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Image2` varchar(255) NOT NULL,
  `description` varchar(2550) NOT NULL,
  `idC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`idP`, `nameProduct`, `Price`, `Qte`, `Image`, `Image2`, `description`, `idC`) VALUES
(10, 'Samsung Galaxy A51 Black ', '599.00', '108', '1598375008_test1.png', '1598375008_yes.png', '<p><span style=\"color: #606060; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">The A51 Infinity-O Display optimises visual symmetry. Now you can game, watch, surf, and multi-task without interruption on a 6.5 inch FHD+ wides', 10),
(32, 'Samsung Galaxy S20+ Cloud Blue', '1.699', '100', '1598375740_S1.png', '1598375740_S2.png', '<p><span style=\"color: #606060; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">A massive leap forward in resolution and zoom for mobile photography.</span></p>', 10),
(33, 'Samsung Galaxy S20 Cloud Pink', '1.299', '100', '1598376084_S3.png', '1598376084_S4.png', '<p><span style=\"color: #606060; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">A massive leap forward in resolution and zoom for mobile photography.</span></p>\r\n<ul class=\"tox-checklist\">\r\n<li><span style=\"color: #606060; fo', 10),
(34, 'Samsung Galaxy S10', '1.299', '100', '1598376568_S5.png', '1598376568_S6.png', '<p>&nbsp;</p>\r\n<p>The result of 10 years of pioneering mobile firsts <br />the next generation of Galaxy arrived.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1Dynamic AMOLED display</li>\r\n<li>2.7GHZ Octa core processor</li>\r\n<li>16 MP Ultra-Wide+ 12MP wid</li>', 10),
(35, 'Samsung Galaxy Z Flip Mirror Purple', '2.399', '100', '1598377280_S7.png', '1598377280_S8.png', '<p>&nbsp;</p>\r\n<p>Meet the full screen phone that folds to fit in your pocket</p>\r\n<ul class=\"tox-checklist\">\r\n<li>12MP Super speed Dual Pixel F1.8 Camera</li>\r\n<li>9W Wireless Charging with Wireless PowerShare</li>\r\n<li>6.7\"FHD=Dynamic AMOLED Display</li', 10),
(36, 'Samsung Galaxy Note 20 Mystic Green', '1.899', '100', '1598378187_S10.png', '1598378187_S9.png', '<p>Introducing the phone with the most versatile S Pen yet, PC-level performance, and Pro-grade 8K Video camera</p>\r\n<ul class=\"tox-checklist\">\r\n<li>12MP Ultra Wide + 12MP Wide + 6\'MP Telephoto Rear Cameras</li>\r\n<li>6.7\"FHD+ Super AMOLED</li>\r\n<li>Up to ', 10),
(37, 'Apple iPhone 11', '1.449', '100', '1598378925_I.png', '1598378925_I2.png', '<p>Shoot 4K video, beautiful portraits and sweeping landscapes with the all-new dual-camera system.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1-inch Liquid Retina HD LCD display</li>\r\n<li>Water and dust resistance (2 metres for up to 30 minutes, IP68)</li>\r\n<li>Dual-camera system with 12-megapixel Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video at up to 60 fps</li>\r\n<li>12-megapixel TrueDepth front camera with Portrait mode, 4K video and slow motion</li>\r\n<li>Face ID for secure authentication and Apple Pay</li>\r\n<li>A13 Bionic chip with third-generation Neural Engine</li>\r\n<li>Fast-charge-capable</li>\r\n<li>Wireless charging4</li>\r\n</ul>', 12),
(38, 'Apple iPhone 11 Pro Max Midnight Green', '1.999', '100', '1598379685_I3.png', '1598379685_I4.png', '<p>Shoot 4K video, beautiful portraits and sweeping landscapes with the all-new dual-camera system.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1-inch Liquid Retina HD LCD display</li>\r\n<li>Water and dust resistance (2 metres for up to 30 minutes, IP68)</li>\r\n<li>Dual-camera system with 12-megapixel Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video at up to 60 fps</li>\r\n<li>12-megapixel TrueDepth front camera with Portrait mode, 4K video and slow motion</li>\r\n<li>Face ID for secure authentication and Apple Pay</li>\r\n<li>A13 Bionic chip with third-generation Neural Engine</li>\r\n<li>Fast-charge-capable</li>\r\n<li>Wireless charging4</li>\r\n</ul>', 12),
(39, 'Apple iPhone SE White', '1.099', '100', '1598380113_I5.png', '1598380113_I6.png', '<p>Lots to love. Less to spend.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>4.7-inch (diagonal) widescreen LCD</li>\r\n<li>12-megapixel Wide camera</li>\r\n<li>Portrait mode with advanced bokeh and Depth Control</li>\r\n<li>Water and dust resistance</li>\r\n<li>TouchID ', 12),
(40, 'Apple iPhone 11 Yellow', '1.349', '100', '1598380839_i7.png', '1598380839_I8.png', '<p>Shoot amazing videos and photos with the Ultra Wide, Wide and Telephoto cameras.&nbsp;</p>\r\n<ul class=\"tox-checklist\">\r\n<li>5.8-inch Super Retina XDR OLED display</li>\r\n<li>Water and dust resistance (4 metres for up to 30 minutes, IP68)</li>\r\n<li>Triple-camera system with 12-megapixel Ultra Wide, Wide and Telephoto cameras; Night mode, Portrait mode, and 4K video at up to 60 fps</li>\r\n<li>12-megapixel TrueDepth front camera with Portrait mode, 4K video and slow motion</li>\r\n<li>Face ID for secure authentication and Apple Pay</li>\r\n</ul>', 12),
(41, 'Apple iPhone SE Black', '899.00', '100', '1598381725_I9.png', '1598381725_I10.png', '<div>\r\n<p>Lots to love. Less to spend.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>Retina HD display</li>\r\n<li>4.7-inch (diagonal) widescreen LCD</li>\r\n<li>12-megapixel Wide camera</li>\r\n<li>Portrait mode with advanced bokeh and Depth Control</li>\r\n<li>TouchID</li>\r\n<li>Haptic Touch</li>\r\n<li>Rated IP67 Water and Dust Resistance</li>\r\n<li>Water and dust resistance (1 metre for up to 30 minutes, IP67). Battery life varies by use and configuration; see apple.com/au/batteries for more information.</li>\r\n</ul>\r\n</div>', 12),
(42, 'Apple iPhone 11 Purple', '1.349', '100', '1598381876_I11.png', '1598381876_I12.png', '<p>Shoot 4K video, beautiful portraits and sweeping landscapes with the all-new dual-camera system.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1-inch Liquid Retina HD LCD display</li>\r\n<li>Water and dust resistance (2 metres for up to 30 minutes, IP68)</li>\r\n<li>Dual-camera system with 12-megapixel Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video at up to 60 fps</li>\r\n<li>12-megapixel TrueDepth front camera with Portrait mode, 4K video and slow motion</li>\r\n<li>Face ID for secure authentication and Apple Pay</li>\r\n<li>A13 Bionic chip with third-generation Neural Engine</li>\r\n<li>Fast-charge-capable</li>\r\n<li>Wireless charging4</li>\r\n</ul>', 12),
(43, 'Apple iPhone 11 Green', '1.349', '100', '1598382132_I13.png', '1598382132_I14.png', '<p>Shoot 4K video, beautiful portraits and sweeping landscapes with the all-new dual-camera system.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1-inch Liquid Retina HD LCD display</li>\r\n<li>Water and dust resistance (2 metres for up to 30 minutes, IP68)</li>\r\n<li>Dual-camera system with 12-megapixel Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video at up to 60 fps</li>\r\n<li>12-megapixel TrueDepth front camera with Portrait mode, 4K video and slow motion</li>\r\n<li>Face ID for secure authentication and Apple Pay</li>\r\n<li>A13 Bionic chip with third-generation Neural Engine</li>\r\n<li>Fast-charge-capable</li>\r\n<li>Wireless charging4</li>\r\n</ul>', 12),
(44, 'Samsung Galaxy Note 20 Ultra Mystic Black', '2.299', '100', '1598382678_S12.png', '1598382678_S13.png', '<div>\r\n<p>Introducing the phone forever changing how you work and play. With the most versatile S Pen yet, PC-level performance, and pro-grade 8K video camera.</p>\r\n</div>\r\n<ul class=\"tox-checklist\">\r\n<li>6.9&Prime; edge Quad HD+ Dynamic AMOLED 2X Infinity-O Display</li>\r\n<li>120Hz refresh rate</li>\r\n<li>12MP Ultra Wide + 108MP Wide + 12MP Telephoto Cameras with Laser AF Sensor</li>\r\n<li>10MP Selfie Camera</li>\r\n<li>Up to 50x Super Resolution Zoom</li>\r\n<li>8K video recording at 24fps (7680x4320)</li>\r\n<li>4500mAh Battery</li>\r\n</ul>', 10),
(45, 'Samsung Galaxy S20 Ultra Cloud White', '1.799', '100', '1598382906_S15.png', '1598382906_S14.png', '<p>A massive leap forward in resolution and zoom for mobile photography.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.9-inch Quad HD+ Dynamic AMOLED Infinity-O Display 120Hz display support</li>\r\n<li>Front camera: 40MP, PDAF, F2.2</li>\r\n<li>Rear camera: Ultra Wide: *12MP, Wide-angle: 108MP, Telephoto: 48MP</li>\r\n<li>DepthVision Camera and 100x Space Zoom</li>\r\n<li>Octa-Core Processor</li>\r\n<li>12GB RAM with 128GB internal storage (Expandable up to 1TB)</li>\r\n<li>5000mAh Battery</li>\r\n<li>Fast Wireless Charging 2.0</li>\r\n<li>5G Capable</li>\r\n</ul>', 10);

-- --------------------------------------------------------

--
-- Structure de la table `product_history`
--

CREATE TABLE `product_history` (
  `idP` int(11) NOT NULL,
  `nameProduct` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Qte` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Image2` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_history`
--

INSERT INTO `product_history` (`idP`, `nameProduct`, `Price`, `Qte`, `Image`, `Image2`, `description`, `idC`) VALUES
(9, 'T-SHIRT ORGANIC COTTON', '15.00', '80', '1597079329_product1.jpg', '1597079329_product1hover.jpg', '<p>T-shirt slim fit de m&eacute;lange de coton bio &agrave; col rond et manches courtes.</p>', 'men'),
(10, 'Samsung Galaxy A51 Black ', '599.00', '108', '1598375008_test1.png', '1598375008_yes.png', '<p><span style=\"color: #606060; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">The A51 Infinity-O Display optimises visual symmetry. Now you can game, watch, surf, and multi-task without interruption on a 6.5 inch FHD+ wides', '10'),
(32, 'Samsung Galaxy S20+ Cloud Blue', '1.699', '100', '1598375740_S1.png', '1598375740_S2.png', '<p><span style=\"color: #606060; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">A massive leap forward in resolution and zoom for mobile photography.</span></p>', '10'),
(33, 'Samsung Galaxy S20 Cloud Pink', '1.299', '100', '1598376084_S3.png', '1598376084_S4.png', '<p><span style=\"color: #606060; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">A massive leap forward in resolution and zoom for mobile photography.</span></p>\r\n<ul class=\"tox-checklist\">\r\n<li><span style=\"color: #606060; fo', '10'),
(34, 'Samsung Galaxy S10', '1.299', '100', '1598376568_S5.png', '1598376568_S6.png', '<p>&nbsp;</p>\r\n<p>The result of 10 years of pioneering mobile firsts <br />the next generation of Galaxy arrived.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1Dynamic AMOLED display</li>\r\n<li>2.7GHZ Octa core processor</li>\r\n<li>16 MP Ultra-Wide+ 12MP wid</li>', '10'),
(35, 'Samsung Galaxy Z Flip Mirror Purple', '2.399', '100', '1598377280_S7.png', '1598377280_S8.png', '<p>&nbsp;</p>\r\n<p>Meet the full screen phone that folds to fit in your pocket</p>\r\n<ul class=\"tox-checklist\">\r\n<li>12MP Super speed Dual Pixel F1.8 Camera</li>\r\n<li>9W Wireless Charging with Wireless PowerShare</li>\r\n<li>6.7\"FHD=Dynamic AMOLED Display</li', '10'),
(36, 'Samsung Galaxy Note 20 Mystic Green', '1.899', '100', '1598378187_S10.png', '1598378187_S9.png', '<p>Introducing the phone with the most versatile S Pen yet, PC-level performance, and Pro-grade 8K Video camera</p>\r\n<ul class=\"tox-checklist\">\r\n<li>12MP Ultra Wide + 12MP Wide + 6\'MP Telephoto Rear Cameras</li>\r\n<li>6.7\"FHD+ Super AMOLED</li>\r\n<li>Up to ', '10'),
(37, 'Apple iPhone 11', '1.449', '100', '1598378925_I.png', '1598378925_I2.png', '<p>Shoot 4K video, beautiful portraits and sweeping landscapes with the all-new dual-camera system.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1-inch Liquid Retina HD LCD display</li>\r\n<li>Water and dust resistance (2 metres for up to 30 minutes, IP68)</li>\r\n', '12'),
(38, 'Apple iPhone 11 Pro Max Midnight Green', '1.999', '100', '1598379685_I3.png', '1598379685_I4.png', '<p>Shoot 4K video, beautiful portraits and sweeping landscapes with the all-new dual-camera system.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1-inch Liquid Retina HD LCD display</li>\r\n<li>Water and dust resistance (2 metres for up to 30 minutes, IP68)</li>\r\n', '12'),
(39, 'Apple iPhone SE White', '1.099', '100', '1598380113_I5.png', '1598380113_I6.png', '<p>Lots to love. Less to spend.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>4.7-inch (diagonal) widescreen LCD</li>\r\n<li>12-megapixel Wide camera</li>\r\n<li>Portrait mode with advanced bokeh and Depth Control</li>\r\n<li>Water and dust resistance</li>\r\n<li>TouchID ', '12'),
(40, 'Apple iPhone 11 Yellow', '1.349', '100', '1598380839_i7.png', '1598380839_I8.png', '<p>Shoot amazing videos and photos with the Ultra Wide, Wide and Telephoto cameras.&nbsp;</p>\r\n<ul class=\"tox-checklist\">\r\n<li>5.8-inch Super Retina XDR OLED display</li>\r\n<li>Water and dust resistance (4 metres for up to 30 minutes, IP68)</li>\r\n<li>Tripl', '12'),
(41, 'Apple iPhone SE Black', '899.00', '100', '1598381725_I9.png', '1598381725_I10.png', '<div>\r\n<p>Lots to love. Less to spend.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>Retina HD display</li>\r\n<li>4.7-inch (diagonal) widescreen LCD</li>\r\n<li>12-megapixel Wide camera</li>\r\n<li>Portrait mode with advanced bokeh and Depth Control</li>\r\n<li>TouchID</', '12'),
(42, 'Apple iPhone 11 Purple', '1.349', '100', '1598381876_I11.png', '1598381876_I12.png', '<p>Shoot 4K video, beautiful portraits and sweeping landscapes with the all-new dual-camera system.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1-inch Liquid Retina HD LCD display</li>\r\n<li>Water and dust resistance (2 metres for up to 30 minutes, IP68)</li>\r\n', '12'),
(43, 'Apple iPhone 11 Green', '1.349', '100', '1598382132_I13.png', '1598382132_I14.png', '<p>Shoot 4K video, beautiful portraits and sweeping landscapes with the all-new dual-camera system.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.1-inch Liquid Retina HD LCD display</li>\r\n<li>Water and dust resistance (2 metres for up to 30 minutes, IP68)</li>\r\n', '12'),
(44, 'Samsung Galaxy Note 20 Ultra Mystic Black', '2.299', '100', '1598382678_S12.png', '1598382678_S13.png', '<div>\r\n<p>Introducing the phone forever changing how you work and play. With the most versatile S Pen yet, PC-level performance, and pro-grade 8K video camera.</p>\r\n</div>\r\n<ul class=\"tox-checklist\">\r\n<li>6.9&Prime; edge Quad HD+ Dynamic AMOLED 2X Infinit', '10'),
(45, 'Samsung Galaxy S20 Ultra Cloud White', '1.799', '100', '1598382906_S15.png', '1598382906_S14.png', '<p>A massive leap forward in resolution and zoom for mobile photography.</p>\r\n<ul class=\"tox-checklist\">\r\n<li>6.9-inch Quad HD+ Dynamic AMOLED Infinity-O Display 120Hz display support</li>\r\n<li>Front camera: 40MP, PDAF, F2.2</li>\r\n<li>Rear camera: Ultra W', '10'),
(46, 'Nike', '34.99', '21', '1597253926_download.jpeg', '1597253926_images.jpeg', '<ul class=\"tox-checklist\">\r\n<li>NIKE ORIGINAL</li>\r\n</ul>', '12'),
(47, 'Nike', '232', '23', '1598619427_1594745462_4087400649_2_1_1-1-300x300.jpg', '1598619427_1594834162_4017650420_2_1_1-300x300.jpg', '&lt;p&gt;RS&lt;/p&gt;', 'Samsung');

-- --------------------------------------------------------

--
-- Structure de la table `size`
--

CREATE TABLE `size` (
  `idSize` int(11) NOT NULL,
  `nameSize` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `size`
--

INSERT INTO `size` (`idSize`, `nameSize`) VALUES
(10, '32 Go'),
(11, '64 Go'),
(12, '128 Go'),
(13, '256 Go'),
(14, '512 Go');

-- --------------------------------------------------------

--
-- Structure de la table `size_product`
--

CREATE TABLE `size_product` (
  `idPS` int(11) NOT NULL,
  `idP` int(11) NOT NULL,
  `idSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `size_product`
--

INSERT INTO `size_product` (`idPS`, `idP`, `idSize`) VALUES
(122, 10, 10),
(123, 10, 11),
(124, 10, 12),
(125, 32, 10),
(126, 32, 11),
(127, 32, 12),
(128, 32, 13),
(129, 32, 14),
(130, 33, 10),
(131, 33, 11),
(132, 33, 12),
(133, 33, 13),
(134, 33, 14),
(135, 34, 10),
(136, 34, 11),
(137, 34, 12),
(138, 34, 13),
(139, 34, 14),
(140, 35, 10),
(141, 35, 11),
(144, 35, 12),
(145, 35, 13),
(146, 35, 14),
(147, 36, 10),
(148, 36, 11),
(149, 36, 12),
(150, 36, 13),
(151, 36, 14),
(152, 37, 10),
(153, 37, 11),
(154, 37, 12),
(155, 37, 13),
(156, 37, 14),
(157, 38, 10),
(158, 38, 11),
(159, 38, 12),
(160, 38, 13),
(161, 38, 14),
(162, 39, 10),
(163, 39, 11),
(164, 39, 12),
(165, 39, 13),
(166, 39, 14),
(167, 45, 10),
(168, 45, 11),
(169, 45, 12),
(170, 45, 13),
(171, 45, 14),
(172, 44, 10),
(173, 44, 11),
(174, 44, 12),
(175, 44, 13),
(176, 44, 14),
(177, 43, 10),
(178, 43, 11),
(179, 43, 12),
(180, 43, 13),
(181, 43, 14),
(182, 40, 10),
(183, 40, 11),
(184, 40, 12),
(185, 40, 13),
(186, 40, 14),
(187, 41, 10),
(188, 41, 11),
(189, 41, 12),
(190, 41, 13),
(191, 41, 14),
(192, 42, 10),
(193, 42, 11),
(194, 42, 12),
(195, 42, 13),
(196, 42, 14);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idU` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `superAdmin` tinyint(4) NOT NULL,
  `ban` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idU`, `fullname`, `email`, `password`, `phone_number`, `admin`, `superAdmin`, `ban`) VALUES
(5, 'gitsalah', 'test', '0646274243', '064664872', 1, 1, 0),
(6, 'SALAHEDDINE BOUANBAS', 'salah.bouanba2@gmail.com', '$2y$10$ug01GLIO0IDeQf3KBdy4Be.fyHLmucV80Ccs0axqIz5PI.GehaxMa', '0661263709', 0, 0, 0),
(7, 'test', 'hello@hello.com', '$2y$10$03XQMZrLQCfXMY6yia312.336DEjWm8NwSl32nucbQSDEkhGVLgfu', '0636382012', 0, 0, 0),
(11, 'mariem', 'mariem@eshop.com', '0646274243', '0646274243', 1, 0, 0),
(12, 'Hamza', 'hamza@gmail.com', '$2y$10$03XQMZrLQCfXMY6yia312.336DEjWm8NwSl32nucbQSDEkhGVLgfu', '0646275253', 0, 0, 0),
(13, 'mohamed', 'simo@gmail.com', '$2y$10$LiUhl5mr5x9jVS7YCLaUDe./tV33Y8S1WmT3LiGvEBfZhpr0igEnu', '0649118803', 0, 0, 0),
(14, 'simoo', 'simoo@gmail.com', '$2y$10$NG.cNPGxERT58pS/iQngTe4x0E0s4SqCE/fx9zU.GYKJzEj1LOowa', '0646274243', 0, 0, 0),
(15, 'yousef', 'youssef@gmail.com', '$2y$10$trA8VlRBGND9xFPEHn4xLOOYQ1h7KYgu/P1xWD6PwuKiqlQht9mJa', '0646274243', 0, 0, 0),
(16, 'SALAHEDDINE ', 'salah@salah.me', '$2y$10$m4AKaw9qhEG8v9d43DuxWeSFnKGSV9ti5hcE35THfxTX8vKwfa3WG', '0646274243', 0, 0, 0),
(17, 'salaheddine', 'gh@gh.com', '$2y$10$MJRFQiY0aL5nlrngFqSdh.IJVGwEHpPilOpZFLf2XHqOKOhbgjB/.', '0646274243', 0, 0, 0),
(18, 'imane', 'imane@gmail.com', '$2y$10$Cj5saRh2cuir1ClcsqqsOOa2DnuTNm/N.FG2QcMrfnHYJmOnGuBu.', '12356', 0, 0, 0),
(19, 'test', 'test@gmail.com', '$2y$10$4VJ74oOx4uNpoUva/y7Ky.kexVNJLgwppYmFef27mowlVzEdVS5OO', '12356', 0, 0, 0),
(20, 'Mariemff', 'mariem@gmail.com', '$2y$10$Xq6J5AWrStSjPBmolA7QruO3dNc2l/V9zg2UwmuUrRQeUlyPm1nta', '12356', 0, 0, 0),
(21, 'jade smith', 'test@smith.com', '$2y$10$GWlKBXv6n5TadPcEljM9WeXlTTW4wD36c6bBPYxPikZydy5ql9Ebe', '+212649118803', 0, 0, 0),
(22, 'SALAHEDDINE BOUANBA', 'salahbouanba14@gmail.com', '$2y$10$t4i5/LrRd7iOmJ21azjrBew71dyCAFsV3P5OHK0/OS3loPlG0w/F.', '0649118803', 0, 0, 0),
(23, 'SALAHEDDINE BOUANBA', 'salahbouanba2@gmail.com', '$2y$10$GEQesSXO6er1fyb9MhcZBuN87NSL0ApYrqksV6K9y7IcRCPGqNWBK', '+212649118803', 0, 0, 0),
(24, 'okmk k', 'mariem1111@gmail.com', '$2y$10$ctL5RWkLBcOJsPy7/jGRQ.8ybHroPYhIRfPZhXNz9w5cL499iRxNe', '06543245', 0, 0, 0),
(25, 'Ziad ', 'Ziad@gmail.com', '$2y$10$XGMYQwL8qhX6S01A0o2YWetcmobMPXmS4KzuygDX0HpecFgywP0z6', '765457', 0, 0, 0),
(26, 'new user', 'user@gmail.com', '$2y$10$Cnp6NfrrSYTaNE57kLaYH.z9nybxry.cGnQ.9d99bmi6P0/9LB9/a', '0646274243', 0, 0, 0),
(27, 'okmk k', 'mariemSALAH@gmail.com', '$2y$10$G/BjfYEAe3KbgJwYg9k.3OWNsyGYl.8Kezo0r9X/RR8q46thzZvF.', '0644569834', 0, 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idCart`),
  ADD KEY `fk_products` (`idP`),
  ADD KEY `fk_users` (`idU`),
  ADD KEY `fk_idSizeCart` (`idSize`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idC`);

--
-- Index pour la table `mirrormx_customer_chat_data`
--
ALTER TABLE `mirrormx_customer_chat_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_type_ix` (`type`);

--
-- Index pour la table `mirrormx_customer_chat_department`
--
ALTER TABLE `mirrormx_customer_chat_department`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_fk_talk` (`talk_id`),
  ADD KEY `message_from_id_ix` (`from_id`),
  ADD KEY `message_to_id_ix` (`to_id`),
  ADD KEY `message_datetime_ix` (`datetime`);

--
-- Index pour la table `mirrormx_customer_chat_shared_file`
--
ALTER TABLE `mirrormx_customer_chat_shared_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shared_file_fk_upload` (`upload_id`);

--
-- Index pour la table `mirrormx_customer_chat_talk`
--
ALTER TABLE `mirrormx_customer_chat_talk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talk_fk_department` (`department_id`),
  ADD KEY `talk_owner_ix` (`owner`),
  ADD KEY `talk_last_activity_ix` (`last_activity`);

--
-- Index pour la table `mirrormx_customer_chat_upload`
--
ALTER TABLE `mirrormx_customer_chat_upload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_fk_message` (`message_id`);

--
-- Index pour la table `mirrormx_customer_chat_user`
--
ALTER TABLE `mirrormx_customer_chat_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_mail_ix` (`mail`),
  ADD KEY `user_last_activity_ix` (`last_activity`);

--
-- Index pour la table `mirrormx_customer_chat_user_department`
--
ALTER TABLE `mirrormx_customer_chat_user_department`
  ADD UNIQUE KEY `user_department_uq` (`user_id`,`department_id`),
  ADD KEY `user_department_fk_department` (`department_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `fk_user_order` (`idU`),
  ADD KEY `FK_IDPRODUCT` (`idP`);

--
-- Index pour la table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`idReset`),
  ADD KEY `FK_PASSWORD` (`idU`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idP`),
  ADD KEY `FK_Categorie` (`idC`);

--
-- Index pour la table `product_history`
--
ALTER TABLE `product_history`
  ADD PRIMARY KEY (`idP`);

--
-- Index pour la table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`idSize`);

--
-- Index pour la table `size_product`
--
ALTER TABLE `size_product`
  ADD PRIMARY KEY (`idPS`),
  ADD KEY `fk_sizeproduct` (`idP`),
  ADD KEY `fk_addSizeproduct` (`idSize`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idU`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `mirrormx_customer_chat_data`
--
ALTER TABLE `mirrormx_customer_chat_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mirrormx_customer_chat_department`
--
ALTER TABLE `mirrormx_customer_chat_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `mirrormx_customer_chat_shared_file`
--
ALTER TABLE `mirrormx_customer_chat_shared_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `mirrormx_customer_chat_talk`
--
ALTER TABLE `mirrormx_customer_chat_talk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `mirrormx_customer_chat_upload`
--
ALTER TABLE `mirrormx_customer_chat_upload`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `mirrormx_customer_chat_user`
--
ALTER TABLE `mirrormx_customer_chat_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `idReset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `product_history`
--
ALTER TABLE `product_history`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `size`
--
ALTER TABLE `size`
  MODIFY `idSize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `size_product`
--
ALTER TABLE `size_product`
  MODIFY `idPS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_idSizeCart` FOREIGN KEY (`idSize`) REFERENCES `size` (`idSize`),
  ADD CONSTRAINT `fk_products` FOREIGN KEY (`idP`) REFERENCES `product` (`idP`),
  ADD CONSTRAINT `fk_users` FOREIGN KEY (`idU`) REFERENCES `users` (`idU`);

--
-- Contraintes pour la table `mirrormx_customer_chat_message`
--
ALTER TABLE `mirrormx_customer_chat_message`
  ADD CONSTRAINT `message_fk_talk` FOREIGN KEY (`talk_id`) REFERENCES `mirrormx_customer_chat_talk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `mirrormx_customer_chat_shared_file`
--
ALTER TABLE `mirrormx_customer_chat_shared_file`
  ADD CONSTRAINT `shared_file_fk_upload` FOREIGN KEY (`upload_id`) REFERENCES `mirrormx_customer_chat_upload` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `mirrormx_customer_chat_talk`
--
ALTER TABLE `mirrormx_customer_chat_talk`
  ADD CONSTRAINT `talk_fk_department` FOREIGN KEY (`department_id`) REFERENCES `mirrormx_customer_chat_department` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `mirrormx_customer_chat_upload`
--
ALTER TABLE `mirrormx_customer_chat_upload`
  ADD CONSTRAINT `upload_fk_message` FOREIGN KEY (`message_id`) REFERENCES `mirrormx_customer_chat_message` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `mirrormx_customer_chat_user_department`
--
ALTER TABLE `mirrormx_customer_chat_user_department`
  ADD CONSTRAINT `user_department_fk_department` FOREIGN KEY (`department_id`) REFERENCES `mirrormx_customer_chat_department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_department_fk_user` FOREIGN KEY (`user_id`) REFERENCES `mirrormx_customer_chat_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_IDPRODUCT` FOREIGN KEY (`idP`) REFERENCES `product_history` (`idP`),
  ADD CONSTRAINT `fk_user_order` FOREIGN KEY (`idU`) REFERENCES `users` (`idU`);

--
-- Contraintes pour la table `password_reset`
--
ALTER TABLE `password_reset`
  ADD CONSTRAINT `FK_PASSWORD` FOREIGN KEY (`idU`) REFERENCES `users` (`idU`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Categorie` FOREIGN KEY (`idC`) REFERENCES `category` (`idC`);

--
-- Contraintes pour la table `size_product`
--
ALTER TABLE `size_product`
  ADD CONSTRAINT `fk_addSizeproduct` FOREIGN KEY (`idSize`) REFERENCES `size` (`idSize`),
  ADD CONSTRAINT `fk_sizeproduct` FOREIGN KEY (`idP`) REFERENCES `product` (`idP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
