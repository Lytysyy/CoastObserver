-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 18 nov. 2025 à 11:05
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omeka_s`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `credential_hash` varchar(60) NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `api_key`
--

INSERT INTO `api_key` (`id`, `owner_id`, `label`, `credential_hash`, `last_ip`, `last_accessed`, `created`) VALUES
('ab2dPIwoP9u6JJQTEy8aieh0GPaTcj6E', 1, 'key_identity', '$2y$10$7cSman3mWTRPFUB.WXhNZu0H7fkLYpB2hSD6LYCdjWoYhXIy3d/e.', 0x00000000000000000000000000000001, '2025-11-18 09:22:33', '2025-11-15 21:12:14');

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `media_type` varchar(255) NOT NULL,
  `storage_id` varchar(190) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `csvimport_entity`
--

CREATE TABLE `csvimport_entity` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `resource_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `csvimport_entity`
--

INSERT INTO `csvimport_entity` (`id`, `job_id`, `entity_id`, `resource_type`) VALUES
(1, 30, 4, 'items'),
(2, 30, 5, 'items'),
(3, 30, 6, 'items'),
(4, 33, 7, 'items'),
(5, 33, 8, 'items'),
(6, 33, 9, 'items'),
(7, 35, 10, 'items'),
(8, 34, 11, 'items'),
(9, 35, 13, 'items'),
(10, 34, 12, 'items'),
(11, 35, 16, 'items'),
(12, 34, 14, 'items'),
(13, 35, 18, 'items'),
(14, 34, 15, 'items'),
(15, 35, 20, 'items'),
(16, 34, 17, 'items'),
(17, 35, 22, 'items'),
(18, 34, 19, 'items'),
(19, 35, 24, 'items'),
(20, 34, 21, 'items'),
(21, 35, 26, 'items'),
(22, 34, 23, 'items'),
(23, 34, 25, 'items'),
(24, 35, 28, 'items'),
(25, 34, 27, 'items'),
(26, 35, 30, 'items'),
(27, 34, 29, 'items'),
(28, 34, 31, 'items'),
(29, 35, 32, 'items'),
(30, 34, 33, 'items'),
(31, 34, 35, 'items'),
(32, 35, 34, 'items'),
(33, 34, 37, 'items'),
(34, 35, 36, 'items'),
(35, 34, 39, 'items'),
(36, 35, 38, 'items'),
(37, 34, 41, 'items'),
(38, 35, 40, 'items'),
(39, 34, 43, 'items'),
(40, 35, 42, 'items'),
(41, 34, 45, 'items'),
(42, 35, 44, 'items'),
(43, 34, 47, 'items'),
(44, 35, 46, 'items'),
(45, 35, 48, 'items'),
(46, 35, 49, 'items'),
(47, 35, 50, 'items'),
(48, 34, 53, 'items'),
(49, 35, 51, 'items'),
(50, 35, 52, 'items'),
(51, 34, 55, 'items'),
(52, 35, 54, 'items'),
(53, 34, 57, 'items'),
(54, 34, 58, 'items'),
(55, 35, 56, 'items'),
(56, 34, 60, 'items'),
(57, 35, 59, 'items'),
(58, 34, 62, 'items'),
(59, 35, 61, 'items'),
(60, 34, 64, 'items'),
(61, 35, 63, 'items'),
(62, 34, 67, 'items'),
(63, 35, 65, 'items'),
(64, 34, 69, 'items'),
(65, 35, 66, 'items'),
(66, 34, 71, 'items'),
(67, 35, 68, 'items'),
(68, 34, 73, 'items'),
(69, 35, 70, 'items'),
(70, 34, 75, 'items'),
(71, 35, 72, 'items'),
(72, 34, 77, 'items'),
(73, 35, 74, 'items'),
(74, 34, 79, 'items'),
(75, 35, 76, 'items'),
(76, 34, 81, 'items'),
(77, 35, 78, 'items'),
(78, 34, 82, 'items'),
(79, 35, 80, 'items'),
(80, 34, 84, 'items'),
(81, 35, 83, 'items'),
(82, 34, 87, 'items'),
(83, 35, 85, 'items'),
(84, 34, 88, 'items'),
(85, 35, 86, 'items'),
(86, 34, 89, 'items');

-- --------------------------------------------------------

--
-- Structure de la table `csvimport_import`
--

