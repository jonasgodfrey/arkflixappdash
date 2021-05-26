-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2021 at 12:59 PM
-- Server version: 5.7.33-log-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acominor_acomis`
--

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cbo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbo_id` bigint(20) UNSIGNED NOT NULL,
  `physical_contact_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_engagement` date NOT NULL,
  `date_of_establishment` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cat_members`
--

CREATE TABLE `cat_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbos`
--

CREATE TABLE `cbos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cbo_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cbo_profiles`
--

CREATE TABLE `cbo_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_exit_questionaires`
--

CREATE TABLE `client_exit_questionaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cbo_id` bigint(20) UNSIGNED NOT NULL,
  `questionaire_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answers` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `health_facilities`
--

CREATE TABLE `health_facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `State` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LGA` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ward` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Facility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CBO` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CBO_Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SPO` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SPO_Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_facilities`
--

INSERT INTO `health_facilities` (`id`, `State`, `LGA`, `Ward`, `Facility`, `CBO`, `CBO_Email`, `SPO`, `SPO_Email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adamawa', 'Yola South', 'Namtari', 'Wauru Jabbe Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-03-31 12:48:57', '1999-03-31 12:48:57'),
(2, 'Adamawa', 'Yola South', 'Namtari', 'Namtari Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-01 12:48:57', '1999-04-01 12:48:57'),
(3, 'Adamawa', 'Yola South', 'Namtari', 'Malkohi Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-02 12:48:57', '1999-04-02 12:48:57'),
(4, 'Adamawa', 'Yola South', 'Ngurore', 'Wuro-Yanka Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-03 12:48:57', '1999-04-03 12:48:57'),
(5, 'Adamawa', 'Yola South', 'Ngurore', 'Ngurore Primary Health Centre', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-04 12:48:57', '1999-04-04 12:48:57'),
(6, 'Adamawa', 'Yola South', 'Ngurore', 'Goduwo Health Post', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-05 12:48:57', '1999-04-05 12:48:57'),
(7, 'Adamawa', 'Yola South', 'Makama B', 'Yola Central Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-06 12:48:57', '1999-04-06 12:48:57'),
(8, 'Adamawa', 'Yola South', 'Makama B', 'Nana A Maternal and Child Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-07 12:48:57', '1999-04-07 12:48:57'),
(9, 'Adamawa', 'Yola South', 'Makama A', 'Lamido Aliyu Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-08 12:48:57', '1999-04-08 12:48:57'),
(10, 'Adamawa', 'Yola South', 'Makama A', 'Damare Health Clinic (Yola South)', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-09 12:48:57', '1999-04-09 12:48:57'),
(11, 'Adamawa', 'Yola South', 'Bole Yolde Poate', 'Yolde Pate Primary Health Centre', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-10 12:48:57', '1999-04-10 12:48:57'),
(12, 'Adamawa', 'Yola South', 'Bole Yolde Poate', 'Shagari Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-11 12:48:57', '1999-04-11 12:48:57'),
(13, 'Adamawa', 'Yola South', 'Bole Yolde Poate', 'Bole Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-12 12:48:57', '1999-04-12 12:48:57'),
(14, 'Adamawa', 'Yola South', 'Adarawo', 'Wuro-Hausa Health Clinic', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-13 12:48:57', '1999-04-13 12:48:57'),
(15, 'Adamawa', 'Yola South', 'Adarawo', 'Wuro Hausa Health Post (Yola South)', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-14 12:48:57', '1999-04-14 12:48:57'),
(16, 'Adamawa', 'Jada', 'Danaba', 'Sankeupo Health Post', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-15 12:48:57', '1999-04-15 12:48:57'),
(17, 'Adamawa', 'Jada', 'Danaba', 'Saman Health Post', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-16 12:48:57', '1999-04-16 12:48:57'),
(18, 'Adamawa', 'Jada', 'Danaba', 'Nadeu Health Clinic', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-17 12:48:57', '1999-04-17 12:48:57'),
(19, 'Adamawa', 'Jada', 'Danaba', 'Kamenya Health Post', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-18 12:48:57', '1999-04-18 12:48:57'),
(20, 'Adamawa', 'Jada', 'Danaba', 'Dimkusum Health Clinic', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-19 12:48:57', '1999-04-19 12:48:57'),
(21, 'Adamawa', 'Jada', 'Danaba', 'Danaba Maternity Home', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-20 12:48:57', '1999-04-20 12:48:57'),
(22, 'Adamawa', 'Jada', 'Jada 2', 'Jamtari Health Clinic', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-21 12:48:57', '1999-04-21 12:48:57'),
(23, 'Adamawa', 'Jada', 'Jada 1', 'Jada 1 Primary Health Care Clinic', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-22 12:48:57', '1999-04-22 12:48:57'),
(24, 'Adamawa', 'Jada', 'Mbulo', 'Mbulo Health Clinic', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-23 12:48:57', '1999-04-23 12:48:57'),
(25, 'Adamawa', 'Jada', 'Mbulo', 'Mbangen Tiren Health Clinic', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-24 12:48:57', '1999-04-24 12:48:57'),
(26, 'Adamawa', 'Jada', 'Mbulo', 'Mbangen Essande Health Clinic', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-25 12:48:57', '1999-04-25 12:48:57'),
(27, 'Adamawa', 'Jada', 'Mbulo', 'Gangsanji BHealth Clinic', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-26 12:48:57', '1999-04-26 12:48:57'),
(28, 'Adamawa', 'Jada', 'Mbulo', 'Farangvan Maternity Home', 'Pastoral Resolve', 'pareyola@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-27 12:48:57', '1999-04-27 12:48:57'),
(29, 'Adamawa', 'Jada', 'Leko', 'Soo Maternity Home', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-28 12:48:57', '1999-04-28 12:48:57'),
(30, 'Adamawa', 'Jada', 'Leko', 'Mayo-Hako Primary Health Centre', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-29 12:48:57', '1999-04-29 12:48:57'),
(31, 'Adamawa', 'Jada', 'Leko', 'Abejo Health Post', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-04-30 12:48:57', '1999-04-30 12:48:57'),
(32, 'Adamawa', 'Jada', 'Mayokolaye', 'Wuro-Abbo Health Clinic', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-01 12:48:57', '1999-05-01 12:48:57'),
(33, 'Adamawa', 'Jada', 'Mayokolaye', 'Kilbawo Health Clinic', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-02 12:48:57', '1999-05-02 12:48:57'),
(34, 'Adamawa', 'Jada', 'Mayokolaye', 'Gangnai Health Clinic', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-03 12:48:57', '1999-05-03 12:48:57'),
(35, 'Adamawa', 'Jada', 'Mayokolaye', 'Ganglare Health Post', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-04 12:48:57', '1999-05-04 12:48:57'),
(36, 'Adamawa', 'Jada', 'Mayokolaye', 'Gangkiri Health Clinic', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-05 12:48:57', '1999-05-05 12:48:57'),
(37, 'Adamawa', 'Jada', 'Yelli', 'Sapeo Health Clinic', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-06 12:48:57', '1999-05-06 12:48:57'),
(38, 'Adamawa', 'Jada', 'Yelli', 'Mayo Inne Health Clinic', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-07 12:48:57', '1999-05-07 12:48:57'),
(39, 'Adamawa', 'Jada', 'Yelli', 'Kojoli Maternity Home', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-08 12:48:57', '1999-05-08 12:48:57'),
(40, 'Adamawa', 'Jada', 'Yelli', 'Geulsima Health Post', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-09 12:48:57', '1999-05-09 12:48:57'),
(41, 'Adamawa', 'Jada', 'Yelli', 'Gadjo Health Post', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-10 12:48:57', '1999-05-10 12:48:57'),
(42, 'Adamawa', 'Jada', 'Yelli', 'Balauru Health Clinic', 'Clearview Integrity Foundation', 'cvfoundation@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-11 12:48:57', '1999-05-11 12:48:57'),
(43, 'Adamawa', 'Mubi North', 'Lokuwa', 'Wuro Gude Primary Health Care Centre', 'Global Health and Social Awareness Foundation', 'ghasafoundation@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-12 12:48:57', '1999-05-12 12:48:57'),
(44, 'Adamawa', 'Mubi North', 'Lokuwa', 'Sht Primary Health Centre', 'Global Health and Social Awareness Foundation', 'ghasafoundation@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-13 12:48:57', '1999-05-13 12:48:57'),
(45, 'Adamawa', 'Mubi North', 'Lokuwa', 'Mubi North Government Secondary School Health Clinic', 'Global Health and Social Awareness Foundation', 'ghasafoundation@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-14 12:48:57', '1999-05-14 12:48:57'),
(46, 'Adamawa', 'Mubi North', 'Lokuwa', 'Lokuwa Primary Health Centre', 'Global Health and Social Awareness Foundation', 'ghasafoundation@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-15 12:48:57', '1999-05-15 12:48:57'),
(47, 'Adamawa', 'Mubi North', 'Vimtim', 'Rebewa Primary Health Centre', 'Global Health and Social Awareness Foundation', 'ghasafoundation@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-16 12:48:57', '1999-05-16 12:48:57'),
(48, 'Adamawa', 'Mubi North', 'Vimtim', 'Muvudi Primary Health Centre', 'Global Health and Social Awareness Foundation', 'ghasafoundation@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-17 12:48:57', '1999-05-17 12:48:57'),
(49, 'Adamawa', 'Mubi North', 'Vimtim', 'Duda Primary Health care Clinic', 'Global Health and Social Awareness Foundation', 'ghasafoundation@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-18 12:48:57', '1999-05-18 12:48:57'),
(50, 'Adamawa', 'Mubi North', 'Digil', 'Yaza Primary Health Care Centre', 'Gogoji Zumunchi Development Initiative', 'goggojiinitiative@gail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-19 12:48:57', '1999-05-19 12:48:57'),
(51, 'Adamawa', 'Mubi North', 'Digil', 'Digil Health Clinic', 'Gogoji Zumunchi Development Initiative', 'goggojiinitiative@gail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-20 12:48:57', '1999-05-20 12:48:57'),
(52, 'Adamawa', 'Mubi North', 'Digil', 'Didif Health Clinic', 'Gogoji Zumunchi Development Initiative', 'goggojiinitiative@gail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-21 12:48:57', '1999-05-21 12:48:57'),
(53, 'Adamawa', 'Mubi North', 'Sabon Layi', 'Wuro Alkali Primary Health Clinic', 'Gogoji Zumunchi Development Initiative', 'goggojiinitiative@gail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-22 12:48:57', '1999-05-22 12:48:57'),
(54, 'Adamawa', 'Mubi North', 'Sabon Layi', 'Sabon Layi Maternal and Child Health Clinic', 'Gogoji Zumunchi Development Initiative', 'goggojiinitiative@gail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-23 12:48:57', '1999-05-23 12:48:57'),
(55, 'Adamawa', 'Mubi North', 'Yelwa', 'New Market Health Clinic (Mubi North)', 'Gogoji Zumunchi Development Initiative', 'goggojiinitiative@gail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-24 12:48:57', '1999-05-24 12:48:57'),
(56, 'Adamawa', 'Mubi North', 'Yelwa', 'Kochifa Health Clinic', 'Gogoji Zumunchi Development Initiative', 'goggojiinitiative@gail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-25 12:48:57', '1999-05-25 12:48:57'),
(57, 'Adamawa', 'Mubi North', 'Kolere', 'Kolere Primary Health Care Centre', 'Gogoji Zumunchi Development Initiative', 'goggojiinitiative@gail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-26 12:48:57', '1999-05-26 12:48:57'),
(58, 'Adamawa', 'Demsa', 'Northern Demsa', 'Model Primary Health Care Centre', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-27 12:48:57', '1999-05-27 12:48:57'),
(59, 'Adamawa', 'Demsa', 'Northern Demsa', 'Kedemure Primary Health Centre', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-28 12:48:57', '1999-05-28 12:48:57'),
(60, 'Adamawa', 'Demsa', 'Northern Demsa', 'Gadina Health Clinic', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-29 12:48:57', '1999-05-29 12:48:57'),
(61, 'Adamawa', 'Demsa', 'Dong', 'Mararaba Bile Primary Health Centre', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-30 12:48:57', '1999-05-30 12:48:57'),
(62, 'Adamawa', 'Demsa', 'Dong', 'Januawuri Health Clinic', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-05-31 12:48:57', '1999-05-31 12:48:57'),
(63, 'Adamawa', 'Demsa', 'Dong', 'Dong Maternal Health Clinic', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-01 12:48:57', '1999-06-01 12:48:57'),
(64, 'Adamawa', 'Demsa', 'Kpashami', 'Tagwambali Health Clinic', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-02 12:48:57', '1999-06-02 12:48:57'),
(65, 'Adamawa', 'Demsa', 'Kpashami', 'Kpasham Primary Health Centre', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-03 12:48:57', '1999-06-03 12:48:57'),
(66, 'Adamawa', 'Demsa', 'Kpashami', 'Bali Primary Health Care Centre', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-04 12:48:57', '1999-06-04 12:48:57'),
(67, 'Adamawa', 'Demsa', 'Borrong', 'Tikka Health Clinic', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-05 12:48:57', '1999-06-05 12:48:57'),
(68, 'Adamawa', 'Demsa', 'Borrong', 'Borrong Primary Health Care Centre', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-06 12:48:57', '1999-06-06 12:48:57'),
(69, 'Adamawa', 'Demsa', 'Borrong', 'Borrong General Hospital', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-07 12:48:57', '1999-06-07 12:48:57'),
(70, 'Adamawa', 'Demsa', 'Bille', 'Terreh Primary Health Centre', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-08 12:48:57', '1999-06-08 12:48:57'),
(71, 'Adamawa', 'Demsa', 'Bille', 'Gajembo Health Post', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-09 12:48:57', '1999-06-09 12:48:57'),
(72, 'Adamawa', 'Demsa', 'Bille', 'Daksung Health Clinic', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-10 12:48:57', '1999-06-10 12:48:57'),
(73, 'Adamawa', 'Demsa', 'Bille', 'Bille Primary Health Care Centre', 'Community Empowerment Foundation for Women and Peace building', 'cepforoyyala@yahoo.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-11 12:48:57', '1999-06-11 12:48:57'),
(74, 'Adamawa', 'Demsa', 'Demsa', 'Sabon Gari Primary Health Care Centre', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-12 12:48:57', '1999-06-12 12:48:57'),
(75, 'Adamawa', 'Demsa', 'Demsa', 'Murgaran Health Clinic', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-13 12:48:57', '1999-06-13 12:48:57'),
(76, 'Adamawa', 'Demsa', 'Demsa', 'Kudiri Primary Health Centre', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-14 12:48:57', '1999-06-14 12:48:57'),
(77, 'Adamawa', 'Demsa', 'Demsa', 'Kodomon Primary Health Care Centre', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-15 12:48:57', '1999-06-15 12:48:57'),
(78, 'Adamawa', 'Demsa', 'Demsa', 'Demsa Maternal and Child Health Clinic', 'First Step Actin for Children Initiative', 'firststepadamawa@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-16 12:48:57', '1999-06-16 12:48:57'),
(79, 'Adamawa', 'Guyuk', 'Kola', 'Theble Health Clinic', 'Community Reachout Initiative', 'comreach@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-17 12:48:57', '1999-06-17 12:48:57'),
(80, 'Adamawa', 'Guyuk', 'Kola', 'Kwacganka Health Clinic', 'Community Reachout Initiative', 'comreach@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-18 12:48:57', '1999-06-18 12:48:57'),
(81, 'Adamawa', 'Guyuk', 'Kola', 'Pondiwe Health Post', 'Community Reachout Initiative', 'comreach@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-19 12:48:57', '1999-06-19 12:48:57'),
(82, 'Adamawa', 'Guyuk', 'Kola', 'Kola Health Post', 'Community Reachout Initiative', 'comreach@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-20 12:48:57', '1999-06-20 12:48:57'),
(83, 'Adamawa', 'Guyuk', 'Kola', 'Kerau Health Post', 'Community Reachout Initiative', 'comreach@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-21 12:48:57', '1999-06-21 12:48:57'),
(84, 'Adamawa', 'Guyuk', 'Guyuk', 'Sisikira Health Clinic', 'Horn of Hope Vision for Peace and Community Development', 'Hornofhope66@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-22 12:48:57', '1999-06-22 12:48:57'),
(85, 'Adamawa', 'Guyuk', 'Guyuk', 'Pwalamwoliye Health Post', 'Horn of Hope Vision for Peace and Community Development', 'Hornofhope66@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-23 12:48:57', '1999-06-23 12:48:57'),
(86, 'Adamawa', 'Guyuk', 'Guyuk', 'Mangapilla Primary Health Care Centre', 'Horn of Hope Vision for Peace and Community Development', 'Hornofhope66@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-24 12:48:57', '1999-06-24 12:48:57'),
(87, 'Adamawa', 'Guyuk', 'Guyuk', 'Guyuk Primary Health Centre', 'Horn of Hope Vision for Peace and Community Development', 'Hornofhope66@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-25 12:48:57', '1999-06-25 12:48:57'),
(88, 'Adamawa', 'Guyuk', 'Guyuk', 'Guyuk Cottage Hospital', 'Horn of Hope Vision for Peace and Community Development', 'Hornofhope66@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-26 12:48:57', '1999-06-26 12:48:57'),
(89, 'Adamawa', 'Guyuk', 'Guyuk', 'Daswama Health Post', 'Horn of Hope Vision for Peace and Community Development', 'Hornofhope66@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-27 12:48:57', '1999-06-27 12:48:57'),
(90, 'Adamawa', 'Guyuk', 'Dukul', 'Falu Health Clinic', 'Horn of Hope Vision for Peace and Community Development', 'Hornofhope66@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-28 12:48:57', '1999-06-28 12:48:57'),
(91, 'Adamawa', 'Guyuk', 'Dukul', 'Dukul Maternal and Child Health Clinic', 'Horn of Hope Vision for Peace and Community Development', 'Hornofhope66@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-29 12:48:57', '1999-06-29 12:48:57'),
(92, 'Adamawa', 'Guyuk', 'Chikila', 'Jiu Health Centre', 'Community Reachout Initiative', 'comreach@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-06-30 12:48:57', '1999-06-30 12:48:57'),
(93, 'Adamawa', 'Guyuk', 'Chikila', 'Dangir Maternal and Child Health Clinic', 'Community Reachout Initiative', 'comreach@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-07-01 12:48:57', '1999-07-01 12:48:57'),
(94, 'Adamawa', 'Guyuk', 'Chikila', 'Chikila Maternal and Child Health Clinic', 'Community Reachout Initiative', 'comreach@gmail.com', 'SPO 2', 'spo2@acominnigeria.org', 'active', '1999-07-02 12:48:57', '1999-07-02 12:48:57'),
(95, 'Delta', 'Warri South', 'Avenue', 'Edjeba Health Post', 'Rural Youth Peace and Care Foundation', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-03 12:48:57', '1999-07-03 12:48:57'),
(96, 'Delta', 'Warri South', 'Okere', 'Warri South Subsecretariat Primary Health Centre', 'Rural Youth Peace and Care Foundation', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-04 12:48:57', '1999-07-04 12:48:57'),
(97, 'Delta', 'Warri South', 'Okere', 'Eboh Primary Health Centre', 'Rural Youth Peace and Care Foundation', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-05 12:48:57', '1999-07-05 12:48:57'),
(98, 'Delta', 'Warri South', 'Esisi', 'Warri Central Hospital', 'Askmee N=Multi Concepts', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-06 12:48:57', '1999-07-06 12:48:57'),
(99, 'Delta', 'Warri South', 'Pessu', 'Pessu Primary Health Care', 'Askmee N=Multi Concepts', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-07 12:48:57', '1999-07-07 12:48:57'),
(100, 'Delta', 'Udu', 'Otor-Udu', 'Otor-Udu Primary Health Centre', 'Global Women For Quality And Sustainable Development Initi.', 'gwsd2001@gmail.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-08 12:48:57', '1999-07-08 12:48:57'),
(101, 'Delta', 'Udu', 'Otor-Udu', 'Oghior Primary Health Centre', 'Global Women For Quality And Sustainable Development Initi.', 'gwsd2001@gmail.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-09 12:48:57', '1999-07-09 12:48:57'),
(102, 'Delta', 'Udu', 'Owhrode', 'Owhrode Primary Health Centre', 'Global Women For Quality And Sustainable Development Initi.', 'gwsd2001@gmail.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-10 12:48:57', '1999-07-10 12:48:57'),
(103, 'Delta', 'Udu', 'Emadadia', 'Ubogo Primary Health Centre', 'Development Initiative For Community Impact', 'dicngo@yahoo.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-11 12:48:57', '1999-07-11 12:48:57'),
(104, 'Delta', 'Udu', 'Emadadia', 'Emadadja Primary Health Centre', 'Development Initiative For Community Impact', 'dicngo@yahoo.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-12 12:48:57', '1999-07-12 12:48:57'),
(105, 'Delta', 'Udu', 'Ogbe Udu', 'Ukpiovusin Primary Health Centre', 'Development Initiative For Community Impact', 'dicngo@yahoo.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-13 12:48:57', '1999-07-13 12:48:57'),
(106, 'Delta', 'Udu', 'Ogbe Udu', 'Ogbe-Udu Primary Health Centre', 'Development Initiative For Community Impact', 'dicngo@yahoo.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-14 12:48:57', '1999-07-14 12:48:57'),
(107, 'Delta', 'Oshimili North', 'Umuodafe/Ibusa', 'Ibusa Primary Health Centre', 'End Time Soldiers', 'gregsifo@yahoo.co.uk', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-15 12:48:57', '1999-07-15 12:48:57'),
(108, 'Delta', 'Oshimili North', 'Awukwu/Atuma', 'Atuma Primary Health Centre', 'Health Matter', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-16 12:48:57', '1999-07-16 12:48:57'),
(109, 'Delta', 'Oshimili North', 'Awukwu/Atuma', 'Akwukwu-Igbo Primary Health Centre', 'Health Matter', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-17 12:48:57', '1999-07-17 12:48:57'),
(110, 'Delta', 'Oshimili North', 'Awukwu/Atuma', 'Akwukwu-Igbo Government Hospital', 'Health Matter', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-18 12:48:57', '1999-07-18 12:48:57'),
(111, 'Delta', 'Oshimili North', 'Ogboewele', 'Ibusa Government Hospital', 'End Time Soldiers', 'gregsifo@yahoo.co.uk', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-19 12:48:57', '1999-07-19 12:48:57'),
(112, 'Delta', 'Oshimili North', 'Ukala', 'Ukalla Okpunor Primary Health Centre', 'End Time Soldiers', 'gregsifo@yahoo.co.uk', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-20 12:48:57', '1999-07-20 12:48:57'),
(113, 'Delta', 'Okpe', 'Okuabude', 'Ekwabude Primary Health Centre', 'Youth For Christ', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-21 12:48:57', '1999-07-21 12:48:57'),
(114, 'Delta', 'Okpe', 'Aghalopke', 'Aghalopke Primary Health Centre', 'Youth For Christ', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-22 12:48:57', '1999-07-22 12:48:57'),
(115, 'Delta', 'Okpe', 'Adagbrassa', 'Aragba Okpe Primary Health Centre', 'Youth For Christ', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-23 12:48:57', '1999-07-23 12:48:57'),
(116, 'Delta', 'Okpe', 'Adagbrassa', 'Adagbrassa Primary Health Centre (Okpe)', 'Youth For Christ', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-24 12:48:57', '1999-07-24 12:48:57'),
(117, 'Delta', 'Okpe', 'Evwriyen', 'Evwriyen Primary Health Centre', 'Community Empowerment and Development', 'cedingo@yahoo.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-25 12:48:57', '1999-07-25 12:48:57'),
(118, 'Delta', 'Okpe', 'Evwriyen', 'Amoukpokpo Primary Health Centre', 'Community Empowerment and Development', 'cedingo@yahoo.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-26 12:48:57', '1999-07-26 12:48:57'),
(119, 'Delta', 'Okpe', 'Adeje', 'Adeje Primary Health Centre', 'Community Empowerment and Development', 'cedingo@yahoo.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-27 12:48:57', '1999-07-27 12:48:57'),
(120, 'Delta', 'Okpe', 'Oviri-Okpe', 'Oviri Okpe Primary Health Centre', 'Community Empowerment and Development', 'cedingo@yahoo.com', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-28 12:48:57', '1999-07-28 12:48:57'),
(121, 'Delta', 'Isoko South', 'Aviara', 'Aviara Primary Health Centre', 'Okiero Anthony Okoro Dev.', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-29 12:48:57', '1999-07-29 12:48:57'),
(122, 'Delta', 'Isoko South', 'Aviara', 'Araya Primary Health Centre', 'Okiero Anthony Okoro Dev.', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-30 12:48:57', '1999-07-30 12:48:57'),
(123, 'Delta', 'Isoko South', 'Olomoro', 'Olomoro Primary Health Care', 'Okiero Anthony Okoro Dev.', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-07-31 12:48:57', '1999-07-31 12:48:57'),
(124, 'Delta', 'Isoko South', 'Oleh 1', 'Oleh Primary Health Centre', 'Okiero Anthony Okoro Dev.', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-08-01 12:48:57', '1999-08-01 12:48:57'),
(125, 'Delta', 'Isoko South', 'Emede', 'Emede Primary Health Centre', 'Okiero Anthony Okoro Dev.', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-08-02 12:48:57', '1999-08-02 12:48:57'),
(126, 'Delta', 'Isoko South', 'Irri', 'Orie Primary Health Centre', 'Community Intergrity Initiative', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-08-03 12:48:57', '1999-08-03 12:48:57'),
(127, 'Delta', 'Isoko South', 'Irri', 'Irri Priary Health Care', 'Community Intergrity Initiative', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-08-04 12:48:57', '1999-08-04 12:48:57'),
(128, 'Delta', 'Isoko South', 'Irri', 'Idheze Primary Health Centre', 'Community Intergrity Initiative', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-08-05 12:48:57', '1999-08-05 12:48:57'),
(129, 'Delta', 'Isoko South', 'Uzere', 'Uzere Primary Health Centre', 'Community Intergrity Initiative', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-08-06 12:48:57', '1999-08-06 12:48:57'),
(130, 'Delta', 'Isoko South', 'Uzere', 'Uzere Cottage Hospital', 'Community Intergrity Initiative', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-08-07 12:48:57', '1999-08-07 12:48:57'),
(131, 'Delta', 'Isoko South', 'Uzere', 'Ivrogbo Primary Health Centre', 'Community Intergrity Initiative', '', 'Itua Osasunmhen', 'getudenta@yahoo.com', 'active', '1999-08-08 12:48:57', '1999-08-08 12:48:57'),
(132, 'Gombe', 'Yamaltu/Deba', 'Zambok/K', 'Kwali Health clinic', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-09 12:48:57', '1999-08-09 12:48:57'),
(133, 'Gombe', 'Yamaltu/Deba', 'Zambok/K', 'Zambuk General Hospital', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-10 12:48:57', '1999-08-10 12:48:57'),
(134, 'Gombe', 'Yamaltu/Deba', 'Zambok/K', 'Zambuk PHC', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-11 12:48:57', '1999-08-11 12:48:57'),
(135, 'Gombe', 'Yamaltu/Deba', 'Zambok/K', 'sabon Gari Health Clinic', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-12 12:48:57', '1999-08-12 12:48:57'),
(136, 'Gombe', 'Yamaltu/Deba', 'Nono/k/w', 'Nono S. Kudu PHC', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-13 12:48:57', '1999-08-13 12:48:57'),
(137, 'Gombe', 'Yamaltu/Deba', 'Nono/k/w', 'Boltongo Health Post', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-14 12:48:57', '1999-08-14 12:48:57'),
(138, 'Gombe', 'Yamaltu/Deba', 'Nono/k/w', 'Nono M. Isa Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-15 12:48:57', '1999-08-15 12:48:57'),
(139, 'Gombe', 'Yamaltu/Deba', 'Nono/k/w', 'Kunnuwal Health clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-16 12:48:57', '1999-08-16 12:48:57'),
(140, 'Gombe', 'Yamaltu/Deba', 'Nono/k/w', 'G/baraya Health clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-17 12:48:57', '1999-08-17 12:48:57'),
(141, 'Gombe', 'Yamaltu/Deba', 'Lobo/Difa/Kinafa', 'Garin Malam Baba Health Post', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-18 12:48:57', '1999-08-18 12:48:57'),
(142, 'Gombe', 'Yamaltu/Deba', 'Lobo/Difa/Kinafa', 'Lubo PHC', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-19 12:48:57', '1999-08-19 12:48:57'),
(143, 'Gombe', 'Yamaltu/Deba', 'Lobo/Difa/Kinafa', 'Kinafa Health clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-20 12:48:57', '1999-08-20 12:48:57'),
(144, 'Gombe', 'Yamaltu/Deba', 'Lobo/Difa/Kinafa', 'Difa Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-21 12:48:57', '1999-08-21 12:48:57'),
(145, 'Gombe', 'Yamaltu/Deba', 'Kwandon/Liji/K', 'liji Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-22 12:48:57', '1999-08-22 12:48:57'),
(146, 'Gombe', 'Yamaltu/Deba', 'Kwandon/Liji/K', 'Hammatatu Health Post', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-23 12:48:57', '1999-08-23 12:48:57'),
(147, 'Gombe', 'Yamaltu/Deba', 'Kwandon/Liji/K', 'Kwadon PHC', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-24 12:48:57', '1999-08-24 12:48:57'),
(148, 'Gombe', 'Yamaltu/Deba', 'Kwandon/Liji/K', 'Kurba Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-25 12:48:57', '1999-08-25 12:48:57'),
(149, 'Gombe', 'Yamaltu/Deba', 'Kuri/Lano/Lamban', 'Lano PHC', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-26 12:48:57', '1999-08-26 12:48:57'),
(150, 'Gombe', 'Yamaltu/Deba', 'Kuri/Lano/Lamban', 'Lambam Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-27 12:48:57', '1999-08-27 12:48:57'),
(151, 'Gombe', 'Yamaltu/Deba', 'Kuri/Lano/Lamban', 'Kuri Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-28 12:48:57', '1999-08-28 12:48:57'),
(152, 'Gombe', 'Yamaltu/Deba', 'Kuri/Lano/Lamban', 'Nassarawa Health Post', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-29 12:48:57', '1999-08-29 12:48:57'),
(153, 'Gombe', 'Yamaltu/Deba', 'Kuri/Lano/Lamban', 'Kuri Cottage Hospital', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-30 12:48:57', '1999-08-30 12:48:57'),
(154, 'Gombe', 'Yamaltu/Deba', 'Kuri/Lano/Lamban', 'Nasarawan Dan Kude Health Post', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-08-31 12:48:57', '1999-08-31 12:48:57'),
(155, 'Gombe', 'Yamaltu/Deba', 'Kuri/Lano/Lamban', 'Dumbu Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-01 12:48:57', '1999-09-01 12:48:57'),
(156, 'Gombe', 'Yamaltu/Deba', 'Kanewa/Wajari', 'Wajari Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-02 12:48:57', '1999-09-02 12:48:57'),
(157, 'Gombe', 'Yamaltu/Deba', 'Kanewa/Wajari', 'Zamfarawa Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-03 12:48:57', '1999-09-03 12:48:57'),
(158, 'Gombe', 'Yamaltu/Deba', 'Kanewa/Wajari', 'Jannawo Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-04 12:48:57', '1999-09-04 12:48:57'),
(159, 'Gombe', 'Yamaltu/Deba', 'Kanewa/Wajari', 'Kanawa Health Post', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-05 12:48:57', '1999-09-05 12:48:57'),
(160, 'Gombe', 'Yamaltu/Deba', 'Kanewa/Wajari', 'Kachallari Health Clinic', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-06 12:48:57', '1999-09-06 12:48:57'),
(161, 'Gombe', 'Yamaltu/Deba', 'Kanewa/Wajari', 'Dangar PHC', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-07 12:48:57', '1999-09-07 12:48:57'),
(162, 'Gombe', 'Yamaltu/Deba', 'Jagale South', 'Kurjale PHC', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-08 12:48:57', '1999-09-08 12:48:57'),
(163, 'Gombe', 'Yamaltu/Deba', 'Jagale South', 'Pata Health Clinic', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-09 12:48:57', '1999-09-09 12:48:57'),
(164, 'Gombe', 'Yamaltu/Deba', 'Jagale South', 'Jigawan Iro Health Clinic', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-10 12:48:57', '1999-09-10 12:48:57'),
(165, 'Gombe', 'Yamaltu/Deba', 'Jagale North', 'Maikaho PHC', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-11 12:48:57', '1999-09-11 12:48:57'),
(166, 'Gombe', 'Yamaltu/Deba', 'Jagale North', 'Tsandon Dan Dela Health Post', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-12 12:48:57', '1999-09-12 12:48:57'),
(167, 'Gombe', 'Yamaltu/Deba', 'Jagale North', 'Jauro Musa kadis Health Post', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-13 12:48:57', '1999-09-13 12:48:57'),
(168, 'Gombe', 'Yamaltu/Deba', 'Jagale North', 'Jauro Gootel Health clinic', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-14 12:48:57', '1999-09-14 12:48:57'),
(169, 'Gombe', 'Yamaltu/Deba', 'Jagale North', 'Dasa Health Clinic', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-15 12:48:57', '1999-09-15 12:48:57'),
(170, 'Gombe', 'Yamaltu/Deba', 'Hinna', 'Model Health Center D/Kowa', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-16 12:48:57', '1999-09-16 12:48:57'),
(171, 'Gombe', 'Yamaltu/Deba', 'Hinna', 'Garin Abdullahi Health Post', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-17 12:48:57', '1999-09-17 12:48:57'),
(172, 'Gombe', 'Yamaltu/Deba', 'Hinna', 'Tsando Health post', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-18 12:48:57', '1999-09-18 12:48:57'),
(173, 'Gombe', 'Yamaltu/Deba', 'Hinna', 'Garin Bukar Health Post', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-19 12:48:57', '1999-09-19 12:48:57'),
(174, 'Gombe', 'Yamaltu/Deba', 'Hinna', 'Jangargari Health Clinic', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-20 12:48:57', '1999-09-20 12:48:57'),
(175, 'Gombe', 'Yamaltu/Deba', 'Hinna', 'Hinna  Health Clinic', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-21 12:48:57', '1999-09-21 12:48:57'),
(176, 'Gombe', 'Yamaltu/Deba', 'Hinna', 'Hinna Cottage Hospital', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-22 12:48:57', '1999-09-22 12:48:57'),
(177, 'Gombe', 'Yamaltu/Deba', 'Hinna', 'D/Kowa PHC', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-23 12:48:57', '1999-09-23 12:48:57'),
(178, 'Gombe', 'Yamaltu/Deba', 'Gwani/Shinga/W', 'Wade Maternity', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-24 12:48:57', '1999-09-24 12:48:57'),
(179, 'Gombe', 'Yamaltu/Deba', 'Gwani/Shinga/W', 'Shinga PHC', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-25 12:48:57', '1999-09-25 12:48:57'),
(180, 'Gombe', 'Yamaltu/Deba', 'Gwani/Shinga/W', 'Wade HP', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-26 12:48:57', '1999-09-26 12:48:57'),
(181, 'Gombe', 'Yamaltu/Deba', 'Gwani/Shinga/W', 'Kalo Health Post', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-27 12:48:57', '1999-09-27 12:48:57'),
(182, 'Gombe', 'Yamaltu/Deba', 'Gwani/Shinga/W', 'Kubu Gasi Health Post', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-28 12:48:57', '1999-09-28 12:48:57'),
(183, 'Gombe', 'Yamaltu/Deba', 'Gwani/Shinga/W', 'Gwani east Health Post', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-29 12:48:57', '1999-09-29 12:48:57'),
(184, 'Gombe', 'Yamaltu/Deba', 'Gwani/Shinga/W', 'Gwani West Health clinic', 'Sufabel Community Development Initiative', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-09-30 12:48:57', '1999-09-30 12:48:57'),
(185, 'Gombe', 'Yamaltu/Deba', 'Deba', 'Deba PHC', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-01 12:48:57', '1999-10-01 12:48:57'),
(186, 'Gombe', 'Yamaltu/Deba', 'Deba', 'Saruje Health Post', 'Lawanti Community Development Foundation', 'lawantiidris@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-02 12:48:57', '1999-10-02 12:48:57'),
(187, 'Gombe', 'Kwani', 'Malleri', 'LARO HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-03 12:48:57', '1999-10-03 12:48:57'),
(188, 'Gombe', 'Kwani', 'Malleri', 'TINDA HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-04 12:48:57', '1999-10-04 12:48:57'),
(189, 'Gombe', 'Kwani', 'Malleri', 'PHC MALLERI', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-05 12:48:57', '1999-10-05 12:48:57'),
(190, 'Gombe', 'Kwani', 'Malam Sidi', 'KURUGU HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-06 12:48:57', '1999-10-06 12:48:57'),
(191, 'Gombe', 'Kwani', 'Malam Sidi', 'KIYARI PHC', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-07 12:48:57', '1999-10-07 12:48:57'),
(192, 'Gombe', 'Kwani', 'Malam Sidi', 'COTTAGE MALAM SIDI', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-08 12:48:57', '1999-10-08 12:48:57'),
(193, 'Gombe', 'Kwani', 'Malam Sidi', 'PHC MALAM SIDI', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-09 12:48:57', '1999-10-09 12:48:57'),
(194, 'Gombe', 'Kwani', 'Kwami', 'MADUKELLUMI HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-10 12:48:57', '1999-10-10 12:48:57'),
(195, 'Gombe', 'Kwani', 'Kwami', 'GARKWAMI PHC', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-11 12:48:57', '1999-10-11 12:48:57'),
(196, 'Gombe', 'Kwani', 'Kwami', 'TITI HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-12 12:48:57', '1999-10-12 12:48:57'),
(197, 'Gombe', 'Kwani', 'Kwami', 'PHC KUFAYI', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-13 12:48:57', '1999-10-13 12:48:57'),
(198, 'Gombe', 'Kwani', 'Kwami', 'MPHC KWAMI', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-14 12:48:57', '1999-10-14 12:48:57'),
(199, 'Gombe', 'Kwani', 'Komfulata', 'DANIYA HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-15 12:48:57', '1999-10-15 12:48:57'),
(200, 'Gombe', 'Kwani', 'Komfulata', 'DOKARI HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-16 12:48:57', '1999-10-16 12:48:57'),
(201, 'Gombe', 'Kwani', 'Komfulata', 'DINAWA HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-17 12:48:57', '1999-10-17 12:48:57'),
(202, 'Gombe', 'Kwani', 'Komfulata', 'KOMFULATA HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-18 12:48:57', '1999-10-18 12:48:57'),
(203, 'Gombe', 'Kwani', 'Komfulata', 'BOMALA HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-19 12:48:57', '1999-10-19 12:48:57'),
(204, 'Gombe', 'Kwani', 'Komfulata', 'PHC JAMJI', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-20 12:48:57', '1999-10-20 12:48:57'),
(205, 'Gombe', 'Kwani', 'Komfulata', 'PHC SHONGO', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-21 12:48:57', '1999-10-21 12:48:57'),
(206, 'Gombe', 'Kwani', 'Komfulata', 'PHC ABUJA', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-22 12:48:57', '1999-10-22 12:48:57'),
(207, 'Gombe', 'Kwani', 'Jurara', 'JOURO ISA HEALTH POST', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-23 12:48:57', '1999-10-23 12:48:57'),
(208, 'Gombe', 'Kwani', 'Jurara', 'PHC JURARA', 'Foundation for Youth Awakening and Empowerment', 'foyaegm@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-24 12:48:57', '1999-10-24 12:48:57'),
(209, 'Gombe', 'Kwani', 'Gadam', 'DAWO HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-25 12:48:57', '1999-10-25 12:48:57'),
(210, 'Gombe', 'Kwani', 'Gadam', 'YAME HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-26 12:48:57', '1999-10-26 12:48:57'),
(211, 'Gombe', 'Kwani', 'Gadam', 'PHC TAPPI', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-27 12:48:57', '1999-10-27 12:48:57'),
(212, 'Gombe', 'Kwani', 'Gadam', 'PHC GADAM', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-28 12:48:57', '1999-10-28 12:48:57'),
(213, 'Gombe', 'Kwani', 'Dukkkul', 'ALLUGEL HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-29 12:48:57', '1999-10-29 12:48:57'),
(214, 'Gombe', 'Kwani', 'Dukkkul', 'GAFARA HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-30 12:48:57', '1999-10-30 12:48:57'),
(215, 'Gombe', 'Kwani', 'Dukkkul', 'GWARAM HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-10-31 12:48:57', '1999-10-31 12:48:57'),
(216, 'Gombe', 'Kwani', 'Dukkkul', 'PHC DUKUL', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-01 12:48:57', '1999-11-01 12:48:57'),
(217, 'Gombe', 'Kwani', 'Doho', 'JAURO GADDO HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-02 12:48:57', '1999-11-02 12:48:57'),
(218, 'Gombe', 'Kwani', 'Doho', 'HAMMA DUKKUJO HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-03 12:48:57', '1999-11-03 12:48:57'),
(219, 'Gombe', 'Kwani', 'Doho', 'PHC WURO DOLE', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-04 12:48:57', '1999-11-04 12:48:57'),
(220, 'Gombe', 'Kwani', 'Doho', 'PHC DOHO', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-05 12:48:57', '1999-11-05 12:48:57');
INSERT INTO `health_facilities` (`id`, `State`, `LGA`, `Ward`, `Facility`, `CBO`, `CBO_Email`, `SPO`, `SPO_Email`, `status`, `created_at`, `updated_at`) VALUES
(221, 'Gombe', 'Kwani', 'Daban Fulani', 'SHUGU HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-06 12:48:57', '1999-11-06 12:48:57'),
(222, 'Gombe', 'Kwani', 'Daban Fulani', 'TUMBUSHI HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-07 13:48:57', '1999-11-07 13:48:57'),
(223, 'Gombe', 'Kwani', 'Daban Fulani', 'WURO LULE HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-08 13:48:57', '1999-11-08 13:48:57'),
(224, 'Gombe', 'Kwani', 'Daban Fulani', 'METTAKO HEALTH P0ST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-09 13:48:57', '1999-11-09 13:48:57'),
(225, 'Gombe', 'Kwani', 'Daban Fulani', 'PHC DABANFULANI', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-10 13:48:57', '1999-11-10 13:48:57'),
(226, 'Gombe', 'Kwani', 'Bojude', 'BOJUDE', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-11 13:48:57', '1999-11-11 13:48:57'),
(227, 'Gombe', 'Kwani', 'Bojude', 'BOJUDE PHC', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-12 13:48:57', '1999-11-12 13:48:57'),
(228, 'Gombe', 'Kwani', 'Bojude', 'DIRRI PHC', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-13 13:48:57', '1999-11-13 13:48:57'),
(229, 'Gombe', 'Kwani', 'Bojude', 'JORE HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-14 13:48:57', '1999-11-14 13:48:57'),
(230, 'Gombe', 'Kwani', 'Bojude', 'BELE HEALTH POST', 'Federation of  Muslim Women Association of Nigeria', 'fomwangmesq@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-15 13:48:57', '1999-11-15 13:48:57'),
(231, 'Gombe', 'Gombe', 'Shamaki', 'T/WADA PHCC', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-16 13:48:57', '1999-11-16 13:48:57'),
(232, 'Gombe', 'Gombe', 'Shamaki', 'M/INNA PHC', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-17 13:48:57', '1999-11-17 13:48:57'),
(233, 'Gombe', 'Gombe', 'Shamaki', 'LONDON PHC', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-18 13:48:57', '1999-11-18 13:48:57'),
(234, 'Gombe', 'Gombe', 'Shamaki', 'K/MATA PHC', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-19 13:48:57', '1999-11-19 13:48:57'),
(235, 'Gombe', 'Gombe', 'Shamaki', 'KAGARAWAL PHC', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-20 13:48:57', '1999-11-20 13:48:57'),
(236, 'Gombe', 'Gombe', 'Shamaki', 'JAURO ABARE HP', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-21 13:48:57', '1999-11-21 13:48:57'),
(237, 'Gombe', 'Gombe', 'Shamaki', 'GSU CLINIC', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-22 13:48:57', '1999-11-22 13:48:57'),
(238, 'Gombe', 'Gombe', 'Pantami', 'PANTAMI PHCC', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-23 13:48:57', '1999-11-23 13:48:57'),
(239, 'Gombe', 'Gombe', 'Pantami', 'MANAWACHI H/POST', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-24 13:48:57', '1999-11-24 13:48:57'),
(240, 'Gombe', 'Gombe', 'Pantami', 'GABUKKA PHC', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-25 13:48:57', '1999-11-25 13:48:57'),
(241, 'Gombe', 'Gombe', 'Nassarawo', 'S/GARI H/C', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-26 13:48:57', '1999-11-26 13:48:57'),
(242, 'Gombe', 'Gombe', 'Nassarawo', 'Y/GURUZA', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-27 13:48:57', '1999-11-27 13:48:57'),
(243, 'Gombe', 'Gombe', 'Nassarawo', 'PHCC NASSARAWO', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-28 13:48:57', '1999-11-28 13:48:57'),
(244, 'Gombe', 'Gombe', 'Kumbia Kumbia', 'PHCC KUMBIYA/K', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-29 13:48:57', '1999-11-29 13:48:57'),
(245, 'Gombe', 'Gombe', 'H/Gana', 'H/GANA CLINIC', 'Bakasi Women  Multipurpose', 'hasmaisanda@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-11-30 13:48:57', '1999-11-30 13:48:57'),
(246, 'Gombe', 'Gombe', 'Dawaki', 'GOMBE TBL', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-01 13:48:57', '1999-12-01 13:48:57'),
(247, 'Gombe', 'Gombe', 'Dawaki', 'TOWN MAT.', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-02 13:48:57', '1999-12-02 13:48:57'),
(248, 'Gombe', 'Gombe', 'Bolari East', 'GOMBE GOVET.HOUSE', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-03 13:48:57', '1999-12-03 13:48:57'),
(249, 'Gombe', 'Gombe', 'Bolari East', 'BOLARI MATERNITY', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-04 13:48:57', '1999-12-04 13:48:57'),
(250, 'Gombe', 'Gombe', 'Bolari East', 'PHCC MADAKI', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-05 13:48:57', '1999-12-05 13:48:57'),
(251, 'Gombe', 'Gombe', 'Bolari East', 'PHC FAMILY SUPPORT', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-06 13:48:57', '1999-12-06 13:48:57'),
(252, 'Gombe', 'Gombe', 'Bolari East', '301 AR CLINIC', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-07 13:48:57', '1999-12-07 13:48:57'),
(253, 'Gombe', 'Gombe', 'Bajoga', 'IDI HEALTH POST', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-08 13:48:57', '1999-12-08 13:48:57'),
(254, 'Gombe', 'Gombe', 'Bajoga', 'POLICE CLINIC', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-09 13:48:57', '1999-12-09 13:48:57'),
(255, 'Gombe', 'Gombe', 'Bajoga', 'FEDERALTEACHING HO', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-10 13:48:57', '1999-12-10 13:48:57'),
(256, 'Gombe', 'Gombe', 'Bajoga', 'WOMEN AND CHILDREN', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-11 13:48:57', '1999-12-11 13:48:57'),
(257, 'Gombe', 'Gombe', 'Bajoga', 'NNPC CLINIC/PPMC', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-12 13:48:57', '1999-12-12 13:48:57'),
(258, 'Gombe', 'Gombe', 'Bajoga', 'FCE T CLINIC', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-13 13:48:57', '1999-12-13 13:48:57'),
(259, 'Gombe', 'Gombe', 'Ajiya', 'NIG PRISON SERVICE CLINIC', 'African Health Project', 'africanhealthproject@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-14 13:48:57', '1999-12-14 13:48:57'),
(260, 'Gombe', 'Kaltungo', 'Yiri', 'BAMBAM PHC', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-15 13:48:57', '1999-12-15 13:48:57'),
(261, 'Gombe', 'Kaltungo', 'Yiri', 'YIRI PHC', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-16 13:48:57', '1999-12-16 13:48:57'),
(262, 'Gombe', 'Kaltungo', 'Wange', 'KUNINI', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-17 13:48:57', '1999-12-17 13:48:57'),
(263, 'Gombe', 'Kaltungo', 'Wange', 'COTTAGE HOSP', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-18 13:48:57', '1999-12-18 13:48:57'),
(264, 'Gombe', 'Kaltungo', 'Wange', 'BWELE', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-19 13:48:57', '1999-12-19 13:48:57'),
(265, 'Gombe', 'Kaltungo', 'Wange', 'WANGE', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-20 13:48:57', '1999-12-20 13:48:57'),
(266, 'Gombe', 'Kaltungo', 'Ture', 'BEDBERE', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-21 13:48:57', '1999-12-21 13:48:57'),
(267, 'Gombe', 'Kaltungo', 'Ture', 'TURE KWE', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-22 13:48:57', '1999-12-22 13:48:57'),
(268, 'Gombe', 'Kaltungo', 'Ture', 'TURE OKRA', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-23 13:48:57', '1999-12-23 13:48:57'),
(269, 'Gombe', 'Kaltungo', 'Ture', 'TALAKOROK', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-24 13:48:57', '1999-12-24 13:48:57'),
(270, 'Gombe', 'Kaltungo', 'Ture', 'TURE MAI', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-25 13:48:57', '1999-12-25 13:48:57'),
(271, 'Gombe', 'Kaltungo', 'Ture', 'TURE BALAM', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-26 13:48:57', '1999-12-26 13:48:57'),
(272, 'Gombe', 'Kaltungo', 'Tungo', 'LAKIDIR', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-27 13:48:57', '1999-12-27 13:48:57'),
(273, 'Gombe', 'Kaltungo', 'Tungo', 'LIMDE', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-28 13:48:57', '1999-12-28 13:48:57'),
(274, 'Gombe', 'Kaltungo', 'Kamo', 'JALINGO KAMO', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-29 13:48:57', '1999-12-29 13:48:57'),
(275, 'Gombe', 'Kaltungo', 'Kamo', 'DABEWA', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-30 13:48:57', '1999-12-30 13:48:57'),
(276, 'Gombe', 'Kaltungo', 'Tungo', 'WILLI', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '1999-12-31 13:48:57', '1999-12-31 13:48:57'),
(277, 'Gombe', 'Kaltungo', 'Tungo', 'POKWANGLI', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-01 13:48:57', '2000-01-01 13:48:57'),
(278, 'Gombe', 'Kaltungo', 'Kamo', 'ZANGE', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-02 13:48:57', '2000-01-02 13:48:57'),
(279, 'Gombe', 'Kaltungo', 'Kamo', 'BIRWAI', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-03 13:48:57', '2000-01-03 13:48:57'),
(280, 'Gombe', 'Kaltungo', 'Kamo', 'SHENGE SHENGE', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-04 13:48:57', '2000-01-04 13:48:57'),
(281, 'Gombe', 'Kaltungo', 'Kamo', 'LATARIN', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-05 13:48:57', '2000-01-05 13:48:57'),
(282, 'Gombe', 'Kaltungo', 'Kamo', 'PATUWANA', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-06 13:48:57', '2000-01-06 13:48:57'),
(283, 'Gombe', 'Kaltungo', 'Kamo', 'GUJUBA', 'Knaitingale Women Health Initiativ', '', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-07 13:48:57', '2000-01-07 13:48:57'),
(284, 'Gombe', 'Kaltungo', 'Kaltungo West', 'KALORGU', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-08 13:48:57', '2000-01-08 13:48:57'),
(285, 'Gombe', 'Kaltungo', 'Kaltungo West', 'FADA H/C', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-09 13:48:57', '2000-01-09 13:48:57'),
(286, 'Gombe', 'Kaltungo', 'Kaltungo West', 'SCH.CLINIC', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-10 13:48:57', '2000-01-10 13:48:57'),
(287, 'Gombe', 'Kaltungo', 'Kaltungo East', 'KALUWA', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-11 13:48:57', '2000-01-11 13:48:57'),
(288, 'Gombe', 'Kaltungo', 'Kaltungo East', 'BANDARA', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-12 13:48:57', '2000-01-12 13:48:57'),
(289, 'Gombe', 'Kaltungo', 'Kaltungo East', 'KALARING', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-13 13:48:57', '2000-01-13 13:48:57'),
(290, 'Gombe', 'Kaltungo', 'Kaltungo East', 'PURMAI', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-14 13:48:57', '2000-01-14 13:48:57'),
(291, 'Gombe', 'Kaltungo', 'Kaltungo East', 'LAKWEME', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-15 13:48:57', '2000-01-15 13:48:57'),
(292, 'Gombe', 'Kaltungo', 'Kaltungo East', 'LAYIRO POPANDI', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-16 13:48:57', '2000-01-16 13:48:57'),
(293, 'Gombe', 'Kaltungo', 'Kaltungo East', 'LAYIRO POSHERNG', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-17 13:48:57', '2000-01-17 13:48:57'),
(294, 'Gombe', 'Kaltungo', 'Kaltungo East', 'POPANDI', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-18 13:48:57', '2000-01-18 13:48:57'),
(295, 'Gombe', 'Kaltungo', 'Kaltungo East', 'POSHERNG', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-19 13:48:57', '2000-01-19 13:48:57'),
(296, 'Gombe', 'Kaltungo', 'Kaltungo East', 'KALE', 'Bearing in mind Action to save Life Initiative', 'bearinginmindaction@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-20 13:48:57', '2000-01-20 13:48:57'),
(297, 'Gombe', 'Kaltungo', 'B/Kaltin', 'KWANG', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-21 13:48:57', '2000-01-21 13:48:57'),
(298, 'Gombe', 'Kaltungo', 'B/Kaltin', 'SABON GARI H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-22 13:48:57', '2000-01-22 13:48:57'),
(299, 'Gombe', 'Kaltungo', 'B/Kaltin', 'KALTIN PHC', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-23 13:48:57', '2000-01-23 13:48:57'),
(300, 'Gombe', 'Kaltungo', 'B/Kaltin', 'NAHUTA H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-24 13:48:57', '2000-01-24 13:48:57'),
(301, 'Gombe', 'Kaltungo', 'B/Kaltin', 'BULE H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-25 13:48:57', '2000-01-25 13:48:57'),
(302, 'Gombe', 'Kaltungo', 'B Central', 'JAURO AUDI H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-26 13:48:57', '2000-01-26 13:48:57'),
(303, 'Gombe', 'Kaltungo', 'B Central', 'LUNGURE H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-27 13:48:57', '2000-01-27 13:48:57'),
(304, 'Gombe', 'Kaltungo', 'B Central', 'JALINGO H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-28 13:48:57', '2000-01-28 13:48:57'),
(305, 'Gombe', 'Kaltungo', 'B Central', 'BAULE GARI PHC', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-29 13:48:57', '2000-01-29 13:48:57'),
(306, 'Gombe', 'Kaltungo', 'Awak', 'GARIN BAKO H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-30 13:48:57', '2000-01-30 13:48:57'),
(307, 'Gombe', 'Kaltungo', 'Awak', 'DUNDAYE H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-01-31 13:48:57', '2000-01-31 13:48:57'),
(308, 'Gombe', 'Kaltungo', 'Awak', 'DOGON RUWA H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-01 13:48:57', '2000-02-01 13:48:57'),
(309, 'Gombe', 'Kaltungo', 'Awak', 'SABONLAY PHCI', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-02 13:48:57', '2000-02-02 13:48:57'),
(310, 'Gombe', 'Kaltungo', 'Awak', 'SOBLONG H/C', 'Knaitingale Women Health Initiative', 'kgaleorganisation@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-03 13:48:57', '2000-02-03 13:48:57'),
(311, 'Gombe', 'Dukku', 'Zaune', 'Zange Primary Health Center', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-04 13:48:57', '2000-02-04 13:48:57'),
(312, 'Gombe', 'Dukku', 'Zaune', 'Zangala Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-05 13:48:57', '2000-02-05 13:48:57'),
(313, 'Gombe', 'Dukku', 'Zaune', 'BORKIRU HP', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-06 13:48:57', '2000-02-06 13:48:57'),
(314, 'Gombe', 'Dukku', 'Zaune', 'Zaune Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-07 13:48:57', '2000-02-07 13:48:57'),
(315, 'Gombe', 'Dukku', 'Zaune', 'Zaune Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-08 13:48:57', '2000-02-08 13:48:57'),
(316, 'Gombe', 'Dukku', 'Zaune', 'Dukkuyel Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-09 13:48:57', '2000-02-09 13:48:57'),
(317, 'Gombe', 'Dukku', 'Zaune', 'Dukkuyel Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-10 13:48:57', '2000-02-10 13:48:57'),
(318, 'Gombe', 'Dukku', 'Zange', 'Tumpure Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-11 13:48:57', '2000-02-11 13:48:57'),
(319, 'Gombe', 'Dukku', 'Zange', 'Kuni Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-12 13:48:57', '2000-02-12 13:48:57'),
(320, 'Gombe', 'Dukku', 'Zange', 'Jambo Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-13 13:48:57', '2000-02-13 13:48:57'),
(321, 'Gombe', 'Dukku', 'Zange', 'Garin Ahmadu Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-14 13:48:57', '2000-02-14 13:48:57'),
(322, 'Gombe', 'Dukku', 'Zange', 'Bokkiru Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-15 13:48:57', '2000-02-15 13:48:57'),
(323, 'Gombe', 'Dukku', 'Zange', 'Paligocci Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-16 13:48:57', '2000-02-16 13:48:57'),
(324, 'Gombe', 'Dukku', 'Wuro Tali', 'Wuro Tale Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-17 13:48:57', '2000-02-17 13:48:57'),
(325, 'Gombe', 'Dukku', 'Wuro Tali', 'Wuro Bagga Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-18 13:48:57', '2000-02-18 13:48:57'),
(326, 'Gombe', 'Dukku', 'Wuro Tali', 'Timbu Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-19 13:48:57', '2000-02-19 13:48:57'),
(327, 'Gombe', 'Dukku', 'Wuro Tali', 'Mayo Lamido Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-20 13:48:57', '2000-02-20 13:48:57'),
(328, 'Gombe', 'Dukku', 'Wuro Tali', 'Kalam Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-21 13:48:57', '2000-02-21 13:48:57'),
(329, 'Gombe', 'Dukku', 'Wuro Tali', 'Kabade Health clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-22 13:48:57', '2000-02-22 13:48:57'),
(330, 'Gombe', 'Dukku', 'Wasiri South', 'shabewa health center', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-23 13:48:57', '2000-02-23 13:48:57'),
(331, 'Gombe', 'Dukku', 'Wasiri South', 'Malalayel Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-24 13:48:57', '2000-02-24 13:48:57'),
(332, 'Gombe', 'Dukku', 'Wasiri South', 'Kombi - Gabalu Health Clinic', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-25 13:48:57', '2000-02-25 13:48:57'),
(333, 'Gombe', 'Dukku', 'Wasiri South', 'Jonde Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-26 13:48:57', '2000-02-26 13:48:57'),
(334, 'Gombe', 'Dukku', 'Wasiri South', 'Dashi Health Clinic', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-27 13:48:57', '2000-02-27 13:48:57'),
(335, 'Gombe', 'Dukku', 'Wasiri South', 'Bozomshulwa Prmary Health Center', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-28 13:48:57', '2000-02-28 13:48:57'),
(336, 'Gombe', 'Dukku', 'Wasiri South', 'Banigayi Health Clinic', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-02-29 13:48:57', '2000-02-29 13:48:57'),
(337, 'Gombe', 'Dukku', 'Waziri North', 'Suka health clinic', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-01 13:48:57', '2000-03-01 13:48:57'),
(338, 'Gombe', 'Dukku', 'Waziri North', 'Jarkun Health Clinic', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-02 13:48:57', '2000-03-02 13:48:57'),
(339, 'Gombe', 'Dukku', 'Waziri North', 'Goringo Health Clinic', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-03 13:48:57', '2000-03-03 13:48:57'),
(340, 'Gombe', 'Dukku', 'Waziri North', 'Gode Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-04 13:48:57', '2000-03-04 13:48:57'),
(341, 'Gombe', 'Dukku', 'Waziri North', 'Dukku Town Maternity Clinic', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-05 13:48:57', '2000-03-05 13:48:57'),
(342, 'Gombe', 'Dukku', 'Waziri North', 'Dukku Primary Health Centre', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-06 13:48:57', '2000-03-06 13:48:57'),
(343, 'Gombe', 'Dukku', 'Malbala', 'Malala NYSC Clinic', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-07 13:48:57', '2000-03-07 13:48:57'),
(344, 'Gombe', 'Dukku', 'Malbala', 'Kowagol Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-08 13:48:57', '2000-03-08 13:48:57'),
(345, 'Gombe', 'Dukku', 'Malbala', 'Ganawaji Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-09 13:48:57', '2000-03-09 13:48:57'),
(346, 'Gombe', 'Dukku', 'Malbala', 'Duggiri Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-10 13:48:57', '2000-03-10 13:48:57'),
(347, 'Gombe', 'Dukku', 'Malbala', 'Burari Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-11 13:48:57', '2000-03-11 13:48:57'),
(348, 'Gombe', 'Dukku', 'Lafia Tali', 'Tale Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-12 12:48:57', '2000-03-12 12:48:57'),
(349, 'Gombe', 'Dukku', 'Lafia Tali', 'Jalingo Community Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-13 12:48:57', '2000-03-13 12:48:57'),
(350, 'Gombe', 'Dukku', 'Lafia Tali', 'Lafiya Tale Health Post', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-14 12:48:57', '2000-03-14 12:48:57'),
(351, 'Gombe', 'Dukku', 'Lafia Tali', 'Lafiya Tale Health Clinic', 'Gombe Aglican Diocesan development Initiative', 'Grddio5@gmail.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-15 12:48:57', '2000-03-15 12:48:57'),
(352, 'Gombe', 'Dukku', 'Jamare', 'Maru Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-16 12:48:57', '2000-03-16 12:48:57'),
(353, 'Gombe', 'Dukku', 'Jamare', 'Kukadi Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-17 12:48:57', '2000-03-17 12:48:57'),
(354, 'Gombe', 'Dukku', 'Jamare', 'kaloma Health center', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-18 12:48:57', '2000-03-18 12:48:57'),
(355, 'Gombe', 'Dukku', 'Jamare', 'Jamari Model PHC', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-19 12:48:57', '2000-03-19 12:48:57'),
(356, 'Gombe', 'Dukku', 'Jamare', 'Garin Bulama Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-20 12:48:57', '2000-03-20 12:48:57'),
(357, 'Gombe', 'Dukku', 'Jamare', 'Gadum Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-21 12:48:57', '2000-03-21 12:48:57'),
(358, 'Gombe', 'Dukku', 'Jamare', 'Dokoro Primary Health Center', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-22 12:48:57', '2000-03-22 12:48:57'),
(359, 'Gombe', 'Dukku', 'Hashidu', 'Hashidu Primary Health Centre', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-23 12:48:57', '2000-03-23 12:48:57'),
(360, 'Gombe', 'Dukku', 'Gombe Abba', 'Yole Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-24 12:48:57', '2000-03-24 12:48:57'),
(361, 'Gombe', 'Dukku', 'Gombe Abba', 'Walama Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-25 12:48:57', '2000-03-25 12:48:57'),
(362, 'Gombe', 'Dukku', 'Gombe Abba', 'Lule/Zego Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-26 12:48:57', '2000-03-26 12:48:57'),
(363, 'Gombe', 'Dukku', 'Gombe Abba', 'Gombe - Abba Health Clinic', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-27 12:48:57', '2000-03-27 12:48:57'),
(364, 'Gombe', 'Dukku', 'Gombe Abba', 'Gale Health Post', 'Centre for Community Health and Development Initiative', 'chadintlnigreia@yahoo.com', 'Samuel Chuwang Nyam', 'chwngsamuel@gmail.com', 'active', '2000-03-28 12:48:57', '2000-03-28 12:48:57'),
(365, 'Jigawa', 'Gagarawa', 'Medu', 'Medu Primary Health Clinic', 'Baba Azimim Foundation', 'babaazimifoundation@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-03-29 12:48:57', '2000-03-29 12:48:57'),
(366, 'Jigawa', 'Gagarawa', 'Gagarawa Gari', 'Gagarawa Gari Health Post', 'Baba Azimim Foundation', 'babaazimifoundation@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-03-30 12:48:57', '2000-03-30 12:48:57'),
(367, 'Jigawa', 'Gagarawa', 'Gagarawatasha', 'Gagarawa Tasha Health Clinic', 'Baba Azimim Foundation', 'babaazimifoundation@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-03-31 12:48:57', '2000-03-31 12:48:57'),
(368, 'Jigawa', 'Jahun', 'Gauza', 'Laute BHC', 'Centre for Health and Development Africa', 'chedajahun@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-01 12:48:57', '2000-04-01 12:48:57'),
(369, 'Jigawa', 'Jahun', 'Harbo Sabuwa', 'Atuman Primary Health Clinic', 'Centre for Health and Development Africa', 'chedajahun@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-02 12:48:57', '2000-04-02 12:48:57'),
(370, 'Jigawa', 'Jahun', 'Harbo Sabuwa', 'Harbo Primary Health Clini', 'Centre for Health and Development Africa', 'chedajahun@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-03 12:48:57', '2000-04-03 12:48:57'),
(371, 'Jigawa', 'Hadeija', 'Matsaro', 'Gawuna Primary Health Centre', 'Drug Abuse Control Initiative', 'dacijg@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-04 12:48:57', '2000-04-04 12:48:57'),
(372, 'Jigawa', 'Hadeija', 'Matsaro', 'Police Clinic', 'Drug Abuse Control Initiative', 'dacijg@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-05 12:48:57', '2000-04-05 12:48:57'),
(373, 'Jigawa', 'Hadeija', 'Yayari', 'Dala Health Post', 'Drug Abuse Control Initiative', 'dacijg@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-06 12:48:57', '2000-04-06 12:48:57'),
(374, 'Jigawa', 'Jahun', 'Jahun', 'Jahun Urban Maternity Clinic', 'Gwaram Community Health and Development Initiative', 'Cohdi4development@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-07 12:48:57', '2000-04-07 12:48:57'),
(375, 'Jigawa', 'Jahun', 'Aujara', 'Aujara Primary  Health Centre', 'Gwaram Community Health and Development Initiative', 'Cohdi4development@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-08 12:48:57', '2000-04-08 12:48:57'),
(376, 'Jigawa', 'Jahun', 'Aujara', 'Zangon Danbarama Primary Health Clinic', 'Gwaram Community Health and Development Initiative', 'Cohdi4development@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-09 12:48:57', '2000-04-09 12:48:57'),
(377, 'Jigawa', 'Jahun', 'Aujara', 'Gabari Health Post', 'Gwaram Community Health and Development Initiative', 'Cohdi4development@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-10 12:48:57', '2000-04-10 12:48:57'),
(378, 'Jigawa', 'Kaugama', 'Unguwar Jibrin', '1.Unguwar Jibrin Health Post', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-11 12:48:57', '2000-04-11 12:48:57'),
(379, 'Jigawa', 'Kaugama', 'Ja\'Ã«', 'Maina Bindi Health Post', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-12 12:48:57', '2000-04-12 12:48:57'),
(380, 'Jigawa', 'Kaugama', 'Ja\'Ã«', 'Zaburan BHC', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-13 12:48:57', '2000-04-13 12:48:57'),
(381, 'Jigawa', 'Kaugama', 'Arbus', 'Arbus primary health clinic', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-14 12:48:57', '2000-04-14 12:48:57'),
(382, 'Jigawa', 'Kaugama', 'Arbus', 'Kantamari Health Post', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-15 12:48:57', '2000-04-15 12:48:57'),
(383, 'Jigawa', 'Kaugama', 'Arbus', 'DODORI MALAM ABDU PHC', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-16 12:48:57', '2000-04-16 12:48:57'),
(384, 'Jigawa', 'Kaugama', 'Dabuwaran', 'Dabuwaran Health Post', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-17 12:48:57', '2000-04-17 12:48:57'),
(385, 'Jigawa', 'Kaugama', 'Dabuwaran', 'Garin Bagudu Health Post', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-18 12:48:57', '2000-04-18 12:48:57'),
(386, 'Jigawa', 'Kaugama', 'Hadin', 'Hadin Health Post', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-19 12:48:57', '2000-04-19 12:48:57'),
(387, 'Jigawa', 'Kaugama', 'Ja\'Ã«', 'Je\'a Health Post', 'Initiative for Livelihood Enhancement ( ILE)', 'ileeverywhere@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-20 12:48:57', '2000-04-20 12:48:57'),
(388, 'Jigawa', 'Gumel', 'Galagamba', 'Daurawa Primary Health Clinic', 'Lautai Youth Association', 'lautaiyouthass@yahoo.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-21 12:48:57', '2000-04-21 12:48:57'),
(389, 'Jigawa', 'Gumel', 'Zango', 'Zango Primary Health Clinic', 'Lautai Youth Association', 'lautaiyouthass@yahoo.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-22 12:48:57', '2000-04-22 12:48:57'),
(390, 'Jigawa', 'Gagarawa', 'Garin Chiroma', 'Garin Chiroma Primary Health Clinic', 'Partnership for Development Action Foundation', 'padacfoundation@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-23 12:48:57', '2000-04-23 12:48:57'),
(391, 'Jigawa', 'Gagarawa', 'Garin Chiroma', 'Gayawa Health Post', 'Partnership for Development Action Foundation', 'padacfoundation@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-24 12:48:57', '2000-04-24 12:48:57'),
(392, 'Jigawa', 'Kaugama', 'Dakayyawa', 'Nuhu Alfa PHC  (Dakaiyawa)', 'Public Health Awareness Group', 'healthawarenesspublic@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-25 12:48:57', '2000-04-25 12:48:57'),
(393, 'Jigawa', 'Kaugama', 'Yalo', 'Yalo Dispensary', 'Public Health Awareness Group', 'healthawarenesspublic@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-26 12:48:57', '2000-04-26 12:48:57'),
(394, 'Jigawa', 'Kaugama', 'Marke', 'Marke Primary Health Centre', 'Public Health Awareness Group', 'healthawarenesspublic@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-27 12:48:57', '2000-04-27 12:48:57'),
(395, 'Jigawa', 'Kaugama', 'Kaugama', 'Kaugama Primary Health Centre', 'Public Health Awareness Group', 'healthawarenesspublic@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-28 12:48:57', '2000-04-28 12:48:57'),
(396, 'Jigawa', 'Kaugama', 'Kaugama', 'Turmi Health Post', 'Public Health Awareness Group', 'healthawarenesspublic@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-29 12:48:57', '2000-04-29 12:48:57'),
(397, 'Jigawa', 'Kaugama', 'Askandu', 'Adimin Gasau Health Post', 'Public Health Awareness Group', 'healthawarenesspublic@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-04-30 12:48:57', '2000-04-30 12:48:57'),
(398, 'Jigawa', 'Kaugama', 'Askandu', 'Ubba Health Post', 'Public Health Awareness Group', 'healthawarenesspublic@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-01 12:48:57', '2000-05-01 12:48:57'),
(399, 'Jigawa', 'Kaugama', 'Girbobo', 'Girbobo Primary Health Clinic', 'Public Health Awareness Group', 'healthawarenesspublic@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-02 12:48:57', '2000-05-02 12:48:57'),
(400, 'Jigawa', 'Kaugama', 'Girbobo', 'Bultuwa Primary Health Clinic', 'Public Health Awareness Group', 'healthawarenesspublic@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-03 12:48:57', '2000-05-03 12:48:57'),
(401, 'Jigawa', 'Gumel', 'Dantanoma', 'MayankaBasic  Health Clinic', 'Rural Initiative for Comprehensive Development', 'ricoddutse@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-04 12:48:57', '2000-05-04 12:48:57'),
(402, 'Jigawa', 'Gumel', 'Dantanoma', 'Lautai Secondary School clinic', 'Rural Initiative for Comprehensive Development', 'ricoddutse@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-05 12:48:57', '2000-05-05 12:48:57'),
(403, 'Jigawa', 'Gumel', 'Dantanoma', 'College of Education Clinic', 'Rural Initiative for Comprehensive Development', 'ricoddutse@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-06 12:48:57', '2000-05-06 12:48:57'),
(404, 'Jigawa', 'Hadeija', 'Sabon Garu', 'Gabari Primary Health Centre', 'Society for Community Health Awareness and Mobilization (SOCHAM)', 'Socham2016@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-07 12:48:57', '2000-05-07 12:48:57'),
(405, 'Jigawa', 'Hadeija', 'Yankoli', 'Aguyaka Gudichin Primary Health Clinic', 'Society for Community Health Awareness and Mobilization (SOCHAM)', 'Socham2016@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-08 12:48:57', '2000-05-08 12:48:57'),
(406, 'Jigawa', 'Hadeija', 'Yankoli', 'Fantai Primary Health Clinic', 'Society for Community Health Awareness and Mobilization (SOCHAM)', 'Socham2016@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-09 12:48:57', '2000-05-09 12:48:57'),
(407, 'Jigawa', 'Hadeija', 'Dubantu', 'Agumo Primary Health Centre', 'Society for Community Health Awareness and Mobilization (SOCHAM)', 'Socham2016@gmail.com', 'Auwal Ibrahim', 'awall5566@gmail.com', 'active', '2000-05-10 12:48:57', '2000-05-10 12:48:57'),
(408, 'Kaduna', 'Kajuru', 'Kufana', 'H/C  Janwuriya Health Centre', 'Bako Youth Development Foundation', 'greateryouths@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-11 12:48:57', '2000-05-11 12:48:57'),
(409, 'Kaduna', 'Kajuru', 'Kufana', 'H/C  Buda Health Clinic', 'Bako Youth Development Foundation', 'greateryouths@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-12 12:48:57', '2000-05-12 12:48:57'),
(410, 'Kaduna', 'Kajuru', 'Kallah', 'H/C Sabon Gari Kufana', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-13 12:48:57', '2000-05-13 12:48:57'),
(411, 'Kaduna', 'Kajuru', 'Kallah', 'H/C Rubu', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-14 12:48:57', '2000-05-14 12:48:57'),
(412, 'Kaduna', 'Kajuru', 'Kallah', 'H/C Rafin Kunu', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-15 12:48:57', '2000-05-15 12:48:57'),
(413, 'Kaduna', 'Kajuru', 'Kallah', 'Mararaban Kajuru Maternal and Child Health Clinic', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-16 12:48:57', '2000-05-16 12:48:57'),
(414, 'Kaduna', 'Kajuru', 'Kallah', 'Kufana Maternal and Child Health Clinic', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-17 12:48:57', '2000-05-17 12:48:57'),
(415, 'Kaduna', 'Kajuru', 'Kallah', 'H/C Rotary iyaya', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-18 12:48:57', '2000-05-18 12:48:57'),
(416, 'Kaduna', 'Kajuru', 'Kajuru', '.H/C Libere', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-19 12:48:57', '2000-05-19 12:48:57'),
(417, 'Kaduna', 'Kajuru', 'Kajuru', 'PHC  Kallah', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-20 12:48:57', '2000-05-20 12:48:57'),
(418, 'Kaduna', 'Kajuru', 'Kajuru', 'H/C Idu', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-21 12:48:57', '2000-05-21 12:48:57'),
(419, 'Kaduna', 'Kajuru', 'Kajuru', 'H/C Gefe', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-22 12:48:57', '2000-05-22 12:48:57'),
(420, 'Kaduna', 'Kajuru', 'Kasuwa Magani', 'H/C Kyamara', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-23 12:48:57', '2000-05-23 12:48:57'),
(421, 'Kaduna', 'Kajuru', 'Kasuwa Magani', 'PHC  Kajuru', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-24 12:48:57', '2000-05-24 12:48:57'),
(422, 'Kaduna', 'Kajuru', 'Kasuwa Magani', 'H/C  Kajuru Government Technical College', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-25 12:48:57', '2000-05-25 12:48:57'),
(423, 'Kaduna', 'Kajuru', 'Kasuwa Magani', 'C/H Gyengere Health Clinic', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-26 12:48:57', '2000-05-26 12:48:57'),
(424, 'Kaduna', 'Kajuru', 'Kasuwa Magani', 'Rotary Iyaya Health Clinic', 'Nigeria Red Cross Society Kaduna', 'Kaduna.Kaduna@redcrossnigeria.org', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-27 12:48:57', '2000-05-27 12:48:57'),
(425, 'Kaduna', 'Kajuru', 'Rimau', 'H/C  Rimau', 'Bako Youth Development Foundation', 'greateryouths@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-28 12:48:57', '2000-05-28 12:48:57'),
(426, 'Kaduna', 'Kajuru', 'Rimau', 'PHC  Kasuwan Magani Health Clinic', 'Bako Youth Development Foundation', 'greateryouths@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-29 12:48:57', '2000-05-29 12:48:57'),
(427, 'Kaduna', 'Kajuru', 'Rimau', 'H/C Dutsen Gaiya Health Clinic', 'Bako Youth Development Foundation', 'greateryouths@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-30 12:48:57', '2000-05-30 12:48:57'),
(428, 'Kaduna', 'Kachia', 'Gumel', 'General Hosipital Gumel', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-05-31 12:48:57', '2000-05-31 12:48:57'),
(429, 'Kaduna', 'Kachia', 'Gumel', 'HC GUMEL', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-01 12:48:57', '2000-06-01 12:48:57'),
(430, 'Kaduna', 'Kachia', 'Gumel', 'HC KURMIN BABA', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-02 12:48:57', '2000-06-02 12:48:57'),
(431, 'Kaduna', 'Kachia', 'Gumel', 'PHC KURMIN MAZUGA', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-03 12:48:57', '2000-06-03 12:48:57'),
(432, 'Kaduna', 'Kachia', 'Agunu', 'HC SAKWAI', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-04 12:48:57', '2000-06-04 12:48:57'),
(433, 'Kaduna', 'Kachia', 'Agunu', 'Health Centre Yarbung', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-05 12:48:57', '2000-06-05 12:48:57'),
(434, 'Kaduna', 'Kachia', 'Agunu', 'Health Centre Modothier', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-06 12:48:57', '2000-06-06 12:48:57'),
(435, 'Kaduna', 'Kachia', 'Agunu', 'Health Centre Jinkai', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-07 12:48:57', '2000-06-07 12:48:57');
INSERT INTO `health_facilities` (`id`, `State`, `LGA`, `Ward`, `Facility`, `CBO`, `CBO_Email`, `SPO`, `SPO_Email`, `status`, `created_at`, `updated_at`) VALUES
(436, 'Kaduna', 'Kachia', 'Agunu', 'Health Centre Gora', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-08 12:48:57', '2000-06-08 12:48:57'),
(437, 'Kaduna', 'Kachia', 'Agunu', 'Health Centre Gidan Kaura', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-09 12:48:57', '2000-06-09 12:48:57'),
(438, 'Kaduna', 'Kachia', 'Agunu', 'Health Centre Abron', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-10 12:48:57', '2000-06-10 12:48:57'),
(439, 'Kaduna', 'Kachia', 'Agunu', 'HC KUTURAN RIMI', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-11 12:48:57', '2000-06-11 12:48:57'),
(440, 'Kaduna', 'Kachia', 'Agunu', 'HC GADANAJI', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-12 12:48:57', '2000-06-12 12:48:57'),
(441, 'Kaduna', 'Kachia', 'Agunu', 'HC CROSSING', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-13 12:48:57', '2000-06-13 12:48:57'),
(442, 'Kaduna', 'Kachia', 'Agunu', 'PHC AGUNU DUTSE', 'Women of  Vision Development Initiative', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-14 12:48:57', '2000-06-14 12:48:57'),
(443, 'Kaduna', 'Kachia', 'Awon', 'PHC AWON', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-15 12:48:57', '2000-06-15 12:48:57'),
(444, 'Kaduna', 'Kachia', 'Awon', 'HC AKWANDO', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-16 12:48:57', '2000-06-16 12:48:57'),
(445, 'Kaduna', 'Kachia', 'Awon', 'HC ARIKO', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-17 12:48:57', '2000-06-17 12:48:57'),
(446, 'Kaduna', 'Kachia', 'Awon', 'HC BARGA', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-18 12:48:57', '2000-06-18 12:48:57'),
(447, 'Kaduna', 'Kachia', 'Awon', 'HC IMPI KADARA', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-19 12:48:57', '2000-06-19 12:48:57'),
(448, 'Kaduna', 'Kachia', 'Awon', 'HC KATON KASA', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-20 12:48:57', '2000-06-20 12:48:57'),
(449, 'Kaduna', 'Kachia', 'Awon', 'HC GORA', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-21 12:48:57', '2000-06-21 12:48:57'),
(450, 'Kaduna', 'Kachia', 'Awon', 'HC KIGWALI', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-22 12:48:57', '2000-06-22 12:48:57'),
(451, 'Kaduna', 'Kachia', 'Awon', 'HC KINTARO', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-23 12:48:57', '2000-06-23 12:48:57'),
(452, 'Kaduna', 'Kachia', 'Awon', 'HC KORON TSOHO', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-24 12:48:57', '2000-06-24 12:48:57'),
(453, 'Kaduna', 'Kachia', 'Awon', 'HC TSAKIYA', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-25 12:48:57', '2000-06-25 12:48:57'),
(454, 'Kaduna', 'Kachia', 'Kwaturu', 'PHC  TSAUNI', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-26 12:48:57', '2000-06-26 12:48:57'),
(455, 'Kaduna', 'Kachia', 'Kwaturu', 'HC KWATURU', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-27 12:48:57', '2000-06-27 12:48:57'),
(456, 'Kaduna', 'Kachia', 'Kachia', 'PHC KACHIA', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-28 12:48:57', '2000-06-28 12:48:57'),
(457, 'Kaduna', 'Kachia', 'Kachia', 'HC UNGWAN MISSION', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-29 12:48:57', '2000-06-29 12:48:57'),
(458, 'Kaduna', 'Kachia', 'Ankwan', 'H/C Ekuzeh', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-06-30 12:48:57', '2000-06-30 12:48:57'),
(459, 'Kaduna', 'Kachia', 'Ankwan', 'H/C  Issabe', 'HIV/AIDs Positive Widows and Orpahns', 'hapwoikagoro@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-01 12:48:57', '2000-07-01 12:48:57'),
(460, 'Kaduna', 'Makarfi', 'Dan Guziri', 'HC TASHAN YARI', 'Child Protection and Survival Foundation', 'Protectionsurvival@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-02 12:48:57', '2000-07-02 12:48:57'),
(461, 'Kaduna', 'Makarfi', 'Dan Guziri', 'HC TASHAN TSAMIYA', 'Child Protection and Survival Foundation', 'Protectionsurvival@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-03 12:48:57', '2000-07-03 12:48:57'),
(462, 'Kaduna', 'Makarfi', 'Dan Guziri', 'HC RUMA', 'Child Protection and Survival Foundation', 'Protectionsurvival@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-04 12:48:57', '2000-07-04 12:48:57'),
(463, 'Kaduna', 'Makarfi', 'Dan Guziri', 'PHC DANGUZURI', 'Child Protection and Survival Foundation', 'Protectionsurvival@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-05 12:48:57', '2000-07-05 12:48:57'),
(464, 'Kaduna', 'Makarfi', 'Dan Guziri', 'HC DAN-AYAMAKA', 'Child Protection and Survival Foundation', 'Protectionsurvival@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-06 12:48:57', '2000-07-06 12:48:57'),
(465, 'Kaduna', 'Makarfi', 'Dan Guziri', 'HC BARGI', 'Child Protection and Survival Foundation', 'Protectionsurvival@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-07 12:48:57', '2000-07-07 12:48:57'),
(466, 'Kaduna', 'Makarfi', 'Mayere', 'PHC MAYERE', 'Rural Mother and Gender Care Initiative', 'Mothercareforum1@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-08 12:48:57', '2000-07-08 12:48:57'),
(467, 'Kaduna', 'Makarfi', 'Mayere', 'HC KURUNTUMAWA', 'Rural Mother and Gender Care Initiative', 'Mothercareforum1@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-09 12:48:57', '2000-07-09 12:48:57'),
(468, 'Kaduna', 'Makarfi', 'Mayere', 'HC DURUM', 'Rural Mother and Gender Care Initiative', 'Mothercareforum1@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-10 12:48:57', '2000-07-10 12:48:57'),
(469, 'Kaduna', 'Makarfi', 'Mayere', 'HC DANKWAIRE', 'Rural Mother and Gender Care Initiative', 'Mothercareforum1@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-11 12:48:57', '2000-07-11 12:48:57'),
(470, 'Kaduna', 'Makarfi', 'Mayere', 'HC ANGUWAN KOLO', 'Rural Mother and Gender Care Initiative', 'Mothercareforum1@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-12 12:48:57', '2000-07-12 12:48:57'),
(471, 'Kaduna', 'Makarfi', 'Tudun Wada', 'General Hosipital Makarfi', 'Rural Mother and Gender Care Initiative', 'Mothercareforum1@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-13 12:48:57', '2000-07-13 12:48:57'),
(472, 'Kaduna', 'Makarfi', 'Tudun Wada', 'PHC KASUWAN- MATA', 'Rural Mother and Gender Care Initiative', 'Mothercareforum1@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-14 12:48:57', '2000-07-14 12:48:57'),
(473, 'Kaduna', 'Makarfi', 'Tudun Wada', 'HC DADIN KOWA', 'Rural Mother and Gender Care Initiative', 'Mothercareforum1@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-15 12:48:57', '2000-07-15 12:48:57'),
(474, 'Kaduna', 'Makarfi', 'Makarfi', 'PHC MAKARFI', 'Child Protection and Survival Foundation', 'Protectionsurvival@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-16 12:48:57', '2000-07-16 12:48:57'),
(475, 'Kaduna', 'Makarfi', 'Makarfi', 'HC ANGUWAN GERI', 'Child Protection and Survival Foundation', 'Protectionsurvival@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-17 12:48:57', '2000-07-17 12:48:57'),
(476, 'Kaduna', 'Chikun', 'Rido', 'Danhonu Health Clinic', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-18 12:48:57', '2000-07-18 12:48:57'),
(477, 'Kaduna', 'Chikun', 'Rido', 'Clinic  Danbushiya Health Centre', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-19 12:48:57', '2000-07-19 12:48:57'),
(478, 'Kaduna', 'Chikun', 'Rido', 'Babban Saura Health Clinic', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-20 12:48:57', '2000-07-20 12:48:57'),
(479, 'Kaduna', 'Chikun', 'Rido', 'Rido Health Clinic', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-21 12:48:57', '2000-07-21 12:48:57'),
(480, 'Kaduna', 'Chikun', 'Rido', 'Kamazo Health Centre', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-22 12:48:57', '2000-07-22 12:48:57'),
(481, 'Kaduna', 'Chikun', 'Rido', 'Mararraban Rido Health Clinic', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-23 12:48:57', '2000-07-23 12:48:57'),
(482, 'Kaduna', 'Chikun', 'Rido', 'Bagado Health', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-24 12:48:57', '2000-07-24 12:48:57'),
(483, 'Kaduna', 'Chikun', 'Sabon Gari', 'Unguwan Boro Health Clinic', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-25 12:48:57', '2000-07-25 12:48:57'),
(484, 'Kaduna', 'Chikun', 'Sabon Gari', 'Sabon Tasha General Hospital', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-26 12:48:57', '2000-07-26 12:48:57'),
(485, 'Kaduna', 'Chikun', 'Sabon Gari', 'Sabon Tasha Health Clinic', 'Carelink Resource Foundation', 'Carelink.f@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-27 12:48:57', '2000-07-27 12:48:57'),
(486, 'Kaduna', 'Zaria', 'Angwa Juma', 'H/C KOFAR KUYAN BANA', 'Initiative for integrated Grassroots Empowerment and Support', 'm.jamare@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-28 12:48:57', '2000-07-28 12:48:57'),
(487, 'Kaduna', 'Zaria', 'Angwa Juma', 'H/C ALFADARAI', 'Initiative for integrated Grassroots Empowerment and Support', 'm.jamare@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-29 12:48:57', '2000-07-29 12:48:57'),
(488, 'Kaduna', 'Zaria', 'Angwa Juma', 'H/C DURUMI', 'Initiative for integrated Grassroots Empowerment and Support', 'm.jamare@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-30 12:48:57', '2000-07-30 12:48:57'),
(489, 'Kaduna', 'Zaria', 'Angwa Juma', 'PHC DANJINJIRI', 'Initiative for integrated Grassroots Empowerment and Support', 'm.jamare@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-07-31 12:48:57', '2000-07-31 12:48:57'),
(490, 'Kaduna', 'Zaria', 'Kwarbai A', 'H/C AMARU', 'Initiative for integrated Grassroots Empowerment and Support', 'm.jamare@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-01 12:48:57', '2000-08-01 12:48:57'),
(491, 'Kaduna', 'Zaria', 'Kwarbai A', 'PHC IYAL KWARBAI', 'Initiative for integrated Grassroots Empowerment and Support', 'm.jamare@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-02 12:48:57', '2000-08-02 12:48:57'),
(492, 'Kaduna', 'Zaria', 'Kwarbai A', 'ICH BANZAZZAU', 'Initiative for integrated Grassroots Empowerment and Support', 'm.jamare@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-03 12:48:57', '2000-08-03 12:48:57'),
(493, 'Kaduna', 'Zaria', 'Kwarbai A', 'H/C KOFAR GALADIMA', 'Initiative for integrated Grassroots Empowerment and Support', 'm.jamare@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-04 12:48:57', '2000-08-04 12:48:57'),
(494, 'Kaduna', 'Zaria', 'Kwarbai A', 'H/C MAGAJIYA', 'Initiative for integrated Grassroots Empowerment and Support', 'm.jamare@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-05 12:48:57', '2000-08-05 12:48:57'),
(495, 'Kaduna', 'Chikun', 'Yelwa', 'Health Clinic Unguwan Boro', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-06 12:48:57', '2000-08-06 12:48:57'),
(496, 'Kaduna', 'Chikun', 'Yelwa', 'Health Clinic Kashebo', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-07 12:48:57', '2000-08-07 12:48:57'),
(497, 'Kaduna', 'Zaria', 'Kwarbai B', 'H/C ANGUWAN LIMAN', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-08 12:48:57', '2000-08-08 12:48:57'),
(498, 'Kaduna', 'Zaria', 'Kwarbai B', 'PHC ANGUWAN ALKALI', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-09 12:48:57', '2000-08-09 12:48:57'),
(499, 'Kaduna', 'Zaria', 'Kwarbai B', 'H/C KAKAKI', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-10 12:48:57', '2000-08-10 12:48:57'),
(500, 'Kaduna', 'Zaria', 'Angwa Fatika', 'PHC UNGUWAN FATIKA', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-11 12:48:57', '2000-08-11 12:48:57'),
(501, 'Kaduna', 'Zaria', 'Angwa Fatika', 'H/C KOFAR KIBO', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-12 12:48:57', '2000-08-12 12:48:57'),
(502, 'Kaduna', 'Zaria', 'Umanci Kona', 'H/C JAKARA', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-13 12:48:57', '2000-08-13 12:48:57'),
(503, 'Kaduna', 'Zaria', 'Umanci Kona', 'H/C SALMANDUNA', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-14 12:48:57', '2000-08-14 12:48:57'),
(504, 'Kaduna', 'Zaria', 'Umanci Kona', 'PHC BUBBAN DODO', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-15 12:48:57', '2000-08-15 12:48:57'),
(505, 'Kaduna', 'Chikun', 'Yelwa', 'Yelwa Health Clinic', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-16 12:48:57', '2000-08-16 12:48:57'),
(506, 'Kaduna', 'Chikun', 'Yelwa', 'Romi Health Clinic', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-17 12:48:57', '2000-08-17 12:48:57'),
(507, 'Kaduna', 'Chikun', 'Naraji', 'TBL Health Centre', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-18 12:48:57', '2000-08-18 12:48:57'),
(508, 'Kaduna', 'Chikun', 'Naraji', 'Narayi Health Clinic', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-19 12:48:57', '2000-08-19 12:48:57'),
(509, 'Kaduna', 'Chikun', 'Nasarawa', 'Nassarawa Health Clinic (Chikun)', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-20 12:48:57', '2000-08-20 12:48:57'),
(510, 'Kaduna', 'Chikun', 'Nasarawa', 'Kadi Health Centre', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-21 12:48:57', '2000-08-21 12:48:57'),
(511, 'Kaduna', 'Chikun', 'Sabon Tasha', 'Unguwan Boro Health Clinic', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-22 12:48:57', '2000-08-22 12:48:57'),
(512, 'Kaduna', 'Chikun', 'Sabon Tasha', 'Sabon Tasha General Hospital', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-23 12:48:57', '2000-08-23 12:48:57'),
(513, 'Kaduna', 'Chikun', 'Sabon Tasha', 'Sabon Tasha Health Clinic', 'Tisan Health Care Foundation', 'bulusiyaesther@yahoo.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-24 12:48:57', '2000-08-24 12:48:57'),
(514, 'Kaduna', 'Zaria', 'Kaura', 'MPHC ANGUWAN BISHAR', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-25 12:48:57', '2000-08-25 12:48:57'),
(515, 'Kaduna', 'Zaria', 'Kaura', 'PHC RIMIN DOKO', 'Amrahtu  Baba Memorial Foundation', 'Amrahtubabafoundations@gmail.com', 'Ogidi Nicodemus', 'ogidinike@gmail.com', 'active', '2000-08-26 12:48:57', '2000-08-26 12:48:57'),
(516, 'Kano', 'Wudi', 'Wudil', 'Wudil Dispensary', 'Zumunta Community Development Support Initiative', 'zumuntasggaya@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-08-27 12:48:57', '2000-08-27 12:48:57'),
(517, 'Kano', 'Wudi', 'Dagumawa', 'Juma Health Post', 'Zumunta Community Development Support Initiative', 'zumuntasggaya@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-08-28 12:48:57', '2000-08-28 12:48:57'),
(518, 'Kano', 'Wudi', 'Dagumawa', 'Dagumana Health Clinic', 'Zumunta Community Development Support Initiative', 'zumuntasggaya@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-08-29 12:48:57', '2000-08-29 12:48:57'),
(519, 'Kano', 'Wudi', 'Darki', 'Darki Model Primary Health Centre', 'Wazobia International Women and Children Foundation', 'wazsug2003@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-08-30 12:48:57', '2000-08-30 12:48:57'),
(520, 'Kano', 'Wudi', 'Darki', 'Jigaware Health Post', 'Wazobia International Women and Children Foundation', 'wazsug2003@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-08-31 12:48:57', '2000-08-31 12:48:57'),
(521, 'Kano', 'Wudi', 'Utai', 'Taka Kwadi Health Post', 'Wazobia International Women and Children Foundation', 'wazsug2003@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-01 12:48:57', '2000-09-01 12:48:57'),
(522, 'Kano', 'Wudi', 'Utai', 'Utai Primary Health Centre', 'Wazobia International Women and Children Foundation', 'wazsug2003@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-02 12:48:57', '2000-09-02 12:48:57'),
(523, 'Kano', 'Kura', 'Kosawa', 'Kadani Health Post', 'Voice of the Hopeful Enlightenment and Development Initiative', 'voiceofthehopeful@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-03 12:48:57', '2000-09-03 12:48:57'),
(524, 'Kano', 'Kura', 'Dalili', 'Azore Health Post', 'Voice of the Hopeful Enlightenment and Development Initiative', 'voiceofthehopeful@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-04 12:48:57', '2000-09-04 12:48:57'),
(525, 'Kano', 'Kura', 'Dalili', 'Hadeja Jama\'are Health Post', 'Voice of the Hopeful Enlightenment and Development Initiative', 'voiceofthehopeful@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-05 12:48:57', '2000-09-05 12:48:57'),
(526, 'Kano', 'Kura', 'Dalili', 'Kura General Hospital', 'Voice of the Hopeful Enlightenment and Development Initiative', 'voiceofthehopeful@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-06 12:48:57', '2000-09-06 12:48:57'),
(527, 'Kano', 'Kura', 'Dan Hassan', 'Danhassan Dispensary', 'Voice of the Hopeful Enlightenment and Development Initiative', 'voiceofthehopeful@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-07 12:48:57', '2000-09-07 12:48:57'),
(528, 'Kano', 'Kura', 'Kosawa', 'Bugau Health Post', 'Voice of the Hopeful Enlightenment and Development Initiative', 'voiceofthehopeful@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-08 12:48:57', '2000-09-08 12:48:57'),
(529, 'Kano', 'Kura', 'Kosawa', 'Gayingiri Health Post', 'Voice of the Hopeful Enlightenment and Development Initiative', 'voiceofthehopeful@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-09 12:48:57', '2000-09-09 12:48:57'),
(530, 'Kano', 'Kura', 'Kosawa', 'Guraza Health Post', 'Voice of the Hopeful Enlightenment and Development Initiative', 'voiceofthehopeful@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-10 12:48:57', '2000-09-10 12:48:57'),
(531, 'Kano', 'Kura', 'Kosawa', 'Imawa Health Post', 'Voice of the Hopeful Enlightenment and Development Initiative', 'voiceofthehopeful@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-11 12:48:57', '2000-09-11 12:48:57'),
(532, 'Kano', 'Kura', 'Dan Hassan', 'Dan-Hassan Primary Health Centre', 'Health  Development Alternative Initiative', 'mentorabdul@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-12 12:48:57', '2000-09-12 12:48:57'),
(533, 'Kano', 'Kura', 'Dan Hassan', 'Kadirawa Health Post', 'Health  Development Alternative Initiative', 'mentorabdul@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-13 12:48:57', '2000-09-13 12:48:57'),
(534, 'Kano', 'Kura', 'Dukawa', 'Dukawa Health Post', 'Health  Development Alternative Initiative', 'mentorabdul@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-14 12:48:57', '2000-09-14 12:48:57'),
(535, 'Kano', 'Kura', 'Dukawa', 'Gamadan Health Post', 'Health  Development Alternative Initiative', 'mentorabdul@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-15 12:48:57', '2000-09-15 12:48:57'),
(536, 'Kano', 'Kura', 'Dukawa', 'Kunshama A Health Post', 'Health  Development Alternative Initiative', 'mentorabdul@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-16 12:48:57', '2000-09-16 12:48:57'),
(537, 'Kano', 'Kura', 'Dukawa', 'Kunshama B Health Post', 'Health  Development Alternative Initiative', 'mentorabdul@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-17 12:48:57', '2000-09-17 12:48:57'),
(538, 'Kano', 'Bichi', 'Bichi', 'Bichi FCE Primary Health Centre', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-18 12:48:57', '2000-09-18 12:48:57'),
(539, 'Kano', 'Bichi', 'Bichi', 'Bichi General Hospital', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-19 12:48:57', '2000-09-19 12:48:57'),
(540, 'Kano', 'Bichi', 'Bichi', 'Dutsen Karya Post', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-20 12:48:57', '2000-09-20 12:48:57'),
(541, 'Kano', 'Bichi', 'Bichi', 'Karari Health Post', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-21 12:48:57', '2000-09-21 12:48:57'),
(542, 'Kano', 'Bichi', 'Badume', 'Badume Model Primary Health Care', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-22 12:48:57', '2000-09-22 12:48:57'),
(543, 'Kano', 'Bichi', 'Badume', 'Gulbi Health Post', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-23 12:48:57', '2000-09-23 12:48:57'),
(544, 'Kano', 'Bichi', 'Badume', 'Kawaji Health Post', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-24 12:48:57', '2000-09-24 12:48:57'),
(545, 'Kano', 'Bichi', 'Badume', 'Kyauta Health Post', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-25 12:48:57', '2000-09-25 12:48:57'),
(546, 'Kano', 'Bichi', 'Badume', 'Sanakur Health Post', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-26 12:48:57', '2000-09-26 12:48:57'),
(547, 'Kano', 'Bichi', 'Badume', 'Tsaure Health Post', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-27 12:48:57', '2000-09-27 12:48:57'),
(548, 'Kano', 'Bichi', 'Badume', 'Yakasai Health Post', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-28 12:48:57', '2000-09-28 12:48:57'),
(549, 'Kano', 'Bichi', 'Badume', 'Yanbundi Health Clinic', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-29 12:48:57', '2000-09-29 12:48:57'),
(550, 'Kano', 'Bichi', 'Badume', 'Yola Health Post', 'Halliru Youth Memorial Development Empowerment Initiative', 'aydi08@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-09-30 12:48:57', '2000-09-30 12:48:57'),
(551, 'Kano', 'Minjibir', 'Kunya', 'Danbawa Health Post', 'Green pasture and Home Initiative', 'greenpasture2008@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-01 12:48:57', '2000-10-01 12:48:57'),
(552, 'Kano', 'Minjibir', 'Kunya', 'Kunya Model Primaery Health Centre', 'Green pasture and Home Initiative', 'greenpasture2008@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-02 12:48:57', '2000-10-02 12:48:57'),
(553, 'Kano', 'Minjibir', 'Kunya', 'Kunya Primary Health Centre', 'Green pasture and Home Initiative', 'greenpasture2008@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-03 12:48:57', '2000-10-03 12:48:57'),
(554, 'Kano', 'Minjibir', 'Wasia', 'Abudakaya Health Post', 'Green pasture and Home Initiative', 'greenpasture2008@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-04 12:48:57', '2000-10-04 12:48:57'),
(555, 'Kano', 'Minjibir', 'Wasia', 'Wasia Health Post', 'Green pasture and Home Initiative', 'greenpasture2008@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-05 12:48:57', '2000-10-05 12:48:57'),
(556, 'Kano', 'Minjibir', 'Minjibir', 'Minjibir General Hospital', 'Grassroot Health organization of Nigeria', 'ghonhealth@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-06 12:48:57', '2000-10-06 12:48:57'),
(557, 'Kano', 'Minjibir', 'Minjibir', 'Minjibir Health Post', 'Grassroot Health organization of Nigeria', 'ghonhealth@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-07 12:48:57', '2000-10-07 12:48:57'),
(558, 'Kano', 'Minjibir', 'Kantama', 'Garji Health Post', 'Grassroot Health organization of Nigeria', 'ghonhealth@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-08 12:48:57', '2000-10-08 12:48:57'),
(559, 'Kano', 'Minjibir', 'Kantama', 'Garke Health Post', 'Grassroot Health organization of Nigeria', 'ghonhealth@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-09 12:48:57', '2000-10-09 12:48:57'),
(560, 'Kano', 'Minjibir', 'Kantama', 'Gyaranya Dispensary', 'Grassroot Health organization of Nigeria', 'ghonhealth@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-10 12:48:57', '2000-10-10 12:48:57'),
(561, 'Kano', 'Minjibir', 'Kantama', 'Kantama Babba Health Post', 'Grassroot Health organization of Nigeria', 'ghonhealth@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-11 12:48:57', '2000-10-11 12:48:57'),
(562, 'Kano', 'Tarauni', 'Hotoro', 'Sunusi suleiman ARTV Staff Clinic', 'Global Improvement of  less privileged persons', 'giopininigeria_giopininigeria@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-12 12:48:57', '2000-10-12 12:48:57'),
(563, 'Kano', 'Tarauni', 'Kauyen Alu', 'Kawyen Alu Health Centre', 'Global Improvement of  less privileged persons', 'giopininigeria_giopininigeria@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-13 12:48:57', '2000-10-13 12:48:57'),
(564, 'Kano', 'Tarauni', 'Gyadi Arewa', 'Ja\'oji Primary Health Centre', 'Global Improvement of  less privileged persons', 'giopininigeria_giopininigeria@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-14 12:48:57', '2000-10-14 12:48:57'),
(565, 'Kano', 'Tarauni', 'Hotoro', 'Hayin Dae Health Clinic', 'Global Improvement of  less privileged persons', 'giopininigeria_giopininigeria@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-15 12:48:57', '2000-10-15 12:48:57'),
(566, 'Kano', 'Tarauni', 'Hotoro', 'Hotoro Health Pos', 'Global Improvement of  less privileged persons', 'giopininigeria_giopininigeria@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-16 12:48:57', '2000-10-16 12:48:57'),
(567, 'Kano', 'Bichi', 'Saye', 'Garun Bature Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-17 12:48:57', '2000-10-17 12:48:57'),
(568, 'Kano', 'Bichi', 'Saye', 'Saye Primary Health Centre', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-18 12:48:57', '2000-10-18 12:48:57'),
(569, 'Kano', 'Bichi', 'Kwamarawa', 'Bankaura Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-19 12:48:57', '2000-10-19 12:48:57'),
(570, 'Kano', 'Bichi', 'Kwamarawa', 'Kwamarawa Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-20 12:48:57', '2000-10-20 12:48:57'),
(571, 'Kano', 'Bichi', 'Kwamarawa', 'Marga Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-21 12:48:57', '2000-10-21 12:48:57'),
(572, 'Kano', 'Bichi', 'Kwamarawa', 'Tinki Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-22 12:48:57', '2000-10-22 12:48:57'),
(573, 'Kano', 'Bichi', 'Danzabuwa', 'Danzabuwa Model Primary Health Centre', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-23 12:48:57', '2000-10-23 12:48:57'),
(574, 'Kano', 'Bichi', 'Kyali', 'Chiromawa Primary Health Centre', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-24 12:48:57', '2000-10-24 12:48:57'),
(575, 'Kano', 'Bichi', 'Kyali', 'Hagawa Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-25 12:48:57', '2000-10-25 12:48:57'),
(576, 'Kano', 'Bichi', 'Kyali', 'Lamba Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-26 12:48:57', '2000-10-26 12:48:57'),
(577, 'Kano', 'Bichi', 'Kyali', 'Tsidau Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-27 12:48:57', '2000-10-27 12:48:57'),
(578, 'Kano', 'Bichi', 'Kyali', 'Yan Gwarzo Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-28 12:48:57', '2000-10-28 12:48:57'),
(579, 'Kano', 'Bichi', 'Saye', 'Bum Bum Health Post', 'Dawaki Community Health Initiative', 'dawakintofacommunityhealth@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-29 12:48:57', '2000-10-29 12:48:57'),
(580, 'Kano', 'Tarauni', 'Unguwa Uku', 'Unguwa Uku Primary Health Centre', 'Coalition of Experts to Fight Against TB', 'cxpert2016@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-30 12:48:57', '2000-10-30 12:48:57'),
(581, 'Kano', 'Tarauni', 'Darmanawa', 'Aminu Kano Teaching Hospital', 'Coalition of Experts to Fight Against TB', 'cxpert2016@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-10-31 12:48:57', '2000-10-31 12:48:57'),
(582, 'Kano', 'Tarauni', 'Darmanawa', 'Dan Tsinke Primary Health Centre', 'Coalition of Experts to Fight Against TB', 'cxpert2016@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-11-01 12:48:57', '2000-11-01 12:48:57'),
(583, 'Kano', 'Tarauni', 'Unguwa Gano', 'Yar Akwa Health Post', 'Coalition of Experts to Fight Against TB', 'cxpert2016@gmail.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-11-02 12:48:57', '2000-11-02 12:48:57'),
(584, 'Kano', 'Wudi', 'Dagumawa', 'Yallahadi Health Clinic', 'Zumunta Community Development Support Initiative', 'zumuntasggaya@yahoo.com', 'Sheriff S. Abubakar', 'sheriffabubakar2@gmail.com', 'active', '2000-11-03 12:48:57', '2000-11-03 12:48:57'),
(585, 'Katsina', 'Musawa', 'Jikamshi', 'Jikamshi Clinic', 'Ethical conduct Awareness Initiative', 'hadinanda2015@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-04 12:48:57', '2000-11-04 12:48:57'),
(586, 'Katsina', 'Musawa', 'Jikamshi', 'Aduwa Clinic', 'Ethical conduct Awareness Initiative', 'hadinanda2015@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-05 13:48:57', '2000-11-05 13:48:57'),
(587, 'Katsina', 'Musawa', 'Danjanku', 'abon Layi  Clinic', 'Ethical conduct Awareness Initiative', 'hadinanda2015@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-06 13:48:57', '2000-11-06 13:48:57'),
(588, 'Katsina', 'Musawa', 'Danjanku', 'Munta Clinic', 'Ethical conduct Awareness Initiative', 'hadinanda2015@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-07 13:48:57', '2000-11-07 13:48:57'),
(589, 'Katsina', 'Musawa', 'Danjanku', 'Karachi  Clinic', 'Ethical conduct Awareness Initiative', 'hadinanda2015@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-08 13:48:57', '2000-11-08 13:48:57'),
(590, 'Katsina', 'Musawa', 'Danjanku', 'G/Lumo  Clinic', 'Ethical conduct Awareness Initiative', 'hadinanda2015@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-09 13:48:57', '2000-11-09 13:48:57'),
(591, 'Katsina', 'Musawa', 'Danjanku', 'Dankado  Clinic', 'Ethical conduct Awareness Initiative', 'hadinanda2015@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-10 13:48:57', '2000-11-10 13:48:57'),
(592, 'Katsina', 'Musawa', 'Danjanku', 'Danjanku Primary  Care', 'Ethical conduct Awareness Initiative', 'hadinanda2015@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-11 13:48:57', '2000-11-11 13:48:57'),
(593, 'Katsina', 'Musawa', 'Danjanku', 'Badawa Clinic', 'Ethical conduct Awareness Initiative', 'hadinanda2015@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-12 13:48:57', '2000-11-12 13:48:57'),
(594, 'Katsina', 'Musawa', 'Musawa', 'Turawa  Clinic', 'Nasara Almadaf Foundation', 'Dardua58@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-13 13:48:57', '2000-11-13 13:48:57'),
(595, 'Katsina', 'Musawa', 'Musawa', 'Sako Clinic', 'Nasara Almadaf Foundation', 'Dardua58@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-14 13:48:57', '2000-11-14 13:48:57'),
(596, 'Katsina', 'Musawa', 'Musawa', 'Katoge (Dangani Ward) Clinic', 'Nasara Almadaf Foundation', 'Dardua58@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-15 13:48:57', '2000-11-15 13:48:57'),
(597, 'Katsina', 'Musawa', 'Musawa', 'Gidan Dodo  Clinic', 'Nasara Almadaf Foundation', 'Dardua58@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-16 13:48:57', '2000-11-16 13:48:57'),
(598, 'Katsina', 'Musawa', 'Musawa', 'Dangani Primary Health Centre', 'Nasara Almadaf Foundation', 'Dardua58@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-17 13:48:57', '2000-11-17 13:48:57'),
(599, 'Katsina', 'Musawa', 'Musawa', 'Bakam Clinic', 'Nasara Almadaf Foundation', 'Dardua58@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-18 13:48:57', '2000-11-18 13:48:57'),
(600, 'Katsina', 'Musawa', 'Karau', 'Rugar Kusa  Clinic', 'Nasara Almadaf Foundation', 'Dardua58@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-19 13:48:57', '2000-11-19 13:48:57'),
(601, 'Katsina', 'Musawa', 'Karau', 'Nsarawa  Clinic', 'Nasara Almadaf Foundation', 'Dardua58@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-20 13:48:57', '2000-11-20 13:48:57'),
(602, 'Katsina', 'Musawa', 'Karau', 'Musawa Family Support Programme Clinic', 'Nasara Almadaf Foundation', 'Dardua58@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-21 13:48:57', '2000-11-21 13:48:57'),
(603, 'Katsina', 'Mashi', 'Doguru A', 'Kudan Damawa  Clinic', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-22 13:48:57', '2000-11-22 13:48:57'),
(604, 'Katsina', 'Mashi', 'Doguru A', 'Ishe She Dispensary', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-23 13:48:57', '2000-11-23 13:48:57'),
(605, 'Katsina', 'Mashi', 'Doguru A', 'Doguru Maternal and Child  Clinic', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-24 13:48:57', '2000-11-24 13:48:57'),
(606, 'Katsina', 'Mashi', 'Doguru A', 'Bagawa  Clinic', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-25 13:48:57', '2000-11-25 13:48:57'),
(607, 'Katsina', 'Mashi', 'Doguru A', 'Badauri  Clinic', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-26 13:48:57', '2000-11-26 13:48:57'),
(608, 'Katsina', 'Mashi', 'Tamilo B', 'Tamilo Maternal and Child  Clinic', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-27 13:48:57', '2000-11-27 13:48:57'),
(609, 'Katsina', 'Mashi', 'Tamilo B', 'Randa Maternal and Child  Clinic', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-28 13:48:57', '2000-11-28 13:48:57'),
(610, 'Katsina', 'Mashi', 'Tamilo B', 'Moraye Clinic', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-29 13:48:57', '2000-11-29 13:48:57'),
(611, 'Katsina', 'Mashi', 'Tamilo B', 'Manawa Dispensary', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-11-30 13:48:57', '2000-11-30 13:48:57'),
(612, 'Katsina', 'Mashi', 'Tamilo A', 'Kwabaje Post', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-01 13:48:57', '2000-12-01 13:48:57'),
(613, 'Katsina', 'Mashi', 'Tamilo A', 'Kilago Clinic', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-02 13:48:57', '2000-12-02 13:48:57'),
(614, 'Katsina', 'Mashi', 'Tamilo A', 'Guma Post', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-03 13:48:57', '2000-12-03 13:48:57'),
(615, 'Katsina', 'Mashi', 'Tamilo A', 'Bunu Post', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-04 13:48:57', '2000-12-04 13:48:57'),
(616, 'Katsina', 'Mashi', 'Gana Jigawa', 'Tsamiyar  Clinic', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-05 13:48:57', '2000-12-05 13:48:57'),
(617, 'Katsina', 'Mashi', 'Gana Jigawa', 'Tagura Dispensary', 'Links and Larvin Initiative for Social and Human Development', 'yusmuktar@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-06 13:48:57', '2000-12-06 13:48:57'),
(618, 'Katsina', 'Mashi', 'Mashi', 'Yarriga Dispensary', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-07 13:48:57', '2000-12-07 13:48:57'),
(619, 'Katsina', 'Mashi', 'Mashi', 'Toranke  Clinic', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-08 13:48:57', '2000-12-08 13:48:57'),
(620, 'Katsina', 'Mashi', 'Mashi', 'Mashi Clinic', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-09 13:48:57', '2000-12-09 13:48:57'),
(621, 'Katsina', 'Mashi', 'Mashi', 'Mashi', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-10 13:48:57', '2000-12-10 13:48:57'),
(622, 'Katsina', 'Mashi', 'Mashi', 'Dokawa Post', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-11 13:48:57', '2000-12-11 13:48:57'),
(623, 'Katsina', 'Mashi', 'Mashi', 'Cidawa  Post', 'Community Information and Advocacy Initiative', 'Jacobee2004@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-12 13:48:57', '2000-12-12 13:48:57'),
(624, 'Katsina', 'Daura', 'Kusugu', 'Daura Clinic', 'Society for Women Development and Empowerment of Nigeria', 'tajudeenmaaruf@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-13 13:48:57', '2000-12-13 13:48:57'),
(625, 'Katsina', 'Daura', 'Ubandawaki B', 'Family Support Clinic', 'Society for Women Development and Empowerment of Nigeria', 'tajudeenmaaruf@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-14 13:48:57', '2000-12-14 13:48:57'),
(626, 'Katsina', 'Daura', 'Ubandawaki B', 'Daura Maternal and Child  Clinic', 'Society for Women Development and Empowerment of Nigeria', 'tajudeenmaaruf@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-15 13:48:57', '2000-12-15 13:48:57'),
(627, 'Katsina', 'Daura', 'Ubandawaki A', 'Baraji Maternal and Child  Clinic', 'Society for Women Development and Empowerment of Nigeria', 'tajudeenmaaruf@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-16 13:48:57', '2000-12-16 13:48:57'),
(628, 'Katsina', 'Daura', 'Sabon Gari', 'Kanti Maternal and Child  Clinic', 'Women Economic Empowerment Organization', 'Jummaigarba2006@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-17 13:48:57', '2000-12-17 13:48:57'),
(629, 'Katsina', 'Daura', 'Sabon Gari', 'Kalgo Maternal and Child  Clinic', 'Women Economic Empowerment Organization', 'Jummaigarba2006@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-18 13:48:57', '2000-12-18 13:48:57'),
(630, 'Katsina', 'Daura', 'Sabon Gari', 'Gurjiya Maternal and Child  Clinic', 'Women Economic Empowerment Organization', 'Jummaigarba2006@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-19 13:48:57', '2000-12-19 13:48:57'),
(631, 'Katsina', 'Daura', 'Sabon Gari', 'Daura Clinic', 'Women Economic Empowerment Organization', 'Jummaigarba2006@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-20 13:48:57', '2000-12-20 13:48:57'),
(632, 'Katsina', 'Jibia', 'Faru Sarki', 'Mallamawa  Post', 'Family Health and Youth Empowement Organisatio', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-21 13:48:57', '2000-12-21 13:48:57'),
(633, 'Katsina', 'Jibia', 'Faru Sarki', 'Jibia Maje  Clinic', 'Family Health and Youth Empowement Organisatio', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-22 13:48:57', '2000-12-22 13:48:57'),
(634, 'Katsina', 'Jibia', 'Faru Sarki', 'J Mage  Post', 'Family Health and Youth Empowement Organisatio', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-23 13:48:57', '2000-12-23 13:48:57'),
(635, 'Katsina', 'Jibia', 'Faru Sarki', 'Gurbin Magarya PHC', 'Family Health and Youth Empowement Organisatio', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-24 13:48:57', '2000-12-24 13:48:57'),
(636, 'Katsina', 'Jibia', 'Faru Sarki', 'Faru Healt Post', 'Family Health and Youth Empowement Organisatio', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-25 13:48:57', '2000-12-25 13:48:57'),
(637, 'Katsina', 'Jibia', 'Mazanya', 'Mazanya Post', 'Community Awareness and Development Initiative', 'b.umar_abdulmalik@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-26 13:48:57', '2000-12-26 13:48:57'),
(638, 'Katsina', 'Jibia', 'Mazanya', 'Magama   Center', 'Community Awareness and Development Initiative', 'b.umar_abdulmalik@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-27 13:48:57', '2000-12-27 13:48:57'),
(639, 'Katsina', 'Jibia', 'Mazanya', 'Kwarare  Clinic', 'Community Awareness and Development Initiative', 'b.umar_abdulmalik@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-28 13:48:57', '2000-12-28 13:48:57'),
(640, 'Katsina', 'Jibia', 'Jibia B', 'Jibia Babba  Clinic', 'Community Awareness and Development Initiative', 'b.umar_abdulmalik@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-29 13:48:57', '2000-12-29 13:48:57'),
(641, 'Katsina', 'Jibia', 'Jibia A', 'Tudun Wada  Clinic', 'Community Awareness and Development Initiative', 'b.umar_abdulmalik@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-30 13:48:57', '2000-12-30 13:48:57'),
(642, 'Katsina', 'Jibia', 'Jibia A', 'Jibia Clinic', 'Community Awareness and Development Initiative', 'b.umar_abdulmalik@yahoo.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2000-12-31 13:48:57', '2000-12-31 13:48:57'),
(643, 'Katsina', 'Katsina', 'Kudu II', 'Turai Umaru Yar\'Adua MCH', 'Progress and Development Initiative', 'Giccioo1@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2001-01-01 13:48:57', '2001-01-01 13:48:57'),
(644, 'Katsina', 'Katsina', 'Yamma II', 'Nasarawa Day  Clinic', 'Progress and Development Initiative', 'Giccioo1@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2001-01-02 13:48:57', '2001-01-02 13:48:57'),
(645, 'Katsina', 'Katsina', 'Arewa II', 'Bilikisu Clinic', 'Progress and Development Initiative', 'Giccioo1@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2001-01-03 13:48:57', '2001-01-03 13:48:57'),
(646, 'Katsina', 'Katsina', 'Arewa II', 'Army Barrack Clinic', 'Progress and Development Initiative', 'Giccioo1@gmail.com', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2001-01-04 13:48:57', '2001-01-04 13:48:57');
INSERT INTO `health_facilities` (`id`, `State`, `LGA`, `Ward`, `Facility`, `CBO`, `CBO_Email`, `SPO`, `SPO_Email`, `status`, `created_at`, `updated_at`) VALUES
(647, 'Katsina', 'Katsina', 'Gabas II', 'Kofar Marusa Maternal and Child  Clinic', 'Acchor Inintiative for Communtiy Development', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2001-01-05 13:48:57', '2001-01-05 13:48:57'),
(648, 'Katsina', 'Katsina', 'Gabas II', 'Marusa Low Cost Dispensary', 'Acchor Inintiative for Communtiy Development', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2001-01-06 13:48:57', '2001-01-06 13:48:57'),
(649, 'Katsina', 'Katsina', 'Gabas II', 'Kofar Marusa Low Cost Dispensary', 'Acchor Inintiative for Communtiy Development', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2001-01-07 13:48:57', '2001-01-07 13:48:57'),
(650, 'Katsina', 'Katsina', 'Gabas I', 'Kofar Sauri Maternal and Child  Clinic', 'Acchor Inintiative for Communtiy Development', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2001-01-08 13:48:57', '2001-01-08 13:48:57'),
(651, 'Katsina', 'Katsina', 'Shinkafi II', 'Kwado', 'Acchor Inintiative for Communtiy Development', '', 'Shuaib Shuaib Musa', 'shuaibshuaibmusa91@gmail.com', 'active', '2001-01-09 13:48:57', '2001-01-09 13:48:57'),
(652, 'Kwara', 'Moro', 'Malete', 'Arobadi  Health Centre', 'Royal Heritage Health Foundation', 'rhhfoundation.ng@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-10 13:48:57', '2001-01-10 13:48:57'),
(653, 'Kwara', 'Moro', 'Malete', 'Amu Health Post', 'Royal Heritage Health Foundation', 'rhhfoundation.ng@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-11 13:48:57', '2001-01-11 13:48:57'),
(654, 'Kwara', 'Moro', 'Malete', 'Malete Maternal and Child Health Clinic', 'Royal Heritage Health Foundation', 'rhhfoundation.ng@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-12 13:48:57', '2001-01-12 13:48:57'),
(655, 'Kwara', 'Moro', 'Lanwa', 'Lanwa Basic Health Clinic', 'Royal Heritage Health Foundation', 'rhhfoundation.ng@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-13 13:48:57', '2001-01-13 13:48:57'),
(656, 'Kwara', 'Moro', 'Oloru', 'Oloru Maternal and Child Health Clinic', 'Organization for Social Programmes and Health Care', 'osphc_ng@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-14 13:48:57', '2001-01-14 13:48:57'),
(657, 'Kwara', 'Moro', 'Oloru', 'Olokonla Health Clinic', 'Organization for Social Programmes and Health Care', 'osphc_ng@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-15 13:48:57', '2001-01-15 13:48:57'),
(658, 'Kwara', 'Moro', 'Abati Alara', 'Tepatan Health Clinic', 'Organization for Social Programmes and Health Care', 'osphc_ng@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-16 13:48:57', '2001-01-16 13:48:57'),
(659, 'Kwara', 'Moro', 'Abati Alara', 'Kiribi Health Clinic', 'Organization for Social Programmes and Health Care', 'osphc_ng@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-17 13:48:57', '2001-01-17 13:48:57'),
(660, 'Kwara', 'Moro', 'Okutala', 'Okutala Maternal and Child Health Clinic', 'Organization for Social Programmes and Health Care', 'osphc_ng@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-18 13:48:57', '2001-01-18 13:48:57'),
(661, 'Kwara', 'Ilorin East', 'Oke - Oyi/Oke - Ose', 'Ariyibi Health Post', 'Fulfilling Dreams Foundation', 'fdfoundation65@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-19 13:48:57', '2001-01-19 13:48:57'),
(662, 'Kwara', 'Ilorin East', 'Oke - Oyi/Oke - Ose', 'Alalubosa Health Centre', 'Fulfilling Dreams Foundation', 'fdfoundation65@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-20 13:48:57', '2001-01-20 13:48:57'),
(663, 'Kwara', 'Ilorin East', 'Oke - Oyi/Oke - Ose', 'Aiyetoro Oja Health Centre', 'Fulfilling Dreams Foundation', 'fdfoundation65@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-21 13:48:57', '2001-01-21 13:48:57'),
(664, 'Kwara', 'Ilorin East', 'Maya/Ile Apa', 'Ile Apa Health Post', 'Fulfilling Dreams Foundation', 'fdfoundation65@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-22 13:48:57', '2001-01-22 13:48:57'),
(665, 'Kwara', 'Ilorin East', 'Maya/Ile Apa', 'Budo-Are Health Centre', 'Fulfilling Dreams Foundation', 'fdfoundation65@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-23 13:48:57', '2001-01-23 13:48:57'),
(666, 'Kwara', 'Ilorin East', 'Maya/Ile Apa', 'Abanta Health Post', 'Fulfilling Dreams Foundation', 'fdfoundation65@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-24 13:48:57', '2001-01-24 13:48:57'),
(667, 'Kwara', 'Ilorin East', 'Marafa/Pepele', 'Pepele Health Post', 'Living Care Community Development Foundation', 'livingcarefoundation@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-25 13:48:57', '2001-01-25 13:48:57'),
(668, 'Kwara', 'Ilorin East', 'Marafa/Pepele', 'Marafa Health Centre', 'Living Care Community Development Foundation', 'livingcarefoundation@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-26 13:48:57', '2001-01-26 13:48:57'),
(669, 'Kwara', 'Ilorin East', 'Marafa/Pepele', 'Eleshinmeta Health Centre', 'Living Care Community Development Foundation', 'livingcarefoundation@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-27 13:48:57', '2001-01-27 13:48:57'),
(670, 'Kwara', 'Ilorin East', 'Iporin', 'Iponrin Comprehensive Health Centre', 'Living Care Community Development Foundation', 'livingcarefoundation@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-28 13:48:57', '2001-01-28 13:48:57'),
(671, 'Kwara', 'Ilorin East', 'Iporin', 'Iponrin Dispensary and Maternity', 'Living Care Community Development Foundation', 'livingcarefoundation@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-29 13:48:57', '2001-01-29 13:48:57'),
(672, 'Kwara', 'Ilorin East', 'Apado', 'Apado Dispensary and Maternity', 'Living Care Community Development Foundation', 'livingcarefoundation@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-30 13:48:57', '2001-01-30 13:48:57'),
(673, 'Kwara', 'Ilorin East', 'Agbeyangi', 'Agbeyangi Health Centre', 'Living Care Community Development Foundation', 'livingcarefoundation@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-01-31 13:48:57', '2001-01-31 13:48:57'),
(674, 'Kwara', 'Isin', 'Isaalu 2', 'Isanlu-Isin Primary Health Centre', 'Empowerment for Female and Male With Basis', 'effemabwomen@yahoo.co.uk', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-01 13:48:57', '2001-02-01 13:48:57'),
(675, 'Kwara', 'Isin', 'Isaalu 2', 'Isanlu Model Primary Health Centre', 'Empowerment for Female and Male With Basis', 'effemabwomen@yahoo.co.uk', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-02 13:48:57', '2001-02-02 13:48:57'),
(676, 'Kwara', 'Isin', 'Isaalu 1', 'Eleyin Primary Health Centre', 'Empowerment for Female and Male With Basis', 'effemabwomen@yahoo.co.uk', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-03 13:48:57', '2001-02-03 13:48:57'),
(677, 'Kwara', 'Isin', 'Owu Isin', 'Owu  Model Primary Health Centre', 'Awareness Initiative For Good Governance', 'acgnnigeria@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-04 13:48:57', '2001-02-04 13:48:57'),
(678, 'Kwara', 'Isin', 'Owu Isin', 'Oke Oyi Primary Health Centre', 'Awareness Initiative For Good Governance', 'acgnnigeria@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-05 13:48:57', '2001-02-05 13:48:57'),
(679, 'Kwara', 'Isin', 'Owu Isin', 'Kudu -Owode Primary Health Centre', 'Awareness Initiative For Good Governance', 'acgnnigeria@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-06 13:48:57', '2001-02-06 13:48:57'),
(680, 'Kwara', 'Isin', 'Ijara Isin', 'Ijara Isin Primary Health Centre', 'Empowerment for Female and Male With Basis', 'effemabwomen@yahoo.co.uk', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-07 13:48:57', '2001-02-07 13:48:57'),
(681, 'Kwara', 'Isin', 'Owu Isin', 'Iji Primary Health Centre', 'Awareness Initiative For Good Governance', 'acgnnigeria@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-08 13:48:57', '2001-02-08 13:48:57'),
(682, 'Kwara', 'Irepodun', 'Oro 1', 'Okerimi Primary Health Centre', 'Save the Feature of Children Initiative', 'safinngo2007@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-09 13:48:57', '2001-02-09 13:48:57'),
(683, 'Kwara', 'Irepodun', 'Oro 1', 'Iddo Oro Primary Health Centre', 'Save the Feature of Children Initiative', 'safinngo2007@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-10 13:48:57', '2001-02-10 13:48:57'),
(684, 'Kwara', 'Irepodun', 'Oro 1', 'Ijomu Cottage Hospital', 'Save the Feature of Children Initiative', 'safinngo2007@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-11 13:48:57', '2001-02-11 13:48:57'),
(685, 'Kwara', 'Irepodun', 'Ajasse 1', 'Buhari Primary Health Centre', 'Women and Youth Dev Initiative', 'woy0dev@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-12 13:48:57', '2001-02-12 13:48:57'),
(686, 'Kwara', 'Irepodun', 'Ajasse 1', 'Apata Kajola Health Clinic', 'Women and Youth Dev Initiative', 'woy0dev@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-13 13:48:57', '2001-02-13 13:48:57'),
(687, 'Kwara', 'Irepodun', 'Ajasse 1', 'Ajasse Primary Health Centre', 'Women and Youth Dev Initiative', 'woy0dev@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-14 13:48:57', '2001-02-14 13:48:57'),
(688, 'Kwara', 'Irepodun', 'Ajasse 1', 'Ajase Cottage Hospital', 'Women and Youth Dev Initiative', 'woy0dev@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-15 13:48:57', '2001-02-15 13:48:57'),
(689, 'Kwara', 'Ifelodun', 'Omupo', 'Igboowu Basic Health Centre', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-16 13:48:57', '2001-02-16 13:48:57'),
(690, 'Kwara', 'Ifelodun', 'Omupo', 'Irapa Basic Health Crntre', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-17 13:48:57', '2001-02-17 13:48:57'),
(691, 'Kwara', 'Ifelodun', 'Omupo', 'Koko Basic Health Clinic', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-18 13:48:57', '2001-02-18 13:48:57'),
(692, 'Kwara', 'Ifelodun', 'Omupo', 'Maloko Basic Health Centre', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-19 13:48:57', '2001-02-19 13:48:57'),
(693, 'Kwara', 'Ifelodun', 'Omupo', 'Omupo Basic Health Clinic', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-20 13:48:57', '2001-02-20 13:48:57'),
(694, 'Kwara', 'Ifelodun', 'Omupo', 'Omupo Cottage Hospita', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-21 13:48:57', '2001-02-21 13:48:57'),
(695, 'Kwara', 'Ifelodun', 'Omupo', 'Owu Obaloyan NMH', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-22 13:48:57', '2001-02-22 13:48:57'),
(696, 'Kwara', 'Ifelodun', 'Igbaja 1', 'Adanla Health Post', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-23 13:48:57', '2001-02-23 13:48:57'),
(697, 'Kwara', 'Ifelodun', 'Igbaja 1', 'Agbee Basic Health Centre', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-24 13:48:57', '2001-02-24 13:48:57'),
(698, 'Kwara', 'Ifelodun', 'Igbaja 1', 'Durosoto Health Post', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-25 13:48:57', '2001-02-25 13:48:57'),
(699, 'Kwara', 'Ifelodun', 'Igbaja 1', 'Igbaja Basic Health Centre', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-26 13:48:57', '2001-02-26 13:48:57'),
(700, 'Kwara', 'Ifelodun', 'Igbaja 3', 'Alasoro Basic Health Centre', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-27 13:48:57', '2001-02-27 13:48:57'),
(701, 'Kwara', 'Ifelodun', 'Igbaja 3', 'Balogun/Mosudo Basic Health Centre', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-02-28 13:48:57', '2001-02-28 13:48:57'),
(702, 'Kwara', 'Ifelodun', 'Igbaja 3', 'Ilupeju Basic Health Centre', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-01 13:48:57', '2001-03-01 13:48:57'),
(703, 'Kwara', 'Ifelodun', 'Igbaja 3', 'Labaka-oja Basic Health Clinic', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-02 13:48:57', '2001-03-02 13:48:57'),
(704, 'Kwara', 'Ifelodun', 'Igbaja 3', 'Offa Irese Health Post', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-03 13:48:57', '2001-03-03 13:48:57'),
(705, 'Kwara', 'Ifelodun', 'Oke Odo 1', 'Oke-ode Maternity Hospital', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-04 13:48:57', '2001-03-04 13:48:57'),
(706, 'Kwara', 'Ifelodun', 'Oke Odo 1', 'Oke-ode Primary Health Centre', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-05 13:48:57', '2001-03-05 13:48:57'),
(707, 'Kwara', 'Ifelodun', 'Oke Odo 1', 'Okeode Specialist Hospital', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-06 13:48:57', '2001-03-06 13:48:57'),
(708, 'Kwara', 'Ifelodun', 'Oke Odo 2', 'Oko-Ode Health Post', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-07 13:48:57', '2001-03-07 13:48:57'),
(709, 'Kwara', 'Ifelodun', 'Oke Odo 2', 'Shagbe Basic Health Clinic', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-08 13:48:57', '2001-03-08 13:48:57'),
(710, 'Kwara', 'Ifelodun', 'Ile Ire', 'Afin Basic Health Centre', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-09 13:48:57', '2001-03-09 13:48:57'),
(711, 'Kwara', 'Ifelodun', 'Ile Ire', 'Ago Olomo Basic Health Centre', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-10 13:48:57', '2001-03-10 13:48:57'),
(712, 'Kwara', 'Irepodun', 'Arandun', 'Arandun Primary Health Centre', 'Save the Feature of Children Initiative', 'safinngo2007@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-11 12:48:57', '2001-03-11 12:48:57'),
(713, 'Kwara', 'Irepodun', 'Arandun', 'Owode Health Clinic', 'Save the Feature of Children Initiative', 'safinngo2007@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-12 12:48:57', '2001-03-12 12:48:57'),
(714, 'Kwara', 'Irepodun', 'Ajasse 1', 'Ilala Primary Health Centre', 'Women and Youth Dev Initiative', 'woy0dev@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-13 12:48:57', '2001-03-13 12:48:57'),
(715, 'Kwara', 'Irepodun', 'Ajasse 1', 'Okeyapo Primary Health Centre', 'Women and Youth Dev Initiative', 'woy0dev@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-14 12:48:57', '2001-03-14 12:48:57'),
(716, 'Kwara', 'Ifelodun', 'Omupo', 'Bayagan Health Post', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-15 12:48:57', '2001-03-15 12:48:57'),
(717, 'Kwara', 'Ifelodun', 'Idofian 5', 'Omolowo Health Clinic', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-16 12:48:57', '2001-03-16 12:48:57'),
(718, 'Kwara', 'Ifelodun', 'Omupo', 'Atanda Cottage Hospital', 'Hilltrust Top Foundation', 'hilltop.foundation@yahoo.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-17 12:48:57', '2001-03-17 12:48:57'),
(719, 'Kwara', 'Ifelodun', 'Idofian 4', 'Ganmo Basic Health Centre', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-18 12:48:57', '2001-03-18 12:48:57'),
(720, 'Kwara', 'Ifelodun', 'Idofian 3', 'Amayo Basic Health Centre', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-19 12:48:57', '2001-03-19 12:48:57'),
(721, 'Kwara', 'Ifelodun', 'Idofian 2', 'Abiye Ganmo Maternity and Clinic', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-20 12:48:57', '2001-03-20 12:48:57'),
(722, 'Kwara', 'Ifelodun', 'Idofian 7', 'Jimba-Oja Basic Health Centre', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-21 12:48:57', '2001-03-21 12:48:57'),
(723, 'Kwara', 'Ifelodun', 'Idofian 6', 'Idofian Health Centre', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-22 12:48:57', '2001-03-22 12:48:57'),
(724, 'Kwara', 'Ifelodun', 'Idofian 1', 'Alakuko Health Post', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-23 12:48:57', '2001-03-23 12:48:57'),
(725, 'Kwara', 'Ifelodun', 'Idofian 2', 'Asungbolu BHC', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-24 12:48:57', '2001-03-24 12:48:57'),
(726, 'Kwara', 'Ifelodun', 'Idofian 3', 'Basanyin Basic Health Centre', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-25 12:48:57', '2001-03-25 12:48:57'),
(727, 'Kwara', 'Ifelodun', 'Idofian 4', 'Elerinjare PHC', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-26 12:48:57', '2001-03-26 12:48:57'),
(728, 'Kwara', 'Ifelodun', 'Idofian 5', 'Falokun PHC', 'Federaion of Muslim Womens Association in Nigeria', 'fomwankwara@gmail.com', 'Isiyemi Abimbola Folake', 'folakeiseyemi@gmail.com', 'active', '2001-03-27 12:48:57', '2001-03-27 12:48:57'),
(729, 'Niger', 'Mashegun', 'Sohon Rami', 'rh  s/rami', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-03-28 12:48:57', '2001-03-28 12:48:57'),
(730, 'Niger', 'Mashegun', 'Sohon Rami', 'phc s/rijiya', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-03-29 12:48:57', '2001-03-29 12:48:57'),
(731, 'Niger', 'Mashegun', 'Sohon Rami', 'phc  beji', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-03-30 12:48:57', '2001-03-30 12:48:57'),
(732, 'Niger', 'Mashegun', 'Baban Rami', 'phc likyaule', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-03-31 12:48:57', '2001-03-31 12:48:57'),
(733, 'Niger', 'Mashegun', 'Baban Rami', 'phc masucci', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-01 12:48:57', '2001-04-01 12:48:57'),
(734, 'Niger', 'Mashegun', 'Baban Rami', 'phc k/ram', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-02 12:48:57', '2001-04-02 12:48:57'),
(735, 'Niger', 'Mashegun', 'Baban Rami', 'phc baban rami', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-03 12:48:57', '2001-04-03 12:48:57'),
(736, 'Niger', 'Mashegun', 'Mashegun', 'phc  tenangi', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-04 12:48:57', '2001-04-04 12:48:57'),
(737, 'Niger', 'Mashegun', 'Mashegun', 'phc mashegu', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-05 12:48:57', '2001-04-05 12:48:57'),
(738, 'Niger', 'Mashegun', 'Mashegun', 'phc  kawo', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-06 12:48:57', '2001-04-06 12:48:57'),
(739, 'Niger', 'Mashegun', 'Mashegun', 'phc  jemaku', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-07 12:48:57', '2001-04-07 12:48:57'),
(740, 'Niger', 'Mashegun', 'Mashegun', 'phc  buzana', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-08 12:48:57', '2001-04-08 12:48:57'),
(741, 'Niger', 'Mashegun', 'Mashegun', 'phc  babagi', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-09 12:48:57', '2001-04-09 12:48:57'),
(742, 'Niger', 'Mashegun', 'Kabogi', 'chc  kaboji', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-10 12:48:57', '2001-04-10 12:48:57'),
(743, 'Niger', 'Mashegun', 'Kabogi', 'phc  adogo', 'Physician Doctor For Social Justice', 'semi4real2000@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-11 12:48:57', '2001-04-11 12:48:57'),
(744, 'Niger', 'Mashegun', 'Manigi', 'phc  ubegi', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-12 12:48:57', '2001-04-12 12:48:57'),
(745, 'Niger', 'Mashegun', 'Manigi', 'phc  manig', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-13 12:48:57', '2001-04-13 12:48:57'),
(746, 'Niger', 'Mashegun', 'Manigi', 'phc  eddan', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-14 12:48:57', '2001-04-14 12:48:57'),
(747, 'Niger', 'Mashegun', 'Manigi', 'mphc  makera', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-15 12:48:57', '2001-04-15 12:48:57'),
(748, 'Niger', 'Mashegun', 'Kasanga', 'phc  kasanga', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-16 12:48:57', '2001-04-16 12:48:57'),
(749, 'Niger', 'Mashegun', 'Kasanga', 'phc  igade', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-17 12:48:57', '2001-04-17 12:48:57'),
(750, 'Niger', 'Mashegun', 'Kasanga', 'phc gobirawa', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-18 12:48:57', '2001-04-18 12:48:57'),
(751, 'Niger', 'Mashegun', 'Kasanga', 'phc g/kwanu', 'Damisa Foundation', 'treasuregammi40@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-19 12:48:57', '2001-04-19 12:48:57'),
(752, 'Niger', 'Lapai', 'Birni Maza', 'KAWU PHCC', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-20 12:48:57', '2001-04-20 12:48:57'),
(753, 'Niger', 'Lapai', 'Birni Maza', 'MAIJAKI PHCC', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-21 12:48:57', '2001-04-21 12:48:57'),
(754, 'Niger', 'Lapai', 'Birni Maza', 'DANGANA HEALTH CENTRE', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-22 12:48:57', '2001-04-22 12:48:57'),
(755, 'Niger', 'Lapai', 'Birni Maza', 'TASHIBO HEALTH CENTRE', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-23 12:48:57', '2001-04-23 12:48:57'),
(756, 'Niger', 'Lapai', 'Birni Maza', 'SAMINAKA PHCC', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-24 12:48:57', '2001-04-24 12:48:57'),
(757, 'Niger', 'Lapai', 'Arewa/Yanman', 'G.H LAPAI', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-25 12:48:57', '2001-04-25 12:48:57'),
(758, 'Niger', 'Lapai', 'Arewa/Yanman', 'SUDUGI HEALTH CENTRE', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-26 12:48:57', '2001-04-26 12:48:57'),
(759, 'Niger', 'Lapai', 'Arewa/Yanman', 'MUKUGI HEALTH CENTRE', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-27 12:48:57', '2001-04-27 12:48:57'),
(760, 'Niger', 'Lapai', 'Arewa/Yanman', 'COMP. HEALTH CENTRE LAPAI', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-28 12:48:57', '2001-04-28 12:48:57'),
(761, 'Niger', 'Lapai', 'Duma/Zago', '', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-29 12:48:57', '2001-04-29 12:48:57'),
(762, 'Niger', 'Lapai', 'Duma/Zago', 'KAPAKO PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-04-30 12:48:57', '2001-04-30 12:48:57'),
(763, 'Niger', 'Lapai', 'Duma/Zago', 'MAYAKI HEALTH CENTRE', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-01 12:48:57', '2001-05-01 12:48:57'),
(764, 'Niger', 'Lapai', 'Duma/Zago', 'NASSARAWA HEALTH CENTRE', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-02 12:48:57', '2001-05-02 12:48:57'),
(765, 'Niger', 'Lapai', 'Duma/Zago', 'DUMA PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-03 12:48:57', '2001-05-03 12:48:57'),
(766, 'Niger', 'Lapai', 'Gulu/Vasta', 'EDDO HEALTH CENTRE', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-04 12:48:57', '2001-05-04 12:48:57'),
(767, 'Niger', 'Lapai', 'Gulu/Vasta', 'ZABBO HEALTH CENTRE', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-05 12:48:57', '2001-05-05 12:48:57'),
(768, 'Niger', 'Lapai', 'Gulu/Vasta', 'GBEDAKO PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-06 12:48:57', '2001-05-06 12:48:57'),
(769, 'Niger', 'Lapai', 'Gulu/Vasta', 'GULU MCH (PHCC)', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-07 12:48:57', '2001-05-07 12:48:57'),
(770, 'Niger', 'Lapai', 'Takuti/Sheku', 'SHAKU MODEL PHCC', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-08 12:48:57', '2001-05-08 12:48:57'),
(771, 'Niger', 'Lapai', 'Takuti/Sheku', 'DAPUGI  HEALTH POST', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-09 12:48:57', '2001-05-09 12:48:57'),
(772, 'Niger', 'Lapai', 'Takuti/Sheku', 'GBACIDAN HEALTH CENTRE', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-10 12:48:57', '2001-05-10 12:48:57'),
(773, 'Niger', 'Lapai', 'Takuti/Sheku', 'GABI PHCC', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-11 12:48:57', '2001-05-11 12:48:57'),
(774, 'Niger', 'Lapai', 'Takuti/Sheku', 'ETSUGI HEALTH CENTRE', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-12 12:48:57', '2001-05-12 12:48:57'),
(775, 'Niger', 'Lapai', 'Takuti/Sheku', 'ZOLEGI HEALTH CENTRE', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-13 12:48:57', '2001-05-13 12:48:57'),
(776, 'Niger', 'Lapai', 'Takuti/Sheku', 'TAKUTI ABUJA HEALTH/C', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-14 12:48:57', '2001-05-14 12:48:57'),
(777, 'Niger', 'Lapai', 'Takuti/Sheku', 'TAKUTI SHABA PHCC', 'Child to Child Health Development Agency', 'childtochildhda@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-15 12:48:57', '2001-05-15 12:48:57'),
(778, 'Niger', 'Lapai', 'Kudus/Gabag', 'TAKALAFIYA HEALTH POST', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-16 12:48:57', '2001-05-16 12:48:57'),
(779, 'Niger', 'Lapai', 'Kudus/Gabag', 'LAPAI MCH (PHCC)', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-17 12:48:57', '2001-05-17 12:48:57'),
(780, 'Niger', 'Lapai', 'Kudus/Gabag', 'LAPAI TOWN DISPENSARY', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-18 12:48:57', '2001-05-18 12:48:57'),
(781, 'Niger', 'Wushishi', 'Zungeru', 'PCH KALIKO', 'Amana Rural Peoples Health Advocacy', 'lopesniyi@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-19 12:48:57', '2001-05-19 12:48:57'),
(782, 'Niger', 'Wushishi', 'Zungeru', 'PHC KANKARE', 'Amana Rural Peoples Health Advocacy', 'lopesniyi@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-20 12:48:57', '2001-05-20 12:48:57'),
(783, 'Niger', 'Wushishi', 'Zungeru', 'CHC ZUNGERU', 'Amana Rural Peoples Health Advocacy', 'lopesniyi@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-21 12:48:57', '2001-05-21 12:48:57'),
(784, 'Niger', 'Wushishi', 'Kanwuri', '', 'Pearls Care Initiative', 'pearlscareinitiativeminna13@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-22 12:48:57', '2001-05-22 12:48:57'),
(785, 'Niger', 'Wushishi', 'Kodo', 'PHC KANKO', 'Pearls Care Initiative', 'pearlscareinitiativeminna13@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-23 12:48:57', '2001-05-23 12:48:57'),
(786, 'Niger', 'Wushishi', 'Kodo', 'PHC MAKUSIDI', 'Pearls Care Initiative', 'pearlscareinitiativeminna13@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-24 12:48:57', '2001-05-24 12:48:57'),
(787, 'Niger', 'Wushishi', 'Maito', 'PHC DABBE', 'Pearls Care Initiative', 'pearlscareinitiativeminna13@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-25 12:48:57', '2001-05-25 12:48:57'),
(788, 'Niger', 'Wushishi', 'Maito', 'PHC MAITO', 'Pearls Care Initiative', 'pearlscareinitiativeminna13@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-26 12:48:57', '2001-05-26 12:48:57'),
(789, 'Niger', 'Wushishi', 'Lokogoma', 'PHC NAGENU', 'Pearls Care Initiative', 'pearlscareinitiativeminna13@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-27 12:48:57', '2001-05-27 12:48:57'),
(790, 'Niger', 'Wushishi', 'Lokogoma', 'PHC LOKOGOMA', 'Pearls Care Initiative', 'pearlscareinitiativeminna13@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-28 12:48:57', '2001-05-28 12:48:57'),
(791, 'Niger', 'Wushishi', 'Sabon Gari', 'PHC BANKOGI', 'Amana Rural Peoples Health Advocacy', 'lopesniyi@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-29 12:48:57', '2001-05-29 12:48:57'),
(792, 'Niger', 'Wushishi', 'Sabon Gari', 'MCH WUSHISHI', 'Amana Rural Peoples Health Advocacy', 'lopesniyi@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-30 12:48:57', '2001-05-30 12:48:57'),
(793, 'Niger', 'Wushishi', 'Sabon Gari', 'GH WUSHISHI', 'Amana Rural Peoples Health Advocacy', 'lopesniyi@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-05-31 12:48:57', '2001-05-31 12:48:57'),
(794, 'Niger', 'Bosso', 'Shatta', 'PHC MADAKO', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-01 12:48:57', '2001-06-01 12:48:57'),
(795, 'Niger', 'Bosso', 'Shatta', 'PHC ZINARI', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-02 12:48:57', '2001-06-02 12:48:57'),
(796, 'Niger', 'Bosso', 'Shatta', 'PHC PYATA', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-03 12:48:57', '2001-06-03 12:48:57'),
(797, 'Niger', 'Bosso', 'Shatta', 'PHC SHATTA', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-04 12:48:57', '2001-06-04 12:48:57'),
(798, 'Niger', 'Bosso', 'Shatta', 'PHC GUDUGUDU', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-05 12:48:57', '2001-06-05 12:48:57'),
(799, 'Niger', 'Bosso', 'Garatu', 'PHC TS/ DAGAH', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-06 12:48:57', '2001-06-06 12:48:57'),
(800, 'Niger', 'Bosso', 'Garatu', 'PHC S/DAGAH', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-07 12:48:57', '2001-06-07 12:48:57'),
(801, 'Niger', 'Bosso', 'Garatu', 'PHC POMPOM', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-08 12:48:57', '2001-06-08 12:48:57'),
(802, 'Niger', 'Bosso', 'Garatu', 'PHC G/MONGORO', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-09 12:48:57', '2001-06-09 12:48:57'),
(803, 'Niger', 'Bosso', 'Garatu', 'PHC G/KWANO', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-10 12:48:57', '2001-06-10 12:48:57'),
(804, 'Niger', 'Bosso', 'Garatu', 'PHC GARATU', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-11 12:48:57', '2001-06-11 12:48:57'),
(805, 'Niger', 'Bosso', 'Garatu', 'PHC BAHANYA', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-12 12:48:57', '2001-06-12 12:48:57'),
(806, 'Niger', 'Bosso', 'Chanchaga', 'PHC Kadna', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-13 12:48:57', '2001-06-13 12:48:57'),
(807, 'Niger', 'Bosso', 'Chanchaga', 'PPFN', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-14 12:48:57', '2001-06-14 12:48:57'),
(808, 'Niger', 'Bosso', 'Chanchaga', 'PHC Shango', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-15 12:48:57', '2001-06-15 12:48:57'),
(809, 'Niger', 'Bosso', 'Chanchaga', 'Barrack Clinic', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-16 12:48:57', '2001-06-16 12:48:57'),
(810, 'Niger', 'Bosso', 'Maikunkele', 'PHC R/YASHI', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-17 12:48:57', '2001-06-17 12:48:57'),
(811, 'Niger', 'Bosso', 'Maikunkele', 'NAF CLINIC', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-18 12:48:57', '2001-06-18 12:48:57'),
(812, 'Niger', 'Bosso', 'Maikunkele', 'PHC MAYAWI', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-19 12:48:57', '2001-06-19 12:48:57'),
(813, 'Niger', 'Bosso', 'Maikunkele', 'PHCMAI/QUARTER', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-20 12:48:57', '2001-06-20 12:48:57'),
(814, 'Niger', 'Bosso', 'Maikunkele', 'MCH MAIKUNKELE', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-21 12:48:57', '2001-06-21 12:48:57'),
(815, 'Niger', 'Bosso', 'Maikunkele', 'PHC KIYOLA', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-22 12:48:57', '2001-06-22 12:48:57'),
(816, 'Niger', 'Bosso', 'Maikunkele', 'PHC JIMI', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-23 12:48:57', '2001-06-23 12:48:57'),
(817, 'Niger', 'Bosso', 'Maikunkele', 'PHC JIKUCHI', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-24 12:48:57', '2001-06-24 12:48:57'),
(818, 'Niger', 'Bosso', 'Maikunkele', 'PHC JANGARU', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-25 12:48:57', '2001-06-25 12:48:57'),
(819, 'Niger', 'Bosso', 'Maikunkele', 'PHC GBEDODNAI', 'Youth For Christ Nigeria', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-26 12:48:57', '2001-06-26 12:48:57'),
(820, 'Niger', 'Bosso', 'Beji', 'PHC BARKUTA', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-27 12:48:57', '2001-06-27 12:48:57'),
(821, 'Niger', 'Bosso', 'Beji', 'BHC BEJI', 'Global Promoters For Community Initiative', 'prmtrs@yahoo.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-28 12:48:57', '2001-06-28 12:48:57'),
(822, 'Niger', 'Bosso', 'Kodo', 'PHC ZOKOGI', 'Youth For Christ Nigeria', 'yfcnigeria@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-29 12:48:57', '2001-06-29 12:48:57'),
(823, 'Niger', 'Bosso', 'Kodo', 'PHC TS/KAMPANI', 'Youth For Christ Nigeria', 'yfcnigeria@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-06-30 12:48:57', '2001-06-30 12:48:57'),
(824, 'Niger', 'Bosso', 'Kodo', 'PHC TSADOGONNA', 'Youth For Christ Nigeria', 'yfcnigeria@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-01 12:48:57', '2001-07-01 12:48:57'),
(825, 'Niger', 'Bosso', 'Kodo', 'PHC TANDIGI', 'Youth For Christ Nigeria', 'yfcnigeria@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-02 12:48:57', '2001-07-02 12:48:57'),
(826, 'Niger', 'Bosso', 'Kodo', 'PHC PAI', 'Youth For Christ Nigeria', 'yfcnigeria@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-03 12:48:57', '2001-07-03 12:48:57'),
(827, 'Niger', 'Bosso', 'Kodo', 'MPHC KODO', 'Youth For Christ Nigeria', 'yfcnigeria@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-04 12:48:57', '2001-07-04 12:48:57'),
(828, 'Niger', 'Bosso', 'Kodo', 'PHC KAPULAGI', 'Youth For Christ Nigeria', 'yfcnigeria@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-05 12:48:57', '2001-07-05 12:48:57'),
(829, 'Niger', 'Shiroro', 'Bangajiya', 'ABEPMA B PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-06 12:48:57', '2001-07-06 12:48:57'),
(830, 'Niger', 'Shiroro', 'Bangajiya', 'KUBUSI PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-07 12:48:57', '2001-07-07 12:48:57'),
(831, 'Niger', 'Shiroro', 'Bangajiya', 'ABEPMA A PHC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-08 12:48:57', '2001-07-08 12:48:57'),
(832, 'Niger', 'Shiroro', 'Bangajiya', 'YANGUWA PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-09 12:48:57', '2001-07-09 12:48:57'),
(833, 'Niger', 'Shiroro', 'Bangajiya', 'EBBE PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-10 12:48:57', '2001-07-10 12:48:57'),
(834, 'Niger', 'Shiroro', 'Bangajiya', 'K/DANJUMA PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-11 12:48:57', '2001-07-11 12:48:57'),
(835, 'Niger', 'Shiroro', 'Bangajiya', 'GBAYI PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-12 12:48:57', '2001-07-12 12:48:57'),
(836, 'Niger', 'Shiroro', 'Bangajiya', 'RAFIN KUKA PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-13 12:48:57', '2001-07-13 12:48:57'),
(837, 'Niger', 'Shiroro', 'Bangajiya', 'SABON GARIi PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-14 12:48:57', '2001-07-14 12:48:57'),
(838, 'Niger', 'Shiroro', 'Bangajiya', 'MCH KUTA', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-15 12:48:57', '2001-07-15 12:48:57'),
(839, 'Niger', 'Shiroro', 'Ubandoma', 'UNG. MAKAMA PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-16 12:48:57', '2001-07-16 12:48:57'),
(840, 'Niger', 'Shiroro', 'Ubandoma', 'OSHA  PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-17 12:48:57', '2001-07-17 12:48:57'),
(841, 'Niger', 'Shiroro', 'Ubandoma', 'ASHIRIWE PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-18 12:48:57', '2001-07-18 12:48:57'),
(842, 'Niger', 'Shiroro', 'Ubandoma', 'AGBOLO PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-19 12:48:57', '2001-07-19 12:48:57'),
(843, 'Niger', 'Shiroro', 'Ubandoma', 'TASHA KAU PHC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-20 12:48:57', '2001-07-20 12:48:57'),
(844, 'Niger', 'Shiroro', 'Ubandoma', 'TALAWYI PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-21 12:48:57', '2001-07-21 12:48:57'),
(845, 'Niger', 'Shiroro', 'Ubandoma', 'KWAITA  PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-22 12:48:57', '2001-07-22 12:48:57'),
(846, 'Niger', 'Shiroro', 'Ubandoma', 'TAWO  PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-23 12:48:57', '2001-07-23 12:48:57'),
(847, 'Niger', 'Shiroro', 'Ubandoma', 'TUMTUM PHCC', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-24 12:48:57', '2001-07-24 12:48:57'),
(848, 'Niger', 'Shiroro', 'Ubandoma', 'Gen  Hosp. KUTA', 'Initiative For Social Development', 'Isodaf4africa@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-25 12:48:57', '2001-07-25 12:48:57'),
(849, 'Niger', 'Shiroro', 'Egwa/Gwada', 'TAPILA  PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-26 12:48:57', '2001-07-26 12:48:57'),
(850, 'Niger', 'Shiroro', 'Egwa/Gwada', 'MDG G/GWARI', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-27 12:48:57', '2001-07-27 12:48:57'),
(851, 'Niger', 'Shiroro', 'Egwa/Gwada', 'MCH GWADA', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-28 12:48:57', '2001-07-28 12:48:57'),
(852, 'Niger', 'Shiroro', 'Egwa/Gwada', 'ZARI  PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-29 12:48:57', '2001-07-29 12:48:57'),
(853, 'Niger', 'Shiroro', 'Egwa/Gwada', 'GBAIKO  PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-30 12:48:57', '2001-07-30 12:48:57'),
(854, 'Niger', 'Shiroro', 'Egwa/Gwada', 'EGWA  PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-07-31 12:48:57', '2001-07-31 12:48:57'),
(855, 'Niger', 'Shiroro', 'Shie/Gunu', 'NADOGBIN PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-01 12:48:57', '2001-08-01 12:48:57'),
(856, 'Niger', 'Shiroro', 'Shie/Gunu', 'GBACHIPE PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-02 12:48:57', '2001-08-02 12:48:57'),
(857, 'Niger', 'Shiroro', 'Shie/Gunu', 'NAVI PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-03 12:48:57', '2001-08-03 12:48:57');
INSERT INTO `health_facilities` (`id`, `State`, `LGA`, `Ward`, `Facility`, `CBO`, `CBO_Email`, `SPO`, `SPO_Email`, `status`, `created_at`, `updated_at`) VALUES
(858, 'Niger', 'Shiroro', 'Shie/Gunu', 'LAPA  PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-04 12:48:57', '2001-08-04 12:48:57'),
(859, 'Niger', 'Shiroro', 'Shie/Gunu', 'NUBUTA  PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-05 12:48:57', '2001-08-05 12:48:57'),
(860, 'Niger', 'Shiroro', 'Shie/Gunu', 'GBASSE  PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-06 12:48:57', '2001-08-06 12:48:57'),
(861, 'Niger', 'Shiroro', 'Shie/Gunu', 'NAKOMI PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-07 12:48:57', '2001-08-07 12:48:57'),
(862, 'Niger', 'Shiroro', 'Shie/Gunu', 'MUTUN DAYA PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-08 12:48:57', '2001-08-08 12:48:57'),
(863, 'Niger', 'Shiroro', 'Shie/Gunu', 'SHAKWATU PHCC', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-09 12:48:57', '2001-08-09 12:48:57'),
(864, 'Niger', 'Shiroro', 'Shie/Gunu', 'BHC SHE', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-10 12:48:57', '2001-08-10 12:48:57'),
(865, 'Niger', 'Shiroro', 'Shie/Gunu', 'BHC GUNU', 'Community Aid Initiative Empowerment', 'communityaidinitiative14@gmail.com', 'Abdulkareem Tijani', 'tijaniabdulkareem02@gmail.com', 'active', '2001-08-11 12:48:57', '2001-08-11 12:48:57'),
(866, 'Ogun', 'Yewa South', 'Owode 2', 'Ipaja Health Clinic', 'Show Care Foundation', 'showcarefoundation@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-12 12:48:57', '2001-08-12 12:48:57'),
(867, 'Ogun', 'Yewa South', 'Owode 2', 'Alaanu Model Primary Health Care Centre', 'Show Care Foundation', 'showcarefoundation@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-13 12:48:57', '2001-08-13 12:48:57'),
(868, 'Ogun', 'Yewa South', 'Owode 1 (Ilobi Erinja)', 'Ojuelegba  Health Clinic', 'Health Matters Incorporation', 'healthmatters2007@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-14 12:48:57', '2001-08-14 12:48:57'),
(869, 'Ogun', 'Yewa South', 'Owode 1 (Ilobi Erinja)', 'Eredo Health Clinic', 'Health Matters Incorporation', 'healthmatters2007@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-15 12:48:57', '2001-08-15 12:48:57'),
(870, 'Ogun', 'Yewa South', 'Owode 1 (Ilobi Erinja)', 'Alagbon Health Clinic', 'Health Matters Incorporation', 'healthmatters2007@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-16 12:48:57', '2001-08-16 12:48:57'),
(871, 'Ogun', 'Yewa South', 'Iwoye', 'Iwoye Health Clinic', 'Show Care Foundation', 'showcarefoundation@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-17 12:48:57', '2001-08-17 12:48:57'),
(872, 'Ogun', 'Yewa South', 'Iwoye', 'Igbeji Health Centre', 'Show Care Foundation', 'showcarefoundation@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-18 12:48:57', '2001-08-18 12:48:57'),
(873, 'Ogun', 'Yewa South', 'Ilaro 3', 'Erinja Health Clinic', 'Health Matters Incorporation', 'healthmatters2007@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-19 12:48:57', '2001-08-19 12:48:57'),
(874, 'Ogun', 'Odeda', 'Obantoko', 'Obatonko Health Clinic', 'Catholic Foundation for Life', 'akinsimo@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-20 12:48:57', '2001-08-20 12:48:57'),
(875, 'Ogun', 'Odeda', 'Obantoko', 'CAMP (AYAA) CLINIC', 'Catholic Foundation for Life', 'akinsimo@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-21 12:48:57', '2001-08-21 12:48:57'),
(876, 'Ogun', 'Odeda', 'Osiele', 'Osiele Health Clinic', 'Catholic Foundation for Life', 'akinsimo@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-22 12:48:57', '2001-08-22 12:48:57'),
(877, 'Ogun', 'Odeda', 'Itesi', 'EMULU HEALTH CLINIC', 'Youth Future Savers Initiative', 'greatakok@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-23 12:48:57', '2001-08-23 12:48:57'),
(878, 'Ogun', 'Odeda', 'Odeda', 'Olugbo  Health Clinic', 'Youth Future Savers Initiative', 'greatakok@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-24 12:48:57', '2001-08-24 12:48:57'),
(879, 'Ogun', 'Odeda', 'Odeda', 'Odeda Health Clinic', 'Youth Future Savers Initiative', 'greatakok@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-25 12:48:57', '2001-08-25 12:48:57'),
(880, 'Ogun', 'Odeda', 'Odeda', 'BAALE OGUNBAYO HEALTH CLINIC', 'Youth Future Savers Initiative', 'greatakok@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-26 12:48:57', '2001-08-26 12:48:57'),
(881, 'Ogun', 'Ewekoro', 'Asa-Yobo', 'Asa-Yobo Health Clinic', 'Donmary Human & Community Enhancement Init.', '', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-27 12:48:57', '2001-08-27 12:48:57'),
(882, 'Ogun', 'Ewekoro', 'Asa-Yobo', 'Asa-obintin Health Clinic', 'Donmary Human & Community Enhancement Init.', '', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-28 12:48:57', '2001-08-28 12:48:57'),
(883, 'Ogun', 'Ewekoro', 'Itori', 'General Hospital Itori', 'Donmary Human & Community Enhancement Init.', '', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-29 12:48:57', '2001-08-29 12:48:57'),
(884, 'Ogun', 'Ewekoro', 'Itori', 'Itori Primary Health Care Centre', 'Donmary Human & Community Enhancement Init.', '', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-30 12:48:57', '2001-08-30 12:48:57'),
(885, 'Ogun', 'Ewekoro', 'Itori', 'EGBADO AJEGUNLE HEALTH CENTRE', 'Donmary Human & Community Enhancement Init.', '', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-08-31 12:48:57', '2001-08-31 12:48:57'),
(886, 'Ogun', 'Ewekoro', 'Obada', 'OBADA PRIMARY HEALTH CENTRE', 'Adem Community & Human Development Foundation', 'adesinaadesegun@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-01 12:48:57', '2001-09-01 12:48:57'),
(887, 'Ogun', 'Ewekoro', 'Obada', 'Mechanic Village Health Post', 'Adem Community & Human Development Foundation', 'adesinaadesegun@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-02 12:48:57', '2001-09-02 12:48:57'),
(888, 'Ogun', 'Ewekoro', 'Obada', 'Banjoko Health Clinic', 'Adem Community & Human Development Foundation', 'adesinaadesegun@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-03 12:48:57', '2001-09-03 12:48:57'),
(889, 'Ogun', 'Ewekoro', 'Arigbajo', 'ARIGBAJO PRIMARY HEALTH CENTRE', 'Adem Community & Human Development Foundation', 'adesinaadesegun@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-04 12:48:57', '2001-09-04 12:48:57'),
(890, 'Ogun', 'Imeko Afon', 'Papalanto', 'Sowunmi Health Clinic', 'Able Trust Foundation', 'Abletrustimeko2011@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-05 12:48:57', '2001-09-05 12:48:57'),
(891, 'Ogun', 'Imeko Afon', 'Papalanto', 'Papalanto Health Clinic', 'Able Trust Foundation', 'Abletrustimeko2011@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-06 12:48:57', '2001-09-06 12:48:57'),
(892, 'Ogun', 'Imeko Afon', 'Ilara', 'Ilara Health Clinic', 'Women Advocacy On Hiv/Aid & Prevention Of Other Diseases', 'wahpoda@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-07 12:48:57', '2001-09-07 12:48:57'),
(893, 'Ogun', 'Imeko Afon', 'Imeko', 'IMEKO PRIMARY HEALTH CENTRE', 'Women Advocacy On Hiv/Aid & Prevention Of Other Diseases', 'wahpoda@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-08 12:48:57', '2001-09-08 12:48:57'),
(894, 'Ogun', 'Imeko Afon', 'Afon', 'Afon Health clinic', 'Women Advocacy On Hiv/Aid & Prevention Of Other Diseases', 'wahpoda@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-09 12:48:57', '2001-09-09 12:48:57'),
(895, 'Ogun', 'Abeokuta South', 'Kuto', 'Oba Gbadebo Health Clinic', 'Food Conservative and Waste Elimination Initiative', 'layoipinmoye@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-10 12:48:57', '2001-09-10 12:48:57'),
(896, 'Ogun', 'Abeokuta South', 'Ibara 2 - Oke Ilewo', 'Ijemo Health Centre', 'Food Conservative and Waste Elimination Initiative', 'layoipinmoye@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-11 12:48:57', '2001-09-11 12:48:57'),
(897, 'Ogun', 'Abeokuta South', 'Ibara 1 - Adigbe', 'Owode Health Clinic', 'Food Conservative and Waste Elimination Initiative', 'layoipinmoye@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-12 12:48:57', '2001-09-12 12:48:57'),
(898, 'Ogun', 'Abeokuta South', 'Ibara 1 - Adigbe', 'Owuwu Health Clinic', 'Food Conservative and Waste Elimination Initiative', 'layoipinmoye@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-13 12:48:57', '2001-09-13 12:48:57'),
(899, 'Ogun', 'Abeokuta South', 'Ijaje 1 - Iso Ape', 'Ijeja Model Clinic', 'Food Conservative and Waste Elimination Initiative', 'layoipinmoye@yahoo.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-14 12:48:57', '2001-09-14 12:48:57'),
(900, 'Ogun', 'Abeokuta South', 'Ake 3 - Abule Oloni', 'Adigbe Medical Centre', 'Courageous People Health & Development Initiative', 'cphdinitiative@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-15 12:48:57', '2001-09-15 12:48:57'),
(901, 'Ogun', 'Abeokuta South', 'Ake 2 - kugba', 'Oba Ademola Maternity Health Centre', 'Courageous People Health & Development Initiative', 'cphdinitiative@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-16 12:48:57', '2001-09-16 12:48:57'),
(902, 'Ogun', 'Abeokuta South', 'Ake 2 - kugba', 'Ijaye Health Pos', 'Courageous People Health & Development Initiative', 'cphdinitiative@gmail.com', 'Chika Obioma', 'chikaobioma90@gmail.com', 'active', '2001-09-17 12:48:57', '2001-09-17 12:48:57'),
(903, 'Osun', 'Osogbo', 'Alekuwodo', 'Alekuwodo Primary Health Centre', 'Primary Health Care & Health Management', 'prihemac@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-18 12:48:57', '2001-09-18 12:48:57'),
(904, 'Osun', 'Osogbo', 'Jagun B', 'Oluguna Primary Health Centre', 'Primary Health Care & Health Management', 'prihemac@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-19 12:48:57', '2001-09-19 12:48:57'),
(905, 'Osun', 'Osogbo', 'Ataoja D', 'Ogo-Oluwa Primary Health Centre', 'Primary Health Care & Health Management', 'prihemac@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-20 12:48:57', '2001-09-20 12:48:57'),
(906, 'Osun', 'Osogbo', 'Ataoja D', 'Odi-Olowo Primary Health Centre', 'Primary Health Care & Health Management', 'prihemac@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-21 12:48:57', '2001-09-21 12:48:57'),
(907, 'Osun', 'Osogbo', 'Babakekere', 'Oke-Abesu Primary Health Centre', 'Primary Health Care & Health Management', 'prihemac@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-22 12:48:57', '2001-09-22 12:48:57'),
(908, 'Osun', 'Osogbo', 'Ayepe', 'Owode Primary Health Centre.', 'Hope For Family Development Initiative', 'hopeforfamilydevelopment@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-23 12:48:57', '2001-09-23 12:48:57'),
(909, 'Osun', 'Osogbo', 'Ayepe', 'Isale Agbara Comprehensive Health Centre', 'Hope For Family Development Initiative', 'hopeforfamilydevelopment@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-24 12:48:57', '2001-09-24 12:48:57'),
(910, 'Osun', 'Osogbo', 'Ayepe', 'Ayepe Comprehensive Health Centre', 'Hope For Family Development Initiative', 'hopeforfamilydevelopment@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-25 12:48:57', '2001-09-25 12:48:57'),
(911, 'Osun', 'Osogbo', 'Ayepe', 'Akede Primary Health Centre', 'Hope For Family Development Initiative', 'hopeforfamilydevelopment@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-26 12:48:57', '2001-09-26 12:48:57'),
(912, 'Osun', 'Osogbo', 'Ayepe', 'Ago-Ayo Primary Health Centre', 'Hope For Family Development Initiative', 'hopeforfamilydevelopment@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-27 12:48:57', '2001-09-27 12:48:57'),
(913, 'Osun', 'Ife East', 'Moore', 'Okeoloyinbo Primary Health Centre', 'Peniel Global Foundation', 'pgfngo@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-28 12:48:57', '2001-09-28 12:48:57'),
(914, 'Osun', 'Ife East', 'Moore', 'Oja Ife Primary Health Centre', 'Peniel Global Foundation', 'pgfngo@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-29 12:48:57', '2001-09-29 12:48:57'),
(915, 'Osun', 'Ife East', 'Moore', 'Moore Health Centre', 'Peniel Global Foundation', 'pgfngo@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-09-30 12:48:57', '2001-09-30 12:48:57'),
(916, 'Osun', 'Ife East', 'Moore', 'Ajigbore Health Centre', 'Peniel Global Foundation', 'pgfngo@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-01 12:48:57', '2001-10-01 12:48:57'),
(917, 'Osun', 'Ife East', 'Moore', 'Agric. Opa Primary Health Centre', 'Peniel Global Foundation', 'pgfngo@yahoo.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-02 12:48:57', '2001-10-02 12:48:57'),
(918, 'Osun', 'Ife East', 'Ilode 1', 'Odowara Health Centre', 'Family Advancement and Sustainable Development Initiative', 'ogunbamiwohenry@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-03 12:48:57', '2001-10-03 12:48:57'),
(919, 'Osun', 'Ife East', 'Okewere 2', 'Gbodo Health Centre', 'Family Advancement and Sustainable Development Initiative', 'ogunbamiwohenry@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-04 12:48:57', '2001-10-04 12:48:57'),
(920, 'Osun', 'Ife East', 'Okewere 1', 'Iloro Health Centre', 'Family Advancement and Sustainable Development Initiative', 'ogunbamiwohenry@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-05 12:48:57', '2001-10-05 12:48:57'),
(921, 'Osun', 'Ife Central', 'Ilare 2', 'Sabo Olaoluwa Primary Health Centre', 'Centre For Family Mission', 'celsums@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-06 12:48:57', '2001-10-06 12:48:57'),
(922, 'Osun', 'Ife Central', 'Ilare 2', 'Fajuyi Primary Health Centre', 'Centre For Family Mission', 'celsums@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-07 12:48:57', '2001-10-07 12:48:57'),
(923, 'Osun', 'Ife Central', 'Ilare2', 'Arubiewe Comprehensive Health Centre', 'Centre For Family Mission', 'celsums@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-08 12:48:57', '2001-10-08 12:48:57'),
(924, 'Osun', 'Ife Central', 'Iremo 5', 'Fegun Primary Health Centre', 'Centre For Family Mission', 'celsums@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-09 12:48:57', '2001-10-09 12:48:57'),
(925, 'Osun', 'Ife Central', 'Iremo 3', 'Oja Titun Primary Health Centre', 'Justice Development And Peace Makers Centre', 'jdpmc2009@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-10 12:48:57', '2001-10-10 12:48:57'),
(926, 'Osun', 'Ife Central', 'Iremo 2', 'Eleyele Primary Health Centre', 'Justice Development And Peace Makers Centre', 'jdpmc2009@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-11 12:48:57', '2001-10-11 12:48:57'),
(927, 'Osun', 'Ife Central', 'Ilare 1', 'MbabiMbayo Primary Health Centre', 'Justice Development And Peace Makers Centre', 'jdpmc2009@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-12 12:48:57', '2001-10-12 12:48:57'),
(928, 'Osun', 'Ife Central', 'Ilare 1', 'Igboya Primary Health Centre', 'Justice Development And Peace Makers Centre', 'jdpmc2009@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-13 12:48:57', '2001-10-13 12:48:57'),
(929, 'Osun', 'Ede North', 'Buari - Isibo', 'Oja-Timi Primary Health Centre', 'Save Our Land', 'fakeyeanthonolutope@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-14 12:48:57', '2001-10-14 12:48:57'),
(930, 'Osun', 'Ede North', 'Saboagbogbe', 'Oke-Gada Primary Health Centre', 'Save Our Land', 'fakeyeanthonolutope@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-15 12:48:57', '2001-10-15 12:48:57'),
(931, 'Osun', 'Ede North', 'Oloba - Apatara', 'Isale Oyeku Primary Health Centre', 'Save Our Land', 'fakeyeanthonolutope@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-16 12:48:57', '2001-10-16 12:48:57'),
(932, 'Osun', 'Ede North', 'Olusokun', 'Olusokun Primary Health Centre', 'Neighbourhood Support And Family Health Development', 'cnasfahdo@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-17 12:48:57', '2001-10-17 12:48:57'),
(933, 'Osun', 'Ede North', 'Olusokun', 'Abere Health Clinic', 'Neighbourhood Support And Family Health Development', 'cnasfahdo@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-18 12:48:57', '2001-10-18 12:48:57'),
(934, 'Osun', 'Ede North', 'Ologun - Agbakim', 'Adodo Primary Health Centre', 'Neighbourhood Support And Family Health Development', 'cnasfahdo@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-19 12:48:57', '2001-10-19 12:48:57'),
(935, 'Osun', 'Boripe', 'Isale - Ofa', 'Isale Offa Mellinum Development Goal Clinic', 'Caring Hands International', 'caringhandsint@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-20 12:48:57', '2001-10-20 12:48:57'),
(936, 'Osun', 'Boripe', 'oke Aree', 'Oke Aree Primary Health Centre', 'Caring Hands International', 'caringhandsint@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-21 12:48:57', '2001-10-21 12:48:57'),
(937, 'Osun', 'Boripe', 'Iso Ege', 'Iso Ege Primary Health Centre', 'Caring Hands International', 'caringhandsint@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-22 12:48:57', '2001-10-22 12:48:57'),
(938, 'Osun', 'Boripe', 'Isale - Asa', 'UNICEF Iree Primary Health Centre', 'Clean Nation Foundation', 'cleannation29@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-23 12:48:57', '2001-10-23 12:48:57'),
(939, 'Osun', 'Boripe', 'Isale - Asa', 'Isale Asa Primary Health Centre', 'Clean Nation Foundation', 'cleannation29@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-24 12:48:57', '2001-10-24 12:48:57'),
(940, 'Osun', 'Boripe', 'Isale - Asa', 'Iree Comprehensive Health Centre', 'Clean Nation Foundation', 'cleannation29@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-25 12:48:57', '2001-10-25 12:48:57'),
(941, 'Osun', 'Boripe', 'Oloti', 'Oloti MDG Clinic', 'Clean Nation Foundation', 'cleannation29@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-26 12:48:57', '2001-10-26 12:48:57'),
(942, 'Osun', 'Boripe', 'Oloti', 'Iragbiji Comprehensive Health Centre', 'Clean Nation Foundation', 'cleannation29@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-27 12:48:57', '2001-10-27 12:48:57'),
(943, 'Osun', 'Boripe', 'Oke Ogi', 'Oke-Ogi Primary Health Centre', 'Caring Hands International', 'caringhandsint@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-28 12:48:57', '2001-10-28 12:48:57'),
(944, 'Osun', 'Boripe', 'Oke Ogi', 'Iree Model Primary Health Centre', 'Caring Hands International', 'caringhandsint@gmail.com', 'Amoto Segun David', 'amotodavid@gmail.com', 'active', '2001-10-29 12:48:57', '2001-10-29 12:48:57'),
(945, 'Taraba', 'Gashaka', 'Gayam', 'Pamweh Health Post', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-10-30 12:48:57', '2001-10-30 12:48:57'),
(946, 'Taraba', 'Gashaka', 'Gayam', 'Kunfan Dispensary', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-10-31 12:48:57', '2001-10-31 12:48:57'),
(947, 'Taraba', 'Gashaka', 'Gayam', 'Gayam  Primary Health Center', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-01 12:48:57', '2001-11-01 12:48:57'),
(948, 'Taraba', 'Gashaka', 'Mayo Selbe', 'Mayo-Selbe Maternity', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-02 12:48:57', '2001-11-02 12:48:57'),
(949, 'Taraba', 'Gashaka', 'Mayo Selbe', 'Mayo Jankasa Health Post', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-03 12:48:57', '2001-11-03 12:48:57'),
(950, 'Taraba', 'Gashaka', 'Mayo Selbe', 'Likwar Dispensary', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-04 13:48:57', '2001-11-04 13:48:57'),
(951, 'Taraba', 'Gashaka', 'Mayo Selbe', 'Goje Maternity', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-05 13:48:57', '2001-11-05 13:48:57'),
(952, 'Taraba', 'Gashaka', 'Jamtari', 'Kwatap', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-06 13:48:57', '2001-11-06 13:48:57'),
(953, 'Taraba', 'Gashaka', 'Jamtari', 'Karamti Maternal and Child Health', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-07 13:48:57', '2001-11-07 13:48:57'),
(954, 'Taraba', 'Gashaka', 'Jamtari', 'Jamtari Primary Health Center', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-08 13:48:57', '2001-11-08 13:48:57'),
(955, 'Taraba', 'Gashaka', 'Jamtari', 'Jamtari Maternity', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-09 13:48:57', '2001-11-09 13:48:57'),
(956, 'Taraba', 'Gashaka', 'Jamtari', 'Garin Yusuf Dispensary', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-10 13:48:57', '2001-11-10 13:48:57'),
(957, 'Taraba', 'Gashaka', 'Jamtari', 'Addagoro  MCH', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-11 13:48:57', '2001-11-11 13:48:57'),
(958, 'Taraba', 'Gashaka', 'Galimjina', 'Serti First Referral Hospital', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-12 13:48:57', '2001-11-12 13:48:57'),
(959, 'Taraba', 'Gashaka', 'Galimjina', 'Nyabar Dispensary', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-13 13:48:57', '2001-11-13 13:48:57'),
(960, 'Taraba', 'Gashaka', 'Galimjina', 'Gamen  MCH', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-14 13:48:57', '2001-11-14 13:48:57'),
(961, 'Taraba', 'Gashaka', 'Galimjina', 'Galimjina Dispensary', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-15 13:48:57', '2001-11-15 13:48:57'),
(962, 'Taraba', 'Gashaka', 'Galimjina', 'Bodel Primary Health Center', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-16 13:48:57', '2001-11-16 13:48:57'),
(963, 'Taraba', 'Gashaka', 'Serti B', 'Serti Ward B Sabon Gari Maternity', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-17 13:48:57', '2001-11-17 13:48:57'),
(964, 'Taraba', 'Gashaka', 'Serti B', 'Alfa Maternity Centre', 'United Methodise Church in Nigeria', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-18 13:48:57', '2001-11-18 13:48:57'),
(965, 'Taraba', 'Gashaka', 'Serti A', 'Tudun Haske Clinic', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-19 13:48:57', '2001-11-19 13:48:57'),
(966, 'Taraba', 'Gashaka', 'Serti A', 'Serti A Town Maternity', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-20 13:48:57', '2001-11-20 13:48:57'),
(967, 'Taraba', 'Gashaka', 'Serti A', 'Serti A Primary Health Center', 'Hope for Feature Generation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-21 13:48:57', '2001-11-21 13:48:57'),
(968, 'Taraba', 'Wukari', 'Chonku', 'Wana Health clinic', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-22 13:48:57', '2001-11-22 13:48:57'),
(969, 'Taraba', 'Wukari', 'Chonku', 'Tsinipanbes Dispensary', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-23 13:48:57', '2001-11-23 13:48:57'),
(970, 'Taraba', 'Wukari', 'Chonku', 'Tor-Musa Dispensary', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-24 13:48:57', '2001-11-24 13:48:57'),
(971, 'Taraba', 'Wukari', 'Chonku', 'Riti Health Clinic', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-25 13:48:57', '2001-11-25 13:48:57'),
(972, 'Taraba', 'Wukari', 'Chonku', 'Nwuban Dispensary', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-26 13:48:57', '2001-11-26 13:48:57'),
(973, 'Taraba', 'Wukari', 'Chonku', 'Ikyayor Health Clinic', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-27 13:48:57', '2001-11-27 13:48:57'),
(974, 'Taraba', 'Wukari', 'Chonku', 'Dapye Dispensary', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-28 13:48:57', '2001-11-28 13:48:57'),
(975, 'Taraba', 'Wukari', 'Chonku', 'Chonku Health Clinic (MDG)', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-29 13:48:57', '2001-11-29 13:48:57'),
(976, 'Taraba', 'Wukari', 'Chonku', 'Ando Igba Dispensary', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-11-30 13:48:57', '2001-11-30 13:48:57'),
(977, 'Taraba', 'Wukari', 'Rafin Kada', 'Toryina Dispensary', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-01 13:48:57', '2001-12-01 13:48:57'),
(978, 'Taraba', 'Wukari', 'Rafin Kada', 'Tor-Iorsha Dispensary', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-02 13:48:57', '2001-12-02 13:48:57'),
(979, 'Taraba', 'Wukari', 'Rafin Kada', 'Rafin-Kada CRCN Health clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-03 13:48:57', '2001-12-03 13:48:57'),
(980, 'Taraba', 'Wukari', 'Rafin Kada', 'Kpanawa Health Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-04 13:48:57', '2001-12-04 13:48:57'),
(981, 'Taraba', 'Wukari', 'Rafin Kada', 'Dafa Dispensary', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-05 13:48:57', '2001-12-05 13:48:57'),
(982, 'Taraba', 'Wukari', 'Rafin Kada', 'Ason Dispensary', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-06 13:48:57', '2001-12-06 13:48:57'),
(983, 'Taraba', 'Wukari', 'Puje', 'Wukari Maternal and Child Health Clinic', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-07 13:48:57', '2001-12-07 13:48:57'),
(984, 'Taraba', 'Wukari', 'Puje', 'Wukari CRCN Comprehensive Health Centre', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-08 13:48:57', '2001-12-08 13:48:57'),
(985, 'Taraba', 'Wukari', 'Puje', 'Shonhow Health Centre (Techin)', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-09 13:48:57', '2001-12-09 13:48:57'),
(986, 'Taraba', 'Wukari', 'Puje', 'Kinkiso Dispensary', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-10 13:48:57', '2001-12-10 13:48:57'),
(987, 'Taraba', 'Wukari', 'Puje', 'Hyuku Dispensary', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-11 13:48:57', '2001-12-11 13:48:57'),
(988, 'Taraba', 'Wukari', 'Puje', 'Ando-moto Health Center', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-12 13:48:57', '2001-12-12 13:48:57'),
(989, 'Taraba', 'Wukari', 'Avyi', 'Pwadzu Health Clinic', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-13 13:48:57', '2001-12-13 13:48:57'),
(990, 'Taraba', 'Wukari', 'Avyi', 'Biyama Hospita', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-14 13:48:57', '2001-12-14 13:48:57'),
(991, 'Taraba', 'Wukari', 'Avyi', 'Avyi Health Clinic (CRCN', 'New Generation and Social Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-15 13:48:57', '2001-12-15 13:48:57'),
(992, 'Taraba', 'Wukari', 'Hospital', 'Wapanghaku Health Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-16 13:48:57', '2001-12-16 13:48:57'),
(993, 'Taraba', 'Wukari', 'Bantaje', 'Tunari Health Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-17 13:48:57', '2001-12-17 13:48:57'),
(994, 'Taraba', 'Wukari', 'Bantaje', 'Tapare Sarki Dispensary', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-18 13:48:57', '2001-12-18 13:48:57'),
(995, 'Taraba', 'Wukari', 'Bantaje', 'Nyankwala Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-19 13:48:57', '2001-12-19 13:48:57'),
(996, 'Taraba', 'Wukari', 'Bantaje', 'Nwuko Health Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-20 13:48:57', '2001-12-20 13:48:57'),
(997, 'Taraba', 'Wukari', 'Bantaje', 'Nakambo Dispensary', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-21 13:48:57', '2001-12-21 13:48:57'),
(998, 'Taraba', 'Wukari', 'Bantaje', 'Mahanga Health Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-22 13:48:57', '2001-12-22 13:48:57'),
(999, 'Taraba', 'Wukari', 'Bantaje', 'Kambari Health Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-23 13:48:57', '2001-12-23 13:48:57'),
(1000, 'Taraba', 'Wukari', 'Bantaje', 'Gindin Dorowa Survival Health Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-24 13:48:57', '2001-12-24 13:48:57'),
(1001, 'Taraba', 'Wukari', 'Bantaje', 'Gindin Dorowa  MCH', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-25 13:48:57', '2001-12-25 13:48:57'),
(1002, 'Taraba', 'Wukari', 'Bantaje', 'Chedia Health Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-26 13:48:57', '2001-12-26 13:48:57'),
(1003, 'Taraba', 'Wukari', 'Bantaje', 'Bantaje Primary Health Clinic', 'Gammun Centre for Care in Nigeria and Development', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-27 13:48:57', '2001-12-27 13:48:57'),
(1004, 'Taraba', 'Zing', 'Bubong', 'Zippo Dispensary', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-28 13:48:57', '2001-12-28 13:48:57'),
(1005, 'Taraba', 'Zing', 'Bubong', 'Yonko Dispensary', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-29 13:48:57', '2001-12-29 13:48:57'),
(1006, 'Taraba', 'Zing', 'Bubong', 'Nbosung Dispensary (MDG)', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-30 13:48:57', '2001-12-30 13:48:57'),
(1007, 'Taraba', 'Zing', 'Bubong', 'Lapudingding Dispensary', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2001-12-31 13:48:57', '2001-12-31 13:48:57'),
(1008, 'Taraba', 'Zing', 'Bubong', 'Buzza Dispensary', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-01 13:48:57', '2002-01-01 13:48:57'),
(1009, 'Taraba', 'Zing', 'Bubong', 'Bosung Dispensary', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-02 13:48:57', '2002-01-02 13:48:57'),
(1010, 'Taraba', 'Zing', 'Yakoko', 'Yakoko Maternity Clinic', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-03 13:48:57', '2002-01-03 13:48:57'),
(1011, 'Taraba', 'Zing', 'Yakoko', 'Nyelli Dispensary', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-04 13:48:57', '2002-01-04 13:48:57'),
(1012, 'Taraba', 'Zing', 'Yakoko', 'Lakwanti Dispensary', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-05 13:48:57', '2002-01-05 13:48:57'),
(1013, 'Taraba', 'Zing', 'Yakoko', 'Della Millenuim Development Goals Clinic', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-06 13:48:57', '2002-01-06 13:48:57'),
(1014, 'Taraba', 'Zing', 'Yakoko', 'Danwusi Millenuim Developemnt Goals Clinic', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-07 13:48:57', '2002-01-07 13:48:57'),
(1015, 'Taraba', 'Zing', 'Yakoko', 'Boduza Dispensary', 'Ferdinand Patric Nyameh Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-08 13:48:57', '2002-01-08 13:48:57'),
(1016, 'Taraba', 'Zing', 'Monkin', 'Monkin Town Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-09 13:48:57', '2002-01-09 13:48:57'),
(1017, 'Taraba', 'Zing', 'Monkin', 'Monkin Maternal and Child Health Clinic', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-10 13:48:57', '2002-01-10 13:48:57'),
(1018, 'Taraba', 'Zing', 'Monkin', 'Dopah Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-11 13:48:57', '2002-01-11 13:48:57'),
(1019, 'Taraba', 'Zing', 'Tagallang', 'Tasumpo Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-12 13:48:57', '2002-01-12 13:48:57'),
(1020, 'Taraba', 'Zing', 'Tagallang', 'Tagallang Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-13 13:48:57', '2002-01-13 13:48:57'),
(1021, 'Taraba', 'Zing', 'Tagallang', 'Kwana Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-14 13:48:57', '2002-01-14 13:48:57'),
(1022, 'Taraba', 'Zing', 'Tagallang', 'Jagambo Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-15 13:48:57', '2002-01-15 13:48:57'),
(1023, 'Taraba', 'Zing', 'Tagallang', 'Gampobong Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-16 13:48:57', '2002-01-16 13:48:57'),
(1024, 'Taraba', 'Zing', 'Tagallang', 'Community Service Development Project Dankwali', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-17 13:48:57', '2002-01-17 13:48:57'),
(1025, 'Taraba', 'Zing', 'Zing B', 'Zing Town Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-18 13:48:57', '2002-01-18 13:48:57'),
(1026, 'Taraba', 'Zing', 'Zing A', 'Tunapo Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-19 13:48:57', '2002-01-19 13:48:57'),
(1027, 'Taraba', 'Zing', 'Zing A', 'La\'apo Dispensary', 'Sister Mary Simon Jatutu Memorial Foundation', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-20 13:48:57', '2002-01-20 13:48:57'),
(1028, 'Taraba', 'Ardo-Kola', 'Lamido Borno', 'Wuro Yolde Dispensary', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-21 13:48:57', '2002-01-21 13:48:57'),
(1029, 'Taraba', 'Ardo-Kola', 'Lamido Borno', 'Wuro Baka \'B\' Clinic', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-22 13:48:57', '2002-01-22 13:48:57'),
(1030, 'Taraba', 'Ardo-Kola', 'Lamido Borno', 'Mullum Maternal and Child Health Clinic', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-23 13:48:57', '2002-01-23 13:48:57'),
(1031, 'Taraba', 'Ardo-Kola', 'Lamido Borno', 'Lamido Borno Maternal Child Health', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-24 13:48:57', '2002-01-24 13:48:57'),
(1032, 'Taraba', 'Ardo-Kola', 'Lamido Borno', 'Ladde Dispensary', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-25 13:48:57', '2002-01-25 13:48:57'),
(1033, 'Taraba', 'Ardo-Kola', 'Lamido Borno', 'Cheudo Dispensary', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-26 13:48:57', '2002-01-26 13:48:57'),
(1034, 'Taraba', 'Ardo-Kola', 'Lamido Borno', 'Chakawo Dispensary', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-27 13:48:57', '2002-01-27 13:48:57'),
(1035, 'Taraba', 'Ardo-Kola', 'Mayo Renewo', 'Pomi Dispensary', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-28 13:48:57', '2002-01-28 13:48:57'),
(1036, 'Taraba', 'Ardo-Kola', 'Mayo Renewo', 'Munchi Health Post', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-29 13:48:57', '2002-01-29 13:48:57'),
(1037, 'Taraba', 'Ardo-Kola', 'Mayo Renewo', 'Mayo-Ranewo Maternal and Child Health Clinic', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-30 13:48:57', '2002-01-30 13:48:57'),
(1038, 'Taraba', 'Ardo-Kola', 'Mayo Renewo', 'Jiru Dispensary', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-01-31 13:48:57', '2002-01-31 13:48:57'),
(1039, 'Taraba', 'Ardo-Kola', 'Jauro Yinu', 'Murbai Dispensary', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-01 13:48:57', '2002-02-01 13:48:57'),
(1040, 'Taraba', 'Ardo-Kola', 'Jauro Yinu', 'Kofai Maternal Child Health', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-02 13:48:57', '2002-02-02 13:48:57'),
(1041, 'Taraba', 'Ardo-Kola', 'Jauro Yinu', 'Ardo-Kola College of Agric Health Clinic', 'Youth Progressive Association in Taraba', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-03 13:48:57', '2002-02-03 13:48:57'),
(1042, 'Taraba', 'Ardo-Kola', 'Mallum', 'Wuro Ladde Dispensary', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-04 13:48:57', '2002-02-04 13:48:57'),
(1043, 'Taraba', 'Ardo-Kola', 'Mallum', 'Mallum Maternal Child Health', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-05 13:48:57', '2002-02-05 13:48:57'),
(1044, 'Taraba', 'Ardo-Kola', 'Mallum', 'Jemi Health Post', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-06 13:48:57', '2002-02-06 13:48:57'),
(1045, 'Taraba', 'Ardo-Kola', 'Barkin Dutse', 'Sunkani Town Clinic', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-07 13:48:57', '2002-02-07 13:48:57'),
(1046, 'Taraba', 'Ardo-Kola', 'Barkin Dutse', 'Sunkani First Referral Hospital', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-08 13:48:57', '2002-02-08 13:48:57'),
(1047, 'Taraba', 'Ardo-Kola', 'Barkin Dutse', 'Kasuwan Ladi MDG Clinic', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-09 13:48:57', '2002-02-09 13:48:57'),
(1048, 'Taraba', 'Ardo-Kola', 'Barkin Dutse', 'Garin Modibbo Dispensary', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-10 13:48:57', '2002-02-10 13:48:57'),
(1049, 'Taraba', 'Ardo-Kola', 'Barkin Dutse', 'Garin Ayuba Dispensary', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-11 13:48:57', '2002-02-11 13:48:57'),
(1050, 'Taraba', 'Ardo-Kola', 'Barkin Dutse', 'Danji Dispensary', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-12 13:48:57', '2002-02-12 13:48:57'),
(1051, 'Taraba', 'Ardo-Kola', 'Barkin Dutse', 'Bekin Dutse Town Clinic', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-13 13:48:57', '2002-02-13 13:48:57'),
(1052, 'Taraba', 'Ardo-Kola', 'Barkin Dutse', 'Bakin Duste MDG Clinic', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-14 13:48:57', '2002-02-14 13:48:57'),
(1053, 'Taraba', 'Ardo-Kola', 'Iware', 'Iware Maternal and Child Health', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-15 13:48:57', '2002-02-15 13:48:57'),
(1054, 'Taraba', 'Ardo-Kola', 'Iware', 'Garin Jatau Dispensary', 'Touch a Heart Social and Economic Rights Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-16 13:48:57', '2002-02-16 13:48:57'),
(1055, 'Taraba', 'Jalingo', 'Yelwa', 'Yelwa Health Post', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-17 13:48:57', '2002-02-17 13:48:57'),
(1056, 'Taraba', 'Jalingo', 'Yelwa', 'Kishau Sembe Clinic', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-18 13:48:57', '2002-02-18 13:48:57'),
(1057, 'Taraba', 'Jalingo', 'Kiona', 'Yalwa Clinic', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-19 13:48:57', '2002-02-19 13:48:57'),
(1058, 'Taraba', 'Jalingo', 'Kiona', 'Pantinapu Health Post', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-20 13:48:57', '2002-02-20 13:48:57'),
(1059, 'Taraba', 'Jalingo', 'Kiona', 'Nukkai Health Post', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-21 13:48:57', '2002-02-21 13:48:57'),
(1060, 'Taraba', 'Jalingo', 'Kiona', 'Mile Six Clinic', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-22 13:48:57', '2002-02-22 13:48:57'),
(1061, 'Taraba', 'Jalingo', 'Kiona', 'Health Post', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-23 13:48:57', '2002-02-23 13:48:57'),
(1062, 'Taraba', 'Jalingo', 'Kiona', 'Mayo Dassa', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-24 13:48:57', '2002-02-24 13:48:57'),
(1063, 'Taraba', 'Jalingo', 'Kiona', 'Kona Dispensary', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-25 13:48:57', '2002-02-25 13:48:57'),
(1064, 'Taraba', 'Jalingo', 'Kiona', 'Kona Clinic and Maternity', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-26 13:48:57', '2002-02-26 13:48:57'),
(1065, 'Taraba', 'Jalingo', 'Kiona', 'Jekunho Primary Health Clinic', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-27 13:48:57', '2002-02-27 13:48:57'),
(1066, 'Taraba', 'Jalingo', 'Kiona', 'Abuja Phase I Clinic', 'Rural Integrated Development Initiative', '', 'SPO', 'spo@acominnigeria.org', 'active', '2002-02-28 13:48:57', '2002-02-28 13:48:57'),
(1067, 'Taraba', 'Jalingo', 'Turaki B', 'Staff Clinic', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-01 13:48:57', '2002-03-01 13:48:57'),
(1068, 'Taraba', 'Jalingo', 'Turaki B', 'Sabon Gari Health Centre', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-02 13:48:57', '2002-03-02 13:48:57'),
(1069, 'Taraba', 'Jalingo', 'Turaki B', 'Jalingo Government House Clinic', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-03 13:48:57', '2002-03-03 13:48:57'),
(1070, 'Taraba', 'Jalingo', 'Turaki A', 'Turaki âAâ Urban Health Centre Maternity', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-04 13:48:57', '2002-03-04 13:48:57'),
(1071, 'Taraba', 'Jalingo', 'Turaki A', 'Police Clinic', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-05 13:48:57', '2002-03-05 13:48:57'),
(1072, 'Taraba', 'Jalingo', 'Sintali B', 'Nyabun-Kaka Clinic', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-06 13:48:57', '2002-03-06 13:48:57'),
(1073, 'Taraba', 'Jalingo', 'Sintali B', 'Mayo-Gwoi Health Post', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-07 13:48:57', '2002-03-07 13:48:57'),
(1074, 'Taraba', 'Jalingo', 'Sintali B', 'Jalingo State Specialist Hospital', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-08 13:48:57', '2002-03-08 13:48:57'),
(1075, 'Taraba', 'Jalingo', 'Sintali B', 'Jalingo Federal Medical Centre', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-09 13:48:57', '2002-03-09 13:48:57'),
(1076, 'Taraba', 'Jalingo', 'Sintali B', 'Ila Maternal and Child Health Clinic', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-10 12:48:57', '2002-03-10 12:48:57'),
(1077, 'Taraba', 'Jalingo', 'Sintali A', 'Hon. Imam Clinic', 'Centre for Health and Development in Africa', 'isodaf4africa@gmail.com', 'SPO', 'spo@acominnigeria.org', 'active', '2002-03-11 12:48:57', '2002-03-11 12:48:57'),
(1078, 'Yobe', 'Jakusko', 'Jakusko Central', 'Jakusko Primary Health Care Centre', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-12 12:48:57', '2002-03-12 12:48:57'),
(1079, 'Yobe', 'Jakusko', 'Jakusko Central', 'Jakusko Maternity and Child Health Clinic', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-13 12:48:57', '2002-03-13 12:48:57'),
(1080, 'Yobe', 'Jakusko', 'Buduwa', 'Gurbana Health Clinic', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-14 12:48:57', '2002-03-14 12:48:57'),
(1081, 'Yobe', 'Jakusko', 'Buduwa', 'Buduwa Health Clinic', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-15 12:48:57', '2002-03-15 12:48:57'),
(1082, 'Yobe', 'Jakusko', 'Dumbari', 'Tudiniya Health Post', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-16 12:48:57', '2002-03-16 12:48:57'),
(1083, 'Yobe', 'Jakusko', 'Dumbari', 'Katangana Health Post', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-17 12:48:57', '2002-03-17 12:48:57'),
(1084, 'Yobe', 'Jakusko', 'Dumbari', 'Gumulawa Health Post', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-18 12:48:57', '2002-03-18 12:48:57'),
(1085, 'Yobe', 'Jakusko', 'Dumbari', 'Gasi Health Clinic', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-19 12:48:57', '2002-03-19 12:48:57'),
(1086, 'Yobe', 'Jakusko', 'Dumbari', 'Dumbari Primary Health Care Centre', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-20 12:48:57', '2002-03-20 12:48:57');
INSERT INTO `health_facilities` (`id`, `State`, `LGA`, `Ward`, `Facility`, `CBO`, `CBO_Email`, `SPO`, `SPO_Email`, `status`, `created_at`, `updated_at`) VALUES
(1087, 'Yobe', 'Jakusko', 'Dumbari', 'Bubuno Health Centre', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-21 12:48:57', '2002-03-21 12:48:57'),
(1088, 'Yobe', 'Jakusko', 'Dumbari', 'Ariri Health Post', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-22 12:48:57', '2002-03-22 12:48:57'),
(1089, 'Yobe', 'Jakusko', 'Gogaram', 'Kurkushe Health Clinic', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-23 12:48:57', '2002-03-23 12:48:57'),
(1090, 'Yobe', 'Jakusko', 'Gogaram', 'Gwayo Health Clinic', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-24 12:48:57', '2002-03-24 12:48:57'),
(1091, 'Yobe', 'Jakusko', 'Gogaram', 'Guzumbana Health Clinic', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-25 12:48:57', '2002-03-25 12:48:57'),
(1092, 'Yobe', 'Jakusko', 'Gogaram', 'Gogaram Primary Health Care Centre', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-26 12:48:57', '2002-03-26 12:48:57'),
(1093, 'Yobe', 'Jakusko', 'Gogaram', 'Damasa Health Post', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-27 12:48:57', '2002-03-27 12:48:57'),
(1094, 'Yobe', 'Jakusko', 'Gogaram', 'Adiya Health Post', 'Communal Support Foundation', 'Cosfon2005@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-28 12:48:57', '2002-03-28 12:48:57'),
(1095, 'Yobe', 'Jakusko', 'Jawur Katamma', 'Lamarbago Health Post', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-29 12:48:57', '2002-03-29 12:48:57'),
(1096, 'Yobe', 'Jakusko', 'Jawur Katamma', 'Katamma Health Centre', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-30 12:48:57', '2002-03-30 12:48:57'),
(1097, 'Yobe', 'Jakusko', 'Jawur Katamma', 'Kagammu Health Centre', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-03-31 12:48:57', '2002-03-31 12:48:57'),
(1098, 'Yobe', 'Jakusko', 'Jawur Katamma', 'Gasamu Primary Health Care Center', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-01 12:48:57', '2002-04-01 12:48:57'),
(1099, 'Yobe', 'Jakusko', 'Jawur Katamma', 'Arfani Health Post', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-02 12:48:57', '2002-04-02 12:48:57'),
(1100, 'Yobe', 'Jakusko', 'Jawur Katamma', 'Agana Health Centre', 'Taimako Community Development Initiative', 'taimakongo2014@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-03 12:48:57', '2002-04-03 12:48:57'),
(1101, 'Yobe', 'Jakusko', 'Girgir Bayam', 'Girgir Primary Health Centre', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-04 12:48:57', '2002-04-04 12:48:57'),
(1102, 'Yobe', 'Jakusko', 'Girgir Bayam', 'Duro Health Centre', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-05 12:48:57', '2002-04-05 12:48:57'),
(1103, 'Yobe', 'Jakusko', 'Girgir Bayam', 'Bayam Dispensary', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-06 12:48:57', '2002-04-06 12:48:57'),
(1104, 'Yobe', 'Fika', 'Gudi/Dozi', 'Zadawa Health Clinic', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-07 12:48:57', '2002-04-07 12:48:57'),
(1105, 'Yobe', 'Fika', 'Gudi/Dozi', 'Lewe Health Clinic', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-08 12:48:57', '2002-04-08 12:48:57'),
(1106, 'Yobe', 'Fika', 'Gudi/Dozi', 'Kabano Health Clinic', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-09 12:48:57', '2002-04-09 12:48:57'),
(1107, 'Yobe', 'Fika', 'Gudi/Dozi', 'Godowoli Primary Health Care Centre', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-10 12:48:57', '2002-04-10 12:48:57'),
(1108, 'Yobe', 'Fika', 'Gudi/Dozi', 'Garkuwa Health Clinic', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-11 12:48:57', '2002-04-11 12:48:57'),
(1109, 'Yobe', 'Fika', 'Gudi/Dozi', 'Garin Gura Health Centre', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-12 12:48:57', '2002-04-12 12:48:57'),
(1110, 'Yobe', 'Fika', 'Gudi/Dozi', 'Garin Alaramma Health Post', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-13 12:48:57', '2002-04-13 12:48:57'),
(1111, 'Yobe', 'Fika', 'Gudi/Dozi', 'Doto Fara Health Clinic', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-14 12:48:57', '2002-04-14 12:48:57'),
(1112, 'Yobe', 'Fika', 'Gudi/Dozi', 'Dole Health Post', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-15 12:48:57', '2002-04-15 12:48:57'),
(1113, 'Yobe', 'Fika', 'Gadaka Shambre', 'Zamba Health Post', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-16 12:48:57', '2002-04-16 12:48:57'),
(1114, 'Yobe', 'Fika', 'Gadaka Shambre', 'Koyaya Health Clinic', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-17 12:48:57', '2002-04-17 12:48:57'),
(1115, 'Yobe', 'Fika', 'Gadaka Shambre', 'Garin Goge Dispensary', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-18 12:48:57', '2002-04-18 12:48:57'),
(1116, 'Yobe', 'Fika', 'Gadaka Shambre', 'Garin Gamji Health Clinic', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-19 12:48:57', '2002-04-19 12:48:57'),
(1117, 'Yobe', 'Fika', 'Gadaka Shambre', 'Gadaka Primary Health Care Centre', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-20 12:48:57', '2002-04-20 12:48:57'),
(1118, 'Yobe', 'Fika', 'Gadaka Shambre', 'Gadaka Health Clinic', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-21 12:48:57', '2002-04-21 12:48:57'),
(1119, 'Yobe', 'Fika', 'Fika Anze', 'Anze Dispensary', 'Nira Community Development Foundation', 'niraorganisation@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-22 12:48:57', '2002-04-22 12:48:57'),
(1120, 'Yobe', 'Fika', 'Garu', 'Yelwa Health Centre', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-23 12:48:57', '2002-04-23 12:48:57'),
(1121, 'Yobe', 'Fika', 'Garu', 'Siminti Model Primary Health Clinic', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-24 12:48:57', '2002-04-24 12:48:57'),
(1122, 'Yobe', 'Fika', 'Garu', 'Kukar Gadu Primary Health Care Centre', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-25 12:48:57', '2002-04-25 12:48:57'),
(1123, 'Yobe', 'Fika', 'Garu', 'Garin Tongo Health Post', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-26 12:48:57', '2002-04-26 12:48:57'),
(1124, 'Yobe', 'Fika', 'Garu', 'Daya Health Clinic', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-27 12:48:57', '2002-04-27 12:48:57'),
(1125, 'Yobe', 'Fika', 'Janga', 'Minchika Health Clinic', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-28 12:48:57', '2002-04-28 12:48:57'),
(1126, 'Yobe', 'Fika', 'Janga', 'Kurmi Health Clinic', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-29 12:48:57', '2002-04-29 12:48:57'),
(1127, 'Yobe', 'Fika', 'Janga', 'Janga Siri Health Post', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-04-30 12:48:57', '2002-04-30 12:48:57'),
(1128, 'Yobe', 'Fika', 'Janga', 'Janga Dole Health Clinic', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-01 12:48:57', '2002-05-01 12:48:57'),
(1129, 'Yobe', 'Fika', 'Janga', 'Garin Usaku Health Centre', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-02 12:48:57', '2002-05-02 12:48:57'),
(1130, 'Yobe', 'Fika', 'Janga', 'Dogo Abare Health Clinic', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-03 12:48:57', '2002-05-03 12:48:57'),
(1131, 'Yobe', 'Fika', 'Janga', 'Damaze Health Clinic', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-04 12:48:57', '2002-05-04 12:48:57'),
(1132, 'Yobe', 'Fika', 'Janga', 'Boza Dispensary', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-05 12:48:57', '2002-05-05 12:48:57'),
(1133, 'Yobe', 'Fika', 'Ngalda', 'Ngalda Maternal and Child Health', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-06 12:48:57', '2002-05-06 12:48:57'),
(1134, 'Yobe', 'Fika', 'Ngalda', 'Kerem Health Centre', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-07 12:48:57', '2002-05-07 12:48:57'),
(1135, 'Yobe', 'Fika', 'Ngalda', 'Garin Chindo Health Post', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-08 12:48:57', '2002-05-08 12:48:57'),
(1136, 'Yobe', 'Fika', 'Ngalda', 'Ferol Health Clinic', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-09 12:48:57', '2002-05-09 12:48:57'),
(1137, 'Yobe', 'Fika', 'Ngalda', 'Dumbulwa Health Clinic', 'Kanem Borno Human Development Association', 'Kasimbala69@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-10 12:48:57', '2002-05-10 12:48:57'),
(1138, 'Yobe', 'Potiskum', 'Danchuwa', 'Garin Makwai Primary Health Care Centre                                                                                    6. Garin Mele Health Clinic', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-11 12:48:57', '2002-05-11 12:48:57'),
(1139, 'Yobe', 'Potiskum', 'Danchuwa', 'Garin Dala Clinic', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-12 12:48:57', '2002-05-12 12:48:57'),
(1140, 'Yobe', 'Potiskum', 'Danchuwa', 'Garin Abba Health Clinic', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-13 12:48:57', '2002-05-13 12:48:57'),
(1141, 'Yobe', 'Potiskum', 'Danchuwa', 'Danchuwa Health Clinic', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-14 12:48:57', '2002-05-14 12:48:57'),
(1142, 'Yobe', 'Potiskum', 'Danchuwa', 'Bubaram Health Clinic', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-15 12:48:57', '2002-05-15 12:48:57'),
(1143, 'Yobe', 'Potiskum', 'Ngijin', 'Dakasko Primary Health Care Centr', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-16 12:48:57', '2002-05-16 12:48:57'),
(1144, 'Yobe', 'Potiskum', 'Ngijin', 'Badejo Health Clinic', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-17 12:48:57', '2002-05-17 12:48:57'),
(1145, 'Yobe', 'Potiskum', 'Yerimaram', 'Nasarawa Health Clinic', 'Yobe Peace and Community Development Initiative', 'admin@yopcodi.org.ng', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-18 12:48:57', '2002-05-18 12:48:57'),
(1146, 'Yobe', 'Potiskum', 'Yerimaram', 'Yerimaram Health Clinic', 'Yobe Peace and Community Development Initiative', 'admin@yopcodi.org.ng', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-19 12:48:57', '2002-05-19 12:48:57'),
(1147, 'Yobe', 'Potiskum', 'Yerimaram', 'Nahuta Health Clinic', 'Yobe Peace and Community Development Initiative', 'admin@yopcodi.org.ng', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-20 12:48:57', '2002-05-20 12:48:57'),
(1148, 'Yobe', 'Potiskum', 'Yerimaram', 'Garin Dala Health Clinic', 'Yobe Peace and Community Development Initiative', 'admin@yopcodi.org.ng', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-21 12:48:57', '2002-05-21 12:48:57'),
(1149, 'Yobe', 'Potiskum', 'Yerimaram', 'Bulablin Primary Health Care Centre', 'Yobe Peace and Community Development Initiative', 'admin@yopcodi.org.ng', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-22 12:48:57', '2002-05-22 12:48:57'),
(1150, 'Yobe', 'Potiskum', 'Yerimaram', 'Bilam Fusam Clinic', 'Yobe Peace and Community Development Initiative', 'admin@yopcodi.org.ng', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-23 12:48:57', '2002-05-23 12:48:57'),
(1151, 'Yobe', 'Potiskum', 'Dogo Nini', 'Yindiski Primary Health Care Centre', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-24 12:48:57', '2002-05-24 12:48:57'),
(1152, 'Yobe', 'Potiskum', 'Dogo Nini', 'Tudun Wada Primary Health Care Centre', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-25 12:48:57', '2002-05-25 12:48:57'),
(1153, 'Yobe', 'Potiskum', 'Bolewa B', 'Dogon-Zare Primary Health Care Centre', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-26 12:48:57', '2002-05-26 12:48:57'),
(1154, 'Yobe', 'Potiskum', 'Hausawa Asibiti', 'Ngelshengele Primary Health Care Centre', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-27 12:48:57', '2002-05-27 12:48:57'),
(1155, 'Yobe', 'Fune', 'Ngelzama B', 'Ngelshengele Primary Health Care Centre', 'Pioneers Reproductive Health and Youth Association', 'pioneersrhms@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-28 12:48:57', '2002-05-28 12:48:57'),
(1156, 'Yobe', 'Fune', 'Ngelzama A', 'Ngelshengele Primary Health Care Centre', 'Yobe Peace and Community Development Initiative', 'admin@yopcodi.org.ng', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-29 12:48:57', '2002-05-29 12:48:57'),
(1157, 'Yobe', 'Fune', 'Daura B', 'Sabongari Idi-Barde Health Post', 'Green Environmental Support and Development Initiative', 'gesdingo@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-30 12:48:57', '2002-05-30 12:48:57'),
(1158, 'Yobe', 'Fune', 'Daura B', 'Dogon-Kuka Maternity and Child Health Clinic', 'Green Environmental Support and Development Initiative', 'gesdingo@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-05-31 12:48:57', '2002-05-31 12:48:57'),
(1159, 'Yobe', 'Fune', 'Daura A', 'Dubbol Primary Health Care Centre', 'Green Environmental Support and Development Initiative', 'gesdingo@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-01 12:48:57', '2002-06-01 12:48:57'),
(1160, 'Yobe', 'Fune', 'Daura A', 'Daura Primary Health Care Centre', 'Green Environmental Support and Development Initiative', 'gesdingo@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-02 12:48:57', '2002-06-02 12:48:57'),
(1161, 'Yobe', 'Fune', 'Damagum B', 'Gaba Tasha Primary Health Care Centre', 'Communal Conservative Friendly', '', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-03 12:48:57', '2002-06-03 12:48:57'),
(1162, 'Yobe', 'Fune', 'Damagum B', 'Dogon-Kuka Maternity and Child Health Clinic', 'Communal Conservative Friendly', '', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-04 12:48:57', '2002-06-04 12:48:57'),
(1163, 'Yobe', 'Fune', 'Damagum B', 'Aigada Primary Health Care Centre', 'Communal Conservative Friendly', '', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-05 12:48:57', '2002-06-05 12:48:57'),
(1164, 'Yobe', 'Fune', 'Damagum A', 'Damagum General Hospital', 'Communal Conservative Friendly, Health and Social Dev Support Initiative', 'cocosohdi@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-06 12:48:57', '2002-06-06 12:48:57'),
(1165, 'Yobe', 'Damaturu', 'Kukareta', 'Kukareta Maternity and Child Health Clinic', 'Hope Interactive', 'Msheliawayutabirma34@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-07 12:48:57', '2002-06-07 12:48:57'),
(1166, 'Yobe', 'Damaturu', 'Mai Sandari', 'Maisandari Primary Health Care Centre', 'Hope Interactive', 'Msheliawayutabirma34@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-08 12:48:57', '2002-06-08 12:48:57'),
(1167, 'Yobe', 'Damaturu', 'Njiwaji Gwange', 'Gwange Maternity and Child Health Clinic', 'Hope Interactive', 'Msheliawayutabirma34@gmail.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-09 12:48:57', '2002-06-09 12:48:57'),
(1168, 'Yobe', 'Damaturu', 'Damaturu Central', 'Damaturu Nigerian Police Force Clinic', 'Waka Rural Development Initiative', 'idibubarau@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-10 12:48:57', '2002-06-10 12:48:57'),
(1169, 'Yobe', 'Damaturu', 'Nayi Nawa', 'Nayinawa Dispensary', 'Waka Rural Development Initiative', 'idibubarau@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-11 12:48:57', '2002-06-11 12:48:57'),
(1170, 'Yobe', 'Damaturu', 'Bindigari Pawari', 'Damaturu FSP Maternal and Child Health Clinic', 'Waka Rural Development Initiative', 'idibubarau@yahoo.com', 'Mukhtar Mohammed Shehu', 'mukhtar4kiddie@gmail.com', 'active', '2002-06-12 12:48:57', '2002-06-12 12:48:57'),
(1171, 'Adamawa', 'Yola South', 'Ngurore', 'new health', 'Centre for Health and Development in Afric', 'cbo2@acominnigeria.org', 'SPO 2', 'spo2@acominnigeria.org', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lgas`
--

CREATE TABLE `lgas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lgas`
--

INSERT INTO `lgas` (`id`, `name`, `status`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Aba North', NULL, 1, NULL, NULL),
(2, 'Aba South ', NULL, 1, NULL, NULL),
(3, 'Arochukwu', NULL, 1, NULL, NULL),
(4, 'Bende', NULL, 1, NULL, NULL),
(5, 'Ikwuano', NULL, 1, NULL, NULL),
(6, 'Isiala-Ngwa North', NULL, 1, NULL, NULL),
(7, 'Isiala-Ngwa South', NULL, 1, NULL, NULL),
(8, 'Isuikwato', NULL, 1, NULL, NULL),
(9, ' Obi Nwa', NULL, 1, NULL, NULL),
(10, 'Ohafia', NULL, 1, NULL, NULL),
(11, 'Osisioma', NULL, 1, NULL, NULL),
(12, 'Ugwunagbo', NULL, 1, NULL, NULL),
(13, 'Ukwa East', NULL, 1, NULL, NULL),
(14, 'Ukwa West', NULL, 1, NULL, NULL),
(15, 'Umuahia North', NULL, 1, NULL, NULL),
(16, 'Umuahia South', NULL, 1, NULL, NULL),
(17, 'Umu-Neochi', NULL, 1, NULL, NULL),
(18, 'Demsa', NULL, 2, NULL, NULL),
(19, 'Fufore', NULL, 2, NULL, NULL),
(20, 'Ganaye', NULL, 2, NULL, NULL),
(21, 'Gireri', NULL, 2, NULL, NULL),
(22, 'Gombi', NULL, 2, NULL, NULL),
(23, 'Guyuk', NULL, 2, NULL, NULL),
(24, 'Hong', NULL, 2, NULL, NULL),
(25, 'Jada', NULL, 2, NULL, NULL),
(26, 'Lamurde', NULL, 2, NULL, NULL),
(27, 'Madagali', NULL, 2, NULL, NULL),
(28, 'Maiha', NULL, 2, NULL, NULL),
(29, 'Mayo-Belwa', NULL, 2, NULL, NULL),
(30, 'Michika', NULL, 2, NULL, NULL),
(31, 'Mubi North', NULL, 2, NULL, NULL),
(32, 'Mubi South', NULL, 2, NULL, NULL),
(33, 'Numan', NULL, 2, NULL, NULL),
(34, 'Shelleng', NULL, 2, NULL, NULL),
(35, 'Song', NULL, 2, NULL, NULL),
(36, 'Toungo', NULL, 2, NULL, NULL),
(37, 'Yola North', NULL, 2, NULL, NULL),
(38, 'Yola South', NULL, 2, NULL, NULL),
(39, 'Abak', NULL, 3, NULL, NULL),
(40, 'Eastern Obolo', NULL, 3, NULL, NULL),
(41, 'Eket', NULL, 3, NULL, NULL),
(42, 'Esit Eket', NULL, 3, NULL, NULL),
(43, 'Essien Udim', NULL, 3, NULL, NULL),
(44, 'Etim Ekpo', NULL, 3, NULL, NULL),
(45, 'Etinan', NULL, 3, NULL, NULL),
(46, 'Ibeno', NULL, 3, NULL, NULL),
(47, 'Ibesikpo Asutan', NULL, 3, NULL, NULL),
(48, 'Ibiono Ibom', NULL, 3, NULL, NULL),
(49, 'Ika', NULL, 3, NULL, NULL),
(50, 'Ikono', NULL, 3, NULL, NULL),
(51, 'Ikot Abasi', NULL, 3, NULL, NULL),
(52, 'Ikot Ekpene', NULL, 3, NULL, NULL),
(53, 'Ini', NULL, 3, NULL, NULL),
(54, 'Itu', NULL, 3, NULL, NULL),
(55, 'Mbo', NULL, 3, NULL, NULL),
(56, 'Mkpat Enin', NULL, 3, NULL, NULL),
(57, 'Nsit Atai', NULL, 3, NULL, NULL),
(58, 'Nsit Ibom', NULL, 3, NULL, NULL),
(59, 'Nsit Ubium', NULL, 3, NULL, NULL),
(60, 'Obot Akara', NULL, 3, NULL, NULL),
(61, 'Okobo', NULL, 3, NULL, NULL),
(62, 'Onna', NULL, 3, NULL, NULL),
(63, 'Orok Anam', NULL, 3, NULL, NULL),
(64, 'Udung Uko', NULL, 3, NULL, NULL),
(65, 'Ukanafun', NULL, 3, NULL, NULL),
(66, 'Uruan', NULL, 3, NULL, NULL),
(67, 'Urue-Offong/Oruko', NULL, 3, NULL, NULL),
(68, 'Uyo', NULL, 3, NULL, NULL),
(69, 'Aguata', NULL, 4, NULL, NULL),
(70, 'Anambra East', NULL, 4, NULL, NULL),
(71, 'Anambra West', NULL, 4, NULL, NULL),
(72, 'Anaocha', NULL, 4, NULL, NULL),
(73, 'Awka North', NULL, 4, NULL, NULL),
(74, 'Awka South', NULL, 4, NULL, NULL),
(75, 'Ayamelum', NULL, 4, NULL, NULL),
(76, 'Dunukofia', NULL, 4, NULL, NULL),
(77, 'Ekwusigo', NULL, 4, NULL, NULL),
(78, 'Idemili North', NULL, 4, NULL, NULL),
(79, 'Idemili South', NULL, 4, NULL, NULL),
(80, 'ihiala', NULL, 4, NULL, NULL),
(81, 'Njikoka', NULL, 4, NULL, NULL),
(82, 'Nnewi North', NULL, 4, NULL, NULL),
(83, 'Nnewi South', NULL, 4, NULL, NULL),
(84, 'Ogbaru', NULL, 4, NULL, NULL),
(85, 'Onitsha North', NULL, 4, NULL, NULL),
(86, 'Onitsha South', NULL, 4, NULL, NULL),
(87, 'Onumba N', NULL, 4, NULL, NULL),
(88, 'Onumba South', NULL, 4, NULL, NULL),
(89, 'Oyi', NULL, 4, NULL, NULL),
(90, 'Alkaleri', NULL, 5, NULL, NULL),
(91, 'Bauchi', NULL, 5, NULL, NULL),
(92, 'Bogoro', NULL, 5, NULL, NULL),
(93, 'Damban', NULL, 5, NULL, NULL),
(94, 'Darazo', NULL, 5, NULL, NULL),
(95, 'Dass', NULL, 5, NULL, NULL),
(96, 'Ganjuwa', NULL, 5, NULL, NULL),
(97, 'Giade', NULL, 5, NULL, NULL),
(98, 'Itas/Gadau', NULL, 5, NULL, NULL),
(99, 'Jama\"are', NULL, 5, NULL, NULL),
(100, 'Katagum', NULL, 5, NULL, NULL),
(101, 'Kirfi', NULL, 5, NULL, NULL),
(102, 'Misau', NULL, 5, NULL, NULL),
(103, 'Ningi', NULL, 5, NULL, NULL),
(104, 'Shira', NULL, 5, NULL, NULL),
(105, 'Tafawa-Balewa', NULL, 5, NULL, NULL),
(106, 'Toro', NULL, 5, NULL, NULL),
(107, 'Warji', NULL, 5, NULL, NULL),
(108, 'Zaki', NULL, 5, NULL, NULL),
(109, 'Brass', NULL, 6, NULL, NULL),
(110, 'Ekeremor', NULL, 6, NULL, NULL),
(111, 'Kolokuma/Opokuma', NULL, 6, NULL, NULL),
(112, 'Nembe', NULL, 6, NULL, NULL),
(113, 'Ogbia', NULL, 6, NULL, NULL),
(114, 'Sagbama', NULL, 6, NULL, NULL),
(115, 'Southern Jaw', NULL, 6, NULL, NULL),
(116, 'Yenegoa', NULL, 6, NULL, NULL),
(117, 'Ado', NULL, 7, NULL, NULL),
(118, 'Agatu', NULL, 7, NULL, NULL),
(119, 'Apa', NULL, 7, NULL, NULL),
(120, 'Buruku', NULL, 7, NULL, NULL),
(121, 'Gboko', NULL, 7, NULL, NULL),
(122, 'Guma', NULL, 7, NULL, NULL),
(123, 'Gwer East', NULL, 7, NULL, NULL),
(124, 'Gwer West', NULL, 7, NULL, NULL),
(125, 'Katsina-Ala', NULL, 7, NULL, NULL),
(126, 'Konshisha', NULL, 7, NULL, NULL),
(127, 'Kwande', NULL, 7, NULL, NULL),
(128, 'Logo', NULL, 7, NULL, NULL),
(129, 'Markurdi', NULL, 7, NULL, NULL),
(130, 'Obi', NULL, 7, NULL, NULL),
(131, 'Ogbadipo', NULL, 7, NULL, NULL),
(132, 'Oju', NULL, 7, NULL, NULL),
(133, 'Okpokwu', NULL, 7, NULL, NULL),
(134, 'Ohimini', NULL, 7, NULL, NULL),
(135, 'Oturkpo', NULL, 7, NULL, NULL),
(136, 'Tarka', NULL, 7, NULL, NULL),
(137, 'Ukum', NULL, 7, NULL, NULL),
(138, 'Ushongo', NULL, 7, NULL, NULL),
(139, 'Vandeikya', NULL, 7, NULL, NULL),
(140, 'Abadam', NULL, 8, NULL, NULL),
(141, 'Askira/Uba', NULL, 8, NULL, NULL),
(142, 'Bama', NULL, 8, NULL, NULL),
(143, 'Bayo', NULL, 8, NULL, NULL),
(144, 'Biu', NULL, 8, NULL, NULL),
(145, 'Chibok', NULL, 8, NULL, NULL),
(146, 'Damboa', NULL, 8, NULL, NULL),
(147, 'Dikwa', NULL, 8, NULL, NULL),
(148, 'Gubio', NULL, 8, NULL, NULL),
(149, 'Guzamala', NULL, 8, NULL, NULL),
(150, 'Gwoza', NULL, 8, NULL, NULL),
(151, 'Hawul', NULL, 8, NULL, NULL),
(152, 'Jere', NULL, 8, NULL, NULL),
(153, 'Kaga', NULL, 8, NULL, NULL),
(154, 'Kala/Balge', NULL, 8, NULL, NULL),
(155, 'Konduga', NULL, 8, NULL, NULL),
(156, 'Kukawa', NULL, 8, NULL, NULL),
(157, 'Kwaya Kusar', NULL, 8, NULL, NULL),
(158, 'Mafa', NULL, 8, NULL, NULL),
(159, 'Magumeri', NULL, 8, NULL, NULL),
(160, 'Maiduguri', NULL, 8, NULL, NULL),
(161, 'Marte', NULL, 8, NULL, NULL),
(162, 'Mobbar', NULL, 8, NULL, NULL),
(163, 'Monguno', NULL, 8, NULL, NULL),
(164, 'Ngala', NULL, 8, NULL, NULL),
(165, 'Nganzai', NULL, 8, NULL, NULL),
(166, 'Shani', NULL, 8, NULL, NULL),
(167, 'Akpabuyo', NULL, 9, NULL, NULL),
(168, 'Odukpani', NULL, 9, NULL, NULL),
(169, 'Akamkpa', NULL, 9, NULL, NULL),
(170, 'Biase', NULL, 9, NULL, NULL),
(171, 'Abi', NULL, 9, NULL, NULL),
(172, 'Ikom', NULL, 9, NULL, NULL),
(173, 'Yarkur', NULL, 9, NULL, NULL),
(174, 'Odubra', NULL, 9, NULL, NULL),
(175, 'Boki', NULL, 9, NULL, NULL),
(176, 'Ogoja', NULL, 9, NULL, NULL),
(177, 'Yala', NULL, 9, NULL, NULL),
(178, 'Obanliku', NULL, 9, NULL, NULL),
(179, 'Obudu', NULL, 9, NULL, NULL),
(180, 'Calabar South', NULL, 9, NULL, NULL),
(181, 'Etung', NULL, 9, NULL, NULL),
(182, 'Bekwara', NULL, 9, NULL, NULL),
(183, 'Bakasi', NULL, 9, NULL, NULL),
(184, 'Calabar Municipality', NULL, 9, NULL, NULL),
(185, 'Oshimili', NULL, 10, NULL, NULL),
(186, 'Aniocha', NULL, 10, NULL, NULL),
(187, 'Aniocha-South', NULL, 10, NULL, NULL),
(188, 'Ika South', NULL, 10, NULL, NULL),
(189, 'Ika North-East', NULL, 10, NULL, NULL),
(190, 'Ndokwa West', NULL, 10, NULL, NULL),
(191, 'Ndokwa East', NULL, 10, NULL, NULL),
(192, 'Isoko South', NULL, 10, NULL, NULL),
(193, 'Isoko North', NULL, 10, NULL, NULL),
(194, 'Bomadi', NULL, 10, NULL, NULL),
(195, 'Burutu', NULL, 10, NULL, NULL),
(196, 'Ughelli South', NULL, 10, NULL, NULL),
(197, 'Ughelli North', NULL, 10, NULL, NULL),
(198, 'Ethiope West', NULL, 10, NULL, NULL),
(199, 'Ethiope East', NULL, 10, NULL, NULL),
(200, 'Sapele', NULL, 10, NULL, NULL),
(201, 'Okpe', NULL, 10, NULL, NULL),
(202, 'Warri North', NULL, 10, NULL, NULL),
(203, 'Warri South', NULL, 10, NULL, NULL),
(204, 'Uvwie', NULL, 10, NULL, NULL),
(205, 'Udu', NULL, 10, NULL, NULL),
(206, 'Warri Central', NULL, 10, NULL, NULL),
(207, 'Ukwani', NULL, 10, NULL, NULL),
(208, 'Oshimili North', NULL, 10, NULL, NULL),
(209, 'Patani', NULL, 10, NULL, NULL),
(210, 'Afikpo South', NULL, 11, NULL, NULL),
(211, 'Afikpo North', NULL, 11, NULL, NULL),
(212, 'Onicha', NULL, 11, NULL, NULL),
(213, 'Ohaozara', NULL, 11, NULL, NULL),
(214, 'Abakaliki', NULL, 11, NULL, NULL),
(215, 'Ishielu', NULL, 11, NULL, NULL),
(216, 'lkwo', NULL, 11, NULL, NULL),
(217, 'Ezza', NULL, 11, NULL, NULL),
(218, 'Ezza South', NULL, 11, NULL, NULL),
(219, 'Ohaukwu', NULL, 11, NULL, NULL),
(220, 'Ebonyi', NULL, 11, NULL, NULL),
(221, 'Ivo', NULL, 11, NULL, NULL),
(222, 'Esan North-East', NULL, 12, NULL, NULL),
(223, 'Esan Central', NULL, 12, NULL, NULL),
(224, 'Esan West', NULL, 12, NULL, NULL),
(225, 'Egor', NULL, 12, NULL, NULL),
(226, 'Ukpoba', NULL, 12, NULL, NULL),
(227, 'Central', NULL, 12, NULL, NULL),
(228, 'Etsako Central', NULL, 12, NULL, NULL),
(229, 'Igueben', NULL, 12, NULL, NULL),
(230, 'Oredo', NULL, 12, NULL, NULL),
(231, 'Ovia SouthWest', NULL, 12, NULL, NULL),
(232, 'Ovia South-East', NULL, 12, NULL, NULL),
(233, 'Orhionwon', NULL, 12, NULL, NULL),
(234, 'Uhunmwonde', NULL, 12, NULL, NULL),
(235, 'Etsako East', NULL, 12, NULL, NULL),
(236, 'Esan South-East', NULL, 12, NULL, NULL),
(237, 'Ado', NULL, 13, NULL, NULL),
(238, 'Ekiti-East', NULL, 13, NULL, NULL),
(239, 'Ekiti-West', NULL, 13, NULL, NULL),
(240, 'Emure/Ise/Orun', NULL, 13, NULL, NULL),
(241, 'Ekiti South-West', NULL, 13, NULL, NULL),
(242, 'Ikare', NULL, 13, NULL, NULL),
(243, 'Irepodun', NULL, 13, NULL, NULL),
(244, 'Ijero', NULL, 13, NULL, NULL),
(245, 'Ido/Osi', NULL, 13, NULL, NULL),
(246, 'Oye', NULL, 13, NULL, NULL),
(247, 'Ikole', NULL, 13, NULL, NULL),
(248, 'Moba', NULL, 13, NULL, NULL),
(249, 'Gbonyin', NULL, 13, NULL, NULL),
(250, 'Efon', NULL, 13, NULL, NULL),
(251, 'Ise/Orun', NULL, 13, NULL, NULL),
(252, 'Ilejemeje', NULL, 13, NULL, NULL),
(253, 'Enugu South', NULL, 14, NULL, NULL),
(254, 'Igbo-Eze South', NULL, 14, NULL, NULL),
(255, 'Enugu North', NULL, 14, NULL, NULL),
(256, 'Nkanu', NULL, 14, NULL, NULL),
(257, 'Udi Agwu', NULL, 14, NULL, NULL),
(258, 'Oji-River', NULL, 14, NULL, NULL),
(259, 'Ezeagu', NULL, 14, NULL, NULL),
(260, 'IgboEze North', NULL, 14, NULL, NULL),
(261, 'Isi-Uzo', NULL, 14, NULL, NULL),
(262, 'Nsukka', NULL, 14, NULL, NULL),
(263, 'Igbo-Ekiti', NULL, 14, NULL, NULL),
(264, 'Uzo-Uwani', NULL, 14, NULL, NULL),
(265, 'Enugu East', NULL, 14, NULL, NULL),
(266, 'Aninri', NULL, 14, NULL, NULL),
(267, 'Nkanu South', NULL, 14, NULL, NULL),
(268, 'Udenu', NULL, 14, NULL, NULL),
(269, 'Akko', NULL, 15, NULL, NULL),
(270, 'Balanga', NULL, 15, NULL, NULL),
(271, 'Billiri', NULL, 15, NULL, NULL),
(272, 'Dukku', NULL, 15, NULL, NULL),
(273, 'Kaltungo', NULL, 15, NULL, NULL),
(274, 'Kwami', NULL, 15, NULL, NULL),
(275, 'Shomgom', NULL, 15, NULL, NULL),
(276, 'Funakaye', NULL, 15, NULL, NULL),
(277, 'Gombe', NULL, 15, NULL, NULL),
(278, 'Nafada/Bajoga', NULL, 15, NULL, NULL),
(279, 'Yamaltu/Delta', NULL, 15, NULL, NULL),
(280, 'Aboh-Mbaise', NULL, 16, NULL, NULL),
(281, 'Ahiazu-Mbaise', NULL, 16, NULL, NULL),
(282, 'Ehime-Mbano', NULL, 16, NULL, NULL),
(283, 'Ezinihitte', NULL, 16, NULL, NULL),
(284, 'Ideato North', NULL, 16, NULL, NULL),
(285, 'Ideato South', NULL, 16, NULL, NULL),
(286, 'Ihitte/Uboma', NULL, 16, NULL, NULL),
(287, 'Ikeduru', NULL, 16, NULL, NULL),
(288, 'Isiala Mbano', NULL, 16, NULL, NULL),
(289, 'Isu', NULL, 16, NULL, NULL),
(290, 'Mbaitoli', NULL, 16, NULL, NULL),
(291, 'Ngor-Okpala', NULL, 16, NULL, NULL),
(292, 'Njaba', NULL, 16, NULL, NULL),
(293, 'Nwangele', NULL, 16, NULL, NULL),
(294, 'Nkwerre', NULL, 16, NULL, NULL),
(295, 'Obowo', NULL, 16, NULL, NULL),
(296, 'Oguta', NULL, 16, NULL, NULL),
(297, 'Ohaji/Egbeme', NULL, 16, NULL, NULL),
(298, 'Okigwe', NULL, 16, NULL, NULL),
(299, 'Orlu', NULL, 16, NULL, NULL),
(300, 'Orsu', NULL, 16, NULL, NULL),
(301, 'Oru East', NULL, 16, NULL, NULL),
(302, 'Oru West', NULL, 16, NULL, NULL),
(303, 'Owerri-Municipal', NULL, 16, NULL, NULL),
(304, 'Owerri North', NULL, 16, NULL, NULL),
(305, 'Owerri West', NULL, 16, NULL, NULL),
(306, 'Auyo', NULL, 17, NULL, NULL),
(307, 'Babura', NULL, 17, NULL, NULL),
(308, 'Birni kudu', NULL, 17, NULL, NULL),
(309, 'Birniwa', NULL, 17, NULL, NULL),
(310, 'Buji', NULL, 17, NULL, NULL),
(311, 'Dutse', NULL, 17, NULL, NULL),
(312, 'Gagarawa', NULL, 17, NULL, NULL),
(313, 'Garki', NULL, 17, NULL, NULL),
(314, 'Gumel', NULL, 17, NULL, NULL),
(315, 'Guri', NULL, 17, NULL, NULL),
(316, 'Gwaram', NULL, 17, NULL, NULL),
(317, 'Gwiwa', NULL, 17, NULL, NULL),
(318, 'Hadejia', NULL, 17, NULL, NULL),
(319, 'Jahun', NULL, 17, NULL, NULL),
(320, 'Kafin Hausa', NULL, 17, NULL, NULL),
(321, 'Kaugama Kazaure', NULL, 17, NULL, NULL),
(322, 'kiri kasamma', NULL, 17, NULL, NULL),
(323, 'kiyawa', NULL, 17, NULL, NULL),
(324, 'Maigatari', NULL, 17, NULL, NULL),
(325, 'Malam Madori', NULL, 17, NULL, NULL),
(326, 'Miga', NULL, 17, NULL, NULL),
(327, 'Ringim', NULL, 17, NULL, NULL),
(328, 'Roni', NULL, 17, NULL, NULL),
(329, 'Sule-Tankarkar', NULL, 17, NULL, NULL),
(330, 'Taura', NULL, 17, NULL, NULL),
(331, 'Yankwashi', NULL, 17, NULL, NULL),
(332, 'Chikun', NULL, 18, NULL, NULL),
(333, 'Giwa', NULL, 18, NULL, NULL),
(334, 'Igabi', NULL, 18, NULL, NULL),
(335, 'Ikara', NULL, 18, NULL, NULL),
(336, 'jaba', NULL, 18, NULL, NULL),
(337, 'Jema\"a', NULL, 18, NULL, NULL),
(338, 'kachia', NULL, 18, NULL, NULL),
(339, 'Kaduna North', NULL, 18, NULL, NULL),
(340, 'Kaduna South', NULL, 18, NULL, NULL),
(341, 'kagarko', NULL, 18, NULL, NULL),
(342, 'kajuru', NULL, 18, NULL, NULL),
(343, 'kaura', NULL, 18, NULL, NULL),
(344, 'kauru', NULL, 18, NULL, NULL),
(345, 'kubua', NULL, 18, NULL, NULL),
(346, 'kudan', NULL, 18, NULL, NULL),
(347, 'lere', NULL, 18, NULL, NULL),
(348, 'Makarfi', NULL, 18, NULL, NULL),
(349, 'sabon-gari', NULL, 18, NULL, NULL),
(350, 'sanga', NULL, 18, NULL, NULL),
(351, 'soba', NULL, 18, NULL, NULL),
(352, 'zango-kataf', NULL, 18, NULL, NULL),
(353, 'zaria', NULL, 18, NULL, NULL),
(354, 'Ajingi', NULL, 19, NULL, NULL),
(355, 'Albasu', NULL, 19, NULL, NULL),
(356, 'Bagwai', NULL, 19, NULL, NULL),
(357, 'bebeji', NULL, 19, NULL, NULL),
(358, 'bichi', NULL, 19, NULL, NULL),
(359, 'bunkure', NULL, 19, NULL, NULL),
(360, 'dala', NULL, 19, NULL, NULL),
(361, 'dambatta', NULL, 19, NULL, NULL),
(362, 'Dawakin kudu', NULL, 19, NULL, NULL),
(363, 'Dawakin tofa', NULL, 19, NULL, NULL),
(364, 'doguwa', NULL, 19, NULL, NULL),
(365, 'fagge', NULL, 19, NULL, NULL),
(366, 'gabasawa', NULL, 19, NULL, NULL),
(367, 'garko', NULL, 19, NULL, NULL),
(368, 'garum', NULL, 19, NULL, NULL),
(369, 'mallam', NULL, 19, NULL, NULL),
(370, 'gaya', NULL, 19, NULL, NULL),
(371, 'gezawa', NULL, 19, NULL, NULL),
(372, 'gwale', NULL, 19, NULL, NULL),
(373, 'gwarzo', NULL, 19, NULL, NULL),
(374, 'kabo', NULL, 19, NULL, NULL),
(375, 'kano municipal', NULL, 19, NULL, NULL),
(376, 'karaye', NULL, 19, NULL, NULL),
(377, 'kibiya', NULL, 19, NULL, NULL),
(378, 'kiru', NULL, 19, NULL, NULL),
(379, 'kumbutso', NULL, 19, NULL, NULL),
(380, 'kunchi', NULL, 19, NULL, NULL),
(381, 'kura', NULL, 19, NULL, NULL),
(382, 'madobi', NULL, 19, NULL, NULL),
(383, 'makoda', NULL, 19, NULL, NULL),
(384, 'minjibir', NULL, 19, NULL, NULL),
(385, 'nasarawa', NULL, 19, NULL, NULL),
(386, 'rano', NULL, 19, NULL, NULL),
(387, 'rimin', NULL, 19, NULL, NULL),
(388, 'rogo', NULL, 19, NULL, NULL),
(389, 'shano', NULL, 19, NULL, NULL),
(390, 'sumaila', NULL, 19, NULL, NULL),
(391, 'takali', NULL, 19, NULL, NULL),
(392, 'tarauni', NULL, 19, NULL, NULL),
(393, 'tofa', NULL, 19, NULL, NULL),
(394, 'tsanyawa', NULL, 19, NULL, NULL),
(395, 'gwarzo', NULL, 19, NULL, NULL),
(396, 'tudun wada', NULL, 19, NULL, NULL),
(397, 'ungogo', NULL, 19, NULL, NULL),
(398, 'warawa', NULL, 19, NULL, NULL),
(399, 'wudil', NULL, 19, NULL, NULL),
(400, 'Bakori', NULL, 20, NULL, NULL),
(401, 'Batagarawa', NULL, 20, NULL, NULL),
(402, 'Batsari', NULL, 20, NULL, NULL),
(403, 'Baure', NULL, 20, NULL, NULL),
(404, 'Bindawa', NULL, 20, NULL, NULL),
(405, 'Charanchi', NULL, 20, NULL, NULL),
(406, 'Dandume', NULL, 20, NULL, NULL),
(407, 'Danja', NULL, 20, NULL, NULL),
(408, 'Dan Musa', NULL, 20, NULL, NULL),
(409, 'Daura', NULL, 20, NULL, NULL),
(410, 'Dutsi', NULL, 20, NULL, NULL),
(411, 'Dutsin-Ma', NULL, 20, NULL, NULL),
(412, 'Faskari', NULL, 20, NULL, NULL),
(413, 'Funtua', NULL, 20, NULL, NULL),
(414, 'Ingawa', NULL, 20, NULL, NULL),
(415, 'Jibia', NULL, 20, NULL, NULL),
(416, 'Kafur', NULL, 20, NULL, NULL),
(417, 'Kaita', NULL, 20, NULL, NULL),
(418, 'Kankara', NULL, 20, NULL, NULL),
(419, 'Kankia', NULL, 20, NULL, NULL),
(420, 'Katsina', NULL, 20, NULL, NULL),
(421, 'Kurfi', NULL, 20, NULL, NULL),
(422, 'Kusada', NULL, 20, NULL, NULL),
(423, 'Mai Adua', NULL, 20, NULL, NULL),
(424, 'Malumfashi', NULL, 20, NULL, NULL),
(425, 'Mani', NULL, 20, NULL, NULL),
(426, 'Mashi', NULL, 20, NULL, NULL),
(427, 'Matazuu', NULL, 20, NULL, NULL),
(428, 'Musawa', NULL, 20, NULL, NULL),
(429, 'Rimi', NULL, 20, NULL, NULL),
(430, 'Sabuwa', NULL, 20, NULL, NULL),
(431, 'Safana', NULL, 20, NULL, NULL),
(432, 'Sandamu', NULL, 20, NULL, NULL),
(433, 'Zango', NULL, 20, NULL, NULL),
(434, 'Aleiro', NULL, 21, NULL, NULL),
(435, 'Arewa-Dandi', NULL, 21, NULL, NULL),
(436, 'Argungu', NULL, 21, NULL, NULL),
(437, 'Augie', NULL, 21, NULL, NULL),
(438, 'Bagudo', NULL, 21, NULL, NULL),
(439, 'Birnin Kebbi', NULL, 21, NULL, NULL),
(440, 'Bunza', NULL, 21, NULL, NULL),
(441, 'Dandi', NULL, 21, NULL, NULL),
(442, 'Fakai', NULL, 21, NULL, NULL),
(443, 'Gwandu', NULL, 21, NULL, NULL),
(444, 'Jega', NULL, 21, NULL, NULL),
(445, 'Kalgo', NULL, 21, NULL, NULL),
(446, 'Koko/Besse', NULL, 21, NULL, NULL),
(447, 'Maiyama', NULL, 21, NULL, NULL),
(448, 'Ngaski', NULL, 21, NULL, NULL),
(449, 'Sakaba', NULL, 21, NULL, NULL),
(450, 'Shanga', NULL, 21, NULL, NULL),
(451, 'Suru', NULL, 21, NULL, NULL),
(452, 'Wasagu/Danko', NULL, 21, NULL, NULL),
(453, 'Yauri', NULL, 21, NULL, NULL),
(454, 'Zuru', NULL, 21, NULL, NULL),
(455, 'Adavi', NULL, 22, NULL, NULL),
(456, 'Ajaokuta', NULL, 22, NULL, NULL),
(457, 'Ankpa', NULL, 22, NULL, NULL),
(458, 'Bassa', NULL, 22, NULL, NULL),
(459, 'Dekina', NULL, 22, NULL, NULL),
(460, 'Ibaji', NULL, 22, NULL, NULL),
(461, 'Idah', NULL, 22, NULL, NULL),
(462, 'Igalamela-Odolu', NULL, 22, NULL, NULL),
(463, 'Ijumu', NULL, 22, NULL, NULL),
(464, 'Kabba/Bunu', NULL, 22, NULL, NULL),
(465, 'Kogi', NULL, 22, NULL, NULL),
(466, 'Lokoja', NULL, 22, NULL, NULL),
(467, 'Mopa-Muro', NULL, 22, NULL, NULL),
(468, 'Ofu', NULL, 22, NULL, NULL),
(469, 'Ogori/Mangongo', NULL, 22, NULL, NULL),
(470, 'Okehi', NULL, 22, NULL, NULL),
(471, 'Okene', NULL, 22, NULL, NULL),
(472, 'Olamabolo', NULL, 22, NULL, NULL),
(473, 'Omala', NULL, 22, NULL, NULL),
(474, 'Yagba East', NULL, 22, NULL, NULL),
(475, 'Yagba West', NULL, 22, NULL, NULL),
(476, 'Asa', NULL, 23, NULL, NULL),
(477, 'Baruten', NULL, 23, NULL, NULL),
(478, 'Edu', NULL, 23, NULL, NULL),
(479, 'Ekiti', NULL, 23, NULL, NULL),
(480, 'Ifelodun', NULL, 23, NULL, NULL),
(481, 'Ilorin East', NULL, 23, NULL, NULL),
(482, 'Ilorin West', NULL, 23, NULL, NULL),
(483, 'Irepodun', NULL, 23, NULL, NULL),
(484, 'Isin', NULL, 23, NULL, NULL),
(485, 'Kaiama', NULL, 23, NULL, NULL),
(486, 'Moro', NULL, 23, NULL, NULL),
(487, 'Offa', NULL, 23, NULL, NULL),
(488, 'Oke-Ero', NULL, 23, NULL, NULL),
(489, 'Oyun', NULL, 23, NULL, NULL),
(490, 'Pategi', NULL, 23, NULL, NULL),
(491, 'Agege', NULL, 24, NULL, NULL),
(492, 'Ajeromi-Ifelodun', NULL, 24, NULL, NULL),
(493, 'Alimosho', NULL, 24, NULL, NULL),
(494, 'Amuwo-Odofin', NULL, 24, NULL, NULL),
(495, 'Apapa', NULL, 24, NULL, NULL),
(496, 'Badagry', NULL, 24, NULL, NULL),
(497, 'Epe', NULL, 24, NULL, NULL),
(498, 'Eti-Osa', NULL, 24, NULL, NULL),
(499, 'Ibeju/Lekki', NULL, 24, NULL, NULL),
(500, 'Ifako-Ijaye', NULL, 24, NULL, NULL),
(501, 'Ikeja', NULL, 24, NULL, NULL),
(502, 'Ikorodu', NULL, 24, NULL, NULL),
(503, 'Kosofe', NULL, 24, NULL, NULL),
(504, 'Lagos Island', NULL, 24, NULL, NULL),
(505, 'Lagos Mainland', NULL, 24, NULL, NULL),
(506, 'Mushin', NULL, 24, NULL, NULL),
(507, 'Ojo', NULL, 24, NULL, NULL),
(508, 'Oshodi-Isolo', NULL, 24, NULL, NULL),
(509, 'Shomolu', NULL, 24, NULL, NULL),
(510, 'Surulere', NULL, 24, NULL, NULL),
(511, 'Akwanga', NULL, 25, NULL, NULL),
(512, 'Awe', NULL, 25, NULL, NULL),
(513, 'Doma', NULL, 25, NULL, NULL),
(514, 'Karu', NULL, 25, NULL, NULL),
(515, 'Keana', NULL, 25, NULL, NULL),
(516, 'Keffi', NULL, 25, NULL, NULL),
(517, 'Kokona', NULL, 25, NULL, NULL),
(518, 'Lafia', NULL, 25, NULL, NULL),
(519, 'Nasarawa', NULL, 25, NULL, NULL),
(520, 'Nasarawa-Eggon', NULL, 25, NULL, NULL),
(521, 'Obi', NULL, 25, NULL, NULL),
(522, 'Toto', NULL, 25, NULL, NULL),
(523, 'Wamba', NULL, 25, NULL, NULL),
(524, 'Agaie', NULL, 26, NULL, NULL),
(525, 'Agwara ', NULL, 26, NULL, NULL),
(526, 'Bida', NULL, 26, NULL, NULL),
(527, 'Borgu', NULL, 26, NULL, NULL),
(528, 'Bosso', NULL, 26, NULL, NULL),
(529, 'Chanchaga', NULL, 26, NULL, NULL),
(530, 'Edati', NULL, 26, NULL, NULL),
(531, 'Gbako', NULL, 26, NULL, NULL),
(532, 'Gurara ', NULL, 26, NULL, NULL),
(533, 'Katcha', NULL, 26, NULL, NULL),
(534, 'Kontagora', NULL, 26, NULL, NULL),
(535, 'Lapai', NULL, 26, NULL, NULL),
(536, 'Lavun', NULL, 26, NULL, NULL),
(537, 'Magama', NULL, 26, NULL, NULL),
(538, 'Mariga', NULL, 26, NULL, NULL),
(539, 'Mashegu', NULL, 26, NULL, NULL),
(540, 'Mokwa', NULL, 26, NULL, NULL),
(541, 'Muya', NULL, 26, NULL, NULL),
(542, 'Pailoro', NULL, 26, NULL, NULL),
(543, 'Rafi', NULL, 26, NULL, NULL),
(544, 'Rijau ', NULL, 26, NULL, NULL),
(545, 'Shiroro', NULL, 26, NULL, NULL),
(546, 'Suleja ', NULL, 26, NULL, NULL),
(547, 'Tafa', NULL, 26, NULL, NULL),
(548, 'Wushishi', NULL, 26, NULL, NULL),
(549, 'Abeokuta North', NULL, 27, NULL, NULL),
(550, 'Abeokuta South', NULL, 27, NULL, NULL),
(551, 'Ado-Odo/Ota', NULL, 27, NULL, NULL),
(552, 'Egbado North', NULL, 27, NULL, NULL),
(553, 'Egbado South', NULL, 27, NULL, NULL),
(554, 'Ewekoro', NULL, 27, NULL, NULL),
(555, 'Ifo', NULL, 27, NULL, NULL),
(556, 'Ijebu East', NULL, 27, NULL, NULL),
(557, 'Ijebu North', NULL, 27, NULL, NULL),
(558, 'Ijebu North East', NULL, 27, NULL, NULL),
(559, 'Ijebu Ode', NULL, 27, NULL, NULL),
(560, 'Ikenne', NULL, 27, NULL, NULL),
(561, 'Imeko-Afon', NULL, 27, NULL, NULL),
(562, 'Ipokia', NULL, 27, NULL, NULL),
(563, 'Obafemi-Owode', NULL, 27, NULL, NULL),
(564, 'Ogun Watrside', NULL, 27, NULL, NULL),
(565, 'Odeda', NULL, 27, NULL, NULL),
(566, 'Odogbolu', NULL, 27, NULL, NULL),
(567, 'Remo North', NULL, 27, NULL, NULL),
(568, 'Shagamu', NULL, 27, NULL, NULL),
(569, 'Akoko North East', NULL, 28, NULL, NULL),
(570, 'Akoko North West ', NULL, 28, NULL, NULL),
(571, 'Akoko South Akure East', NULL, 28, NULL, NULL),
(572, 'Akoko South West', NULL, 28, NULL, NULL),
(573, 'Akure North ', NULL, 28, NULL, NULL),
(574, 'Akure South', NULL, 28, NULL, NULL),
(575, 'Ese-Odo ', NULL, 28, NULL, NULL),
(576, 'Idanre', NULL, 28, NULL, NULL),
(577, 'Ifedore ', NULL, 28, NULL, NULL),
(578, 'Ilaje ', NULL, 28, NULL, NULL),
(579, 'Ile-Oluji ', NULL, 28, NULL, NULL),
(580, 'Okeigbo ', NULL, 28, NULL, NULL),
(581, 'Irele ', NULL, 28, NULL, NULL),
(582, 'Odigbo ', NULL, 28, NULL, NULL),
(583, 'Okitipupa ', NULL, 28, NULL, NULL),
(584, 'Ondo East  ', NULL, 28, NULL, NULL),
(585, 'Ondo West', NULL, 28, NULL, NULL),
(586, 'Ose', NULL, 28, NULL, NULL),
(587, 'Owo', NULL, 28, NULL, NULL),
(588, 'Aiyedade', NULL, 29, NULL, NULL),
(589, 'Aiyedire', NULL, 29, NULL, NULL),
(590, 'Atakumosa East', NULL, 29, NULL, NULL),
(591, 'Atakumosa West', NULL, 29, NULL, NULL),
(592, 'Boluwaduro', NULL, 29, NULL, NULL),
(593, 'Boripe', NULL, 29, NULL, NULL),
(594, 'Ede North', NULL, 29, NULL, NULL),
(595, 'Ede South', NULL, 29, NULL, NULL),
(596, 'Egbedore', NULL, 29, NULL, NULL),
(597, 'Ejigbo', NULL, 29, NULL, NULL),
(598, 'Ife Central', NULL, 29, NULL, NULL),
(599, 'Ife East', NULL, 29, NULL, NULL),
(600, 'Ife North', NULL, 29, NULL, NULL),
(601, 'Ife South', NULL, 29, NULL, NULL),
(602, 'Ifedayo', NULL, 29, NULL, NULL),
(603, 'Ifelodun', NULL, 29, NULL, NULL),
(604, 'Ila', NULL, 29, NULL, NULL),
(605, 'Ilesha East', NULL, 29, NULL, NULL),
(606, 'Ilesha West', NULL, 29, NULL, NULL),
(607, 'Irepodun', NULL, 29, NULL, NULL),
(608, 'Irewole', NULL, 29, NULL, NULL),
(609, 'Isokan', NULL, 29, NULL, NULL),
(610, 'Iwo', NULL, 29, NULL, NULL),
(611, 'Obokun', NULL, 29, NULL, NULL),
(612, 'Odo-Otin', NULL, 29, NULL, NULL),
(613, 'Ola-Oluwa', NULL, 29, NULL, NULL),
(614, 'Olorunda', NULL, 29, NULL, NULL),
(615, 'Oriade', NULL, 29, NULL, NULL),
(616, 'Oriade', NULL, 29, NULL, NULL),
(617, 'Oriade', NULL, 29, NULL, NULL),
(618, 'Afijio', NULL, 30, NULL, NULL),
(619, 'Akinyele', NULL, 30, NULL, NULL),
(620, 'Atiba', NULL, 30, NULL, NULL),
(621, 'Atigbo', NULL, 30, NULL, NULL),
(622, 'Egbeda', NULL, 30, NULL, NULL),
(623, 'Ibadan Central', NULL, 30, NULL, NULL),
(624, 'Ibadan North', NULL, 30, NULL, NULL),
(625, 'Ibadan North West', NULL, 30, NULL, NULL),
(626, 'Ibadan South East', NULL, 30, NULL, NULL),
(627, 'Ibadan South West', NULL, 30, NULL, NULL),
(628, 'Ibarapa Central ', NULL, 30, NULL, NULL),
(629, 'Ibarapa East', NULL, 30, NULL, NULL),
(630, 'Ibarapa North', NULL, 30, NULL, NULL),
(631, 'Ido', NULL, 30, NULL, NULL),
(632, 'Irepo', NULL, 30, NULL, NULL),
(633, 'Iseyin', NULL, 30, NULL, NULL),
(634, 'Itesiwaju', NULL, 30, NULL, NULL),
(635, 'Iwajowa', NULL, 30, NULL, NULL),
(636, 'Kajola', NULL, 30, NULL, NULL),
(637, 'Lagelu Ogbomosho North', NULL, 30, NULL, NULL),
(638, 'Ogbmosho South', NULL, 30, NULL, NULL),
(639, 'Ogo Oluwa', NULL, 30, NULL, NULL),
(640, 'Olorunsogo', NULL, 30, NULL, NULL),
(641, 'Oluyole', NULL, 30, NULL, NULL),
(642, 'Ona-Ara', NULL, 30, NULL, NULL),
(643, 'Orelope', NULL, 30, NULL, NULL),
(644, 'Ori Ire', NULL, 30, NULL, NULL),
(645, 'Oyo East', NULL, 30, NULL, NULL),
(646, 'Oyo West', NULL, 30, NULL, NULL),
(647, 'Saki East', NULL, 30, NULL, NULL),
(648, 'Saki West', NULL, 30, NULL, NULL),
(649, 'Surulere', NULL, 30, NULL, NULL),
(650, 'Barikin Ladi', NULL, 31, NULL, NULL),
(651, 'Bassa', NULL, 31, NULL, NULL),
(652, 'Bokkos', NULL, 31, NULL, NULL),
(653, 'Jos East', NULL, 2, NULL, NULL),
(654, 'Jos North', NULL, 31, NULL, NULL),
(655, 'Jos South', NULL, 31, NULL, NULL),
(656, 'Kanam', NULL, 31, NULL, NULL),
(657, 'Kanke', NULL, 31, NULL, NULL),
(658, 'Langtang North', NULL, 31, NULL, NULL),
(659, 'Langtang South', NULL, 31, NULL, NULL),
(660, 'Mangu', NULL, 31, NULL, NULL),
(661, 'Mikang', NULL, 31, NULL, NULL),
(662, 'Pankshin', NULL, 31, NULL, NULL),
(663, 'Qua an Pan', NULL, 31, NULL, NULL),
(664, 'Riyom', NULL, 31, NULL, NULL),
(665, 'Shendam', NULL, 31, NULL, NULL),
(666, 'Wase', NULL, 31, NULL, NULL),
(667, 'Abua/Odual', NULL, 32, NULL, NULL),
(668, 'Ahoada East', NULL, 32, NULL, NULL),
(669, 'Ahoada West', NULL, 32, NULL, NULL),
(670, 'Akuku Toru', NULL, 32, NULL, NULL),
(671, 'Adoni', NULL, 32, NULL, NULL),
(672, 'Asari-Toru', NULL, 32, NULL, NULL),
(673, 'Bonny', NULL, 32, NULL, NULL),
(674, 'Degema', NULL, 32, NULL, NULL),
(675, 'Emohua', NULL, 32, NULL, NULL),
(676, 'Eleme', NULL, 32, NULL, NULL),
(677, 'Etche', NULL, 32, NULL, NULL),
(678, 'Gokana', NULL, 32, NULL, NULL),
(679, 'Ikwerre', NULL, 32, NULL, NULL),
(680, 'Khana', NULL, 32, NULL, NULL),
(681, 'Mubi South', NULL, 32, NULL, NULL),
(682, 'Obia/Akpor', NULL, 32, NULL, NULL),
(683, 'Ogba/Egbema/Ndoni', NULL, 32, NULL, NULL),
(684, 'Ogu/Bolo', NULL, 32, NULL, NULL),
(685, 'Okrika', NULL, 32, NULL, NULL),
(686, 'Omumma', NULL, 32, NULL, NULL),
(687, 'Opobo/Nkoro', NULL, 32, NULL, NULL),
(688, 'Oyigbo', NULL, 32, NULL, NULL),
(689, 'Port-Harcourt', NULL, 32, NULL, NULL),
(690, 'Tai', NULL, 32, NULL, NULL),
(691, 'Binji', NULL, 33, NULL, NULL),
(692, 'Bodinga', NULL, 33, NULL, NULL),
(693, 'Dange-shnsi', NULL, 33, NULL, NULL),
(694, 'Gada', NULL, 33, NULL, NULL),
(695, 'Goronyo', NULL, 33, NULL, NULL),
(696, 'Gudu', NULL, 33, NULL, NULL),
(697, 'Gawabawa', NULL, 33, NULL, NULL),
(698, 'Illela', NULL, 33, NULL, NULL),
(699, 'Isa', NULL, 33, NULL, NULL),
(700, 'Kware', NULL, 33, NULL, NULL),
(701, 'Kebba', NULL, 33, NULL, NULL),
(702, 'Rabah', NULL, 33, NULL, NULL),
(703, 'Sabon birni', NULL, 33, NULL, NULL),
(704, 'Shagari', NULL, 33, NULL, NULL),
(705, 'Silame', NULL, 33, NULL, NULL),
(706, 'Sokoto North', NULL, 33, NULL, NULL),
(707, 'Sokoto South', NULL, 33, NULL, NULL),
(708, 'Tambuwal', NULL, 33, NULL, NULL),
(709, 'Tqngaza', NULL, 33, NULL, NULL),
(710, 'Tureta', NULL, 33, NULL, NULL),
(711, 'Wamako', NULL, 33, NULL, NULL),
(712, 'Wurno', NULL, 33, NULL, NULL),
(713, 'Yabo', NULL, 33, NULL, NULL),
(714, 'Ardo-kola', NULL, 34, NULL, NULL),
(715, 'Bali', NULL, 34, NULL, NULL),
(716, 'Donga', NULL, 34, NULL, NULL),
(717, 'Gashaka', NULL, 34, NULL, NULL),
(718, 'Cassol', NULL, 34, NULL, NULL),
(719, 'Ibi', NULL, 34, NULL, NULL),
(720, 'Jalingo', NULL, 34, NULL, NULL),
(721, 'Karin-Lamido', NULL, 34, NULL, NULL),
(722, 'Kurmi', NULL, 34, NULL, NULL),
(723, 'Lau', NULL, 34, NULL, NULL),
(724, 'Sardauna', NULL, 34, NULL, NULL),
(725, 'Takum', NULL, 34, NULL, NULL),
(726, 'ussa', NULL, 34, NULL, NULL),
(727, 'Wukari', NULL, 34, NULL, NULL),
(728, 'Yorro', NULL, 34, NULL, NULL),
(729, 'zing', NULL, 34, NULL, NULL),
(730, 'Bade', NULL, 35, NULL, NULL),
(731, 'Bursari', NULL, 35, NULL, NULL),
(732, 'Damaturu', NULL, 35, NULL, NULL),
(733, 'Fika', NULL, 35, NULL, NULL),
(734, 'Fune', NULL, 35, NULL, NULL),
(735, 'Geidam', NULL, 35, NULL, NULL),
(736, 'Gujba', NULL, 35, NULL, NULL),
(737, 'Gulani', NULL, 35, NULL, NULL),
(738, 'Jakusko', NULL, 35, NULL, NULL),
(739, 'Karasuwa', NULL, 35, NULL, NULL),
(740, 'Karawa', NULL, 35, NULL, NULL),
(741, 'Machina', NULL, 35, NULL, NULL),
(742, 'Nangere', NULL, 35, NULL, NULL),
(743, 'Nguru Potiskum', NULL, 35, NULL, NULL),
(744, 'Tarmua', NULL, 35, NULL, NULL),
(745, 'Yunusari ', NULL, 35, NULL, NULL),
(746, 'Yusufari', NULL, 35, NULL, NULL),
(747, 'Anka', NULL, 36, NULL, NULL),
(748, 'Bakura', NULL, 36, NULL, NULL),
(749, 'Birnin Magaji', NULL, 36, NULL, NULL),
(750, 'Bukkuyum', NULL, 36, NULL, NULL),
(751, 'Bungudu', NULL, 36, NULL, NULL),
(752, 'Gummi', NULL, 36, NULL, NULL),
(753, 'Gusau', NULL, 36, NULL, NULL),
(754, 'Kaura', NULL, 36, NULL, NULL),
(755, 'Namoda', NULL, 36, NULL, NULL),
(756, 'Maradun', NULL, 36, NULL, NULL),
(757, 'Maru', NULL, 36, NULL, NULL),
(758, 'Shinkafi', NULL, 36, NULL, NULL),
(759, 'Talata Mafara', NULL, 36, NULL, NULL),
(760, 'Tsafe', NULL, 36, NULL, NULL),
(761, 'Zurmi', NULL, 36, NULL, NULL),
(762, 'Gwagwalada ', NULL, 37, NULL, NULL),
(763, 'Kuje', NULL, 37, NULL, NULL),
(764, 'Abaji', NULL, 37, NULL, NULL),
(765, 'Abuja Municipal', NULL, 37, NULL, NULL),
(766, 'Bwari', NULL, 37, NULL, NULL),
(767, 'Kwali', NULL, 37, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `me_profiles`
--

CREATE TABLE `me_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_14_105700_create_states_table', 1),
(4, '2017_03_14_105900_create_lgas_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_03_20_173322_create_reports_table', 1),
(7, '2021_03_20_175345_create_user_profiles_table', 1),
(9, '2021_03_20_181832_create_health_facilities_table', 1),
(10, '2021_03_22_112503_create_cbo_profiles_table', 1),
(11, '2021_03_22_112503_create_spo_profiles_table', 1),
(12, '2021_03_22_112601_create_documents_table', 1),
(13, '2021_03_22_115154_create_me_profiles_table', 1),
(14, '2021_03_23_065449_create_wards_table', 1),
(15, '2021_03_25_211634_create_cats_table', 1),
(16, '2021_03_25_223853_create_cat_members_table', 1),
(17, '2021_03_20_180814_create_cbos_table', 2),
(20, '2021_04_09_015013_create_question_banks_table', 3),
(21, '2021_04_09_015044_create_client_exit_questionaires_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_banks`
--

CREATE TABLE `question_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_banks`
--

INSERT INTO `question_banks` (`id`, `question`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Can I Proceed with the interview', 'active', NULL, NULL),
(2, 'Name of Respondant', 'active', NULL, NULL),
(3, 'Child\'s Name (Where Applicable)', 'active', NULL, NULL),
(4, 'Respondant Category', 'active', NULL, NULL),
(5, 'Address (Detailed Address)', 'active', NULL, NULL),
(6, 'Telephone Number', 'active', NULL, NULL),
(7, 'Name of Health Facility where interview is conducted', 'active', NULL, NULL),
(8, 'Occupation', 'active', NULL, NULL),
(9, 'Educational Background', 'active', NULL, NULL),
(10, 'Which One you came for?', 'active', NULL, NULL),
(11, 'Which One did you receive', 'active', NULL, NULL),
(12, 'Frequency of visit within 3 months', 'active', NULL, NULL),
(13, 'Did you receive LLIN?', 'active', NULL, NULL),
(14, 'What Frequency?', 'active', NULL, NULL),
(15, 'Frequency of IPT Administration', 'active', NULL, NULL),
(16, 'Did You Swallow the (SP-Sulfadoxin-Pyrimethamine 3 White tabs)?', 'active', NULL, NULL),
(17, 'Services (Show Question if Prv Q is NO)', 'active', NULL, NULL),
(18, 'Was your Child given Seasonal Malaria Chemoprevention (SMC)?', 'active', NULL, NULL),
(19, 'If Yes to Prv Qs: How old was the child when given?', 'active', NULL, NULL),
(20, 'Were You Tested for Malaria?', 'active', NULL, NULL),
(21, 'Were You given Arthemisinin-based-Combination Therapy', 'active', NULL, NULL),
(22, 'IF Yes to Prv Q, Did You Finish the Drug?', 'active', NULL, NULL),
(23, 'How satisfied are you with the service(s) you received today?', 'active', NULL, NULL),
(24, 'What is responsible for your choice above?', 'active', NULL, NULL),
(25, 'If Satisfied, What might have helped you to be more satisfied with the service tou received today?', 'active', NULL, NULL),
(26, 'If you could make at least one suggestion for improving services at this health facility, what would?', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spo_profiles`
--

CREATE TABLE `spo_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Abia', NULL, NULL, NULL),
(2, 'Adamawa', 'active', NULL, NULL),
(3, 'Akwa-Ibom', NULL, NULL, NULL),
(4, 'Anambra', NULL, NULL, NULL),
(5, 'Bauchi', NULL, NULL, NULL),
(6, 'Bayelsa', NULL, NULL, NULL),
(7, 'Benue', NULL, NULL, NULL),
(8, 'Borno', NULL, NULL, NULL),
(9, 'Cross-River', NULL, NULL, NULL),
(10, 'Delta', 'active', NULL, NULL),
(11, 'Ebonyi', NULL, NULL, NULL),
(12, 'Edo', NULL, NULL, NULL),
(13, 'Ekiti', NULL, NULL, NULL),
(14, 'Enugu', NULL, NULL, NULL),
(15, 'Gombe', 'active', NULL, NULL),
(16, 'Imo', NULL, NULL, NULL),
(17, 'Jigawa', 'active', NULL, NULL),
(18, 'Kaduna', 'active', NULL, NULL),
(19, 'Kano', 'active', NULL, NULL),
(20, 'Katsina', 'active', NULL, NULL),
(21, 'Kebbi', NULL, NULL, NULL),
(22, 'Kogi', NULL, NULL, NULL),
(23, 'Kwara', 'active', NULL, NULL),
(24, 'Lagos', NULL, NULL, NULL),
(25, 'Nasarrawa', NULL, NULL, NULL),
(26, 'Niger', 'active', NULL, NULL),
(27, 'Ogun', 'active', NULL, NULL),
(28, 'Ondo', NULL, NULL, NULL),
(29, 'Osun', 'active', NULL, NULL),
(30, 'Oyo', NULL, NULL, NULL),
(31, 'Plateau', NULL, NULL, NULL),
(32, 'Rivers', NULL, NULL, NULL),
(33, 'Sokoto', NULL, NULL, NULL),
(34, 'Taraba', 'active', NULL, NULL),
(35, 'Yobe', 'active', NULL, NULL),
(36, 'Zamfara', NULL, NULL, NULL),
(37, 'FCT', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `2fa_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `2fa_code`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(10001, 'Super Admin', 'superadmin@acomis.com', '2021-03-31 14:14:26', '$2y$10$p0vBjUXo768tIatxClyrw.s4IKr.LuYuz7.STEvBOGjUM08DT799O', 'super_admin', NULL, 'avatar.png', 'active', NULL, '2021-03-31 14:14:26', '2021-03-31 14:14:26'),
(10002, 'Admin 001', 'admin001@acomis.com', '2021-03-31 14:14:26', '$2y$10$As82MuMYssdVPivlHuDp.uX40OYRQx0ZdQQVV0UpHhn90uItBzXIq', 'admin', NULL, 'avatar.png', 'active', NULL, '2021-03-31 14:14:26', '2021-03-31 14:14:26'),
(10003, 'Contact Person1', 'contact_person1@acomis.com', '2021-03-31 14:14:26', '$2y$10$xYqMFvS57ypq8TSxsGWvZOYcNcWIy1xsLc8GEgYprK/im1RGRmImm', 'hcbo', NULL, 'avatar.png', 'active', NULL, '2021-03-31 14:14:26', '2021-03-31 14:14:26'),
(10004, 'Contact Person2', 'contact_person2@acomis.com', '2021-03-31 14:14:26', '$2y$10$SWejsG0yhQgEAUlnD2r3JOY8bHlNE/uy3THClhBAy2wUOeIAp8JpC', 'hcbo', NULL, 'avatar.png', 'active', NULL, '2021-03-31 14:14:26', '2021-03-31 14:14:26'),
(10005, 'Monitoring Officer1', 'monitoringofficer1@acomis.com', '2021-03-31 14:14:27', '$2y$10$wjheOsdl4xO67EmEJogO8uco/LfGNHrRVfvozZy9ljokvxi078pNG', 'hcbo', NULL, 'avatar.png', 'active', NULL, '2021-03-31 14:14:27', '2021-03-31 14:14:27'),
(10006, 'Monitoring Officer2', 'monitoringofficer2@acomis.com', '2021-03-31 14:14:27', '$2y$10$YtbdIX1zY2fV/TXJ6P6NxuCLaTUHZiorb.iqtsAbxZYjLGNj8wRIO', 'hcbo', NULL, 'avatar.png', 'active', NULL, '2021-03-31 14:14:27', '2021-03-31 14:14:27'),
(10007, 'State Officer1', 'spo1@acomis.com', '2021-03-31 14:14:27', '$2y$10$GX7gtL5ZJSJcgBgwMMwAl.tn/4HlaxeQpIAVqyweUDQG5/CIT2vTa', 'spo', NULL, 'avatar.png', 'active', NULL, '2021-03-31 14:14:27', '2021-03-31 14:14:27'),
(10008, 'State Officer2', 'spo2@acomis.com', '2021-03-31 14:14:27', '$2y$10$fmr0DZB2grnXfyvY790ToOlZJ/xML62/xSUu7GuOCY45FRcBOz5ae', 'spo', NULL, 'avatar.png', 'active', NULL, '2021-03-31 14:14:27', '2021-03-31 14:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ward_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lga_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`id`, `ward_name`, `lga`, `state`, `state_id`, `lga_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'adamawa hong', 'Hong', 'Adamawa', NULL, NULL, 'active', '2021-04-06 07:25:35', '2021-04-06 07:25:35'),
(2, 'Jigawa Gwiwa ward', 'Gwiwa', 'Jigawa', NULL, NULL, 'active', '2021-04-06 07:42:33', '2021-04-06 07:42:33'),
(3, 'godfreys', 'Yola South', 'Adamawa', NULL, NULL, 'active', '2021-04-09 07:51:36', '2021-04-09 07:51:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cats_cbo_id_foreign` (`cbo_id`);

--
-- Indexes for table `cat_members`
--
ALTER TABLE `cat_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_members_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `cbos`
--
ALTER TABLE `cbos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cbo_profiles`
--
ALTER TABLE `cbo_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_exit_questionaires`
--
ALTER TABLE `client_exit_questionaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_facilities`
--
ALTER TABLE `health_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lgas`
--
ALTER TABLE `lgas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lgas_state_id_foreign` (`state_id`);

--
-- Indexes for table `me_profiles`
--
ALTER TABLE `me_profiles`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `question_banks`
--
ALTER TABLE `question_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spo_profiles`
--
ALTER TABLE `spo_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wards_state_id_foreign` (`state_id`),
  ADD KEY `wards_lga_id_foreign` (`lga_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cat_members`
--
ALTER TABLE `cat_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbos`
--
ALTER TABLE `cbos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbo_profiles`
--
ALTER TABLE `cbo_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_exit_questionaires`
--
ALTER TABLE `client_exit_questionaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `health_facilities`
--
ALTER TABLE `health_facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1172;

--
-- AUTO_INCREMENT for table `lgas`
--
ALTER TABLE `lgas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=768;

--
-- AUTO_INCREMENT for table `me_profiles`
--
ALTER TABLE `me_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `question_banks`
--
ALTER TABLE `question_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spo_profiles`
--
ALTER TABLE `spo_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10009;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wards`
--
ALTER TABLE `wards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cats`
--
ALTER TABLE `cats`
  ADD CONSTRAINT `cats_cbo_id_foreign` FOREIGN KEY (`cbo_id`) REFERENCES `cbos` (`id`);

--
-- Constraints for table `cat_members`
--
ALTER TABLE `cat_members`
  ADD CONSTRAINT `cat_members_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`);

--
-- Constraints for table `lgas`
--
ALTER TABLE `lgas`
  ADD CONSTRAINT `lgas_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `wards_lga_id_foreign` FOREIGN KEY (`lga_id`) REFERENCES `lgas` (`id`),
  ADD CONSTRAINT `wards_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
