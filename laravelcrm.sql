-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2022 at 07:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelcrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `referral_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED NOT NULL,
  `modified_by_id` int(10) UNSIGNED DEFAULT NULL,
  `assigned_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `middle_name`, `last_name`, `status`, `referral_source`, `position_title`, `industry`, `project_type`, `company`, `project_description`, `description`, `budget`, `website`, `linkedin`, `address_street`, `address_city`, `address_state`, `address_country`, `address_zipcode`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Emma', 'loice', 'Loice', 1, 'web', NULL, 'artisan', 'Water driling', 'jugoma', 'drill water for me 30  feet borehole with a pumping', NULL, '12334', NULL, NULL, 'moiben strees', 'moiben', 'Uganda', 'Kampala', '34567', 2, NULL, 3, '2022-12-17 11:05:41', '2022-12-17 11:05:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_document`
--

CREATE TABLE `contact_document` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_document`
--

INSERT INTO `contact_document` (`id`, `contact_id`, `document_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-12-17 11:05:42', '2022-12-17 11:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact_email`
--

CREATE TABLE `contact_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_email`
--

INSERT INTO `contact_email` (`id`, `email`, `contact_id`, `created_at`, `updated_at`) VALUES
(1, 'loicekyeni@gmail.com', 1, '2022-12-17 11:05:41', '2022-12-17 11:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact_phone`
--

CREATE TABLE `contact_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_phone`
--

INSERT INTO `contact_phone` (`id`, `phone`, `contact_id`, `created_at`, `updated_at`) VALUES
(1, '0798743453', 1, '2022-12-17 11:05:42', '2022-12-17 11:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact_status`
--

CREATE TABLE `contact_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_status`
--

INSERT INTO `contact_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Lead', NULL, NULL),
(2, 'Opportunity', NULL, NULL),
(3, 'Customer', NULL, NULL),
(4, 'Close', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active 2=not active',
  `type` int(10) UNSIGNED DEFAULT NULL,
  `publish_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED NOT NULL,
  `modified_by_id` int(10) UNSIGNED DEFAULT NULL,
  `assigned_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `name`, `file`, `status`, `type`, `publish_date`, `expiration_date`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Loice', '1671280769.docx', 1, 4, '12/29/2022', '12/21/2022', 2, NULL, 4, '2022-12-17 09:39:29', '2022-12-17 09:40:42', '2022-12-17 09:40:42'),
(2, 'Android cookbook', '1671280879.pdf', 1, 1, '12/03/2022', NULL, 2, 2, 4, '2022-12-17 09:41:19', '2022-12-17 09:47:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_type`
--

CREATE TABLE `document_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_type`
--

INSERT INTO `document_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Contract', NULL, NULL),
(2, 'License Agreement', NULL, NULL),
(3, 'EULA', NULL, NULL),
(4, 'Other', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_16_163938_create_permission_tables', 1),
(6, '2022_12_16_205452_create_document_type_table', 1),
(7, '2022_12_16_205508_create_document_table', 1),
(8, '2022_12_16_205510_create_task_status_table', 1),
(9, '2022_12_16_205512_create_task_type_table', 1),
(10, '2022_12_16_205555_create_contact_status_table', 1),
(11, '2022_12_16_205658_create_setting_table', 1),
(12, '2022_12_17_062108_create_contact_table', 1),
(13, '2022_12_17_062111_create_contact_phone_table', 1),
(14, '2022_12_17_062113_create_contact_email_table', 1),
(15, '2022_12_17_062115_create_contact_document_table', 1),
(16, '2022_12_17_062116_create_task_table', 1),
(17, '2022_12_17_062118_create_task_document_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 4);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create_contact', 'web', '2022-12-17 07:20:31', '2022-12-17 07:20:31'),
(2, 'edit_contact', 'web', '2022-12-17 07:20:31', '2022-12-17 07:20:31'),
(3, 'delete_contact', 'web', '2022-12-17 07:20:32', '2022-12-17 07:20:32'),
(4, 'list_contacts', 'web', '2022-12-17 07:20:32', '2022-12-17 07:20:32'),
(5, 'view_contact', 'web', '2022-12-17 07:20:32', '2022-12-17 07:20:32'),
(6, 'assign_contact', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(7, 'create_document', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(8, 'edit_document', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(9, 'delete_document', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(10, 'list_documents', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(11, 'view_document', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(12, 'assign_document', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(13, 'create_task', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(14, 'edit_task', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(15, 'delete_task', 'web', '2022-12-17 07:20:33', '2022-12-17 07:20:33'),
(16, 'list_tasks', 'web', '2022-12-17 07:20:34', '2022-12-17 07:20:34'),
(17, 'view_task', 'web', '2022-12-17 07:20:34', '2022-12-17 07:20:34'),
(18, 'assign_task', 'web', '2022-12-17 07:20:34', '2022-12-17 07:20:34'),
(19, 'update_task_status', 'web', '2022-12-17 07:20:34', '2022-12-17 07:20:34'),
(20, 'edit_profile', 'web', '2022-12-17 07:20:35', '2022-12-17 07:20:35'),
(21, 'compose_email', 'web', '2022-12-17 07:20:35', '2022-12-17 07:20:35'),
(22, 'list_emails', 'web', '2022-12-17 07:20:35', '2022-12-17 07:20:35'),
(23, 'view_email', 'web', '2022-12-17 07:20:35', '2022-12-17 07:20:35'),
(24, 'toggle_important_email', 'web', '2022-12-17 07:20:35', '2022-12-17 07:20:35'),
(25, 'trash_email', 'web', '2022-12-17 07:20:35', '2022-12-17 07:20:35'),
(26, 'send_email', 'web', '2022-12-17 07:20:35', '2022-12-17 07:20:35'),
(27, 'reply_email', 'web', '2022-12-17 07:20:35', '2022-12-17 07:20:35'),
(28, 'forward_email', 'web', '2022-12-17 07:20:35', '2022-12-17 07:20:35'),
(29, 'show_email_notifications', 'web', '2022-12-17 07:20:36', '2022-12-17 07:20:36'),
(30, 'show_calendar', 'web', '2022-12-17 07:20:36', '2022-12-17 07:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Sales Manager', 'web', '2022-12-17 09:21:20', '2022-12-17 09:21:20'),
(3, 'Property Manager', 'web', '2022-12-17 09:26:22', '2022-12-17 09:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(3, 3),
(4, 3),
(5, 2),
(5, 3),
(6, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 2),
(9, 3),
(10, 2),
(10, 3),
(11, 3),
(12, 3),
(13, 2),
(13, 3),
(14, 2),
(14, 3),
(15, 3),
(16, 3),
(17, 2),
(17, 3),
(18, 2),
(18, 3),
(19, 3),
(20, 3),
(21, 2),
(21, 3),
(22, 2),
(22, 3),
(23, 3),
(24, 3),
(25, 2),
(25, 3),
(26, 2),
(26, 3),
(27, 3),
(28, 3),
(29, 2),
(29, 3),
(30, 2),
(30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'crm_email', 'noreply@mini-crm.com', NULL, NULL),
(2, 'enable_email_notification', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Low Normal High Urgent',
  `status` int(10) UNSIGNED DEFAULT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Lead Opportunity Customer Close',
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED NOT NULL,
  `modified_by_id` int(10) UNSIGNED DEFAULT NULL,
  `assigned_user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `priority`, `status`, `type_id`, `start_date`, `end_date`, `complete_date`, `contact_type`, `contact_id`, `description`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Find New clients', 'High', 2, 3, '12/15/2022', NULL, '12/21/2022', 'Lead', 1, 'Call then lead', 2, NULL, 4, '2022-12-17 11:24:30', '2022-12-17 11:24:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_document`
--

CREATE TABLE `task_document` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_document`
--

INSERT INTO `task_document` (`id`, `task_id`, `document_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-12-17 11:24:31', '2022-12-17 11:24:31');

-- --------------------------------------------------------

--
-- Table structure for table `task_status`
--

CREATE TABLE `task_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_status`
--

INSERT INTO `task_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Not Started', NULL, NULL),
(2, 'Started', NULL, NULL),
(3, 'Completed', NULL, NULL),
(4, 'Cancelled', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_type`
--

CREATE TABLE `task_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_type`
--

INSERT INTO `task_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Task', NULL, NULL),
(2, 'Meeting', NULL, NULL),
(3, 'Phone call', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `position_title`, `phone`, `image`, `is_admin`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'pwnthiwa@gmail.com', '$2y$10$/8JFzHX/L9IsiagiJYVgyO4OFjR/BI8hoXilH.kOSGG67kLL5W9AO', 'CEO', NULL, '1671284372.jpg', 1, 1, NULL, '2022-12-17 07:22:00', '2022-12-17 10:39:32'),
(3, 'leence', 'leence@gmail.com', '$2y$10$dVsO1ZiHd/P86QtTxeaKNesLfn4AGNTbTW3Tn/Ne/Xofsc4sji7em', NULL, NULL, NULL, 0, 1, NULL, '2022-12-17 07:43:04', '2022-12-17 07:43:04'),
(4, 'loice', 'loicekyeni@gmail.com', '$2y$10$e10C12h1epWUEwqaMnAk0u0x9kySycm0D8Xr6QLOkRGl47Drd8u0u', NULL, NULL, NULL, 0, 1, NULL, '2022-12-17 07:43:49', '2022-12-17 07:43:49'),
(5, 'Michael', 'michael@gmail.com', '$2y$10$rqEH7ryboAyQH0LJdFDslu7VZz7L1Srn9IGb7Wtn/eXLq.p5eDmUW', NULL, NULL, NULL, 0, 1, NULL, '2022-12-17 09:18:21', '2022-12-17 09:18:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_created_by_id_foreign` (`created_by_id`),
  ADD KEY `contact_modified_by_id_foreign` (`modified_by_id`),
  ADD KEY `contact_assigned_user_id_foreign` (`assigned_user_id`);

--
-- Indexes for table `contact_document`
--
ALTER TABLE `contact_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_document_contact_id_foreign` (`contact_id`),
  ADD KEY `contact_document_document_id_foreign` (`document_id`);

--
-- Indexes for table `contact_email`
--
ALTER TABLE `contact_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_email_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `contact_phone`
--
ALTER TABLE `contact_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_phone_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `contact_status`
--
ALTER TABLE `contact_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_type_foreign` (`type`),
  ADD KEY `document_created_by_id_foreign` (`created_by_id`),
  ADD KEY `document_modified_by_id_foreign` (`modified_by_id`),
  ADD KEY `document_assigned_user_id_foreign` (`assigned_user_id`);

--
-- Indexes for table `document_type`
--
ALTER TABLE `document_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_setting_key_unique` (`setting_key`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_status_foreign` (`status`),
  ADD KEY `task_type_id_foreign` (`type_id`),
  ADD KEY `task_contact_id_foreign` (`contact_id`),
  ADD KEY `task_created_by_id_foreign` (`created_by_id`),
  ADD KEY `task_modified_by_id_foreign` (`modified_by_id`),
  ADD KEY `task_assigned_user_id_foreign` (`assigned_user_id`);

--
-- Indexes for table `task_document`
--
ALTER TABLE `task_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_document_task_id_foreign` (`task_id`),
  ADD KEY `task_document_document_id_foreign` (`document_id`);

--
-- Indexes for table `task_status`
--
ALTER TABLE `task_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_type`
--
ALTER TABLE `task_type`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_document`
--
ALTER TABLE `contact_document`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_email`
--
ALTER TABLE `contact_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_phone`
--
ALTER TABLE `contact_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_status`
--
ALTER TABLE `contact_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `document_type`
--
ALTER TABLE `document_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_document`
--
ALTER TABLE `task_document`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_status`
--
ALTER TABLE `task_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `task_type`
--
ALTER TABLE `task_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_assigned_user_id_foreign` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contact_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contact_modified_by_id_foreign` FOREIGN KEY (`modified_by_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `contact_document`
--
ALTER TABLE `contact_document`
  ADD CONSTRAINT `contact_document_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`),
  ADD CONSTRAINT `contact_document_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`);

--
-- Constraints for table `contact_email`
--
ALTER TABLE `contact_email`
  ADD CONSTRAINT `contact_email_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`);

--
-- Constraints for table `contact_phone`
--
ALTER TABLE `contact_phone`
  ADD CONSTRAINT `contact_phone_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`);

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_assigned_user_id_foreign` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `document_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `document_modified_by_id_foreign` FOREIGN KEY (`modified_by_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `document_type_foreign` FOREIGN KEY (`type`) REFERENCES `document_type` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_assigned_user_id_foreign` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `task_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `task_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `task_modified_by_id_foreign` FOREIGN KEY (`modified_by_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `task_status_foreign` FOREIGN KEY (`status`) REFERENCES `task_status` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `task_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `task_type` (`id`);

--
-- Constraints for table `task_document`
--
ALTER TABLE `task_document`
  ADD CONSTRAINT `task_document_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`),
  ADD CONSTRAINT `task_document_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