CREATE TABLE `csvimport_import` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `undo_job_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `resource_type` varchar(255) NOT NULL,
  `has_err` tinyint(1) NOT NULL,
  `stats` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `csvimport_import`
--

INSERT INTO `csvimport_import` (`id`, `job_id`, `undo_job_id`, `comment`, `resource_type`, `has_err`, `stats`) VALUES
(1, 28, NULL, '', 'resources', 1, '[]'),
(2, 29, NULL, '', 'resources', 1, '[]'),
(3, 30, NULL, '', 'resources', 0, '{\"added\":{\"items\":3}}'),
(4, 31, NULL, '', 'resources', 1, '[]'),
(5, 32, NULL, '', 'resources', 1, '[]'),
(6, 33, NULL, '', 'items', 0, '{\"added\":{\"items\":3}}'),
(7, 35, NULL, '', 'items', 0, '{\"added\":{\"items\":40}}'),
(8, 34, NULL, '', 'items', 0, '{\"added\":{\"items\":40}}');

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'items', 1, 1, 'Étudiant 1', 'Étudiant 1\nCeci est un test'),
(2, 'items', 1, 1, 'Étudiant 2', 'Étudiant 2'),
(3, 'items', 1, 1, 'Étudiant 3', 'Étudiant 3\n'),
(7, 'items', 1, 1, 'Observation 001', 'Observation 001\n2025-10-12\nPlage A\nAlgues vertes'),
(8, 'items', 1, 1, 'Observation 002', 'Observation 002\n2025-10-13\nPlage B\nDechets plastiques'),
(9, 'items', 1, 1, 'Observation 003', 'Observation 003\n2025-10-14\nPlage C\n—'),
(10, 'items', 1, 1, 'Observation 1', 'Observation 1\nDescription de l\'observation 1.'),
(11, 'items', 1, 1, 'Observation 1', 'Observation 1\nDescription de l\'observation 1.'),
(12, 'items', 1, 1, 'Observation 2', 'Observation 2\nDescription de l\'observation 2.'),
(13, 'items', 1, 1, 'Observation 2', 'Observation 2\nDescription de l\'observation 2.'),
(14, 'items', 1, 1, 'Observation 3', 'Observation 3\nDescription de l\'observation 3.'),
(15, 'items', 1, 1, 'Observation 4', 'Observation 4\nDescription de l\'observation 4.'),
(16, 'items', 1, 1, 'Observation 3', 'Observation 3\nDescription de l\'observation 3.'),
(17, 'items', 1, 1, 'Observation 5', 'Observation 5\nDescription de l\'observation 5.'),
(18, 'items', 1, 1, 'Observation 4', 'Observation 4\nDescription de l\'observation 4.'),
(19, 'items', 1, 1, 'Observation 6', 'Observation 6\nDescription de l\'observation 6.'),
(20, 'items', 1, 1, 'Observation 5', 'Observation 5\nDescription de l\'observation 5.'),
(21, 'items', 1, 1, 'Observation 7', 'Observation 7\nDescription de l\'observation 7.'),
(22, 'items', 1, 1, 'Observation 6', 'Observation 6\nDescription de l\'observation 6.'),
(23, 'items', 1, 1, 'Observation 8', 'Observation 8\nDescription de l\'observation 8.'),
(24, 'items', 1, 1, 'Observation 7', 'Observation 7\nDescription de l\'observation 7.'),
(25, 'items', 1, 1, 'Observation 9', 'Observation 9\nDescription de l\'observation 9.'),
(26, 'items', 1, 1, 'Observation 8', 'Observation 8\nDescription de l\'observation 8.'),
(27, 'items', 1, 1, 'Observation 10', 'Observation 10\nDescription de l\'observation 10.'),
(28, 'items', 1, 1, 'Observation 9', 'Observation 9\nDescription de l\'observation 9.'),
(29, 'items', 1, 1, 'Observation 11', 'Observation 11\nDescription de l\'observation 11.'),
(30, 'items', 1, 1, 'Observation 10', 'Observation 10\nDescription de l\'observation 10.'),
(31, 'items', 1, 1, 'Observation 12', 'Observation 12\nDescription de l\'observation 12.'),
(32, 'items', 1, 1, 'Observation 11', 'Observation 11\nDescription de l\'observation 11.'),
(33, 'items', 1, 1, 'Observation 13', 'Observation 13\nDescription de l\'observation 13.'),
(34, 'items', 1, 1, 'Observation 12', 'Observation 12\nDescription de l\'observation 12.'),
(35, 'items', 1, 1, 'Observation 14', 'Observation 14\nDescription de l\'observation 14.'),
(36, 'items', 1, 1, 'Observation 13', 'Observation 13\nDescription de l\'observation 13.'),
(37, 'items', 1, 1, 'Observation 15', 'Observation 15\nDescription de l\'observation 15.'),
(38, 'items', 1, 1, 'Observation 14', 'Observation 14\nDescription de l\'observation 14.'),
(39, 'items', 1, 1, 'Observation 16', 'Observation 16\nDescription de l\'observation 16.'),
(40, 'items', 1, 1, 'Observation 15', 'Observation 15\nDescription de l\'observation 15.'),
(41, 'items', 1, 1, 'Observation 17', 'Observation 17\nDescription de l\'observation 17.'),
(42, 'items', 1, 1, 'Observation 16', 'Observation 16\nDescription de l\'observation 16.'),
(43, 'items', 1, 1, 'Observation 18', 'Observation 18\nDescription de l\'observation 18.'),
(44, 'items', 1, 1, 'Observation 17', 'Observation 17\nDescription de l\'observation 17.'),
(45, 'items', 1, 1, 'Observation 19', 'Observation 19\nDescription de l\'observation 19.'),
(46, 'items', 1, 1, 'Observation 18', 'Observation 18\nDescription de l\'observation 18.'),
(47, 'items', 1, 1, 'Observation 20', 'Observation 20\nDescription de l\'observation 20.'),
(48, 'items', 1, 1, 'Observation 19', 'Observation 19\nDescription de l\'observation 19.'),
(49, 'items', 1, 1, 'Observation 20', 'Observation 20\nDescription de l\'observation 20.'),
(50, 'items', 1, 1, 'Observation 21', 'Observation 21\nDescription de l\'observation 21.'),
(51, 'items', 1, 1, 'Observation 22', 'Observation 22\nDescription de l\'observation 22.'),
(52, 'items', 1, 1, 'Observation 23', 'Observation 23\nDescription de l\'observation 23.'),
(53, 'items', 1, 1, 'Observation 21', 'Observation 21\nDescription de l\'observation 21.'),
(54, 'items', 1, 1, 'Observation 24', 'Observation 24\nDescription de l\'observation 24.'),
(55, 'items', 1, 1, 'Observation 22', 'Observation 22\nDescription de l\'observation 22.'),
(56, 'items', 1, 1, 'Observation 25', 'Observation 25\nDescription de l\'observation 25.'),
(57, 'items', 1, 1, 'Observation 23', 'Observation 23\nDescription de l\'observation 23.'),
(58, 'items', 1, 1, 'Observation 24', 'Observation 24\nDescription de l\'observation 24.'),
(59, 'items', 1, 1, 'Observation 26', 'Observation 26\nDescription de l\'observation 26.'),
(60, 'items', 1, 1, 'Observation 25', 'Observation 25\nDescription de l\'observation 25.'),
(61, 'items', 1, 1, 'Observation 27', 'Observation 27\nDescription de l\'observation 27.'),
(62, 'items', 1, 1, 'Observation 26', 'Observation 26\nDescription de l\'observation 26.'),
(63, 'items', 1, 1, 'Observation 28', 'Observation 28\nDescription de l\'observation 28.'),
(64, 'items', 1, 1, 'Observation 27', 'Observation 27\nDescription de l\'observation 27.'),
(65, 'items', 1, 1, 'Observation 29', 'Observation 29\nDescription de l\'observation 29.'),
(66, 'items', 1, 1, 'Observation 30', 'Observation 30\nDescription de l\'observation 30.'),
(67, 'items', 1, 1, 'Observation 28', 'Observation 28\nDescription de l\'observation 28.'),
(68, 'items', 1, 1, 'Observation 31', 'Observation 31\nDescription de l\'observation 31.'),
(69, 'items', 1, 1, 'Observation 29', 'Observation 29\nDescription de l\'observation 29.'),
(70, 'items', 1, 1, 'Observation 32', 'Observation 32\nDescription de l\'observation 32.'),
(71, 'items', 1, 1, 'Observation 30', 'Observation 30\nDescription de l\'observation 30.'),
(72, 'items', 1, 1, 'Observation 33', 'Observation 33\nDescription de l\'observation 33.'),
(73, 'items', 1, 1, 'Observation 31', 'Observation 31\nDescription de l\'observation 31.'),
(74, 'items', 1, 1, 'Observation 34', 'Observation 34\nDescription de l\'observation 34.'),
(75, 'items', 1, 1, 'Observation 32', 'Observation 32\nDescription de l\'observation 32.'),
(76, 'items', 1, 1, 'Observation 35', 'Observation 35\nDescription de l\'observation 35.'),
(77, 'items', 1, 1, 'Observation 33', 'Observation 33\nDescription de l\'observation 33.'),
(78, 'items', 1, 1, 'Observation 36', 'Observation 36\nDescription de l\'observation 36.'),
(79, 'items', 1, 1, 'Observation 34', 'Observation 34\nDescription de l\'observation 34.'),
(80, 'items', 1, 1, 'Observation 37', 'Observation 37\nDescription de l\'observation 37.'),
(81, 'items', 1, 1, 'Observation 35', 'Observation 35\nDescription de l\'observation 35.'),
(82, 'items', 1, 1, 'Observation 36', 'Observation 36\nDescription de l\'observation 36.'),
(83, 'items', 1, 1, 'Observation 38', 'Observation 38\nDescription de l\'observation 38.'),
(84, 'items', 1, 1, 'Observation 37', 'Observation 37\nDescription de l\'observation 37.'),
(85, 'items', 1, 1, 'Observation 39', 'Observation 39\nDescription de l\'observation 39.'),
(86, 'items', 1, 1, 'Observation 40', 'Observation 40\nDescription de l\'observation 40.'),
(87, 'items', 1, 1, 'Observation 38', 'Observation 38\nDescription de l\'observation 38.'),
(88, 'items', 1, 1, 'Observation 39', 'Observation 39\nDescription de l\'observation 39.'),
(89, 'items', 1, 1, 'Observation 40', 'Observation 40\nDescription de l\'observation 40.'),
(90, 'item_sets', 1, 1, 'Audio', 'Audio'),
(91, 'items', 1, 1, 'Audio', 'Audio\ntest'),
(92, 'items', 1, 1, 'Audio2', 'Audio2\nTest2'),
(93, 'media', 1, 1, 'test', 'test'),
(94, 'media', 1, 1, 'Test2', 'Test2'),
(95, 'item_sets', 1, 1, 'Audio 2', 'Audio 2 '),
(96, 'items', 1, 1, 'test 5', 'test 5'),
(97, 'media', 1, 1, NULL, ''),
(98, 'item_sets', 1, 1, 'test 6', 'test 6');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `primary_media_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`, `primary_media_id`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL),
(18, NULL),
(19, NULL),
(20, NULL),
(21, NULL),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL),
(26, NULL),
(27, NULL),
(28, NULL),
(29, NULL),
(30, NULL),
(31, NULL),
(32, NULL),
(33, NULL),
(34, NULL),
(35, NULL),
(36, NULL),
(37, NULL),
(38, NULL),
(39, NULL),
(40, NULL),
(41, NULL),
(42, NULL),
(43, NULL),
(44, NULL),
(45, NULL),
(46, NULL),
(47, NULL),
(48, NULL),
(49, NULL),
(50, NULL),
(51, NULL),
(52, NULL),
(53, NULL),
(54, NULL),
(55, NULL),
(56, NULL),
(57, NULL),
(58, NULL),
(59, NULL),
(60, NULL),
(61, NULL),
(62, NULL),
(63, NULL),
(64, NULL),
(65, NULL),
(66, NULL),
(67, NULL),
(68, NULL),
(69, NULL),
(70, NULL),
(71, NULL),
(72, NULL),
(73, NULL),
(74, NULL),
(75, NULL),
(76, NULL),
(77, NULL),
(78, NULL),
(79, NULL),
(80, NULL),
(81, NULL),
(82, NULL),
(83, NULL),
(84, NULL),
(85, NULL),
(86, NULL),
(87, NULL),
(88, NULL),
(89, NULL),
(91, NULL),
(92, NULL),
(96, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(91, 90),
(92, 90),
(96, 95);

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(90, 0),
(95, 0),
(98, 0);

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `args` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"wpforms-6351-Formulaire-coastsnap-terbessin-2025-04-16-11-18-13 (1).csv\",\"filesize\":\"5127\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeFF0A.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":true,\"resource-type-column\":\"column[9]\",\"column-resource_type\":{\"9\":\"1\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-20T22:41:31+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-20T22:41:31+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-20T22:41:31+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-20 22:41:30', '2025-10-20 22:41:31'),
(2, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"wpforms-6712-Formulaire-coastsnap-sml76-2025-10-10-11-03-44.csv\",\"filesize\":\"32227\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome9733.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":113},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-20T22:46:45+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-20T22:46:45+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-20T22:46:45+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-20 22:46:45', '2025-10-20 22:46:45'),
(3, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"wpforms-6351-Formulaire-coastsnap-terbessin-2025-04-16-11-18-13 (1).csv\",\"filesize\":\"5127\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeFE9A.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[9]\",\"column-resource_type\":{\"9\":\"1\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":113},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-20T22:55:50+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-20T22:55:50+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-20T22:55:50+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-20 22:55:49', '2025-10-20 22:55:50'),
(4, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"exemple.csv\",\"filesize\":\"732\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeE03D.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":3},\"o:resource_class\":{\"o:id\":113},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-20T22:57:35+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-20T22:57:35+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-20T22:57:35+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-20 22:57:35', '2025-10-20 22:57:35'),
(5, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"exemple.csv\",\"filesize\":\"732\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeF277.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-20T23:03:21+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-20T23:03:21+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-20T23:03:21+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-20 23:03:21', '2025-10-20 23:03:21'),
(6, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"csvvvv.csv\",\"filesize\":\"134\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeC34A.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-20T23:11:26+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-20T23:11:26+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-20T23:11:26+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-20 23:11:26', '2025-10-20 23:11:26'),
(7, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"csvvvv.csv\",\"filesize\":\"134\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeCAC9.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column\":[\"Titre\",\"Auteur\",\"Date\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":5},\"o:resource_class\":{\"o:id\":115},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-20T23:13:15+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-20T23:13:15+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-20T23:13:15+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-20 23:13:15', '2025-10-20 23:13:15'),
(8, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"478\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeCA6B.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":8},\"o:resource_class\":{\"o:id\":117},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-21T07:19:01+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-21T07:19:01+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-21T07:19:01+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-21 07:19:01', '2025-10-21 07:19:01'),
(9, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"478\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeB8A1.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[0]\",\"column\":[\"o:resource_template,o:resource_class,dcterms:title,dcterms:identifier,gd:secteur,gd:plage,gd:latitude,gd:longitude\"],\"column-resource_type\":[\"1\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-21T07:20:50+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-21T07:20:50+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-21T07:20:50+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-21 07:20:50', '2025-10-21 07:20:50'),
(10, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"Feuille de calcul sans titre.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome82CC.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":[{\"dcterms:abstract\":19,\"gd:aPourMesure\":218,\"gd:aPourStation\":217,\"gd:hauteurMaree\":214,\"gd:latitude\":212,\"gd:longitude\":213,\"gd:secteur\":210}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-21T07:28:42+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-21T07:28:42+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-21T07:28:42+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-21 07:28:42', '2025-10-21 07:28:42'),
(11, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeAE53.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 07:41:47', NULL),
(12, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome5633.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 07:46:35', NULL),
(13, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome8A78.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 07:48:56', NULL),
(14, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome95F9.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 07:51:08', NULL),
(15, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome5FD1.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 07:55:28', NULL),
(16, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome5812.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 07:58:32', NULL),
(17, 1, NULL, 'error', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome46F7.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-10-21T08:02:50+00:00 ERR (3): \'command\' n\'est pas reconnu en tant que commande interne\r\nou externe, un programme ex?cutable ou un fichier de commandes.\r\n\r\n2025-10-21T08:02:50+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2025-10-21T08:02:50+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:68\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka-s\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka-s\\modules\\CSVImport\\src\\Controller\\IndexController.php(160): Omeka\\Job\\Dispatcher->dispatch(\'CSVImport\\\\Job\\\\I...\', Array)\n#3 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(71): CSVImport\\Controller\\IndexController->mapAction()\n#4 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(97): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(132): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(319): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(179): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka-s\\vendor\\laminas\\laminas-mvc\\src\\Application.php(325): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka-s\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2025-10-21 08:02:50', '2025-10-21 08:02:50'),
(18, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome6EED.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 08:04:04', NULL),
(19, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations.csv\",\"filesize\":\"475\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeC4FE.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 08:04:28', NULL),
(20, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations_min.csv\",\"filesize\":\"231\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome60E2.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 08:13:08', NULL);
INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(21, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations_min.csv\",\"filesize\":\"231\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome10B7.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column\":[\"o:resource_template\",\"o:resource_class\",\"dcterms:title\",\"dcterms:identifier\",\"gd:secteur\",\"gd:plage\",\"gd:latitude\",\"gd:longitude\"],\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":8},\"o:resource_class\":{\"o:id\":117},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 08:15:05', NULL),
(22, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations_min.csv\",\"filesize\":\"231\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeC2A7.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":8},\"o:resource_class\":{\"o:id\":117},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 08:22:07', NULL),
(23, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"stations_min.csv\",\"filesize\":\"231\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome8143.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column\":{\"1\":\"o:resource_class\"},\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"dcterms:title\":1},\"3\":{\"dcterms:identifier\":10},\"4\":{\"gd:secteur\":210},\"5\":{\"gd:plage\":211},\"6\":{\"gd:latitude\":212},\"7\":{\"gd:longitude\":213}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":8},\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"o:is_open\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 08:27:30', NULL),
(24, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"station.csv\",\"filesize\":\"79\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome43A4.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[0]\",\"column-property\":[{\"dcterms:title\":1},{\"dcterms:identifier\":10},{\"gd:secteur\":210},{\"gd:plage\":211},{\"gd:latitude\":212},{\"gd:longitude\":213}],\"column-resource_type\":[\"1\"],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":\"\",\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 08:33:45', NULL),
(25, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"station.csv\",\"filesize\":\"79\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeF95A.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":[{\"dcterms:title\":1},{\"dcterms:identifier\":10},{\"gd:secteur\":210},{\"gd:plage\":211},{\"gd:latitude\":212},{\"gd:longitude\":213}],\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":8},\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\";\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-10-21 08:34:13', NULL),
(26, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"observations.csv\",\"filesize\":\"322\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome404A.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[0]\",\"column-resource_type\":[\"1\"],\"column-property\":{\"1\":{\"coast:secteur\":219},\"2\":{\"coast:dateObservation\":220},\"3\":{\"coast:lieu\":221},\"4\":{\"coast:notes\":222}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-03 09:36:32', NULL),
(27, 1, NULL, 'starting', 'CSVImport\\Job\\Import', '{\"filename\":\"observations.csv\",\"filesize\":\"322\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome77E4.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":{\"1\":{\"coast:secteur\":219},\"2\":{\"coast:dateObservation\":220},\"3\":{\"coast:lieu\":221},\"4\":{\"coast:notes\":222}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-03 10:03:47', NULL),
(28, 1, '8768', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"observations.csv\",\"filesize\":\"322\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeFD9E.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[0]\",\"column-resource_type\":[\"1\"],\"column-property\":{\"1\":{\"coast:secteur\":219},\"2\":{\"coast:dateObservation\":220},\"3\":{\"coast:lieu\":221},\"4\":{\"coast:notes\":222}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-03T10:15:29+00:00 ERR (3): \"Observation 001\" is not a valid resource type.\r\n2025-11-03T10:15:29+00:00 ERR (3): A resource type is required to import a resource.\r\n2025-11-03T10:15:29+00:00 ERR (3): \"Observation 002\" is not a valid resource type.\r\n2025-11-03T10:15:29+00:00 ERR (3): A resource type is required to import a resource.\r\n2025-11-03T10:15:29+00:00 ERR (3): \"Observation 003\" is not a valid resource type.\r\n2025-11-03T10:15:29+00:00 ERR (3): A resource type is required to import a resource.\r\n', '2025-11-03 10:15:28', '2025-11-03 10:15:29'),
(29, 1, '5516', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"observations.csv\",\"filesize\":\"322\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeCBCA.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[0]\",\"column-resource_type\":[\"1\"],\"column-property\":{\"1\":{\"coast:secteur\":219},\"2\":{\"coast:dateObservation\":220},\"3\":{\"coast:lieu\":221},\"4\":{\"coast:notes\":222}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-03T10:21:08+00:00 ERR (3): \"Observation 001\" is not a valid resource type.\r\n2025-11-03T10:21:08+00:00 ERR (3): A resource type is required to import a resource.\r\n2025-11-03T10:21:08+00:00 ERR (3): \"Observation 002\" is not a valid resource type.\r\n2025-11-03T10:21:08+00:00 ERR (3): A resource type is required to import a resource.\r\n2025-11-03T10:21:08+00:00 ERR (3): \"Observation 003\" is not a valid resource type.\r\n2025-11-03T10:21:08+00:00 ERR (3): A resource type is required to import a resource.\r\n', '2025-11-03 10:21:07', '2025-11-03 10:21:08'),
(30, 1, '11816', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"observations.csv\",\"filesize\":\"226\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome7DD1.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[0]\",\"column-resource_type\":[\"1\"],\"column-property\":{\"2\":{\"coast:dateObservation\":220},\"3\":{\"coast:lieu\":221},\"4\":{\"coast:notes\":222}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-03 10:22:31', '2025-11-03 10:22:33'),
(31, 1, '1984', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"observations.csv\",\"filesize\":\"226\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome1AC5.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column-resource_type\":{\"1\":\"1\"},\"column-property\":{\"2\":{\"coast:dateObservation\":220},\"3\":{\"coast:lieu\":221},\"4\":{\"coast:notes\":222}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-03T10:25:16+00:00 ERR (3): \"Observation 001\" is not a valid resource type.\r\n2025-11-03T10:25:16+00:00 ERR (3): A resource type is required to import a resource.\r\n2025-11-03T10:25:16+00:00 ERR (3): \"Observation 002\" is not a valid resource type.\r\n2025-11-03T10:25:16+00:00 ERR (3): A resource type is required to import a resource.\r\n2025-11-03T10:25:16+00:00 ERR (3): \"Observation 003\" is not a valid resource type.\r\n2025-11-03T10:25:16+00:00 ERR (3): A resource type is required to import a resource.\r\n', '2025-11-03 10:25:15', '2025-11-03 10:25:16'),
(32, 1, '10052', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"observations.csv\",\"filesize\":\"234\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome7016.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"resources\",\"comment\":\"\",\"automap_check_names_alone\":false,\"resource-type-column\":\"column[1]\",\"column-property\":{\"1\":{\"dcterms:title\":1},\"2\":{\"coast:dateObservation\":220},\"3\":{\"coast:lieu\":221},\"4\":{\"coast:notes\":222}},\"column-resource_type\":{\"1\":\"1\"},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', '2025-11-03T10:26:46+00:00 ERR (3): \"Observation 001\" is not a valid resource type.\r\n2025-11-03T10:26:46+00:00 ERR (3): A resource type is required to import a resource.\r\n2025-11-03T10:26:46+00:00 ERR (3): \"Observation 002\" is not a valid resource type.\r\n2025-11-03T10:26:46+00:00 ERR (3): A resource type is required to import a resource.\r\n2025-11-03T10:26:46+00:00 ERR (3): \"Observation 003\" is not a valid resource type.\r\n2025-11-03T10:26:46+00:00 ERR (3): A resource type is required to import a resource.\r\n', '2025-11-03 10:26:46', '2025-11-03 10:26:46'),
(33, 1, '10448', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"observations.csv\",\"filesize\":\"234\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\omeE97E.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":{\"1\":{\"dcterms:title\":1},\"2\":{\"coast:dateObservation\":220},\"3\":{\"coast:lieu\":221},\"4\":{\"coast:notes\":222}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":\"\",\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-03 10:27:10', '2025-11-03 10:27:11'),
(34, 1, '10432', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"Observation2.csv\",\"filesize\":\"2917\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome37F2.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":{\"1\":{\"dcterms:title\":1},\"2\":{\"dcterms:description\":4}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-04 08:58:17', '2025-11-04 08:58:20'),
(35, 1, '9712', 'completed', 'CSVImport\\Job\\Import', '{\"filename\":\"Observation2.csv\",\"filesize\":\"2917\",\"filepath\":\"C:\\\\Users\\\\M-tech\\\\AppData\\\\Local\\\\Temp\\\\ome37F2.tmp\",\"media_type\":\"text\\/csv\",\"resource_type\":\"items\",\"comment\":\"\",\"automap_check_names_alone\":false,\"column-property\":{\"1\":{\"dcterms:title\":1},\"2\":{\"dcterms:description\":4}},\"generic-data\":\"default\",\"media-source\":\"default\",\"resource-identifier-property\":\"\",\"o:resource_template\":{\"o:id\":9},\"o:resource_class\":{\"o:id\":119},\"o:owner\":{\"o:id\":1},\"o:is_public\":1,\"multivalue_separator\":\",\",\"global_language\":\"\",\"action\":\"create\",\"identifier_column\":0,\"identifier_property\":\"\",\"action_unidentified\":\"skip\",\"rows_by_batch\":20,\"column-multivalue\":[],\"delimiter\":\",\",\"enclosure\":\"\\\"\",\"escape\":\"\\\\\"}', NULL, '2025-11-04 08:58:18', '2025-11-04 08:58:20');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) NOT NULL,
  `renderer` varchar(255) NOT NULL,
  `data` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext DEFAULT NULL,
  `media_type` varchar(255) DEFAULT NULL,
  `storage_id` varchar(190) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `sha256` char(64) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) DEFAULT NULL,
  `alt_text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `item_id`, `ingester`, `renderer`, `data`, `source`, `media_type`, `storage_id`, `extension`, `sha256`, `size`, `has_original`, `has_thumbnails`, `position`, `lang`, `alt_text`) VALUES
