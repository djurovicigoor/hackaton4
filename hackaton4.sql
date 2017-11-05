-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2017 at 10:50 AM
-- Server version: 5.7.19-0ubuntu0.17.04.1
-- PHP Version: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackaton4`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `level`, `question_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(2, 5, 2, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(3, 5, 3, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(4, 5, 4, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(5, 5, 5, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(6, 5, 6, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(7, 5, 7, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(8, 5, 8, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(9, 5, 9, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(10, 5, 10, 4, '2017-11-05 08:19:14', '2017-11-05 08:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `worker_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `worker_id`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(2, 4, 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(3, 5, 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(4, 4, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(5, 5, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(6, 5, 6, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(7, 5, 1, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(8, 4, 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(9, 5, 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(10, 4, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(11, 5, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(12, 5, 6, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(13, 4, 1, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(14, 4, 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(15, 4, 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(16, 5, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(17, 4, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(18, 4, 6, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(19, 5, 1, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(20, 5, 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(21, 5, 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(22, 4, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(23, 5, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(24, 5, 6, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(25, 4, 1, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(26, 5, 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(27, 4, 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(28, 5, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(29, 5, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(30, 4, 6, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(31, 4, 1, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(32, 4, 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(33, 5, 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(34, 5, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(35, 4, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(36, 5, 6, '2017-11-05 08:19:12', '2017-11-05 08:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(2, 'Desktop', '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(3, 'Management', '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(4, 'Cloud', '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(5, 'Administration', '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(6, 'Network', '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(7, 'Network', '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(8, 'Network', '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(9, 'Network', '2017-11-05 08:19:10', '2017-11-05 08:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `category_job`
--

CREATE TABLE `category_job` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_job`
--

INSERT INTO `category_job` (`category_id`, `job_id`) VALUES
(2, 2),
(8, 3),
(1, 8),
(2, 10),
(9, 12),
(4, 13),
(7, 14),
(7, 16),
(6, 17),
(8, 18),
(2, 21),
(8, 24),
(5, 25),
(5, 28),
(4, 29),
(1, 31),
(7, 36),
(6, 40),
(5, 41),
(4, 42),
(3, 43),
(1, 44),
(5, 45),
(8, 46),
(4, 48),
(7, 49),
(2, 50),
(1, 51),
(5, 53),
(6, 55),
(9, 56),
(4, 57),
(8, 58),
(1, 63),
(1, 64),
(1, 66),
(8, 68),
(4, 69),
(2, 70),
(1, 71),
(4, 72),
(1, 73),
(7, 74),
(8, 75),
(2, 77),
(9, 78),
(3, 79),
(2, 80),
(8, 84),
(9, 85),
(8, 86),
(8, 87),
(7, 88),
(4, 90),
(3, 91),
(7, 92),
(8, 93),
(8, 95),
(4, 96),
(7, 99),
(1, 101),
(8, 102),
(7, 103),
(6, 104),
(5, 105),
(9, 108),
(5, 109),
(3, 110),
(2, 111),
(6, 114),
(5, 115),
(4, 118),
(9, 121),
(3, 122),
(4, 123),
(6, 124),
(7, 125),
(5, 126),
(4, 128),
(2, 129),
(6, 130),
(2, 133),
(1, 134),
(3, 135),
(8, 137),
(2, 138),
(5, 139),
(9, 141),
(7, 144),
(6, 147),
(3, 150),
(4, 151),
(5, 152),
(5, 153),
(3, 154),
(8, 155),
(4, 156),
(9, 157),
(8, 158),
(6, 159),
(1, 160),
(5, 162),
(9, 163),
(7, 165),
(6, 166),
(4, 167),
(6, 169),
(6, 172),
(5, 174),
(4, 175),
(9, 176),
(9, 177),
(6, 178),
(2, 179),
(6, 181);

-- --------------------------------------------------------

--
-- Table structure for table `category_user`
--

CREATE TABLE `category_user` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_user`
--

INSERT INTO `category_user` (`category_id`, `user_id`) VALUES
(1, 3),
(2, 4),
(3, 4),
(4, 3),
(5, 4),
(6, 4),
(7, 3),
(8, 3),
(9, 4),
(1, 17),
(2, 43),
(3, 11),
(4, 7),
(5, 45),
(6, 19),
(7, 13),
(8, 12),
(9, 45),
(1, 7),
(2, 52),
(3, 43),
(4, 39),
(5, 42),
(6, 31),
(7, 48),
(8, 48),
(9, 8),
(1, 48),
(2, 19),
(3, 50),
(4, 35),
(5, 40),
(6, 28),
(7, 28),
(8, 1),
(9, 2),
(1, 12),
(2, 18),
(3, 27),
(4, 3),
(5, 34),
(6, 16),
(7, 14),
(8, 40),
(9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `hirer_id` int(10) UNSIGNED NOT NULL,
  `worker_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`hirer_id`, `worker_id`) VALUES
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1 - files | 2 - thumbnail | 3 - avatar',
  `fileable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fileable_id` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hirer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `location`, `hirer_id`, `created_at`, `updated_at`) VALUES
(1, 'Insulation Installer', 'Zachariahtown', 3, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(2, 'Immigration Inspector OR Customs Inspector', 'North Eldamouth', 2, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(3, 'Gaming Surveillance Officer', 'Tressieborough', 3, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(4, 'Project Manager', 'Port Esteban', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(5, 'Infantry Officer', 'Davisburgh', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(6, 'Sculptor', 'Mauricioport', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(7, 'Underground Mining', 'North Hilario', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(8, 'Psychiatric Aide', 'New Taureanland', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(9, 'Paste-Up Worker', 'Sylviafort', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(10, 'Webmaster', 'Narcisoport', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(11, 'Farm Equipment Mechanic', 'Stantonborough', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(12, 'Economist', 'North Mariemouth', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(13, 'Craft Artist', 'East Janstad', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(14, 'Private Sector Executive', 'West Elijahside', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(15, 'Janitorial Supervisor', 'South Blaisestad', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(16, 'Tool Set-Up Operator', 'Aniyaberg', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(17, 'Astronomer', 'West Rachelle', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(18, 'Elementary School Teacher', 'West Jalonchester', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(19, 'Dietetic Technician', 'Ilenestad', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(20, 'Automotive Body Repairer', 'Yeseniamouth', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(21, 'Communication Equipment Repairer', 'Skilesport', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(22, 'Geoscientists', 'Jastfort', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(23, 'Soil Scientist', 'Osinskihaven', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(24, 'Etcher and Engraver', 'East Kenyaport', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(25, 'Fishing OR Forestry Supervisor', 'Raytown', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(26, 'Engineering Teacher', 'Sengerstad', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(27, 'Barber', 'Port Mayra', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(28, 'Photoengraver', 'Wiegandchester', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(29, 'Health Educator', 'Alanischester', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(30, 'Product Specialist', 'Lucindamouth', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(31, 'Loan Interviewer', 'Grimesport', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(32, 'Dragline Operator', 'Lake Jordy', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(33, 'Military Officer', 'South Aniballand', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(34, 'Management Analyst', 'North Tyler', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(35, 'Horticultural Worker', 'Port Bridgette', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(36, 'Funeral Director', 'New Colton', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(37, 'Numerical Tool Programmer OR Process Control Programmer', 'Okunevaburgh', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(38, 'Photographer', 'Port Trinityville', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(39, 'Optical Instrument Assembler', 'Lake Giovannatown', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(40, 'TSA', 'South Kirk', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(41, 'Assessor', 'Lake Tyshawnbury', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(42, 'Watch Repairer', 'Port Kaci', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(43, 'Milling Machine Operator', 'Lauriannefurt', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(44, 'Mathematician', 'Lake Leta', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(45, 'Metal Molding Operator', 'North Vivianneton', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(46, 'Healthcare Practitioner', 'West Judystad', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(47, 'Computer Security Specialist', 'Mullerfort', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(48, 'Surveying Technician', 'South Maramouth', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(49, 'Aircraft Assembler', 'West Priscillaborough', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(50, 'Reporters OR Correspondent', 'New Cruz', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(51, 'Dot Etcher', 'New Delfina', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(52, 'Geographer', 'Noreneborough', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(53, 'Parking Lot Attendant', 'North Milford', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(54, 'Personal Care Worker', 'East Lethastad', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(55, 'Fish Game Warden', 'Vandervortbury', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(56, 'Agricultural Crop Worker', 'Croninport', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(57, 'Forest and Conservation Technician', 'North Dianahaven', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(58, 'Tailor', 'Lake Jerrod', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(59, 'Cartoonist', 'South Marion', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(60, 'Computer Specialist', 'Rubieport', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(61, 'Production Manager', 'Minervatown', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(62, 'Stone Sawyer', 'Lake Domenicaside', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(63, 'Carpenter', 'North Sydney', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(64, 'Hand Sewer', 'West Nikolas', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(65, 'Actuary', 'Shannaborough', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(66, 'Silversmith', 'Port Natasha', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(67, 'Artist', 'South Adrainhaven', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(68, 'Precision Dyer', 'Oberbrunnertown', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(69, 'Typesetting Machine Operator', 'Destineymouth', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(70, 'Grounds Maintenance Worker', 'South Devin', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(71, 'Civil Drafter', 'Amanifort', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(72, 'Metal Pourer and Caster', 'East Mattie', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(73, 'School Social Worker', 'North Korymouth', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(74, 'Technical Program Manager', 'Lake Judy', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(75, 'Social Service Specialists', 'Muellermouth', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(76, 'Social Science Research Assistant', 'Timothyview', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(77, 'Securities Sales Agent', 'New Kennith', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(78, 'Irradiated-Fuel Handler', 'New Tamiaberg', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(79, 'Forest and Conservation Worker', 'Declanfurt', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(80, 'Cultural Studies Teacher', 'Eladiotown', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(81, 'Advertising Manager OR Promotions Manager', 'South Rossie', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(82, 'Floor Layer', 'Jacobiside', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(83, 'Fire Inspector', 'East Hannahstad', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(84, 'Geological Data Technician', 'Hellerborough', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(85, 'Supervisor of Police', 'West Amirabury', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(86, 'Athletic Trainer', 'Lake Lottieport', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(87, 'Massage Therapist', 'New Maximeport', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(88, 'Range Manager', 'Lake Ursula', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(89, 'Marking Clerk', 'Aliviaburgh', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(90, 'Textile Cutting Machine Operator', 'Lake Jerry', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(91, 'Bookkeeper', 'Goodwinstad', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(92, 'Cooling and Freezing Equipment Operator', 'New Titus', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(93, 'Recruiter', 'North Eleonore', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(94, 'Fashion Model', 'Skileshaven', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(95, 'Patternmaker', 'Weimannstad', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(96, 'Machine Operator', 'East Vincenza', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(97, 'Tax Preparer', 'Rodrigueztown', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(98, 'Postsecondary Teacher', 'Marjoryborough', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(99, 'Detective', 'Waelchiview', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(100, 'Government Property Inspector', 'Alyshaburgh', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(101, 'Marketing Manager', 'West Alberthamouth', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(102, 'Life Scientists', 'New Damon', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(103, 'Upholsterer', 'Feltonbury', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(104, 'Chiropractor', 'Coleburgh', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(105, 'Glass Blower', 'Lake Durwardshire', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(106, 'Janitor', 'Halvorsonfurt', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(107, 'Foundry Mold and Coremaker', 'Welchfurt', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(108, 'Production Planning', 'West Orlandomouth', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(109, 'Clerk', 'Corwinmouth', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(110, 'University', 'New Dedric', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(111, 'Sheriff', 'Arturofort', 2, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(112, 'Meter Mechanic', 'Trantowview', 3, '2017-11-05 08:19:11', '2017-11-05 08:19:11'),
(113, 'Maintenance Supervisor', 'East Deborah', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(114, 'Mold Maker', 'Keshaunchester', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(115, 'Court Clerk', 'Lake Raymond', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(116, 'Forestry Conservation Science Teacher', 'Gussietown', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(117, 'Municipal Fire Fighter', 'East Barrymouth', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(118, 'Ship Pilot', 'East Carlotta', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(119, 'Title Searcher', 'North Gabriellafort', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(120, 'Prosthodontist', 'Loweburgh', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(121, 'Scientific Photographer', 'West Rhodafurt', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(122, 'Microbiologist', 'West Florine', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(123, 'Financial Manager', 'Hermanberg', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(124, 'Mathematical Scientist', 'West Josiah', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(125, 'Animal Breeder', 'East Otto', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(126, 'Human Resources Manager', 'Armanimouth', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(127, 'Ticket Agent', 'Franeckistad', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(128, 'Gas Appliance Repairer', 'North Elaina', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(129, 'Agricultural Engineer', 'North Carletonhaven', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(130, 'Forming Machine Operator', 'Eldredport', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(131, 'CTO', 'North Izaiahview', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(132, 'Broadcast Technician', 'Reynoldsstad', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(133, 'Skin Care Specialist', 'Leaport', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(134, 'Construction Laborer', 'Arnaldoborough', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(135, 'Conveyor Operator', 'West Zachery', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(136, 'Precious Stone Worker', 'Prohaskahaven', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(137, 'Host and Hostess', 'Yosthaven', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(138, 'Agricultural Crop Farm Manager', 'South Jerrell', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(139, 'Lawyer', 'Lexiview', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(140, 'Operating Engineer', 'Claudiaton', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(141, 'Photographic Restorer', 'South Waltonville', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(142, 'Agricultural Sciences Teacher', 'Port Fredrickland', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(143, 'Clergy', 'North Doloresfurt', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(144, 'Mathematical Technician', 'Ameliefort', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(145, 'Welding Machine Tender', 'Giovannymouth', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(146, 'Pediatricians', 'North Kallie', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(147, 'Welder and Cutter', 'West Martina', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(148, 'Material Movers', 'O\'Harafurt', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(149, 'Caption Writer', 'North Clintfort', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(150, 'Office Machine and Cash Register Servicer', 'Spencerstad', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(151, 'Diagnostic Medical Sonographer', 'Keyonland', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(152, 'Copy Machine Operator', 'East Lutherfort', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(153, 'Production Planner', 'Port Naomietown', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(154, 'Community Service Manager', 'Boehmville', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(155, 'Psychology Teacher', 'East Coy', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(156, 'Gaming Cage Worker', 'Port Armani', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(157, 'Product Management Leader', 'Millieside', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(158, 'Set Designer', 'Domingobury', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(159, 'Brokerage Clerk', 'Spencermouth', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(160, 'Cutting Machine Operator', 'Conorton', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(161, 'Computer Programmer', 'Jarenbury', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(162, 'Singer', 'Willowshire', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(163, 'Painting Machine Operator', 'South Zetta', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(164, 'Farmer', 'Port Zachariahchester', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(165, 'Aircraft Engine Specialist', 'Stokeston', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(166, 'Designer', 'Howemouth', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(167, 'Biological Science Teacher', 'Littelside', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(168, 'Media and Communication Worker', 'North Jordyntown', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(169, 'Market Research Analyst', 'Gildaborough', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(170, 'Radio Mechanic', 'Port Dino', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(171, 'Supervisor Correctional Officer', 'North Kyle', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(172, 'Gas Processing Plant Operator', 'Corrinetown', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(173, 'Gas Compressor Operator', 'Port Irwin', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(174, 'Airline Pilot OR Copilot OR Flight Engineer', 'Lake Haleighport', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(175, 'Protective Service Worker', 'Bartellton', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(176, 'Communication Equipment Worker', 'Murrayburgh', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(177, 'Electrical Parts Reconditioner', 'Rudyshire', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(178, 'Painter and Illustrator', 'New Kristofer', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(179, 'HR Specialist', 'South Demarco', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(180, 'Floral Designer', 'Shadburgh', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(181, 'Homeland Security', 'South Mohammad', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(182, 'Procurement Clerk', 'East Zoila', 2, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(183, 'History Teacher', 'West Kathleenstad', 3, '2017-11-05 08:19:12', '2017-11-05 08:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000001_create_files_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_01_15_105324_create_roles_table', 1),
(5, '2016_01_15_114412_create_role_user_table', 1),
(6, '2016_01_26_115212_create_permissions_table', 1),
(7, '2016_01_26_115523_create_permission_role_table', 1),
(8, '2016_02_09_132439_create_permission_user_table', 1),
(9, '2017_11_04_151411_create_jobs_table', 1),
(10, '2017_11_04_151742_create_categories_table', 1),
(11, '2017_11_04_151811_create_sub_categories_table', 1),
(12, '2017_11_04_163254_create_smart_attributes_table', 1),
(13, '2017_11_04_165428_category_job', 1),
(14, '2017_11_04_201200_category_user', 1),
(15, '2017_11_05_021908_create_questions_table', 1),
(16, '2017_11_05_022040_create_answers_table', 1),
(17, '2017_11_05_045047_employes', 1),
(18, '2017_11_05_050459_create_applications_table', 1),
(19, '2017_11_05_060749_create_test_results_table', 1),
(20, '2017_11_05_061824_create_test_qs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `content`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Footman remarked, \'till tomorrow--\' At this moment the door and went down to look about her any more if you\'d like it very much,\' said Alice; \'I.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(2, 'Gryphon in an undertone, \'important--unimportant--unimportant--important--\' as if it had lost something; and she was ready to make out who was.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(3, 'VERY good opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I to do.', 'Swift', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(4, 'Alice put down her anger as well wait, as she could. \'No,\' said the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. He.', 'C++', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(5, 'I\'ve had such a curious appearance in the middle of the same words as before, \'and things are \"much of a tree in the last words out loud, and the.', 'Codeigniter', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(6, 'Footman went on to himself in an angry tone, \'Why, Mary Ann, and be turned out of this sort in her pocket) till she fancied she heard a voice.', 'iOS', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(7, 'Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While.', 'Angular2', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(8, 'At last the Gryphon answered, very nearly carried it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(9, 'The long grass rustled at her side. She was close behind us, and he\'s treading on her hand, watching the setting sun, and thinking of little Alice.', 'Laravel', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(10, 'Hatter: \'let\'s all move one place on.\' He moved on as he came, \'Oh! the Duchess, \'as pigs have to ask them what the next witness!\' said the Footman.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(11, 'YOU like cats if you cut your finger VERY deeply with a sigh: \'he taught Laughing and Grief, they used to know. Let me think: was I the same age as.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(12, 'Alice laughed so much frightened to say it out loud. \'Thinking again?\' the Duchess was VERY ugly; and secondly, because they\'re making such VERY.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(13, 'So she was not easy to know what \"it\" means well enough, when I sleep\" is the same year for such a fall as this, I shall only look up in her hands.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(14, 'King; and the poor animal\'s feelings. \'I quite forgot how to set about it; if I\'m not Ada,\' she said, by way of expressing yourself.\' The baby.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(15, 'They were just beginning to end,\' said the Footman, \'and that for the rest of the shepherd boy--and the sneeze of the cupboards as she could. \'No,\'.', 'iOS', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(16, 'The Mouse only shook its head down, and nobody spoke for some way of expressing yourself.\' The baby grunted again, and said, \'It WAS a curious.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(17, 'After a while, finding that nothing more to be a letter, written by the whole head appeared, and then sat upon it.) \'I\'m glad I\'ve seen that done,\'.', 'Angular', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(18, 'For some minutes the whole place around her became alive with the tea,\' the Hatter were having tea at it: a Dormouse was sitting on the Duchess\'s.', 'PHP', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(19, 'But, now that I\'m doubtful about the games now.\' CHAPTER X. The Lobster Quadrille The Mock Turtle replied; \'and then the different branches of.', 'Swift', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(20, 'I am so VERY wide, but she gained courage as she went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was a.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(21, 'King. On this the White Rabbit was still in sight, hurrying down it. There was nothing on it were nine o\'clock in the schoolroom, and though this.', 'PHP', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(22, 'Dodo replied very gravely. \'What else had you to learn?\' \'Well, there was no \'One, two, three, and away,\' but they were all talking together: she.', 'Kotlin', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(23, 'Alice said nothing; she had never been so much surprised, that for the immediate adoption of more broken glass.) \'Now tell me, Pat, what\'s that in.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(24, 'King repeated angrily, \'or I\'ll have you executed on the other arm curled round her once more, while the rest of the players to be sure, she had.', 'Swift', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(25, 'YOU do it!--That I won\'t, then!--Bill\'s to go from here?\' \'That depends a good character, But said I didn\'t!\' interrupted Alice. \'You must be,\' said.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(26, 'DON\'T know,\' said the young lady tells us a story.\' \'I\'m afraid I am, sir,\' said Alice; \'but when you come and join the dance? Will you, won\'t you.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(27, 'King. \'Then it wasn\'t very civil of you to leave off being arches to do with this creature when I was going to turn into a cucumber-frame, or.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(28, 'Paris, and Paris is the same words as before, \'It\'s all his fancy, that: they never executes nobody, you know. So you see, as well say,\' added the.', 'Yii', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(29, 'Dodo replied very solemnly. Alice was too small, but at the time they had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\'.', 'Angular2', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(30, 'I only wish they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was moderate. But the insolence of.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(31, 'King hastily said, and went to work at once crowded round her once more, while the Dodo said, \'EVERYBODY has won, and all the jurors were writing.', 'Android', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(32, 'I to do?\' said Alice. \'I\'ve read that in the wood,\' continued the King. \'Then it ought to be done, I wonder?\' Alice guessed in a hoarse growl, \'the.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(33, 'March Hare. The Hatter was the first figure!\' said the sage, as he spoke. \'A cat may look at the cook, to see if she could have told you butter.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(34, 'White Rabbit, trotting slowly back again, and all the right way of keeping up the other, saying, in a loud, indignant voice, but she had succeeded.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(35, 'This seemed to Alice a little more conversation with her head impatiently; and, turning to the table, but there were a Duck and a Canary called out.', 'Android', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(36, 'Alice coming. \'There\'s PLENTY of room!\' said Alice in a low, trembling voice. \'There\'s more evidence to come once a week: HE taught us Drawling.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(37, 'Pigeon; \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Mock Turtle in a melancholy way, being quite unable to move. She soon got.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(38, 'While the Panther were sharing a pie--\' [later editions continued as follows When the procession came opposite to Alice, she went down on their.', 'C++', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(39, 'I say,\' the Mock Turtle a little quicker. \'What a pity it wouldn\'t stay!\' sighed the Lory, with a sigh. \'I only took the thimble, saying \'We beg.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(40, 'So she set to work at once crowded round it, panting, and asking, \'But who is Dinah, if I like being that person, I\'ll come up: if not, I\'ll stay.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(41, 'Alice did not get hold of its little eyes, but it is.\' \'Then you shouldn\'t talk,\' said the Dodo, \'the best way to explain the mistake it had some.', 'Angular2', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(42, 'Soup does very well to say whether the pleasure of making a daisy-chain would be the right thing to eat the comfits: this caused some noise and.', 'Angular2', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(43, 'Queen shouted at the cook till his eyes were looking up into a chrysalis--you will some day, you know--and then after that savage Queen: so she took.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(44, 'Who for such dainties would not open any of them. However, on the top of the jury eagerly wrote down all three dates on their slates, when the.', 'Yii', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(45, 'She is such a neck as that! No, no! You\'re a serpent; and there\'s no name signed at the Footman\'s head: it just missed her. Alice caught the.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(46, 'For some minutes it seemed quite natural); but when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s.', 'Codeigniter', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(47, 'Alice looked all round her once more, while the Dodo could not help bursting out laughing: and when she noticed a curious feeling!\' said Alice; \'all.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(48, 'Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can find it.\' And she began nibbling at the bottom of a water-well,\' said the King:.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(49, 'I\'d only been the whiting,\' said Alice, (she had grown so large a house, that she was shrinking rapidly; so she went round the table, but it was too.', 'Yii', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(50, 'I only wish it was,\' the March Hare. The Hatter was the first to break the silence. \'What day of the sea.\' \'I couldn\'t afford to learn it.\' said the.', 'Android', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(51, 'After a while, finding that nothing more happened, she decided on going into the air, I\'m afraid, but you might like to try the whole cause, and.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(52, 'That he met in the sea!\' cried the Gryphon, \'she wants for to know what to beautify is, I suppose?\' \'Yes,\' said Alice loudly. \'The idea of having.', 'Yii', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(53, 'The Gryphon sat up and bawled out, \"He\'s murdering the time! Off with his whiskers!\' For some minutes it seemed quite natural); but when the White.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(54, 'Cat in a trembling voice to its feet, \'I move that the meeting adjourn, for the next witness. It quite makes my forehead ache!\' Alice watched the.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(55, 'Alice whispered to the tarts on the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come.', 'C#', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(56, 'For instance, suppose it doesn\'t mind.\' The table was a sound of many footsteps, and Alice looked very uncomfortable. The moment Alice appeared, she.', 'C++', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(57, 'I didn\'t know that you\'re mad?\' \'To begin with,\' said the Mock Turtle: \'why, if a fish came to the jury, in a great hurry, muttering to itself \'The.', 'J,ava', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(58, 'The Hatter opened his eyes were nearly out of sight: then it chuckled. \'What fun!\' said the Queen, who were all ornamented with hearts. Next came.', 'C', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(59, 'Alice. \'Nothing WHATEVER?\' persisted the King. \'Nothing whatever,\' said Alice. \'You are,\' said the March Hare: she thought it would feel very queer.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(60, 'But she did not at all this time. \'I want a clean cup,\' interrupted the Gryphon. \'Well, I can\'t tell you just now what the next verse,\' the Gryphon.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(61, 'Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all fairly,\' Alice began, in a sulky tone; \'Seven jogged my elbow.\' On which Seven.', 'Codeigniter', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(62, 'Writhing, of course, Alice could only hear whispers now and then, if I would talk on such a nice soft thing to nurse--and she\'s such a nice little.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(63, 'Alice found at first she would get up and down, and was delighted to find my way into that lovely garden. First, however, she went round the court.', 'J,ava', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(64, 'SAID was, \'Why is a raven like a tunnel for some while in silence. Alice noticed with some severity; \'it\'s very rude.\' The Hatter looked at Two. Two.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(65, 'I beg your pardon!\' said the Mock Turtle. \'No, no! The adventures first,\' said the Caterpillar. \'Well, perhaps not,\' said the Cat, as soon as she.', 'Swift', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(66, 'I\'ll tell you my adventures--beginning from this morning,\' said Alice to herself, \'Now, what am I then? Tell me that first, and then another.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(67, 'Alice could think of nothing better to say whether the pleasure of making a daisy-chain would be a walrus or hippopotamus, but then she walked down.', 'C#', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(68, 'Canary called out to be lost: away went Alice like the look of the other two were using it as well say,\' added the Hatter, with an anxious look at.', 'Angular', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(69, 'ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Well, I shan\'t go, at any rate,\' said Alice: \'besides, that\'s not a bit hurt, and she heard the Queen.', 'Angular', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(70, 'Gryphon, \'you first form into a pig, my dear,\' said Alice, \'it\'s very easy to know when the race was over. Alice was a very curious to see if there.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(71, 'Mouse, in a great hurry. \'You did!\' said the Gryphon, and the choking of the jury eagerly wrote down on their slates, and then a row of lamps.', 'Laravel', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(72, 'While she was looking at everything about her, to pass away the time. Alice had begun to think about stopping herself before she gave one sharp.', 'Kotlin', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(73, 'Bill had left off sneezing by this time, as it is.\' \'I quite agree with you,\' said the Mock Turtle repeated thoughtfully. \'I should think you\'ll.', 'Angular', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(74, 'SOUP!\' \'Chorus again!\' cried the Gryphon, the squeaking of the table. \'Have some wine,\' the March Hare. \'Then it wasn\'t very civil of you to sit.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(75, 'Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Mock Turtle: \'why, if a fish came to ME, and told me he was speaking, and this was.', 'J,ava', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(76, 'She felt that it might be some sense in your knocking,\' the Footman went on saying to herself \'Suppose it should be raving mad after all! I almost.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(77, 'Pray, what is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be Mabel after all, and I had it written up somewhere.\' Down.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(78, 'I believe.\' \'Boots and shoes under the circumstances. There was not a bit hurt, and she could not taste theirs, and the fall was over. However, when.', 'C', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(79, 'When I used to it as you liked.\' \'Is that the reason is--\' here the conversation dropped, and the whole court was a long time together.\' \'Which is.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(80, 'BEST butter, you know.\' \'And what are they made of?\' Alice asked in a moment. \'Let\'s go on for some time with one finger; and the turtles all.', 'Laravel', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(81, 'Alice quite jumped; but she was coming to, but it just missed her. Alice caught the baby at her for a great hurry. \'You did!\' said the Caterpillar..', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(82, 'Caterpillar. Alice thought to herself \'Suppose it should be like then?\' And she thought it would be quite as much as she came up to her ear. \'You\'re.', 'C#', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(83, 'There was nothing on it were nine o\'clock in the sea. But they HAVE their tails in their mouths; and the White Rabbit, with a shiver. \'I beg pardon.', 'Angular', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(84, 'I fell off the fire, stirring a large dish of tarts upon it: they looked so grave and anxious.) Alice could bear: she got up very sulkily and.', 'Android', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(85, 'Duchess\'s cook. She carried the pepper-box in her face, and large eyes like a frog; and both the hedgehogs were out of court! Suppress him! Pinch.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(86, 'She felt that this could not answer without a porpoise.\' \'Wouldn\'t it really?\' said Alice sadly. \'Hand it over here,\' said the Duchess: you\'d better.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(87, 'I am very tired of being all alone here!\' As she said this, she noticed that they could not stand, and she thought of herself, \'I wish you would.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(88, 'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, because some of the house, and found herself at last she spread out her hand in.', 'C#', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(89, 'White Rabbit, \'and that\'s a fact.\' Alice did not like to drop the jar for fear of killing somebody, so managed to put everything upon Bill! I.', 'PHP', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(90, 'I should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'Did you speak?\' \'Not I!\' said the Queen, who was talking. \'How CAN I.', 'Angular2', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(91, 'Yet you finished the guinea-pigs!\' thought Alice. \'I wonder if I must, I must,\' the King was the same year for such dainties would not join the.', 'Zend', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(92, 'The Knave did so, very carefully, remarking, \'I really must be getting somewhere near the centre of the sense, and the March Hare meekly replied..', 'Codeigniter', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(93, 'Alice did not venture to say it over) \'--yes, that\'s about the games now.\' CHAPTER X. The Lobster Quadrille The Mock Turtle\'s heavy sobs. Lastly.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(94, 'I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the thing yourself, some winter day, I will tell you my history, and you\'ll understand why it is I.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(95, 'Hatter. This piece of bread-and-butter in the air. \'--as far out to sea as you might knock, and I had our Dinah here, I know who I WAS when I learn.', 'Lorem ipsum', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(96, 'Mock Turtle; \'but it doesn\'t understand English,\' thought Alice; \'only, as it\'s asleep, I suppose I ought to tell me your history, you know,\' the.', 'Swift', '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(97, 'Alice. \'I wonder how many hours a day or two: wouldn\'t it be murder to leave off this minute!\' She generally gave herself very good advice, (though.', 'Kotlin', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(98, 'I should think you can find them.\' As she said to herself what such an extraordinary ways of living would be quite as much as she had read several.', 'iOS', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(99, 'For this must be the best way to hear it say, as it went. So she began: \'O Mouse, do you want to stay in here any longer!\' She waited for a minute.', 'J,ava', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(100, 'Who ever saw one that size? Why, it fills the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'Well, it\'s got no business.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(101, 'France-- Then turn not pale, beloved snail, but come and join the dance? \"You can really have no idea what Latitude was, or Longitude I\'ve got to.', 'Android', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(102, 'Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little bird as soon as there was no one else seemed inclined to say \'Drink me,\'.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(103, 'Majesty,\' said Alice loudly. \'The idea of having the sentence first!\' \'Hold your tongue!\' added the March Hare interrupted in a melancholy air, and.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(104, 'The Fish-Footman began by producing from under his arm a great letter, nearly as large as himself, and this was her dream:-- First, she dreamed of.', 'C', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(105, 'I\'m doubtful about the same size: to be sure; but I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'than waste it in her own children..', 'C', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(106, 'OURS they had settled down again into its mouth and began talking to him,\' said Alice angrily. \'It wasn\'t very civil of you to offer it,\' said.', 'Kotlin', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(107, 'I beg your pardon!\' she exclaimed in a low trembling voice, \'--and I hadn\'t drunk quite so much!\' Alas! it was an old Crab took the hookah out of.', 'ObjectiveC', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(108, 'Caterpillar. Here was another long passage, and the other paw, \'lives a March Hare. \'Yes, please do!\' but the Mouse heard this, it turned round and.', 'Kotlin', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(109, 'The Duchess took her choice, and was delighted to find herself talking familiarly with them, as if his heart would break. She pitied him deeply..', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(110, 'Alice thought to herself \'It\'s the stupidest tea-party I ever saw in another moment down went Alice like the right distance--but then I wonder who.', 'Zend', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(111, 'Alice, in a twinkling! Half-past one, time for dinner!\' (\'I only wish people knew that: then they wouldn\'t be so proud as all that.\' \'With extras?\'.', 'C++', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(112, 'Alice. \'What IS a Caucus-race?\' said Alice; not that she let the Dormouse began in a great deal to ME,\' said Alice indignantly. \'Ah! then yours.', 'C', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(113, 'Let me see: four times seven is--oh dear! I shall see it pop down a jar from one end of every line: \'Speak roughly to your tea; it\'s getting late.\'.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(114, 'Alice again. \'No, I didn\'t,\' said Alice: \'allow me to sell you a song?\' \'Oh, a song, please, if the Mock Turtle is.\' \'It\'s the stupidest tea-party I.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(115, 'Heads below!\' (a loud crash)--\'Now, who did that?--It was Bill, I fancy--Who\'s to go from here?\' \'That depends a good deal: this fireplace is.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(116, 'YOU manage?\' Alice asked. \'We called him a fish)--and rapped loudly at the window.\' \'THAT you won\'t\' thought Alice, \'as all the time he was obliged.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(117, 'Gryphon, \'that they WOULD go with the tea,\' the March Hare went on. Her listeners were perfectly quiet till she heard a little while, however, she.', 'Angular2', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(118, 'Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Hatter, and, just as well. The twelve jurors were all writing very busily on slates..', 'iOS', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(119, 'In a little shriek and a large plate came skimming out, straight at the March Hare took the least idea what to say \'creatures,\' you see, Miss, we\'re.', 'PHP', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(120, 'Mock Turtle: \'why, if a dish or kettle had been to a snail. \"There\'s a porpoise close behind her, listening: so she set to work throwing everything.', 'Angular2', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(121, 'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at it, and finding it very much,\' said the Dormouse, without.', 'J,ava', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(122, 'Fish-Footman was gone, and, by the hand, it hurried off, without waiting for the hot day made her look up in a VERY good opportunity for showing off.', 'Angular', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(123, 'The Queen smiled and passed on. \'Who ARE you talking to?\' said the cook. \'Treacle,\' said a whiting to a lobster--\' (Alice began to cry again. \'You.', 'ObjectiveC', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(124, 'Alice looked up, and reduced the answer to it?\' said the Duchess, as she could, for the Dormouse,\' thought Alice; \'I might as well say this), \'to go.', 'C#', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(125, 'They all returned from him to be almost out of that is--\"Be what you would seem to be\"--or if you\'d like it put the Lizard in head downwards, and.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(126, 'I should be like then?\' And she began looking at everything that was lying on their faces, and the cool fountains. CHAPTER VIII. The Queen\'s.', 'Yii', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(127, 'There\'s no pleasing them!\' Alice was very glad she had plenty of time as she was beginning to see what the next verse,\' the Gryphon said to Alice..', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(128, 'Alice looked down at once, while all the rest, Between yourself and me.\' \'That\'s the reason is--\' here the conversation a little. \'\'Tis so,\' said.', 'Angular', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(129, 'They had not gone (We know it was just in time to go, for the rest of the thing Mock Turtle sighed deeply, and drew the back of one flapper across.', 'Kotlin', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(130, 'I\'m here! Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in another minute the whole window!\' \'Sure.', 'ObjectiveC', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(131, 'I\'LL soon make you a song?\' \'Oh, a song, please, if the Mock Turtle drew a long way. So they couldn\'t get them out of his pocket, and was going to.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(132, 'Mock Turtle, suddenly dropping his voice; and Alice rather unwillingly took the least idea what you\'re at!\" You know the song, she kept tossing the.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(133, 'This did not like the look of things at all, as the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, and, just as the.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(134, 'Duchess; \'and most of \'em do.\' \'I don\'t quite understand you,\' she said, without opening its eyes, for it now, I suppose, by being drowned in my.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(135, 'Gryphon, sighing in his throat,\' said the Rabbit\'s little white kid gloves in one hand, and made believe to worry it; then Alice put down yet.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(136, 'Dormouse again, so violently, that she had but to her that she could not stand, and she went on: \'But why did they live at the other, and growing.', 'Android', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(137, 'Queen: so she went back to her: first, because the chimneys were shaped like the Mock Turtle said with some curiosity. \'What a funny watch!\' she.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(138, 'Duchess by this time.) \'You\'re nothing but a pack of cards!\' At this moment the door as you say it.\' \'That\'s nothing to what I used to say.\' \'So he.', 'iOS', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(139, 'King very decidedly, and the Queen was in the lock, and to stand on your shoes and stockings for you now, dears? I\'m sure I have none, Why, I.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(140, 'Bill\'s got to the Duchess: \'and the moral of that is, but I can\'t quite follow it as well she might, what a Gryphon is, look at all a pity. I said.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(141, 'Gryphon, and the small ones choked and had just begun \'Well, of all this time, as it went, \'One side of WHAT? The other guests had taken his watch.', 'C++', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(142, 'Dormouse,\' the Queen was close behind it when she first saw the White Rabbit returning, splendidly dressed, with a teacup in one hand, and Alice was.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(143, 'I can\'t tell you my adventures--beginning from this morning,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here.', 'Yii', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(144, 'Mock Turtle recovered his voice, and, with tears again as quickly as she could, and waited till she was talking. \'How CAN I have done that, you.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(145, 'The Dormouse again took a great crash, as if he wasn\'t going to give the hedgehog to, and, as the large birds complained that they would die. \'The.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(146, 'PLEASE mind what you\'re talking about,\' said Alice. \'Why, there they are!\' said the Hatter, with an air of great relief. \'Now at OURS they had been.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(147, 'Alice to herself. \'Shy, they seem to see you again, you dear old thing!\' said the King. \'It began with the other: he came trotting along in a more.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(148, 'I eat one of the accident, all except the Lizard, who seemed ready to sink into the teapot. \'At any rate he might answer questions.--How am I to get.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(149, 'Some of the words did not like the Queen?\' said the Queen, and in despair she put it. She felt that this could not possibly reach it: she could not.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(150, 'There was a different person then.\' \'Explain all that,\' he said to herself, \'Why, they\'re only a pack of cards: the Knave \'Turn them over!\' The.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(151, 'Do you think you\'re changed, do you?\' \'I\'m afraid I\'ve offended it again!\' For the Mouse had changed his mind, and was immediately suppressed by the.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(152, 'Alice, \'because I\'m not Ada,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she could not stand, and she was about a whiting before.\'.', 'C#', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(153, 'King. \'Shan\'t,\' said the Knave, \'I didn\'t write it, and talking over its head. \'Very uncomfortable for the end of trials, \"There was some attempts.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(154, 'In the very middle of one! There ought to eat or drink under the window, and one foot to the Caterpillar, just as if a fish came to the little.', 'iOS', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(155, 'Hatter, with an air of great relief. \'Now at OURS they had to ask help of any that do,\' Alice hastily replied; \'at least--at least I know I do!\'.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(156, 'The first thing she heard was a body to cut it off from: that he had to do this, so she went to school in the flurry of the treat. When the pie was.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(157, 'I think?\' he said to Alice, they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to be\"--or if you\'d like it very nice.', 'C', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(158, 'Lory, who at last she stretched her arms round it as she could, and soon found out a history of the Queen of Hearts, carrying the King\'s crown on a.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(159, 'This time Alice waited patiently until it chose to speak good English); \'now I\'m opening out like the right way to fly up into a graceful zigzag.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(160, 'Time!\' \'Perhaps not,\' Alice replied thoughtfully. \'They have their tails fast in their mouths. So they couldn\'t see it?\' So she was terribly.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(161, 'King; \'and don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the King, with an M?\' said Alice. \'Of course not,\' said.', 'PHP', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(162, 'Alice said with a sigh: \'it\'s always tea-time, and we\'ve no time to hear the Rabbit came up to them she heard was a most extraordinary noise going.', 'C++', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(163, 'Mouse to tell you--all I know all sorts of little birds and animals that had made the whole pack rose up into the earth. Let me see: that would.', 'Kotlin', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(164, 'March Hare: she thought there was no label this time she had felt quite strange at first; but she gained courage as she added, \'and the moral of.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(165, 'So she was peering about anxiously among the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment Alice.', 'PHP', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(166, 'I\'d only been the whiting,\' said Alice, \'it\'s very interesting. I never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' \'Digging.', 'Swift', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(167, 'Alice looked down at her as she added, \'and the moral of that is--\"Oh, \'tis love, that makes them bitter--and--and barley-sugar and such things that.', 'Codeigniter', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(168, 'Footman\'s head: it just now.\' \'It\'s the oldest rule in the distance, screaming with passion. She had not gone much farther before she came suddenly.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(169, 'Alice! Come here directly, and get ready for your interesting story,\' but she had accidentally upset the milk-jug into his cup of tea, and looked at.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(170, 'They had a large mustard-mine near here. And the muscular strength, which it gave to my right size again; and the Dormouse into the roof bear?--Mind.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(171, 'The Mouse looked at her, and the party went back to the little golden key, and Alice\'s elbow was pressed hard against it, that attempt proved a.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(172, 'King said to the beginning of the Mock Turtle said with a teacup in one hand and a sad tale!\' said the Mock Turtle. \'Seals, turtles, salmon, and so.', 'PHP', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(173, 'Gryphon. \'The reason is,\' said the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a body to cut it off from: that he had a VERY unpleasant.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(174, 'At last the Dodo had paused as if he were trying which word sounded best. Some of the song. \'What trial is it?\' Alice panted as she went on, turning.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(175, 'For really this morning I\'ve nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t want YOU with us!\"\' \'They were obliged to have got in.', 'PHP', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(176, 'And mentioned me to him: She gave me a good many voices all talking at once, and ran off, thinking while she ran, as well go in ringlets at all;.', 'Angular2', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(177, 'THAT like?\' said Alice. \'That\'s the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into her face, and large eyes full of.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(178, 'There was a treacle-well.\' \'There\'s no such thing!\' Alice was beginning very angrily, but the three gardeners at it, and finding it very hard indeed.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(179, 'Lory. Alice replied very politely, \'for I never knew whether it would not give all else for two reasons. First, because I\'m on the same age as.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(180, 'Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her eyes to see some meaning in it, and very soon finished off the cake. * * * * * * * *.', 'J,ava', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(181, 'Majesty!\' the soldiers did. After these came the royal children, and make one repeat lessons!\' thought Alice; \'I can\'t help that,\' said the Cat, as.', 'Angular', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(182, 'I eat or drink something or other; but the Gryphon in an offended tone. And she began nibbling at the White Rabbit read out, at the stick, and held.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(183, 'Alice was not an encouraging opening for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(184, 'Alice dodged behind a great deal to ME,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice aloud, addressing nobody in.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(185, 'OLD, FATHER WILLIAM,\' to the door, and tried to open them again, and made another rush at Alice the moment he was going to give the prizes?\' quite a.', 'Angular2', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(186, 'Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the Dodo..', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(187, 'March Hare, \'that \"I breathe when I grow at a reasonable pace,\' said the Mock Turtle is.\' \'It\'s the first minute or two, which gave the Pigeon went.', 'J,ava', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(188, 'On various pretexts they all stopped and looked at the Caterpillar\'s making such a pleasant temper, and thought it would be QUITE as much use in.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(189, 'I shall have to whisper a hint to Time, and round Alice, every now and then, if I fell off the subjects on his spectacles. \'Where shall I begin.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(190, 'Fish-Footman was gone, and the jury asked. \'That I can\'t get out at all fairly,\' Alice began, in a great many teeth, so she bore it as well as she.', 'Angular2', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(191, 'Queen to-day?\' \'I should like to hear the very middle of one! There ought to be sure! However, everything is to-day! And yesterday things went on at.', 'Kotlin', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(192, 'Bill had left off writing on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an uncomfortably.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(193, 'This seemed to be ashamed of yourself for asking such a simple question,\' added the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(194, 'King said, for about the crumbs,\' said the King. The next witness would be as well look and see that queer little toss of her favourite word.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(195, 'Mouse, sharply and very angrily. \'A knot!\' said Alice, who always took a minute or two, it was good manners for her to carry it further. So she.', 'C#', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(196, 'I can\'t get out of its little eyes, but it was too dark to see you again, you dear old thing!\' said the Duchess; \'I never said I could shut up like.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(197, 'Dormouse shall!\' they both sat silent for a rabbit! I suppose it were nine o\'clock in the last time she saw in my size; and as for the Dormouse,\'.', 'PHP', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(198, 'Gryphon. \'Then, you know,\' said the King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(199, 'I\'m mad?\' said Alice. \'I don\'t know what \"it\" means well enough, when I find a thing,\' said the Hatter. \'You MUST remember,\' remarked the King, with.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14'),
(200, 'Don\'t let him know she liked them best, For this must be on the trumpet, and then all the arches are gone from this side of WHAT? The other guests.', 'Lorem ipsum', '2017-11-05 08:19:14', '2017-11-05 08:19:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 1, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(2, 'Hirer', 'hirer', 'Hirer Role', 2, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(3, 'Worker', 'worker', 'Worker Role', 3, '2017-11-05 08:19:05', '2017-11-05 08:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(2, 2, 2, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(3, 2, 3, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(4, 3, 4, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(5, 3, 5, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(6, 3, 6, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(7, 3, 7, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(8, 3, 8, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(9, 3, 9, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(10, 3, 10, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(11, 3, 11, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(12, 3, 12, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(13, 3, 13, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(14, 3, 14, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(15, 3, 15, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(16, 3, 16, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(17, 3, 17, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(18, 3, 18, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(19, 3, 19, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(20, 3, 20, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(21, 3, 21, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(22, 3, 22, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(23, 3, 23, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(24, 3, 24, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(25, 3, 25, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(26, 3, 26, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(27, 3, 27, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(28, 3, 28, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(29, 3, 29, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(30, 3, 30, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(31, 3, 31, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(32, 3, 32, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(33, 3, 33, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(34, 3, 34, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(35, 3, 35, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(36, 3, 36, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(37, 3, 37, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(38, 3, 38, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(39, 3, 39, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(40, 3, 40, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(41, 3, 41, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(42, 3, 42, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(43, 3, 43, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(44, 3, 44, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(45, 3, 45, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(46, 3, 46, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(47, 3, 47, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(48, 3, 48, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(49, 3, 49, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(50, 3, 50, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(51, 3, 51, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(52, 3, 52, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(53, 3, 53, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(54, 3, 54, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(55, 3, 55, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(56, 3, 56, '2017-11-05 08:44:30', '2017-11-05 08:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `smart_attributes`
--

CREATE TABLE `smart_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smart_attributes`
--

INSERT INTO `smart_attributes` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 4, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(2, 'Laravel', 4, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(3, 'Codeigniter', 5, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(4, 'Yii', 7, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(5, 'Zend', 5, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(6, 'Simphony', 3, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(7, 'JS', 3, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(8, 'Angular', 4, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(9, 'Angular2', 5, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(10, 'Angular4', 9, 5, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(11, 'Vue', 9, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(12, 'React', 5, 4, '2017-11-05 08:19:12', '2017-11-05 08:19:12'),
(13, 'Android', 8, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(14, 'iOS', 6, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(15, 'ObjectiveC', 2, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(16, 'Swift', 7, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(17, 'Kotlin', 9, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(18, 'C', 4, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(19, 'C++', 8, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(20, 'C#', 9, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(21, 'J,ava', 9, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(22, 'Project Management', 9, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(23, 'Human Management', 10, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(24, 'IT Support Manager', 10, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(25, 'Desktop Support Manager', 5, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(26, 'Cloud SUB1', 2, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(27, 'Cloud SUB2', 3, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(28, 'Cloud SUB3', 6, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(29, 'Administration SUB1', 8, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(30, 'Administration SUB2', 7, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(31, 'Administration SUB3', 9, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(32, 'Network SUB1', 3, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(33, 'Network SUB2', 10, 4, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(34, 'Network SUB3', 9, 5, '2017-11-05 08:19:13', '2017-11-05 08:19:13'),
(35, 'J,ava', 2, 56, '2017-11-05 08:44:46', '2017-11-05 08:44:56'),
(36, 'Android', 1, 56, '2017-11-05 08:44:56', '2017-11-05 08:44:56'),
(37, 'PHP', 2, 56, '2017-11-05 08:45:24', '2017-11-05 08:45:32'),
(38, 'iOS', 2, 56, '2017-11-05 08:45:24', '2017-11-05 08:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 3, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(2, 'Laravel', 5, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(3, 'Codeigniter', 7, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(4, 'Yii', 2, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(5, 'Zend', 6, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(6, 'Angular', 7, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(7, 'Angular2', 5, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(8, 'Android', 4, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(9, 'iOS', 3, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(11, 'Swift', 1, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(13, 'C', 1, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(14, 'C++', 1, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(16, 'J,ava', 4, '2017-11-05 08:19:10', '2017-11-05 08:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `test_qs`
--

CREATE TABLE `test_qs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test_results`
--

CREATE TABLE `test_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `hirer_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `video_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$FNqogkUB54ElmiNG4vIVtefznqvmf5Oo.Vz5aEwyzqRFRF.n93k2a', NULL, NULL, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(2, 'ClickbyClick', 'djurovic.igoor@gmail.com', '$2y$10$w89DHSeZh1i7UlXlsAEZIu4bKG.w3DTzghyvxf5aEsBZIg91lExcO', NULL, NULL, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(3, 'CodeF1', 'vukasinovic@outlook.com', '$2y$10$u3K4HGy6H93zFayQgZ8x.OoB5wt3ye0.sylmGiXsmIUxniNnF0bF6', NULL, NULL, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(4, 'Darko', 'darko@gmail.com', '$2y$10$C/2ruPaC3uVvR5RbVwt3CO3SJKKRFcCva13wBQm2YUGtqslcHNDr6', NULL, NULL, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(5, 'Danilo', 'danilo.cvetkovic@ymail.com', '$2y$10$CWOdiUh8dlrfh3K1eY1L1eJUYE1bXgSgyddhLsFrTo2Qq8EqMrQK2', NULL, NULL, '2017-11-05 08:19:05', '2017-11-05 08:19:05'),
(6, 'User1', 'user1@mail.com', '$2y$10$e7Mx05TTYgXP6ArDdVdhhOqkehgsAiAbl.GOLMa.9Sj7Wkjauqcj6', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(7, 'User2', 'user2@mail.com', '$2y$10$WFZBbhvUZ0Q14ENcPy71ROsRTmCI58dXEx48cegXPFhOqVsdusjiK', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(8, 'User3', 'user3@mail.com', '$2y$10$cD1AyhLkNLNQX7SFSd75WufLngArsN2w/1abO81upEC3Qb8TX3xN2', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(9, 'User4', 'user4@mail.com', '$2y$10$15Xrp6zinHRG5A3m1wkKtO3XngZU8AvqKj5TuJhRXi9VYqs77Z5P.', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(10, 'User5', 'user5@mail.com', '$2y$10$6IQIixqThuCm/WsanE35HOeCQCZ2uXi6/3G2PyAyn3YX//39Qzq7y', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(11, 'User6', 'user6@mail.com', '$2y$10$6n.nxzFdaB.tyPNL6PyBDeR7R4A3zS9i9zaViVXQAKwVCzrG1NHke', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(12, 'User7', 'user7@mail.com', '$2y$10$CmboF5hX/DzT0QcgmIXvFuT5FPg2h64x5hEDbl5dRwcfDtmU4EKu6', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(13, 'User8', 'user8@mail.com', '$2y$10$L71YGsoZKrK1l1rTpCKYB.57SiF4nn4RL8R2WrRp3avxejfEVllxG', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(14, 'User9', 'user9@mail.com', '$2y$10$aY0vYCDAobEF1EWiRpACPe/Gg2/SLP75AUtLT8Vg.f5YuwqKIs0Y.', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(15, 'User10', 'user10@mail.com', '$2y$10$hLKZvHq21KZfnF1.anDGTuloYh2OPOj9Piehr.t9u57ZUN7FWVEDK', NULL, NULL, '2017-11-05 08:19:06', '2017-11-05 08:19:06'),
(16, 'User11', 'user11@mail.com', '$2y$10$e.foySt2hPTyNySePrZIGO5dmnFEIaooydU/TwpxkRpLqEJRFBHGq', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(17, 'User12', 'user12@mail.com', '$2y$10$Fa.cQN5VLc6Ash98oGpYte9KdncOZfI9vSqXJgnPJi6pUE.9/6HkO', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(18, 'User13', 'user13@mail.com', '$2y$10$J6ms7elRUwIlf0ugTgji9e.0Gyrze.UX8Vyy.hW30PjTMVM6xlf0e', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(19, 'User14', 'user14@mail.com', '$2y$10$Sjo3fqFjTDilatruHGJZe.a/tbP7DsAOC43SxGW.RCqj5EGC2qh0u', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(20, 'User15', 'user15@mail.com', '$2y$10$63ydUY8xvhDlZahko7eoEOkus45iFfbqwmv5rwOeJ5Io93l6d5Amq', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(21, 'User16', 'user16@mail.com', '$2y$10$2roYN1tLOI3T5p6jUTnou.UQMuwPeXUsGZtdXusgQk6dwrd37ngQm', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(22, 'User17', 'user17@mail.com', '$2y$10$Gc6chobl3xrKzFJRrju7oejzX38wGt3q7yGTWfIlj815JGEGNkbgu', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(23, 'User18', 'user18@mail.com', '$2y$10$i0oeDgm4RO.W2i/QdmTqRuSLUi4CXD0s9WNV8i3HvLTTxqYoBTsba', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(24, 'User19', 'user19@mail.com', '$2y$10$mtYjG899Od9LV6aO8cbEguNOi3QFXfhY6..LyrGcdI23VuhB/0vvi', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(25, 'User20', 'user20@mail.com', '$2y$10$GGSVLXNIQe86hmhqrySQIuk795oB8TM541V1uHt8y6hkRlgS2RC8K', NULL, NULL, '2017-11-05 08:19:07', '2017-11-05 08:19:07'),
(26, 'User21', 'user21@mail.com', '$2y$10$QD9sdW/AXutN9KqtwBSUe.MLR/3LRAldIJjwO/GeaGmGO2yQFm/cW', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(27, 'User22', 'user22@mail.com', '$2y$10$uCpZKZIIZvkoO65WAqgI8.tu3FT5Y8zt30BmULMeZfUi19POkMXsK', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(28, 'User23', 'user23@mail.com', '$2y$10$YVCasIPalfkvI87qAKWxJ.YLXeFOIg.yPhM1/gMuCh1QV2I2wIsdu', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(29, 'User24', 'user24@mail.com', '$2y$10$9QxLPF9tMXOnT30XdPATju03slZ0Ei1DyqJfjzn3ldc2RPGAwL26W', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(30, 'User25', 'user25@mail.com', '$2y$10$w1fsQ5FBGdkymgrMElLxy./8VGIVp9P.sill8CgmFOuKauXk/N9Hy', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(31, 'User26', 'user26@mail.com', '$2y$10$eBzLCuWmDickoodIwnjruervVXyO0StIogRs4Z2ap18CZfd1oxl.a', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(32, 'User27', 'user27@mail.com', '$2y$10$SEyQ0oCE3IcfCXEnyEHJIewlmnab66Z/0a/9/A2dvSjwGZ30A3dNG', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(33, 'User28', 'user28@mail.com', '$2y$10$pbIdedDshNMUB4dPowKbWOvx2eK0HFS5BeRTTzOLrHAQ4QJJzUTK6', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(34, 'User29', 'user29@mail.com', '$2y$10$Ftg0bgih3t4PwYPxF1T7tO6QhdUeqvtUDjd86awcSqi47mJ3EOJoG', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(35, 'User30', 'user30@mail.com', '$2y$10$EPlyuPM.TcXPwyhzpbO9NeIHXHUCj39k77MZJIwARYhOY6kpS1kqO', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(36, 'User31', 'user31@mail.com', '$2y$10$2twUMYKk0X/jA6Tv6jrhEeZHG5nNfWWAjxlczTRIMgu9yAIlNH3zG', NULL, NULL, '2017-11-05 08:19:08', '2017-11-05 08:19:08'),
(37, 'User32', 'user32@mail.com', '$2y$10$9ZI58UPk6YWuuFidVp9k0emct.9lqv9s7.nfzSvCCJ7PmZYxVVzda', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(38, 'User33', 'user33@mail.com', '$2y$10$/e0fJS1mZc3jaZo0Rg7D0eWoPnNAumsvuwOhCiRzdLtaav1GHAi0.', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(39, 'User34', 'user34@mail.com', '$2y$10$SkGGoZS19nTArWiar7zHFO659oQSqayNaLkoB1krDhIgIJF0dTd8m', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(40, 'User35', 'user35@mail.com', '$2y$10$VwnMk8dcTl2QahJ7kGIiCOE9qILyVvZIHVaZBUZgbOF4kqV2tpwqS', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(41, 'User36', 'user36@mail.com', '$2y$10$qStkD5NhX5Y83lcS7hQM8OsHoY8uwsjZvk8LpxYqf3xoEUnIFluiG', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(42, 'User37', 'user37@mail.com', '$2y$10$Q8Hbp5cFwA4k0oW.OFBibunz3clgPpqpqnYu1n0I8/sIMiupMZkPK', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(43, 'User38', 'user38@mail.com', '$2y$10$A/EoKpdz8eq49idNO6kQt.jXunWpxMlGdQeMy1r0FfeNI2DFf9gHO', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(44, 'User39', 'user39@mail.com', '$2y$10$KCVh7E8dqGNa0tnojq2Zn.Sec47wdSFf/1iLbKwExDiE8cbd9H20i', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(45, 'User40', 'user40@mail.com', '$2y$10$.URMpfebKo5rDGorFVlvO.m25pw6eGp44553n1mWp4Y8Ib80K7mDu', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(46, 'User41', 'user41@mail.com', '$2y$10$VdrzrUTBKhV9f23m07g7.epYmmt3OSmK0LNCoMzbOTeqOJgtvZch2', NULL, NULL, '2017-11-05 08:19:09', '2017-11-05 08:19:09'),
(47, 'User42', 'user42@mail.com', '$2y$10$5jZHVu25/8FYu.YR9DJSiuQ79yv8Q5yxs9qGXhS1O6S6Wn.XVTdLu', NULL, NULL, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(48, 'User43', 'user43@mail.com', '$2y$10$yUpgJDeqjLLjTH7.Gpb1/eNU.Rg99swxnsMthXc1aUB6oX1r0Kl3O', NULL, NULL, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(49, 'User44', 'user44@mail.com', '$2y$10$55FF0GDmzsOuYvy4Y3X4F.U4COI0YcJRGuDAr61RRAwwHZIZCkjR.', NULL, NULL, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(50, 'User45', 'user45@mail.com', '$2y$10$EWQHKsT8pfoEv8KfI/4JoeMhoyjfPP92Gfnxvmv4dDvnVUqSN962K', NULL, NULL, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(51, 'User46', 'user46@mail.com', '$2y$10$vBR6yzIh/k7amfFoaoUubeX6KsWGlpW..W8QvBR9VPQIncfSRrvAC', NULL, NULL, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(52, 'User47', 'user47@mail.com', '$2y$10$7Fun.FHBMGpT5ERk/f/DSeGUJGPaje/U/CJdBhmMJ65Okru7bBuRK', NULL, NULL, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(53, 'User48', 'user48@mail.com', '$2y$10$DaqFk4b0kSEt5KHGFpyWPuaHoH/Aenn0duapiVhoiKf8eZNg2daC2', NULL, NULL, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(54, 'User49', 'user49@mail.com', '$2y$10$QS9t1lshz6CY0ABf3ZzewuzVw3UhuxhjJOGxeYO5/P/cXFr5dR846', NULL, NULL, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(55, 'User50', 'user50@mail.com', '$2y$10$cBeGWfsTmVVACyynf73sYextHHTI8DqVAObTqVck9dBeMqe5APzey', NULL, NULL, '2017-11-05 08:19:10', '2017-11-05 08:19:10'),
(56, 'hello', 'aaa@demo.com', '$2y$10$Es6tE.SR0xZ7ubAkG9i6tel9yMC2Up0xfw/vSby7rGOL3J9QRUdB2', NULL, NULL, '2017-11-05 08:44:30', '2017-11-05 08:44:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`),
  ADD KEY `answers_user_id_foreign` (`user_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applications_worker_id_foreign` (`worker_id`),
  ADD KEY `applications_job_id_foreign` (`job_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_job`
--
ALTER TABLE `category_job`
  ADD KEY `category_job_category_id_foreign` (`category_id`),
  ADD KEY `category_job_job_id_foreign` (`job_id`);

--
-- Indexes for table `category_user`
--
ALTER TABLE `category_user`
  ADD KEY `category_user_category_id_foreign` (`category_id`),
  ADD KEY `category_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD KEY `employes_hirer_id_foreign` (`hirer_id`),
  ADD KEY `employes_worker_id_foreign` (`worker_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_hirer_id_foreign` (`hirer_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `smart_attributes`
--
ALTER TABLE `smart_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `smart_attributes_key_value_user_id_index` (`key`,`value`,`user_id`),
  ADD KEY `smart_attributes_user_id_foreign` (`user_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_index` (`category_id`);

--
-- Indexes for table `test_qs`
--
ALTER TABLE `test_qs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_results`
--
ALTER TABLE `test_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_results_hirer_id_foreign` (`hirer_id`),
  ADD KEY `test_results_user_id_foreign` (`user_id`),
  ADD KEY `test_results_job_id_foreign` (`job_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `smart_attributes`
--
ALTER TABLE `smart_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `test_qs`
--
ALTER TABLE `test_qs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `applications_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_job`
--
ALTER TABLE `category_job`
  ADD CONSTRAINT `category_job_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_job_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_user`
--
ALTER TABLE `category_user`
  ADD CONSTRAINT `category_user_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employes`
--
ALTER TABLE `employes`
  ADD CONSTRAINT `employes_hirer_id_foreign` FOREIGN KEY (`hirer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employes_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_hirer_id_foreign` FOREIGN KEY (`hirer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `smart_attributes`
--
ALTER TABLE `smart_attributes`
  ADD CONSTRAINT `smart_attributes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test_results`
--
ALTER TABLE `test_results`
  ADD CONSTRAINT `test_results_hirer_id_foreign` FOREIGN KEY (`hirer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_results_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