(93, 91, 'upload', 'file', NULL, 'Rue des Fleurs.m4a', 'audio/mp4', 'edfb328f151c0ed96f5540934e09a667271f34d6', 'm4a', '1f122832c9861e1848a8c874e5e2954aab237648f1b82736257234a7512c6f8a', 75270, 1, 0, NULL, NULL, NULL),
(94, 92, 'upload', 'file', NULL, 'enregistrement.webm', 'video/webm', '5c3855090fbbc96e542d17d1fd6a053996a472aa', 'webm', '99df99e74aa15b492610039fc258fe63a608e36361fe55a6eb225c9a6b391e44', 63086, 1, 0, NULL, NULL, NULL),
(97, 96, 'upload', 'file', NULL, 'Rue des Fleurs.m4a', 'audio/mp4', 'cfd0bd7d1902fd09499b5879c3242ae8bf98c022', 'm4a', '1f122832c9861e1848a8c874e5e2954aab237648f1b82736257234a7512c6f8a', 75270, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000'),
('20210205101827'),
('20210225095734'),
('20210810083804'),
('20220718090449'),
('20220824103916'),
('20230124033031'),
('20230410074846'),
('20230523085358'),
('20230601060113'),
('20230713101012'),
('20231016000000'),
('20240103030617');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `is_active`, `version`) VALUES
('CSVImport', 1, '2.6.2');

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_creation`
--

INSERT INTO `password_creation` (`id`, `user_id`, `created`, `activate`) VALUES
('MJ4UeWoHhCmHwqMzhHxpGRTSvWJ5xSNp', 2, '2025-10-21 08:20:01', 1),
('YsBw76edtsXUH4TLHkr3FLQG3cMOak2J', 1, '2025-11-15 21:09:56', 0);

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(219, 1, 7, 'secteur', 'Secteur', 'Nom du secteur étudié (valeur texte).'),
(220, 1, 7, 'dateObservation', 'Date de l’observation', 'Date au format YYYY-MM-DD.'),
(221, 1, 7, 'lieu', 'Lieu', 'Toponyme ou description courte.'),
(222, 1, 7, 'notes', 'Notes', 'Notes libres.');

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, NULL, NULL, NULL, 'Étudiant 1', 1, '2025-10-21 09:09:31', '2025-10-21 09:09:31', 'Omeka\\Entity\\Item'),
(2, 1, NULL, NULL, NULL, 'Étudiant 2', 1, '2025-10-21 09:09:50', '2025-10-21 09:09:50', 'Omeka\\Entity\\Item'),
(3, 1, NULL, NULL, NULL, 'Étudiant 3', 1, '2025-10-21 09:10:00', '2025-10-21 09:10:00', 'Omeka\\Entity\\Item'),
(7, 1, NULL, 9, NULL, 'Observation 001', 1, '2025-11-03 10:27:11', '2025-11-03 10:27:11', 'Omeka\\Entity\\Item'),
(8, 1, NULL, 9, NULL, 'Observation 002', 1, '2025-11-03 10:27:11', '2025-11-03 10:27:11', 'Omeka\\Entity\\Item'),
(9, 1, NULL, 9, NULL, 'Observation 003', 1, '2025-11-03 10:27:11', '2025-11-03 10:27:11', 'Omeka\\Entity\\Item'),
(10, 1, 119, 9, NULL, 'Observation 1', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(11, 1, 119, 9, NULL, 'Observation 1', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(12, 1, 119, 9, NULL, 'Observation 2', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(13, 1, 119, 9, NULL, 'Observation 2', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(14, 1, 119, 9, NULL, 'Observation 3', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(15, 1, 119, 9, NULL, 'Observation 4', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(16, 1, 119, 9, NULL, 'Observation 3', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(17, 1, 119, 9, NULL, 'Observation 5', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(18, 1, 119, 9, NULL, 'Observation 4', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(19, 1, 119, 9, NULL, 'Observation 6', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(20, 1, 119, 9, NULL, 'Observation 5', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(21, 1, 119, 9, NULL, 'Observation 7', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(22, 1, 119, 9, NULL, 'Observation 6', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(23, 1, 119, 9, NULL, 'Observation 8', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(24, 1, 119, 9, NULL, 'Observation 7', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(25, 1, 119, 9, NULL, 'Observation 9', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(26, 1, 119, 9, NULL, 'Observation 8', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(27, 1, 119, 9, NULL, 'Observation 10', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(28, 1, 119, 9, NULL, 'Observation 9', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(29, 1, 119, 9, NULL, 'Observation 11', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(30, 1, 119, 9, NULL, 'Observation 10', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(31, 1, 119, 9, NULL, 'Observation 12', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(32, 1, 119, 9, NULL, 'Observation 11', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(33, 1, 119, 9, NULL, 'Observation 13', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(34, 1, 119, 9, NULL, 'Observation 12', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(35, 1, 119, 9, NULL, 'Observation 14', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(36, 1, 119, 9, NULL, 'Observation 13', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(37, 1, 119, 9, NULL, 'Observation 15', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(38, 1, 119, 9, NULL, 'Observation 14', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(39, 1, 119, 9, NULL, 'Observation 16', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(40, 1, 119, 9, NULL, 'Observation 15', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(41, 1, 119, 9, NULL, 'Observation 17', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(42, 1, 119, 9, NULL, 'Observation 16', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(43, 1, 119, 9, NULL, 'Observation 18', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(44, 1, 119, 9, NULL, 'Observation 17', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(45, 1, 119, 9, NULL, 'Observation 19', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(46, 1, 119, 9, NULL, 'Observation 18', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(47, 1, 119, 9, NULL, 'Observation 20', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(48, 1, 119, 9, NULL, 'Observation 19', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(49, 1, 119, 9, NULL, 'Observation 20', 1, '2025-11-04 08:58:19', '2025-11-04 08:58:19', 'Omeka\\Entity\\Item'),
(50, 1, 119, 9, NULL, 'Observation 21', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(51, 1, 119, 9, NULL, 'Observation 22', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(52, 1, 119, 9, NULL, 'Observation 23', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(53, 1, 119, 9, NULL, 'Observation 21', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(54, 1, 119, 9, NULL, 'Observation 24', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(55, 1, 119, 9, NULL, 'Observation 22', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(56, 1, 119, 9, NULL, 'Observation 25', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(57, 1, 119, 9, NULL, 'Observation 23', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(58, 1, 119, 9, NULL, 'Observation 24', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(59, 1, 119, 9, NULL, 'Observation 26', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(60, 1, 119, 9, NULL, 'Observation 25', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(61, 1, 119, 9, NULL, 'Observation 27', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(62, 1, 119, 9, NULL, 'Observation 26', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(63, 1, 119, 9, NULL, 'Observation 28', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(64, 1, 119, 9, NULL, 'Observation 27', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(65, 1, 119, 9, NULL, 'Observation 29', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(66, 1, 119, 9, NULL, 'Observation 30', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(67, 1, 119, 9, NULL, 'Observation 28', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(68, 1, 119, 9, NULL, 'Observation 31', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(69, 1, 119, 9, NULL, 'Observation 29', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(70, 1, 119, 9, NULL, 'Observation 32', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(71, 1, 119, 9, NULL, 'Observation 30', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(72, 1, 119, 9, NULL, 'Observation 33', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(73, 1, 119, 9, NULL, 'Observation 31', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(74, 1, 119, 9, NULL, 'Observation 34', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(75, 1, 119, 9, NULL, 'Observation 32', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(76, 1, 119, 9, NULL, 'Observation 35', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(77, 1, 119, 9, NULL, 'Observation 33', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(78, 1, 119, 9, NULL, 'Observation 36', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(79, 1, 119, 9, NULL, 'Observation 34', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(80, 1, 119, 9, NULL, 'Observation 37', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(81, 1, 119, 9, NULL, 'Observation 35', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(82, 1, 119, 9, NULL, 'Observation 36', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(83, 1, 119, 9, NULL, 'Observation 38', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(84, 1, 119, 9, NULL, 'Observation 37', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(85, 1, 119, 9, NULL, 'Observation 39', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(86, 1, 119, 9, NULL, 'Observation 40', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(87, 1, 119, 9, NULL, 'Observation 38', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(88, 1, 119, 9, NULL, 'Observation 39', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(89, 1, 119, 9, NULL, 'Observation 40', 1, '2025-11-04 08:58:20', '2025-11-04 08:58:20', 'Omeka\\Entity\\Item'),
(90, 1, 119, 9, NULL, 'Audio', 1, '2025-11-15 21:32:39', '2025-11-15 21:32:39', 'Omeka\\Entity\\ItemSet'),
(91, 1, NULL, NULL, NULL, 'Audio', 1, '2025-11-15 21:32:59', '2025-11-15 21:32:59', 'Omeka\\Entity\\Item'),
(92, 1, NULL, NULL, NULL, 'Audio2', 1, '2025-11-15 21:36:01', '2025-11-15 21:36:01', 'Omeka\\Entity\\Item'),
(93, 1, NULL, NULL, NULL, 'test', 1, '2025-11-16 21:36:09', '2025-11-16 21:36:09', 'Omeka\\Entity\\Media'),
(94, 1, NULL, NULL, NULL, 'Test2', 1, '2025-11-17 13:47:08', '2025-11-17 13:47:08', 'Omeka\\Entity\\Media'),
(95, 1, 119, 9, NULL, 'Audio 2', 1, '2025-11-18 09:00:38', '2025-11-18 09:00:38', 'Omeka\\Entity\\ItemSet'),
(96, 1, NULL, NULL, NULL, 'test 5', 1, '2025-11-18 09:01:33', '2025-11-18 09:01:33', 'Omeka\\Entity\\Item'),
(97, 1, NULL, NULL, NULL, NULL, 1, '2025-11-18 09:02:02', '2025-11-18 09:02:02', 'Omeka\\Entity\\Media'),
(98, 1, 119, 9, NULL, 'test 6', 1, '2025-11-18 10:00:03', '2025-11-18 10:00:03', 'Omeka\\Entity\\ItemSet');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(119, 1, 7, 'Observation', 'Observation', 'Observation minimale (titre, secteur, date, lieu, notes).');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(9, 1, 119, NULL, NULL, 'Observation (simple)');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) DEFAULT NULL,
  `alternate_comment` longtext DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL,
  `default_lang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`, `default_lang`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0, NULL),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0, NULL),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0, NULL),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0, NULL),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0, NULL),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0, NULL),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0, NULL),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0, NULL),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0, NULL),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0, NULL),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0, NULL),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0, NULL),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0, NULL),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0, NULL),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0, NULL),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0, NULL),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0, NULL),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0, NULL),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0, NULL),
(35, 9, 1, NULL, NULL, 1, NULL, 0, 0, NULL),
(36, 9, 4, NULL, NULL, 2, NULL, 0, 0, NULL),
(37, 9, 220, NULL, NULL, 3, NULL, 0, 0, NULL),
(38, 9, 221, NULL, NULL, 4, NULL, 0, 0, NULL),
(39, 9, 222, NULL, NULL, 5, NULL, 0, 0, NULL),
(40, 9, 219, NULL, NULL, 6, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('2qp6hp5j20sc2pac31p89sj8vt', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323231313431362e3438333033393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22646d73706661377175666f33366e3771716370746e3030363467223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323235313935363b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323235343630333b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736323235343631353b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223865386332313531393731363565393136343666373133316264633232623163223b733a33323a226261366130313733316561653565323761646363633832626139323664346138223b7d733a343a2268617368223b733a36353a2262613661303137333165616535653237616463636338326261393236643461382d3865386332313531393731363565393136343666373133316264633232623163223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31343a7b733a33323a223633366564643865653162653866663837313963313361303230643837396565223b733a33323a223936633736343635346530353764643238653732623435306536356634653765223b733a33323a226362636435393563373737313431306234353364343037353366346665303034223b733a33323a226333323630333666343532633566356533363736303334323038303163363361223b733a33323a226638653330343833333763356463343733363662323664616536633930666564223b733a33323a223461393932646633626232333730323939623736643066313434646364323939223b733a33323a223034386135663934393962333139366365316464316136376435343131303163223b733a33323a226661343534333966356261333833386336373237343332656438623337333433223b733a33323a223030613566626436613537643963643030383336333330373733343736353531223b733a33323a223135343232326666316434646563323637633537316664386331623563396538223b733a33323a223239663031666566383130633539613864393262326563383639636230373263223b733a33323a223330313037373731636532373435376435383237393061623662636361333334223b733a33323a223137326438623764393639633562303331353337333435646462393631636263223b733a33323a223633656561313430316235663266653431666562363963336663316364326135223b733a33323a223839636534633236343839346566646236306530376462383763633632386431223b733a33323a223635366637633162663862616262663135343837613761393865656162323263223b733a33323a223231636264396533323563656262646438623334373162656662666432613832223b733a33323a226361633031663730353134376438363966326166326262303664633361306530223b733a33323a223335313262663264613662393765326465323961373863313432653038383733223b733a33323a226262346236323130383438633866303365623265653266643763393131343232223b733a33323a226337303564633666623834373762633935363833333938396137343031656265223b733a33323a223666363461333737666434316630623461316161386466303837663666636661223b733a33323a226237356232626532616635393266386335303734613965613066393037346562223b733a33323a223735373066623939373836653361663237366562333864326136326639363436223b733a33323a226330356338303935656162643731666133366134343436663166623139353262223b733a33323a226534626562373734313030333461363664633165346466306131643963623230223b733a33323a223437396531366237333566613866636636313764306536333635396462386537223b733a33323a226635653365393731623664623439613638313435353831313162633236343534223b7d733a343a2268617368223b733a36353a2266356533653937316236646234396136383134353538313131626332363435342d3437396531366237333566613866636636313764306536333635396462386537223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a223335353464333564396362663265313832386633303932343561356464363838223b733a33323a223331613439303164343839346661386330336266663461343365363836333461223b733a33323a223365626633613034313237386633353462356561663538636536633139396530223b733a33323a223864333036393731383463383336313465393462663863663633666562326462223b733a33323a223166396361396437623538353365366538303564383033653762343531633162223b733a33323a223633353162353934323737663831653066386535386231633736323230333838223b733a33323a223539623232303836336639313564613933356635383335353432623962383935223b733a33323a223232366633313039303531303330376338356339336161373237386636393032223b733a33323a223738363535373765326362633963656166333639316330643734346432666436223b733a33323a226633366432616430646237613464653432366162306431626664626631663737223b733a33323a226264393733333762663134343934393064633864383338343838373261343731223b733a33323a223262653932643536353336323737303738346636336638633064363339633566223b733a33323a223033643432613435653233313365376534623231636336383265383362376232223b733a33323a226239343832633538353834363965363934386339333236323265323536643863223b733a33323a223839336163353561356466306566653534356135383566303161656332303536223b733a33323a223261386534396664643231363363313962343761663735313564303136623537223b733a33323a223532626437376462633936623762373931626437366537313462623065323136223b733a33323a226338653835343765396539313931346331636563613834646466303334313662223b733a33323a226563636662376166653363613331323030663235623734656437303866336435223b733a33323a223433376437303534396439663535393230366637333734383136626230323139223b733a33323a223566313132643266623439333535343463343339323931313933633430343165223b733a33323a226436383834356435393534346633363538336561326164316137323961373361223b733a33323a223361306364333735353366653034303332613837393438663033303030343137223b733a33323a223864323766656333346561643361303566653239643330313936643065373565223b7d733a343a2268617368223b733a36353a2238643237666563333465616433613035666532396433303139366430653735652d3361306364333735353366653034303332613837393438663033303030343137223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1762211416),
('72tut9u1s4ts65v5qjfovs3ih8', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333234303833372e3136303434313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2237327475743975317334747336357635716a666f767333696838223b7d7d, 1763240848),
('73bm18o0uevp2dlbc0b1pshdlp', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333332383839372e3937333234393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22716a6b67616e696d766d6f3671343965346576706a6d7273326f223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333337323039313b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223435646231316563616561323961383530356562633233386664356466653031223b733a33323a226635656163613739326639343035663630626233306664643333623434666666223b7d733a343a2268617368223b733a36353a2266356561636137393266393430356636306262333066646433336234346666662d3435646231316563616561323961383530356562633233386664356466653031223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32323a225375636365737366756c6c79206c6f6767656420696e223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763328898),
('aopk8dtqqe21hks8jm844fpn3t', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323137303736322e3530363734393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22616f706b3864747171653231686b73386a6d38343466706e3374223b7d7d, 1762170773),
('dubsniu1om1kc00e9vjpb9qb3q', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333435363832392e3834313935313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e72686763736376746976377363683576706c6d6639626a7275223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333439383632353b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333530303033313b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736333439393631363b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226266663833653862643337323162666138303438393237626535623161313165223b733a33323a226164376366656637343638353161346363363333623463346132653965383139223b7d733a343a2268617368223b733a36353a2261643763666566373436383531613463633633336234633461326539653831392d6266663833653862643337323162666138303438393237626535623161313165223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31303a7b733a33323a226162386536346565646139373733383665383832306436306330353832373430223b733a33323a226237383230656462376335356632363065366138393637626266616562653333223b733a33323a223434333136393230376265633765396337336235356639393539313361666439223b733a33323a226132393966663536366433623962353831343635623237326631336131386633223b733a33323a223164633162373930613465316363303161666539363232326263336639396132223b733a33323a226630333939343435653135643166643335613036316236666332663839613565223b733a33323a226230336563663662633139383735633265383430336365393139656338613730223b733a33323a226535623138373736316366663039653739313238333038316432646265643031223b733a33323a226133343432343730636664393536393132623130383964386464636361636632223b733a33323a223038663935313638333032636431323065353732336662353863373536623561223b733a33323a223330353039326538383830613762326564366537326266613663633536663932223b733a33323a226164323534373134383037326338386364663738313832666138646433626265223b733a33323a226563646262306131623730616133663166353730333566366239656166623762223b733a33323a223034336638643430303137633531336635363936323561313062343165333735223b733a33323a226263363236613033653664396131366263623336616366623562383932393335223b733a33323a226134393430316238656438306634363963656635623336636665623832346538223b733a33323a226666366363333431376235643161303836383437396133333962643465613262223b733a33323a223164333435663039303930373538656239663936326638356132333436613937223b733a33323a226531323566353538316337636632356662616463393061653365616662656539223b733a33323a223833376633613138376537343461353638366663396464373565363739666464223b7d733a343a2268617368223b733a36353a2238333766336131383765373434613536383666633964643735653637396664642d6531323566353538316337636632356662616463393061653365616662656539223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223365613939636566623363376534306632353866373630323230626139343661223b733a33323a226238623361626130376336373163393837356135306663663134646361616663223b733a33323a223433343534653430353836643363353261323030623431373636633331666365223b733a33323a223663353437396463343337323865343739326638373263616161383738663736223b733a33323a223262623463663236643530346237616564373030663638393166336263663064223b733a33323a226230616331623964316663623339643663353634386336386237303838653166223b7d733a343a2268617368223b733a36353a2262306163316239643166636233396436633536343863363862373038386531662d3262623463663236643530346237616564373030663638393166336263663064223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763456831),
('em3caq3326hc3iain2h8f237gg', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323136353635362e3134333734353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226366623333676e376b62706c6e396f74683467656c6e36353671223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323230323333363b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736323230383832323b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323230383833353b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323230343937313b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223935373261363865383935353331383130373362313965353830663632613936223b733a33323a223966646234613836396664666661613035366630326236346234613263323462223b733a33323a226466663962373538623139336637306632343530386565363439373163353161223b733a33323a223535303431666263383837653738363461396565636333613437333437643763223b7d733a343a2268617368223b733a36353a2235353034316662633838376537383634613965656363336134373334376437632d6466663962373538623139336637306632343530386565363439373163353161223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33343a7b733a33323a223334333062353861656332363735626334643430336465646633626131663766223b733a33323a226438343763333939393430396336613762363835373733373264653866316361223b733a33323a223638336338323934633662336364643939653637633830326539636630656262223b733a33323a226565633364376530663464333836623266666631313338306131306430313536223b733a33323a226364383362313264666130303438643530653733643638366266636236616461223b733a33323a223866643736383432333264646564393762663364353362613562653930643264223b733a33323a223261616633333937333532366264356538343531313930643637366661396231223b733a33323a223263613865373861656430636564346165326235656565663738343463613638223b733a33323a226239643731393463663761626439313261313961336635643363363963333561223b733a33323a223161326462353963306563383537353232663130313036353965646238333630223b733a33323a226361623435306337626562303235363261333161653532376465396130646133223b733a33323a226630623161643436373363646230323135653038663365376230353535346263223b733a33323a223466643365333738623532376637346363633065386439373663636432366238223b733a33323a223436306437653933393765396138633539333366313635383865373837326533223b733a33323a226561643365383934323465623930363064313034633338306237383935313264223b733a33323a226565613636613761336539326235633731386664356437333938663561633766223b733a33323a226239346433323963303032663261376636373231303338613738366165626338223b733a33323a226335333261346662326438366666626566333532393966333933666434303134223b733a33323a226337616532316262653863373465383065666463303064316234383734653330223b733a33323a226338306334316233316662653530646363373065626334326462616433346233223b733a33323a226566363434376366613139363130373935343333393564333766626262633963223b733a33323a223130636531356162623731356336376363653536323564653036343233323632223b733a33323a223765623534666438326364633164393966616261363630376665353930356662223b733a33323a223039323665333338396133653934613165656662393763346435663562633836223b733a33323a226637623935383237663232666365366439343666646332626333626537303133223b733a33323a226339656335313364663663306164633134333232663538373437376538613166223b733a33323a223939666432363961646331663666343135333265376538393966353735343562223b733a33323a223565663661336130626132353762373661383933633964303263633865613961223b733a33323a223031623265623130313065666631623339623266303337313764363930646661223b733a33323a226332623639636430666138653634623033626139383966366633323361326133223b733a33323a223639316232626438616138333232356332363431316134386139643265656262223b733a33323a223838323166663432343764313735386631363639343063373930316636393030223b733a33323a226431353538643039323236353736393933333365643232656635326132323638223b733a33323a226537316664323232343939363361336530316663306336353038653939356636223b733a33323a223966623634616635343863656236313063396461646363626534306363393134223b733a33323a223838616562323662303031666335666462356263313864663861646233616533223b733a33323a226366313861653331386432353761356565653337626330336431376233613137223b733a33323a226239393162356337306265323038363939653834333561373763383335383039223b733a33323a223539663930616631326264383533303466613230373831323131336134653463223b733a33323a223661383734653931313634646430373336653433623736366266636264663264223b733a33323a223665396130333833643464346565343561356236633863393138393137313439223b733a33323a223863616434366565386437636234353638336266363733663535633438373730223b733a33323a223731396437366335663062626239363531633163346434306661343934346266223b733a33323a226436363739333365623163393039306633633063393938616233353566356533223b733a33323a223936376166393639316638313538313130616639313536633066393730373261223b733a33323a223263636338643365346461316264313635633934626661643038366264303038223b733a33323a223432356565336264376631303738653165663730366236323432303562323335223b733a33323a226665656663323465353331396330376331306233663564633166366438623264223b733a33323a223039653663353732643534336566303734666236663166303566333235636535223b733a33323a226333656365633565313738333466636234386361323932646666656233343332223b733a33323a223462393561343335393334343432363637326361393761646238633437343531223b733a33323a223663643365643837633632336361313835316435323633313836363931346462223b733a33323a223962626537616663323438633661326261633031343666343562333465646431223b733a33323a223037306237613962303662616334346539373034356631353066643265313035223b733a33323a223636353139623764633063633233623662353961386363356461363564653265223b733a33323a226264663261613031663530616237663433383264306461636362333966623964223b733a33323a226163396366613536663932646363333361373536333039383232663333386330223b733a33323a223335303763643162626136646131303736383735386236393362346138666439223b733a33323a226233376566623765336337333330623336653464626461383362646661653933223b733a33323a226536663564333764376230623064353830343135303137616434356437383439223b733a33323a223435373731393337336436623633313637623330386362376437356561386666223b733a33323a223938663030333339656336396666643235383731316236633532383663366635223b733a33323a223933643762613131323663666235613438616537623637613338663766336230223b733a33323a226161336231613033643738303339336130313737333062393563346530633934223b733a33323a223965333066366539626263653364323862323832633534636632626534303361223b733a33323a223635343438626461323437343861306133343631343331643839373633333338223b733a33323a223136303761313733323032323538373339363366343761386432623939626131223b733a33323a223033386333306337326461616436663465343530353864303038643763346334223b7d733a343a2268617368223b733a36353a2230333863333063373264616164366634653435303538643030386437633463342d3136303761313733323032323538373339363366343761386432623939626131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33333a7b733a33323a223531623930393930383337333633633634626633333730643539313062303733223b733a33323a223862323937323361653964343065333532633931636335626337393138323735223b733a33323a223836303632353066653437353135646534393137346130643237323535346634223b733a33323a226261313030623231333732366366333136303766366132316532633863356433223b733a33323a223561636336653432623333333064303035333666373534383532346536636537223b733a33323a223563373634373062363734393431353663333036333133626164636635646265223b733a33323a223339323338663939336463373066663866376638366231643665306237373736223b733a33323a223865316562383764396435663863666665386166333861613764313361643461223b733a33323a226539323131393530396134323662343830386633623336613433306666643738223b733a33323a223164306638636536653035633934393033666135336161626631346235313935223b733a33323a226266383865353363306537663265393230313064303966653837656336643065223b733a33323a223136356535663335356333333563353264646539366264383066323136356532223b733a33323a223865626561366136333463636463326463666463373235343938376535633662223b733a33323a223164303839366334623433663332346263666334613334636330646663346335223b733a33323a223562326265396263653766663765643233333831663539303533303865346230223b733a33323a223830656335623038336535626134316637323833303534363637356566626631223b733a33323a223130353565353635616634633161316437323930663963383062313834656238223b733a33323a223337656134643266333831313435656439306233313163363465343763616135223b733a33323a223065336665623862613633333130653436363661363436386665616665343862223b733a33323a223965616137633132373231353265663566393539313464633033326235626130223b733a33323a223566323866663332646135303830646534313563356163666631623065313833223b733a33323a223330353835336261386438633961663234376536386234323664636634653165223b733a33323a223666623330303739646665353662363062643836633165323532366238653763223b733a33323a223831643364626335366331643261653666383933623263643230356463353934223b733a33323a226239653064616238643736306262386535623434326366343339336437333863223b733a33323a223535393131353434306538623333386365326263313239643762343263306165223b733a33323a226234623731316437333937663631653233663838393738376438323937653161223b733a33323a223531303038343662346661353930636432366565613763363663616265633266223b733a33323a223366636430613230646636623530306135656365656237336363653462633230223b733a33323a226436363239383763643665616632343065616231643839386439376238323531223b733a33323a223763626434393331613663373238303430396662383237666531303361333765223b733a33323a223532346535656530363037666131333965626435366639336433303862393063223b733a33323a226263613236383837323333393834323038653664333338383938303634613766223b733a33323a223339343432323561373933383139333162326361343561326436353061333330223b733a33323a226164343066653961653832663561653331633033363536383934373132326164223b733a33323a223235353934626135336135333935316666336331616332303565623033666538223b733a33323a223066623637656163323831623531343933613831326162323033363634653030223b733a33323a226265323932373931333935303236323534323532326136343065356437663735223b733a33323a223665363166336236363862613331343664636638663664356539393730636466223b733a33323a223135383239636339623238346564366165303662333535346133306335353939223b733a33323a226564316331316561653262343036356132626130386261393537666563373838223b733a33323a226666396536306665313531366431316137393736623530313131633833363139223b733a33323a223664623336383363393038373462303662376333336335303864323061343136223b733a33323a223964396137333566636266393265613866373637353234623266313763663133223b733a33323a226333666638306133323234323236613264393066393233663761636264343265223b733a33323a223930313864623736306631393632653862393963633836333531363635336637223b733a33323a223562373133343837633536373761303935303335323134636433656339333862223b733a33323a223838306161323761393266346636646466356434373737383535343533373632223b733a33323a223463343236636532663430656264343033643735623534313164316534636436223b733a33323a226662353237326432396432656438623234633330343439356433636336656565223b733a33323a226137663833313535643434623632626136333163653930353861336634373466223b733a33323a223438353036346163636666393861663032316562626664303332373330316337223b733a33323a223562306463396265663339303032303637653730383331346238666338623832223b733a33323a226263363631623639323137393466646666373131633839303234643333626439223b733a33323a223638326133313533616134383564663031306339333563663736316232666531223b733a33323a223361386432646538373030383332393135626264616636653266326536313837223b733a33323a226261623762336165313265346635376132373362396633396531333763373030223b733a33323a223335313339646134636336393939663834313663363965396537343631303763223b733a33323a223435666237663338313633383766373438656636613064613465666137623731223b733a33323a226333636134376337303333303733366166623333346232383234646663333938223b733a33323a226363613133326634363334323930313436393735306261656339623566373637223b733a33323a226362313762643565336166396565336662616639343536343766303033343563223b733a33323a226531386133323932306631376432383132653635333532326339323832366636223b733a33323a223031633762396262303937356562373065356361616632303363323431613736223b733a33323a226438303761393362396362636431633833383132323238346663366334306162223b733a33323a223734666563626238346137373261366237663339326235393839313836396137223b7d733a343a2268617368223b733a36353a2237346665636262383461373732613662376633393262353938393138363961372d6438303761393362396362636431633833383132323238346663366334306162223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223739643238373235343266646234636335376263656662396665353332376532223b733a33323a223733323931653764386363306237366231363139316231633730613566613763223b733a33323a223765376532303836306635653137636466323065623532646435363364373264223b733a33323a223135396539646265616530656230653238393964306531333736653736656566223b733a33323a223637353534373466333235623135313633383766666433646663653232313536223b733a33323a226162336663356634613665313439636663626632643763653830653565633263223b733a33323a223234316331363435633363306566326436643430656264393463323630396538223b733a33323a223533333335646232653433376130373162343762613735653635343432326431223b7d733a343a2268617368223b733a36353a2235333333356462326534333761303731623437626137356536353434323264312d3234316331363435633363306566326436643430656264393463323630396538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1762165656),
('f0kivqdk3pnjsr9c883i85570o', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333436303136322e31333439343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2262366731686b6b6869353332683730386a646b6d686731703561223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333530303835373b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333530333336323b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736333530333139303b7d7d72656469726563745f75726c7c733a34333a22687474703a2f2f6c6f63616c686f73742f6f6d6b5f544879705f32352d32365f636c6f6e652f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223138613262303865653638613761326438376564336364616136383731393038223b733a33323a226464613361666436326163646239303732393865343431313733393730313161223b7d733a343a2268617368223b733a36353a2264646133616664363261636462393037323938653434313137333937303131612d3138613262303865653638613761326438376564336364616136383731393038223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a223630656363373562626133343562666365333231663435393366346366623336223b733a33323a223835663435346634383865613838336530333062383063656665636339373265223b733a33323a226538653066363661353761393762396535346463303263373235616431653935223b733a33323a226138343131303832333733353332366534653130396461616135343763666437223b733a33323a226563613664363835633635653433616365383038643936363736633263653363223b733a33323a223236663364343631386637373666363061353663323135356136643063633035223b733a33323a223032333331663231303934306635363266396365353837663065663164623239223b733a33323a223434626232396336646565346331336339356563666266316564656566303436223b733a33323a223934663030663936633639663163376232646261373637356239653430313538223b733a33323a223231363937333763313864663135376332623463653935616434383839353338223b733a33323a223664656335333638323330613064316466663666346532373639396564633962223b733a33323a226661653163353739663434666536363765656364653338653734313463303663223b733a33323a223535666434396437633835323438343038303730656538393961656233663563223b733a33323a226539616364326664626664623939386332346265333630666130653161666264223b733a33323a223037323831363331363035333663363532663136663034663964623464666466223b733a33323a223331363138643339303335356130303938373431623836393532323635326134223b733a33323a223965653835636533393836363834663935303434336165326136663338633963223b733a33323a226534333031643731656335326464326130386266386331623664363438626536223b733a33323a226531663132323435343066396333623961353331393365333930333932313366223b733a33323a226666663637323361323137306162326432373933656266373039623164323462223b733a33323a226338373138343736343535373835376666363139383937643266373461386230223b733a33323a223533376531336466333432643866336664653966306161316166343061616564223b733a33323a223431663264353531333434316635366563343239616165386162616164346465223b733a33323a223966613434636136656336643064663765376434663662623861656533613331223b7d733a343a2268617368223b733a36353a2239666134346361366563366430646637653764346636626238616565336133312d3431663264353531333434316635366563343239616165386162616164346465223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223132373863643032613133383430346463643862366534336232316461663366223b733a33323a223035353835643862326132353539373465363237623165356336343134366362223b733a33323a226462386536356362316230653630626437353061653965303031643930616564223b733a33323a226239653235633465326533653832613165633964323662353432386431653738223b7d733a343a2268617368223b733a36353a2262396532356334653265336538326131656339643236623534323864316537382d6462386536356362316230653630626437353061653965303031643930616564223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763460162),
('gra4i820qng7988o2hl66rple2', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323137323333352e3030353031333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226772613469383230716e67373938386f32686c363672706c6532223b7d7d, 1762172343),
('k7bo6ppcdl82276e531t5p7h6g', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333332393038382e3837313731373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22716a6b67616e696d766d6f3671343965346576706a6d7273326f223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333337323039393b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333337323238313b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736333337323131393b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223436326163626434666362643763383766356131613766363861363833633935223b733a33323a226633386133306330633739623238313836326564616561323763353031613531223b7d733a343a2268617368223b733a36353a2266333861333063306337396232383138363265646165613237633530316135312d3436326163626434666362643763383766356131613766363861363833633935223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223032346463366538333731323061663765396136666336363936633739633861223b733a33323a223262626232386637336636323632623361323639373065393730336462356336223b733a33323a223334353265646336613830303864656331326233386235643663386462393063223b733a33323a223262363936333565303531666630343232373430396636333335376264653033223b733a33323a226665383864313233626433383039626636306534356137343739653861613233223b733a33323a226436316138653237346364346638623234373063336365353862643762356635223b733a33323a223036653335633932333633616430306336626638353136376132373730386137223b733a33323a223937333862373239633131306562666239393763643936363937383239323435223b7d733a343a2268617368223b733a36353a2239373338623732396331313065626662393937636439363639373832393234352d3036653335633932333633616430306336626638353136376132373730386137223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223763393763326630636330393937366662396637633536373836663161653565223b733a33323a223931616563333332386562336437623833326139616436633835373933356361223b7d733a343a2268617368223b733a36353a2239316165633333323865623364376238333261396164366338353739333563612d3763393763326630636330393937366662396637633536373836663161653565223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763329089),
('kkuauug0405c7395m4rhh3m4s2', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323137383233312e3538383631383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226b6b75617575673034303563373339356d34726868336d347332223b7d7d, 1762178231),
('lgucim0vk9bfvgqvs4pbg73rfk', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323732303230332e3531323131313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226c677563696d30766b396266766771767334706267373372666b223b7d7d, 1762720211);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('lmjd7e6c6uhs2a612n04e7gvn1', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333338373233372e3137353539313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22656d64396b703162723776616e6e693876667338636576743172223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333432363836373b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333433303433373b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736333433303234373b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226633653534393962646635643864653630613037613432626662346631626135223b733a33323a226530613563313137666362646139383761613038343266326462323065663339223b7d733a343a2268617368223b733a36353a2265306135633131376663626461393837616130383432663264623230656633392d6633653534393962646635643864653630613037613432626662346631626135223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a226533616162323735643535346630326463373232646461316164373435626330223b733a33323a226535306166666431366335316139373339333639333837653161343430333032223b733a33323a226464386335653731363136343338623138613030306233356131376335666561223b733a33323a223835663939616132633134626535666462383261376630313530363164633331223b733a33323a226266333132336266386138613033373264653232323062636433353534393764223b733a33323a223338343761623433356337383835373434633063383064646263653561326636223b733a33323a223330323436336533393631633866366237653635313062653362303362623436223b733a33323a223636623764313266316364643633333964666661363838376535386234636263223b733a33323a223633613764653761656462373338303966636262633263393830366632623961223b733a33323a223261356431656438303430643138643335656637356439653736383163376266223b733a33323a223330313033363132393936373765666365313133393661623634373363343265223b733a33323a223933626465333464646630633365626362366131643038393134333737306463223b733a33323a226331633039343136663430366532376638306664343333373232623831666237223b733a33323a226130666431613763356264363531326166316664653365633665393862663566223b733a33323a223761336665623434613331303934626233323436303930613062656165383239223b733a33323a223962353437303138323833353461363561343663383239636635653238393863223b733a33323a226630303364306635613438366366643966643136663561336238356236303031223b733a33323a226164326134363635643038666639313461623633326165623537626336626362223b733a33323a226638393561386331316233393838636262346462383731323939303432343332223b733a33323a226232363233333739613366393435383732316137393464643932636132353761223b733a33323a226466363338373461666634656332636233383262353938313935646636613138223b733a33323a223132353061613936366439663535646365366666636561346561383136326130223b733a33323a226438613562316561363839633931663831333733373766383434326236373131223b733a33323a223633636235666632343432343538643630386532376661653965336236346562223b7d733a343a2268617368223b733a36353a2236336362356666323434323435386436303865323766616539653362363465622d6438613562316561363839633931663831333733373766383434326236373131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223164653433303364343038616631323063636661373464633030613037323130223b733a33323a223562333039396336383838616161353537343061326666366336363264373166223b733a33323a223135626461633663366362646233383765333162653631373036376436386631223b733a33323a223231303439626161393932363961356435653963653764376133323436366261223b733a33323a226630373165636563646133346463656261323038646264626332626334653733223b733a33323a223537316565306462346131616164613335383938313666653236343062326534223b7d733a343a2268617368223b733a36353a2235373165653064623461316161646133353839383136666532363430623265342d6630373165636563646133346463656261323038646264626332626334653733223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763387237),
('ncu5b8l6ug2n5b5pdmbjjdhad2', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333234373336392e3135323334393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22646233636a6561756b6d693174666a6b6374377131766c6f6e39223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333238353335323b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333239303535363b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736333239303537313b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223864633966636533616662653834326537396463333632613962343865313764223b733a33323a223961623232633035633533636433666233613364616438633137353330333061223b7d733a343a2268617368223b733a36353a2239616232326330356335336364336662336133646164386331373533303330612d3864633966636533616662653834326537396463333632613962343865313764223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32303a7b733a33323a226261303864353861376135333738623461383461343135366235643635396163223b733a33323a223261613939663236356365653066323532353033313063613134623663613039223b733a33323a223233653837346135653236386334336632306361353135323033646365343933223b733a33323a223064323135333637663139316231663238333064333462393362306630326161223b733a33323a223561363038363063653234306364363861613436363938643633366665393734223b733a33323a223831383363343061393666383966333638323436383264643664656538333365223b733a33323a226131316537623634663231373633326533306362396530656236663633656164223b733a33323a223638356135376130316664343234366536326631306363346465626133333865223b733a33323a223261393134393661656338666536393837316663356331643838346665653964223b733a33323a223537353566343639303534646261663936346463343464633736623465393236223b733a33323a223564633234636238323830333832646531323462373163663438396563303839223b733a33323a226361636130643863643863613936313338633130346164303530646635386435223b733a33323a223865303336373832653737656335333666366138303265313963313163663032223b733a33323a223963343464366633616231666133366163363964636233636435636633643061223b733a33323a223563613265393836353562326635343565636463356538343837666534326463223b733a33323a223236643464323232663130646139326638326239353534646237313730366465223b733a33323a223864616632343538313965303462366632383662363934393835326364386361223b733a33323a223666316663393163633238353963393766333466666166663034643536333636223b733a33323a226664613466326535633838653335373038323262366338643936396630376632223b733a33323a226435656531323032373131313735373739343761333731353363363864626437223b733a33323a226665323130653961663230626536353636626164376462366231613663346461223b733a33323a223938643065366339626432633462386665633333313866313238646638393932223b733a33323a226465633765386533366133303732356162313136326134646263616334336661223b733a33323a226633303862303339343466363437363837353330393565363438616236656163223b733a33323a226535343062616136643139666530353835633062366639346337353063373163223b733a33323a223830623539336135303831326634333861373135616561303838656332336130223b733a33323a223764613036666432626261623063653462393136336333613034353434353331223b733a33323a226435353130303135383438343765313130613662326134346265346138363533223b733a33323a223337653063616564396462623137346638313332363566663631616135323739223b733a33323a226463303337653336316533626231323631323435633230633735643334666265223b733a33323a223163323232353335663932373436393564656465383135363965306234353430223b733a33323a223062626335363365633964663035646332343635383964373461613330363632223b733a33323a223263663537353261356262326235343431626564626461643737316434633235223b733a33323a226335356461633632396139393265643962313864653234396335316230663037223b733a33323a223961616239353562346262343233613965383431396663393863373565383136223b733a33323a226338363962396235353335306464616537643533613034363263356631666362223b733a33323a223739336363313537656239353639356338363666656136373233336536653033223b733a33323a226432323963366663393439633236373738356638633034323233366137646664223b733a33323a223630656331393933636636313462303232356638633639303463303738356132223b733a33323a223538356333323462643030383162653964303836653533613666363937653163223b7d733a343a2268617368223b733a36353a2235383563333234626430303831626539643038366535336136663639376531632d3630656331393933636636313462303232356638633639303463303738356132223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31323a7b733a33323a223766383134336231646631663235366630666562636330633765323766663639223b733a33323a223266653239303834333134323534653163303438363431366232346236626162223b733a33323a226362323461303839386530396666383439616563653833383430343462303137223b733a33323a226432353636623838316530306337326562303837633932323163666234363962223b733a33323a226137653534653435343530343762333663363164313238346131643564313363223b733a33323a223362356566393836633738333161366431363433663739613461396432623261223b733a33323a226235643138313535313765663038646136646533353264623033663633323365223b733a33323a226465326131313039393664656631313365663333393965356637313232653536223b733a33323a223061333763383435656630623264363132616334343939303366393965316462223b733a33323a223862326361633966343030303061653661616634626438316636613235306336223b733a33323a223962616535346634316337353563656236323063646139636235656433666434223b733a33323a223834633638393762366535643932663736346636653034333566373031326232223b733a33323a226436623765613937356533333465656635326465626639333635396332383637223b733a33323a226538353564386535353737636434343130616565393235303339316261316339223b733a33323a223266303761363439376533663865643036623561363537663366383235363431223b733a33323a226635356363653663373733323765316663313662313232626130376266333465223b733a33323a223766646635356363393230306237666430623036316663353066653966623562223b733a33323a226332306332636336303132643439656638303734383936396437623565656437223b733a33323a226164376162626633363736313065323431363364323461653835383461663230223b733a33323a223731363662326338663161616532663035363966616535616466343633356239223b733a33323a223733306535366230633335386166623038373666373663343738393466643136223b733a33323a223436353962343537393563643462353636326634616434366130363464396431223b733a33323a226634393134656130383865626634366634313230363037383530363563623765223b733a33323a223739393737613764346138373939373931353338616166643961636434383634223b7d733a343a2268617368223b733a36353a2237393937376137643461383739393739313533386161666439616364343836342d6634393134656130383865626634366634313230363037383530363563623765223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763247372),
('pl7tev6qvi2idjnf4aajdckvn2', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323736393433352e3237343438313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22706c37746576367176693269646a6e663461616a64636b766e32223b7d7d, 1762769442),
('pvlj4bp2fstut13ueirh8flhta', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323234373435332e3332363837363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22746c687162686734336266766b6d65316f626f6f6c7338726264223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323238373535353b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323239303635333b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736323238393838333b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226639363366303634353261356537313632363231393265666661613830316338223b733a33323a226534353031646539323863333466636134663863356537386439303663633966223b7d733a343a2268617368223b733a36353a2265343530316465393238633334666361346638633565373864393036636339662d6639363366303634353261356537313632363231393265666661613830316338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32323a7b733a33323a223339386364666234343436303737343665343364666434393134396531653364223b733a33323a223435366530366136653939336661613636303331653933353432623037613337223b733a33323a226161353337393138353565356564366535363733666262633339313866623466223b733a33323a226538383434383232356136343566663263393562333961303630666563643638223b733a33323a226134636239653933323134373261386465373164633862376633303030626637223b733a33323a223934393836653335303033363539643234646337353533356261613632333836223b733a33323a226333303630346433306131636565343236383433353332346663353933373063223b733a33323a226165363635666338306439373062326663353764646366373039653762313832223b733a33323a223965613062633238663964383761656236613936393934623536373330333933223b733a33323a223436306231623437613761346433643535313539626137663165393965343533223b733a33323a226266633663303337653636663937626130653066656130343637393037373133223b733a33323a226463613933636336653961303438396534383037303565316239313836363463223b733a33323a223631636465373365326233623931383937356636346131343937356538373936223b733a33323a223463373463393630323164613063616538643531373139663037656263336362223b733a33323a226661666539646161643566623864636265323731393835313264623332313231223b733a33323a226330666433376435633337646261386364623132643065623433323361323130223b733a33323a226166306265326662336534333932393734313730396532386561663231613633223b733a33323a226233626334646466666562323162613638336234333937376366383132316566223b733a33323a223864313031346538383831333436346137626233653634353536636263363233223b733a33323a223565633739616632636532393238393136336464393934656536396437643431223b733a33323a226430343738396661616465396530666262616133356166653365363933653562223b733a33323a223537643734666566303436353766346566306263646133653739616236323035223b733a33323a226430323130643830366465656237663966663031383933323333316636383562223b733a33323a226530636664623733643634346333316663633933316430656165623436383362223b733a33323a226132373135336235343131613936346234616230326366363734363565323637223b733a33323a226635323365386135653131303539343765653437303438383233323961383938223b733a33323a226438313139396462323538363631363562353833353038383430663035313832223b733a33323a223562383336616632666337363032613937396231333431613438653830346436223b733a33323a223837363861356337303035373061366233353164373937313761393466376262223b733a33323a223834366664663635386436323033336338373135666535316332336536313334223b733a33323a223565623339653030303837663536326330623038303130313534616535343232223b733a33323a223037363732633462323537343935343937323037666265633036643965333662223b733a33323a223936636131333733393766396134633935613165343233626637333237303064223b733a33323a226362623664313032366564306139313530376437386666363534333464633166223b733a33323a226430333462623864383364383536633832333233616132613138653135333561223b733a33323a223162613934633334623531663630313865303265643363333264316531666637223b733a33323a223661643434353162633232643833623439646237373137313931666232633130223b733a33323a226264303963333566646130626461663131373931616366653036633339653931223b733a33323a226462363565366637613462363039386263366234303730616139353835666137223b733a33323a223833666165646639316162613430303238326565366639353663643230316363223b733a33323a226262383464633365353363366237393662396138653365316261616463626334223b733a33323a223364396161313635326130613864623462666234306537316136313132633535223b733a33323a223136376666373935393963303161646233616163313039323532393866666665223b733a33323a223164613166343935663962616633303538643038613233343837383033373963223b7d733a343a2268617368223b733a36353a2231646131663439356639626166333035386430386132333438373830333739632d3136376666373935393963303161646233616163313039323532393866666665223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31373a7b733a33323a226236343939623933363038313135306431666332363032376234383335633533223b733a33323a226533623032303038323139663761623038633535616638353665366238336337223b733a33323a226230383363666332636436393761393533373530323265373433663739373164223b733a33323a223730333630303562303732353663383838653663366562373164396238626563223b733a33323a223836633436376233643735633965666665383662323065623331643939646432223b733a33323a223534353637393664666563623937353231326665623631656664616537643739223b733a33323a226161383537383234656261356261333035396365386430663332363537343865223b733a33323a223266643836306237353032633261326636363164303336376634376433393431223b733a33323a223635663631313461333833366432363937343136623637643062373038313762223b733a33323a223838333535373131346264383933326466663138336132613365396632646533223b733a33323a226630323330316332383631306562656164663163346338306436383933663161223b733a33323a226466393565393761383630383236386662653365333763613766306136656166223b733a33323a226366653464363165396165626439323264326165363930363833306135643266223b733a33323a223131396564306635336463663661623433353333636330396665353562613932223b733a33323a223431356538323634383930313431613037653234343662323432386132303630223b733a33323a226237373837363238346635393766613565396239636433356436376538396636223b733a33323a226462643332396463626130343431343536623366666166393230356664303365223b733a33323a223063313761666661643535333431373832393333393635343061323439383037223b733a33323a226463356536306236663362343463653562313937663131313962393862623537223b733a33323a226665336137396532323837636264396161376465613336643439633436323131223b733a33323a223264663766666635393636376635636364313131626538363161323939316564223b733a33323a223534306336636463663065343636333238623437393333626330393831623437223b733a33323a226666666562366435646432383833363236353536396434306437303538366662223b733a33323a223931643932323466373735346464656232646534383532313537373439386538223b733a33323a223136333263633338323832313663366530346665626531306432376431306362223b733a33323a223933666561313562353830626131643837333937656564623432353630323861223b733a33323a223664393266303063373966636562386335626535353064383938323664333733223b733a33323a226633373535393837343132386464313538383565393036303732326130373363223b733a33323a226637663930626564386262373339346332653635346561653337393065356361223b733a33323a226530656136323230396264376463343639623465666132666562393132386436223b733a33323a226437373565373933643766353837343532373063346535633635356630616664223b733a33323a223265616163383164373861386231643435353730656665623966616238653533223b733a33323a223435306534643264653866383738643364386531323064383331303134633435223b733a33323a226638613261326363633266333936643631383032633465633863646432306630223b7d733a343a2268617368223b733a36353a2266386132613263636332663339366436313830326334656338636464323066302d3435306534643264653866383738643364386531323064383331303134633435223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1762247453),
('rqodlbp12n4rfdt9dknn4cme0b', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736323137383039362e3138363833353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226772666c3439763767716d766f6d39673074307570306b677365223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323231393334383b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736323231393636303b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226430333231373865313133623266336362333230313733306634313462393064223b733a33323a223237376134313138386135316663363065363539663636626664373638666138223b733a33323a226430316131646331316139313239356238323565613731653932343236636266223b733a33323a223532346138323131366239643339633138356534363330393866363736306139223b7d733a343a2268617368223b733a36353a2235323461383231313662396433396331383565343633303938663637363061392d6430316131646331316139313239356238323565613731653932343236636266223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226463633564633437356532646230376265353734666535373065356664666165223b733a33323a223964653037333364643966393734396263663632656439353137383561316631223b733a33323a226432323938646539666439623036643165353837303064646432356234643636223b733a33323a226630336432613466653636303736336630326435663362346236623031643562223b7d733a343a2268617368223b733a36353a2266303364326134666536363037363366303264356633623462366230316435622d6432323938646539666439623036643165353837303064646432356234643636223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1762178096),
('tb1gath7ukucquiup90cik5enn', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313736333234323135322e3535313236333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a223961736b62646e6f3967723966757068723831643971346c3372223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333238343234343b7d733a35313a224c616d696e61735f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333238343139333b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313736333238343536343b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313736333238343537303b7d7d72656469726563745f75726c7c733a33303a22687474703a2f2f6c6f63616c686f73742f6f6d656b612d732f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31353a7b733a33323a223032363762393235653336636431663961393837353332323834333632663866223b733a33323a223733343563643432343530656365323038336165346365663237633130363935223b733a33323a226331656433363262333663303534666330653031313266663762353831313530223b733a33323a223239663233303237353966626336626430613235613962393964326465643762223b733a33323a223338653963373666613561363931616462343833393939393235326438616235223b733a33323a223865343963333266366339613763336634333331633831616236393166306632223b733a33323a223737613438663836633032646338383536336630353830663762333865303466223b733a33323a226536303331343532616465646462373033336166616131333762613265636565223b733a33323a223762623436353737663634323738666234386363663933646461383437363761223b733a33323a226435303334666138643733633831643166323539626439363265383566643638223b733a33323a223164336536383361343465623638666438356266646435393864363830626261223b733a33323a226166646136366462393437643065313761356265376232323464656136636362223b733a33323a223739343634316335666263656539653139363961316561373231313034626562223b733a33323a223132396230373763386637336538363733336331623134666231613738366166223b733a33323a226262316463346461383564356439326562353461346633343933613433636165223b733a33323a226333653162383161346630653662643365306531656632376462633065386639223b733a33323a226532343439636537316436656233356230393133663936383362303637306436223b733a33323a226434396466313262316638336335333833393064633038313666343631393439223b733a33323a223334323264363464626435633562303932323335306166353431303439376331223b733a33323a223632353839366339663233373164613235386634303235303430343633656463223b733a33323a226461616330376264373062363366363735396261333461616264616630333563223b733a33323a223438386362633362363032363066663237343535643131383636663762363562223b733a33323a226436356663353636393838623066626632303862313635636137633335643539223b733a33323a226438323766353930323135633034656662656333396566636366306238666464223b733a33323a223734373734353734616639323137636231326136646663643030336161353764223b733a33323a223037316138383139656238656330666361336564636138633530343636393738223b733a33323a223234396436376232346332366339613466626533643334313938326537376534223b733a33323a226562356162376361383061316238613362636136613839346164303031666435223b733a33323a223035363235353838633535636662373062653365373630313239643838373732223b733a33323a223166353830346633646637376235636536393737336163663230383637666136223b7d733a343a2268617368223b733a36353a2231663538303466336466373762356365363937373361636632303836376661362d3035363235353838633535636662373062653365373630313239643838373732223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4f6d656b614d657373656e6765727c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a313a7b733a383a226d65737361676573223b613a313a7b693a313b613a313a7b693a303b733a32333a225375636365737366756c6c79206c6f67676564206f7574223b7d7d7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f666f72676f7470617373776f7264666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223939356639383232343263343962356162666134303337633830333837333766223b733a33323a223562316132343530623239663236346566356130633663386533633266333062223b733a33323a223030346233383031356265363539646235633664333931316130383434663737223b733a33323a223161393536653930376566313537656637366335633663633435663430636163223b7d733a343a2268617368223b733a36353a2231613935366539303765663135376566373663356336636334356634306361632d3030346233383031356265363539646235633664333931316130383434663737223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f417574687c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a226230613661613166656534646363343564323565343330366438666430636530223b733a33323a223131343163393763313439396533316433306630323230313532373335653762223b733a33323a223663626361333763376339346333313038396532323763666162616239623066223b733a33323a223136346534646362323163363232363231643662643365623831613839376639223b733a33323a223562376331373961316361383238353532353233653831396537373766313635223b733a33323a223532363631663836373337643039633164373665386339363365376232623533223b733a33323a223965366630666630386530316633393835646330353533623136656536353664223b733a33323a223362336562616136636164653530346132616231656266323931656439663231223b7d733a343a2268617368223b733a36353a2233623365626161366361646535303461326162316562663239316564396632312d3965366630666630386530316633393835646330353533623136656536353664223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c4f3a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a226263303032393235386237646266373233343836613562646137383531373965223b733a33323a223337633638306631393662626637383237306630366334343533303630356164223b733a33323a223931346330643461323564323936653736653662613430376537383439633330223b733a33323a223136303631346463366165356639666564353235383162346238363763386435223b733a33323a223532306464333161646436643135343737623035336365383934353065336637223b733a33323a226665356465313663366531343135643266613261653034343733623566636331223b733a33323a226665636333626537643839633133353264336431636238633931633034373763223b733a33323a223565363833373331663062366633383436636265636537333937343061373537223b733a33323a226233656339356266303539316464373961643235633461326639636162313531223b733a33323a223761386431363038656264383636363361323162656362333263383533366331223b733a33323a223537356164643131336562306238353765306461663133346538323934636263223b733a33323a223862633731663832646332373338373162303666353463303466336163383663223b733a33323a226366643837666133613462633736326536316337333334323965373438623733223b733a33323a223834623465613733646631303031666365653161633232643530353031323662223b7d733a343a2268617368223b733a36353a2238346234656137336466313030316663656531616332326435303530313236622d6366643837666133613462633736326536316337333334323965373438623733223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d, 1763242152);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"litissiahenkous@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"webp\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"CoastObserver\"'),
('locale', '\"fr\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/webp\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"Europe\\/Paris\"'),
('use_htmlpurifier', '\"1\"'),
('version', '\"4.1.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) NOT NULL,
  `theme` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `summary` longtext DEFAULT NULL,
  `navigation` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) NOT NULL,
  `title` varchar(190) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) NOT NULL,
  `data` longtext NOT NULL COMMENT '(DC2Type:json_array)',
  `layout_data` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `name` varchar(190) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) DEFAULT NULL,
  `role` varchar(190) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'litissiahenkous@gmail.com', 'Admin ', '2025-10-20 20:54:45', '2025-11-15 21:11:50', '$2y$10$.NkbvNRFQdSOjRJLVBmSv.rl9NqjsvAip3YOpfIRaqx7CejQmvo.G', 'global_admin', 1),
(2, 'samuel.szoniecky@univ-paris8.fr', 'Admin Samuel', '2025-10-21 08:20:01', '2025-10-21 08:20:30', '$2y$10$ologCihi0iCozUtrTks8auWYoHWPa72t.WYaeB8bGmn36OaAM1u7G', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_setting`
--

INSERT INTO `user_setting` (`id`, `user_id`, `value`) VALUES
('browse_defaults_admin_item_sets', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_item_sets', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_items', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 1, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_media', 2, '{\"sort_by\":\"created\",\"sort_order\":\"desc\"}'),
('browse_defaults_admin_sites', 1, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('browse_defaults_admin_sites', 2, '{\"sort_by\":\"title\",\"sort_order\":\"asc\"}'),
('columns_admin_item_sets', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_item_sets', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_items', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 1, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_media', 2, '[{\"type\":\"resource_class\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 1, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('columns_admin_sites', 2, '[{\"type\":\"slug\",\"default\":null,\"header\":null},{\"type\":\"owner\",\"default\":null,\"header\":null},{\"type\":\"created\",\"default\":null,\"header\":null}]'),
('csv_import_automap_check_names_alone', 1, 'false'),
('csv_import_delimiter', 1, '\",\"'),
('csv_import_enclosure', 1, '\"\\\"\"'),
('csv_import_global_language', 1, '\"\"'),
('csv_import_identifier_property', 1, '\"\"'),
('csv_import_multivalue_separator', 1, '\",\"'),
('csv_import_rows_by_batch', 1, '20'),
('default_resource_template', 1, '\"\"'),
('default_resource_template', 2, '\"\"'),
('locale', 1, '\"fr\"'),
('locale', 2, '\"fr\"');

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `value_annotation_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `uri` longtext DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `value_annotation_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 1, NULL, NULL, 'literal', '', 'Étudiant 1', NULL, 1),
(2, 1, 4, NULL, NULL, 'literal', '', 'Ceci est un test', NULL, 1),
(3, 2, 1, NULL, NULL, 'literal', '', 'Étudiant 2', NULL, 1),
(4, 3, 1, NULL, NULL, 'literal', '', 'Étudiant 3\n', NULL, 1),
(14, 7, 1, NULL, NULL, 'literal', NULL, 'Observation 001', NULL, 1),
(15, 7, 220, NULL, NULL, 'literal', NULL, '2025-10-12', NULL, 1),
(16, 7, 221, NULL, NULL, 'literal', NULL, 'Plage A', NULL, 1),
(17, 7, 222, NULL, NULL, 'literal', NULL, 'Algues vertes', NULL, 1),
(18, 8, 1, NULL, NULL, 'literal', NULL, 'Observation 002', NULL, 1),
(19, 8, 220, NULL, NULL, 'literal', NULL, '2025-10-13', NULL, 1),
(20, 8, 221, NULL, NULL, 'literal', NULL, 'Plage B', NULL, 1),
(21, 8, 222, NULL, NULL, 'literal', NULL, 'Dechets plastiques', NULL, 1),
(22, 9, 1, NULL, NULL, 'literal', NULL, 'Observation 003', NULL, 1),
(23, 9, 220, NULL, NULL, 'literal', NULL, '2025-10-14', NULL, 1),
(24, 9, 221, NULL, NULL, 'literal', NULL, 'Plage C', NULL, 1),
(25, 9, 222, NULL, NULL, 'literal', NULL, '—', NULL, 1),
(26, 11, 1, NULL, NULL, 'literal', NULL, 'Observation 1', NULL, 1),
(27, 10, 1, NULL, NULL, 'literal', NULL, 'Observation 1', NULL, 1),
(28, 11, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 1.', NULL, 1),
(29, 10, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 1.', NULL, 1),
(30, 13, 1, NULL, NULL, 'literal', NULL, 'Observation 2', NULL, 1),
(31, 12, 1, NULL, NULL, 'literal', NULL, 'Observation 2', NULL, 1),
(32, 13, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 2.', NULL, 1),
(33, 12, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 2.', NULL, 1),
(34, 16, 1, NULL, NULL, 'literal', NULL, 'Observation 3', NULL, 1),
(35, 14, 1, NULL, NULL, 'literal', NULL, 'Observation 3', NULL, 1),
(36, 16, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 3.', NULL, 1),
(37, 14, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 3.', NULL, 1),
(38, 18, 1, NULL, NULL, 'literal', NULL, 'Observation 4', NULL, 1),
(39, 15, 1, NULL, NULL, 'literal', NULL, 'Observation 4', NULL, 1),
(40, 18, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 4.', NULL, 1),
(41, 15, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 4.', NULL, 1),
(42, 20, 1, NULL, NULL, 'literal', NULL, 'Observation 5', NULL, 1),
(43, 17, 1, NULL, NULL, 'literal', NULL, 'Observation 5', NULL, 1),
(44, 20, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 5.', NULL, 1),
(45, 17, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 5.', NULL, 1),
(46, 22, 1, NULL, NULL, 'literal', NULL, 'Observation 6', NULL, 1),
(47, 19, 1, NULL, NULL, 'literal', NULL, 'Observation 6', NULL, 1),
(48, 22, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 6.', NULL, 1),
(49, 19, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 6.', NULL, 1),
(50, 24, 1, NULL, NULL, 'literal', NULL, 'Observation 7', NULL, 1),
(51, 21, 1, NULL, NULL, 'literal', NULL, 'Observation 7', NULL, 1),
(52, 24, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 7.', NULL, 1),
(53, 21, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 7.', NULL, 1),
(54, 26, 1, NULL, NULL, 'literal', NULL, 'Observation 8', NULL, 1),
(55, 23, 1, NULL, NULL, 'literal', NULL, 'Observation 8', NULL, 1),
(56, 26, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 8.', NULL, 1),
(57, 23, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 8.', NULL, 1),
(58, 28, 1, NULL, NULL, 'literal', NULL, 'Observation 9', NULL, 1),
(59, 25, 1, NULL, NULL, 'literal', NULL, 'Observation 9', NULL, 1),
(60, 28, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 9.', NULL, 1),
(61, 25, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 9.', NULL, 1),
(62, 30, 1, NULL, NULL, 'literal', NULL, 'Observation 10', NULL, 1),
(63, 27, 1, NULL, NULL, 'literal', NULL, 'Observation 10', NULL, 1),
(64, 30, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 10.', NULL, 1),
(65, 27, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 10.', NULL, 1),
(66, 32, 1, NULL, NULL, 'literal', NULL, 'Observation 11', NULL, 1),
(67, 29, 1, NULL, NULL, 'literal', NULL, 'Observation 11', NULL, 1),
(68, 32, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 11.', NULL, 1),
(69, 29, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 11.', NULL, 1),
(70, 34, 1, NULL, NULL, 'literal', NULL, 'Observation 12', NULL, 1),
(71, 31, 1, NULL, NULL, 'literal', NULL, 'Observation 12', NULL, 1),
(72, 34, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 12.', NULL, 1),
(73, 31, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 12.', NULL, 1),
(74, 36, 1, NULL, NULL, 'literal', NULL, 'Observation 13', NULL, 1),
(75, 33, 1, NULL, NULL, 'literal', NULL, 'Observation 13', NULL, 1),
(76, 36, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 13.', NULL, 1),
(77, 33, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 13.', NULL, 1),
(78, 38, 1, NULL, NULL, 'literal', NULL, 'Observation 14', NULL, 1),
(79, 35, 1, NULL, NULL, 'literal', NULL, 'Observation 14', NULL, 1),
(80, 38, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 14.', NULL, 1),
(81, 35, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 14.', NULL, 1),
(82, 37, 1, NULL, NULL, 'literal', NULL, 'Observation 15', NULL, 1),
(83, 40, 1, NULL, NULL, 'literal', NULL, 'Observation 15', NULL, 1),
(84, 37, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 15.', NULL, 1),
(85, 40, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 15.', NULL, 1),
(86, 39, 1, NULL, NULL, 'literal', NULL, 'Observation 16', NULL, 1),
(87, 42, 1, NULL, NULL, 'literal', NULL, 'Observation 16', NULL, 1),
(88, 39, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 16.', NULL, 1),
(89, 42, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 16.', NULL, 1),
(90, 41, 1, NULL, NULL, 'literal', NULL, 'Observation 17', NULL, 1),
(91, 44, 1, NULL, NULL, 'literal', NULL, 'Observation 17', NULL, 1),
(92, 41, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 17.', NULL, 1),
(93, 44, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 17.', NULL, 1),
(94, 43, 1, NULL, NULL, 'literal', NULL, 'Observation 18', NULL, 1),
(95, 46, 1, NULL, NULL, 'literal', NULL, 'Observation 18', NULL, 1),
(96, 43, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 18.', NULL, 1),
(97, 46, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 18.', NULL, 1),
(98, 45, 1, NULL, NULL, 'literal', NULL, 'Observation 19', NULL, 1),
(99, 48, 1, NULL, NULL, 'literal', NULL, 'Observation 19', NULL, 1),
(100, 45, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 19.', NULL, 1),
(101, 48, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 19.', NULL, 1),
(102, 47, 1, NULL, NULL, 'literal', NULL, 'Observation 20', NULL, 1),
(103, 49, 1, NULL, NULL, 'literal', NULL, 'Observation 20', NULL, 1),
(104, 47, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 20.', NULL, 1),
(105, 49, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 20.', NULL, 1),
(106, 50, 1, NULL, NULL, 'literal', NULL, 'Observation 21', NULL, 1),
(107, 50, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 21.', NULL, 1),
(108, 51, 1, NULL, NULL, 'literal', NULL, 'Observation 22', NULL, 1),
(109, 51, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 22.', NULL, 1),
(110, 52, 1, NULL, NULL, 'literal', NULL, 'Observation 23', NULL, 1),
(111, 53, 1, NULL, NULL, 'literal', NULL, 'Observation 21', NULL, 1),
(112, 52, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 23.', NULL, 1),
(113, 53, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 21.', NULL, 1),
(114, 54, 1, NULL, NULL, 'literal', NULL, 'Observation 24', NULL, 1),
(115, 55, 1, NULL, NULL, 'literal', NULL, 'Observation 22', NULL, 1),
(116, 54, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 24.', NULL, 1),
(117, 55, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 22.', NULL, 1),
(118, 56, 1, NULL, NULL, 'literal', NULL, 'Observation 25', NULL, 1),
(119, 57, 1, NULL, NULL, 'literal', NULL, 'Observation 23', NULL, 1),
(120, 56, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 25.', NULL, 1),
(121, 57, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 23.', NULL, 1),
(122, 59, 1, NULL, NULL, 'literal', NULL, 'Observation 26', NULL, 1),
(123, 58, 1, NULL, NULL, 'literal', NULL, 'Observation 24', NULL, 1),
(124, 59, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 26.', NULL, 1),
(125, 58, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 24.', NULL, 1),
(126, 61, 1, NULL, NULL, 'literal', NULL, 'Observation 27', NULL, 1),
(127, 60, 1, NULL, NULL, 'literal', NULL, 'Observation 25', NULL, 1),
(128, 61, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 27.', NULL, 1),
(129, 60, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 25.', NULL, 1),
(130, 63, 1, NULL, NULL, 'literal', NULL, 'Observation 28', NULL, 1),
(131, 62, 1, NULL, NULL, 'literal', NULL, 'Observation 26', NULL, 1),
(132, 63, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 28.', NULL, 1),
(133, 62, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 26.', NULL, 1),
(134, 65, 1, NULL, NULL, 'literal', NULL, 'Observation 29', NULL, 1),
(135, 64, 1, NULL, NULL, 'literal', NULL, 'Observation 27', NULL, 1),
(136, 65, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 29.', NULL, 1),
(137, 64, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 27.', NULL, 1),
(138, 66, 1, NULL, NULL, 'literal', NULL, 'Observation 30', NULL, 1),
(139, 67, 1, NULL, NULL, 'literal', NULL, 'Observation 28', NULL, 1),
(140, 66, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 30.', NULL, 1),
(141, 67, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 28.', NULL, 1),
(142, 68, 1, NULL, NULL, 'literal', NULL, 'Observation 31', NULL, 1),
(143, 68, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 31.', NULL, 1),
(144, 69, 1, NULL, NULL, 'literal', NULL, 'Observation 29', NULL, 1),
(145, 70, 1, NULL, NULL, 'literal', NULL, 'Observation 32', NULL, 1),
(146, 69, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 29.', NULL, 1),
(147, 70, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 32.', NULL, 1),
(148, 71, 1, NULL, NULL, 'literal', NULL, 'Observation 30', NULL, 1),
(149, 72, 1, NULL, NULL, 'literal', NULL, 'Observation 33', NULL, 1),
(150, 71, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 30.', NULL, 1),
(151, 72, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 33.', NULL, 1),
(152, 73, 1, NULL, NULL, 'literal', NULL, 'Observation 31', NULL, 1),
(153, 74, 1, NULL, NULL, 'literal', NULL, 'Observation 34', NULL, 1),
(154, 73, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 31.', NULL, 1),
(155, 74, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 34.', NULL, 1),
(156, 75, 1, NULL, NULL, 'literal', NULL, 'Observation 32', NULL, 1),
(157, 76, 1, NULL, NULL, 'literal', NULL, 'Observation 35', NULL, 1),
(158, 75, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 32.', NULL, 1),
(159, 76, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 35.', NULL, 1),
(160, 77, 1, NULL, NULL, 'literal', NULL, 'Observation 33', NULL, 1),
(161, 78, 1, NULL, NULL, 'literal', NULL, 'Observation 36', NULL, 1),
(162, 77, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 33.', NULL, 1),
(163, 79, 1, NULL, NULL, 'literal', NULL, 'Observation 34', NULL, 1),
(164, 78, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 36.', NULL, 1),
(165, 79, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 34.', NULL, 1),
(166, 80, 1, NULL, NULL, 'literal', NULL, 'Observation 37', NULL, 1),
(167, 81, 1, NULL, NULL, 'literal', NULL, 'Observation 35', NULL, 1),
(168, 80, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 37.', NULL, 1),
(169, 81, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 35.', NULL, 1),
(170, 83, 1, NULL, NULL, 'literal', NULL, 'Observation 38', NULL, 1),
(171, 82, 1, NULL, NULL, 'literal', NULL, 'Observation 36', NULL, 1),
(172, 83, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 38.', NULL, 1),
(173, 82, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 36.', NULL, 1),
(174, 85, 1, NULL, NULL, 'literal', NULL, 'Observation 39', NULL, 1),
(175, 84, 1, NULL, NULL, 'literal', NULL, 'Observation 37', NULL, 1),
(176, 85, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 39.', NULL, 1),
(177, 84, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 37.', NULL, 1),
(178, 86, 1, NULL, NULL, 'literal', NULL, 'Observation 40', NULL, 1),
(179, 87, 1, NULL, NULL, 'literal', NULL, 'Observation 38', NULL, 1),
(180, 86, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 40.', NULL, 1),
(181, 87, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 38.', NULL, 1),
(182, 88, 1, NULL, NULL, 'literal', NULL, 'Observation 39', NULL, 1),
(183, 88, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 39.', NULL, 1),
(184, 89, 1, NULL, NULL, 'literal', NULL, 'Observation 40', NULL, 1),
(185, 89, 4, NULL, NULL, 'literal', NULL, 'Description de l\'observation 40.', NULL, 1),
(186, 90, 1, NULL, NULL, 'literal', '', 'Audio', NULL, 1),
(187, 91, 1, NULL, NULL, 'literal', NULL, 'Audio', NULL, 1),
(188, 92, 1, NULL, NULL, 'literal', NULL, 'Audio2', NULL, 1),
(189, 93, 1, NULL, NULL, 'literal', NULL, 'test', NULL, 1),
(190, 94, 1, NULL, NULL, 'literal', NULL, 'Test2', NULL, 1),
(191, 95, 1, NULL, NULL, 'literal', '', 'Audio 2 ', NULL, 1),
(192, 96, 1, NULL, NULL, 'literal', NULL, 'test 5', NULL, 1),
(193, 98, 1, NULL, NULL, 'literal', '', 'test 6', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `value_annotation`
--

CREATE TABLE `value_annotation` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) NOT NULL,
  `prefix` varchar(190) NOT NULL,
  `label` varchar(255) NOT NULL,
  `comment` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(7, 1, 'https://lytysyy.github.io/CoastObserver/vocab#', 'coast', 'Vocabulaire CoastObserver (simple)', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_84D382F4BE04EA9` (`job_id`);

--
-- Index pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_17B50881BE04EA9` (`job_id`),
  ADD UNIQUE KEY `UNIQ_17B508814C276F75` (`undo_job_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F1B251ECBE0B084` (`primary_media_id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`),
  ADD KEY `title` (`title`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E4FDFF2E92` (`thumbnail_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `is_public` (`is_public`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D7758349B66727E` (`value_annotation_id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190)),
  ADD KEY `is_public` (`is_public`);

--
-- Index pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `csvimport_entity`
--
ALTER TABLE `csvimport_entity`
  ADD CONSTRAINT `FK_84D382F4BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- Contraintes pour la table `csvimport_import`
--
ALTER TABLE `csvimport_import`
  ADD CONSTRAINT `FK_17B508814C276F75` FOREIGN KEY (`undo_job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `FK_17B50881BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`);

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1F1B251ECBE0B084` FOREIGN KEY (`primary_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E4FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`),
  ADD CONSTRAINT `FK_1D7758349B66727E` FOREIGN KEY (`value_annotation_id`) REFERENCES `value_annotation` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `value_annotation`
--
ALTER TABLE `value_annotation`
  ADD CONSTRAINT `FK_C03BA4EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
