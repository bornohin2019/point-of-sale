-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2025 at 10:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `point_of_sale`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advance_salaries`
--

INSERT INTO `advance_salaries` (`id`, `employee_id`, `date`, `advance_salary`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-04-01', 20000, '2025-03-01 12:12:54', '2025-03-01 12:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `attendences`
--

CREATE TABLE `attendences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendences`
--

INSERT INTO `attendences` (`id`, `employee_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-03-01', 'present', '2025-02-28 07:24:47', '2025-02-28 07:24:47'),
(2, 2, '2025-03-01', 'absent', '2025-02-28 07:24:47', '2025-02-28 07:24:47'),
(3, 4, '2025-03-01', 'absent', '2025-02-28 07:24:47', '2025-02-28 07:24:47'),
(4, 5, '2025-03-01', 'present', '2025-02-28 07:24:47', '2025-02-28 07:24:47'),
(5, 3, '2025-03-01', 'present', '2025-02-28 07:24:47', '2025-02-28 07:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Computer', 'computer', '2025-02-26 14:41:26', '2025-02-26 21:42:13'),
(2, 'Laptop', 'laptop', '2025-02-26 14:41:26', '2025-02-26 21:43:10'),
(3, 'Keyboard', 'keyboard', '2025-02-26 14:41:26', '2025-02-26 21:44:22'),
(4, 'Mouse', 'mouse', '2025-02-26 14:41:26', '2025-02-26 21:44:53'),
(5, 'Speaker', 'speaker', '2025-02-26 14:41:26', '2025-02-26 21:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Hasibul', 'hasib@gmail.com', '01625899852', '78-Len', 'Hasib Group', '1825478888607689.png', 'hasib', '34111425', 'BNI', 'Kolabagan', 'Dhaka', '2025-02-26 14:41:26', '2025-03-02 04:45:32'),
(2, 'Shamim', 'samim@gmail.com', '01791310488', 'bz-69', 'Samim Group', '1825696492620189.jpg', 'afrin', '5761311485', 'BRI', 'Gaibandha', 'Bazit Nogor', '2025-02-26 14:41:26', '2025-03-04 14:24:15'),
(3, 'Zolil  Ahmed', 'jolil@gmail.com', '0196369336', '12/25', 'Jui It', NULL, 'jui', '3328712185', 'BNI', 'Hapaniya', 'Shaheb Bazar', '2025-02-26 14:41:26', '2025-02-28 07:10:43'),
(4, 'Priyonti', 'priyonti@gmail.com', '01836987412', '23/123', 'Priyonti It', NULL, 'priyonti', '7818562189', 'BCA', 'Dhaka', 'Dhaka', '2025-02-26 14:41:26', '2025-02-28 07:12:57'),
(5, 'Farid Ahmed', 'farid@gmail.com', '01741589996', 'bengla-1/2', 'Farid\'s IT', '1825696708493845.jpg', 'farid', '4857800525', 'BRI', 'jirani', 'Gazipur', '2025-02-26 14:41:26', '2025-03-04 14:27:40'),
(6, 'Sourov', 'tuku@gmail.com', '01856235623', 'tc-r7', 'Tuku\'s Group', NULL, 'tuku', '8207645596', 'BSI', 'Cumilla', 'Cumilla', '2025-02-26 14:41:26', '2025-02-28 07:23:10'),
(7, 'Ridoy', 'ridoy@gmail.com', '01706862001', 'kb/63', 'Ridoy\'s IT', '1825696962693057.jpg', 'ridoy', '6837926225', 'BNI', 'Thakurgaon', 'Thakurgaon', '2025-02-26 14:41:26', '2025-03-04 14:31:42'),
(8, 'Moffasir Hosain Bisal', 'bisal@gmail.com', '01769358285', '87/12', 'ITI\'s IT', '1825696942766338.jpg', 'bisal', '5814018585', 'BCA', 'Thakurgaon', 'Thakurgaon', '2025-02-26 14:41:26', '2025-03-04 14:31:23'),
(9, 'Alamin', 'alamin@gmail.com', '01725899962', '2/27', 'alamin\'s It', '1825696787933375.jpg', 'alamin', '8745691885', 'BRI', 'MIrpur', 'Dhaka', '2025-02-26 14:41:26', '2025-03-04 14:28:56'),
(10, 'Kaniz Fathema', 'kaniz@gmail.com', '01896336985', '57-12/TC', 'Kaniz\'s Shop', NULL, 'kaniz', '4908096885', 'BNI', 'Technicle', 'Dhaka', '2025-02-26 14:41:26', '2025-02-28 07:43:31'),
(11, 'Ricardo Harris II', 'tsimonis@example.org', '650.796.9738', '86647 Schumm Plain\nLake Georgette, AZ 13921', 'Lubowitz, Metz and Marvin', NULL, 'Dr. Reginald Schamberger Jr.', '43559083', 'BNI', 'North Coryside', 'Haleymouth', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(13, 'Rocky Lehner', 'qkuphal@example.org', '+1-574-468-0685', '560 Steuber Trail Apt. 978\nNorth Jany, NV 32459', 'Kub Group', NULL, 'Vance Bode', '69673252', 'BSI', 'Tyriqueshire', 'West Lorna', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(14, 'Kitty Sipes', 'frosenbaum@example.org', '+1-551-936-4456', '716 Ashly Shore Apt. 979\nStromantown, SD 02672', 'Bednar-Mayer', NULL, 'Mr. Jamal Hudson', '61126560', 'BJB', 'Turnerport', 'West Aryannaborough', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(15, 'Miss Aubree Brekke', 'stracke.melisa@example.net', '+1 (865) 874-7534', '4648 Cremin Oval Suite 399\nEmmerichport, NH 20712', 'Gusikowski LLC', NULL, 'Ladarius Feest', '39893996', 'BCA', 'West Christophe', 'Trantowchester', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(16, 'Jazlyn Beer', 'amira.metz@example.org', '520-348-8181', '376 Walter Forks Suite 735\nLehnermouth, NE 41054', 'Rutherford LLC', NULL, 'Aida Daugherty', '19395426', 'BCA', 'Ratkeview', 'Kalebchester', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(17, 'Ms. Imelda Ferry', 'ahaley@example.net', '+1.971.963.0865', '27581 Aufderhar Isle Apt. 949\nEast Jamisonside, AR 82686-3466', 'Kautzer-Herzog', NULL, 'Lisandro Hills', '84028178', 'BCA', 'Nolanfort', 'Lake Reese', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(18, 'Ms. Meaghan Vandervort IV', 'demarcus.ward@example.com', '(628) 676-0499', '99341 Rosendo Passage Apt. 956\nEast Merlton, ID 30154', 'Mohr, Harris and Gutkowski', NULL, 'Carole Hills', '67256170', 'BRI', 'Candidashire', 'Emardport', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(19, 'Dr. May Shields DVM', 'hettinger.clementine@example.org', '+1.681.219.5627', '947 Colton Ranch Apt. 934\nGoldnerland, OR 98342', 'Muller-Beer', NULL, 'Mr. Jeremy Zemlak Sr.', '49579820', 'BCA', 'Port Luciusland', 'North Carli', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(20, 'Mr. Jamil Littel DDS', 'felicita22@example.org', '+1.501.827.9232', '3005 Dane Meadows Suite 564\nLittelfurt, VA 95175', 'Mueller, Brakus and Denesik', NULL, 'Mae Grady Sr.', '14089951', 'BRI', 'Penelopestad', 'Rathmouth', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(21, 'Leanna Thiel', 'marielle.hahn@example.com', '+19205704847', '3602 Yvonne Trail Apt. 774\nKaelynfort, MN 49889', 'Swaniawski and Sons', NULL, 'Larue Heller', '98616821', 'BNI', 'Willmsmouth', 'Port Kyliemouth', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(22, 'Mossie Nolan', 'poconnell@example.com', '+1 (458) 397-2428', '2032 Jorge Mountain Apt. 684\nPort Scotty, FL 77114', 'Kuphal, Mosciski and Bruen', NULL, 'Mckenna Eichmann', '56861938', 'BCA', 'Kayleyberg', 'North Elody', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(23, 'Dr. Nathanial Kohler', 'godfrey66@example.com', '+1.262.994.0031', '46561 Annabelle Lane\nPort Sophia, UT 18339', 'Hudson-Crona', NULL, 'Fiona Schmeler', '52060670', 'BRI', 'Watsicaport', 'Gutkowskiside', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(24, 'Ayla McClure I', 'abergstrom@example.net', '(773) 871-2650', '4464 Kerluke Manors Apt. 838\nNorth Mae, AR 46215', 'Beahan Inc', NULL, 'Ari D\'Amore', '35141982', 'BSI', 'Perryfurt', 'East Cleta', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(25, 'Nora Adams', 'fcole@example.net', '+1-928-337-3246', '207 Horacio Street Apt. 626\nPort Rogersborough, GA 70362', 'Parisian LLC', NULL, 'Prof. Georgiana Monahan II', '79410002', 'BRI', 'East Marinaville', 'West Verniehaven', '2025-02-26 14:41:26', '2025-02-26 14:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `vacation` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `experience`, `photo`, `salary`, `vacation`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Alamin', 'alamin@gmail.com', '01330063211', 'link-67', '2 Year', '1825671647101491.jpg', 452, NULL, 'Dhaka', '2025-02-26 14:41:26', '2025-03-04 07:49:20'),
(2, 'Rafiq Mia', 'rafiq@gmail.com', '01989296237', 'savar-1', '5 Year', '1825672303287015.jpg', 252, NULL, 'Savar', '2025-02-26 14:41:26', '2025-03-04 07:59:45'),
(3, 'Samim Ahmed', 'samim@gmail.com', '01891310488', 'Shaghata', '3 Year', '1825671869467079.jpg', 988, NULL, 'Gaibandha', '2025-02-26 14:41:26', '2025-03-04 07:52:52'),
(4, 'Rakibul Basar Rakib', 'rakib@gmail.com', '01788531122', 'Master Bari', '2 Year', '1825671909972655.jpg', 310, NULL, 'Gaibandha', '2025-02-26 14:41:26', '2025-03-04 07:53:30'),
(5, 'Sakib Ahmed', 'sakib@gmail.com', '01736363523', 'Nikonjo-2', '3 Year', '1825672019187811.jpg', 586, NULL, 'Khilkhet', '2025-02-26 14:41:26', '2025-03-04 07:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_044621_add_username_and_photo_to_users', 1),
(6, '2023_03_24_080143_create_employees_table', 1),
(7, '2023_03_29_025458_create_customers_table', 1),
(8, '2023_03_30_020042_create_suppliers_table', 1),
(9, '2023_03_30_083652_create_advance_salaries_table', 1),
(10, '2023_04_01_142106_create_pay_salaries_table', 1),
(11, '2023_04_02_141037_create_attendences_table', 1),
(12, '2023_04_04_041700_create_categories_table', 1),
(13, '2023_04_04_052256_create_products_table', 1),
(14, '2023_04_10_043156_create_orders_table', 1),
(15, '2023_04_10_044212_create_order_details_table', 1),
(16, '2023_04_13_222344_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `total_products` int(11) NOT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `pay` int(11) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_date`, `order_status`, `total_products`, `sub_total`, `vat`, `invoice_no`, `total`, `payment_status`, `pay`, `due`, `created_at`, `updated_at`) VALUES
(1, '1', '2025-02-27', 'complete', 2, 66, 3, 'INV-000001', 69, 'HandCash', 69, 0, '2025-02-26 22:10:37', '2025-03-01 05:03:01'),
(2, '9', '2025-03-01', 'complete', 1, 33, 2, 'INV-000002', 35, 'HandCash', 35, 0, '2025-03-01 05:00:45', '2025-03-01 11:58:54'),
(3, '5', '2025-03-01', 'complete', 6, 328, 16, 'INV-000003', 344, 'HandCash', 344, 0, '2025-03-01 05:02:36', '2025-03-01 12:14:37'),
(4, '2', '2025-03-01', 'complete', 7, 446, 22, 'INV-000004', 468, 'Cheque', 468, 0, '2025-03-01 12:16:30', '2025-03-01 12:40:37'),
(5, '1', '2025-03-01', 'pending', 7, 346, 17, 'INV-000005', 363, 'HandCash', 350, 13, '2025-03-01 12:40:17', NULL),
(6, '6', '2025-03-02', 'pending', 14, 615, 31, 'INV-000006', 646, 'Cheque', 456, 190, '2025-03-02 04:24:13', NULL),
(7, '10', '2025-03-04', 'pending', 12, 508, 25, 'INV-000007', 533, 'HandCash', 533, 0, '2025-03-04 08:01:31', NULL),
(8, '8', '2025-03-04', 'pending', 11, 623, 31, 'INV-000008', 654, 'HandCash', 654, 0, '2025-03-04 15:15:12', NULL),
(9, '9', '2025-03-04', 'complete', 56, 2744, 137, 'INV-000009', 2881, 'HandCash', 2881, 0, '2025-03-04 15:22:29', '2025-03-04 15:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitcost` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `unitcost`, `total`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 2, 33, 69, '2025-02-26 22:10:37', NULL),
(2, '2', '1', 1, 33, 35, '2025-03-01 05:00:45', NULL),
(3, '3', '5', 2, 98, 206, '2025-03-01 05:02:36', NULL),
(4, '3', '1', 4, 33, 139, '2025-03-01 05:02:36', NULL),
(5, '4', '5', 2, 98, 206, '2025-03-01 12:16:30', NULL),
(6, '4', '3', 5, 50, 263, '2025-03-01 12:16:30', NULL),
(7, '5', '3', 3, 50, 158, '2025-03-01 12:40:17', NULL),
(8, '5', '4', 4, 49, 206, '2025-03-01 12:40:17', NULL),
(9, '6', '1', 5, 33, 173, '2025-03-02 04:24:13', NULL),
(10, '6', '3', 9, 50, 473, '2025-03-02 04:24:13', NULL),
(11, '7', '1', 5, 33, 173, '2025-03-04 08:01:31', NULL),
(12, '7', '4', 7, 49, 360, '2025-03-04 08:01:31', NULL),
(13, '8', '5', 4, 98, 412, '2025-03-04 15:15:12', NULL),
(14, '8', '1', 7, 33, 243, '2025-03-04 15:15:12', NULL),
(15, '9', '11', 56, 49, 2881, '2025-03-04 15:22:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_salaries`
--

CREATE TABLE `pay_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `due_salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_salaries`
--

INSERT INTO `pay_salaries` (`id`, `employee_id`, `date`, `paid_amount`, `advance_salary`, `due_salary`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-03-04', 452, 20000, -19548, '2025-03-01 12:13:53', '2025-03-01 12:13:53');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'pos.menu', 'web', 'pos', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(2, 'employee.menu', 'web', 'employee', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(3, 'customer.menu', 'web', 'customer', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(4, 'supplier.menu', 'web', 'supplier', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(5, 'salary.menu', 'web', 'salary', '2025-02-26 14:41:26', '2025-02-26 14:41:26'),
(6, 'attendence.menu', 'web', 'attendence', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(7, 'category.menu', 'web', 'category', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(8, 'product.menu', 'web', 'product', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(9, 'orders.menu', 'web', 'orders', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(10, 'stock.menu', 'web', 'stock', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(11, 'roles.menu', 'web', 'roles', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(12, 'user.menu', 'web', 'user', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(13, 'database.menu', 'web', 'database', '2025-02-26 14:41:27', '2025-02-26 14:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_garage` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_store` int(11) DEFAULT NULL,
  `buying_date` date DEFAULT NULL,
  `expire_date` varchar(255) DEFAULT NULL,
  `buying_price` int(11) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `supplier_id`, `product_code`, `product_garage`, `product_image`, `product_store`, `buying_date`, `expire_date`, `buying_price`, `selling_price`, `created_at`, `updated_at`) VALUES
(1, 'Asus ROG Strix Scar 16', 2, 1, 'PC01', 'A', '1825670796859366.jpeg', 634, '2025-02-26', '2027-02-26', 12, 33, '2025-02-26 14:41:26', '2025-03-04 07:35:50'),
(2, 'Incase Ergonomic Keyboard', 3, 2, 'PC02', 'D', '1825670853383995.jpeg', 519, '2025-03-01', '2026-11-12', 98, 49, '2025-02-26 14:41:26', '2025-03-04 07:36:43'),
(3, 'KEF LSX II LT', 5, 5, 'PC03', 'B', '1825671009725466.jpeg', 6, '2025-03-02', '2026-11-05', 21, 50, '2025-02-26 14:41:26', '2025-03-04 07:39:31'),
(4, 'JBL PartyBox 520', 5, 7, 'PC04', 'B', '1825671078855835.jpeg', 555, '2025-02-26', '2026-11-29', 37, 49, '2025-02-26 14:41:26', '2025-03-04 07:40:18'),
(5, 'Apple Magic Mouse (3rd generation)', 4, 6, 'PC05', 'A', '1825671122683633.jpeg', 863, '2025-02-26', '2026-10-07', 21, 98, '2025-02-26 14:41:26', '2025-03-04 07:40:59'),
(6, 'HP OmniDesk PCs', 1, 7, 'PC06', 'C', '1825671163145817.jpeg', 703, '2025-02-26', '2026-07-29', 63, 74, '2025-02-26 14:41:26', '2025-03-04 07:41:38'),
(7, 'Apple MacBook Air with M4 Chip', 2, 3, 'PC07', 'B', '1825671201541095.jpeg', 412, '2025-02-26', '2026-09-10', 27, 90, '2025-02-26 14:41:26', '2025-03-04 07:42:15'),
(8, 'Framework Desktop PC', 1, 2, 'PC08', 'B', '1825671252001625.jpeg', 593, '2025-02-26', '2026-09-30', 6, 59, '2025-02-26 14:41:26', '2025-03-04 07:43:03'),
(9, 'Lenovo Yoga Book 9i', 2, 2, 'PC09', 'C', '1825671298122737.jpeg', 661, '2025-02-26', '2026-10-07', 15, 10, '2025-02-26 14:41:26', '2025-03-04 07:43:47'),
(10, 'Asus Fragrance Mouse', 4, 4, 'PC10', 'B', '1825671337679864.jpeg', 976, '2025-03-04', '2026-11-11', 77, 29, '2025-02-26 14:41:26', '2025-03-04 07:44:25'),
(11, 'Das Keyboard', 3, 1, 'PC11', 'B', '1825700036975888.jpeg', 463, '2025-03-05', '2026-03-04', 98, 49, '2025-03-04 15:20:34', '2025-03-04 15:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(2, 'Admin', 'web', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(3, 'Account', 'web', '2025-02-26 14:41:27', '2025-02-26 14:41:27'),
(4, 'Manager', 'web', '2025-02-26 14:41:27', '2025-02-26 14:41:27');

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
(1, 1),
(2, 1),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 4),
(6, 1),
(7, 1),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(10, 4),
(11, 1),
(12, 1),
(12, 2),
(12, 3),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `shopname` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `account_holder` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_branch` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `shopname`, `photo`, `type`, `account_holder`, `account_number`, `bank_name`, `bank_branch`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Kazi Khiruddin', 'kk@gmail.com', '01825276422', 'D 27', 'Prapti IT', '1825697470918448.jpg', 'Distributor', 'prapti', '69726338', 'BRI', 'Arambag', 'Dhaka', '2025-02-26 14:41:26', '2025-03-04 14:39:47'),
(2, 'Badhon', 'badhon@gmail.com', '01765656565', '27, B', 'Badhon\'s IT', '1825697564998784.jpg', 'Distributor', 'rose', '97079709', 'BSI', 'Azimpur', 'Azimpur', '2025-02-26 14:41:26', '2025-03-04 14:41:17'),
(3, 'Shariyar', 'shariya@gmail.com', '01856989658', '1/p', 'Bizli Group', NULL, 'Distributor', 'bipul', '5357888651', 'BNI', 'Shaghata', 'Shaghata', '2025-02-26 14:41:26', '2025-03-01 04:43:25'),
(4, 'Sakil', 'sakil@gmail.com', '01785236974', '1/p', 'Shakil LTD', '1825698037578177.jpg', 'Distributor', 'sakil', '8874947486', 'BCA', 'Polton', 'Polton', '2025-02-26 14:41:26', '2025-03-04 14:48:48'),
(5, 'Habib', 'habib@gmail.com', '01896936369', '67-K', 'Habib Group', NULL, 'Whole Seller', 'habib', '31973249', 'BRI', 'Keranigonj', 'Dhaka', '2025-02-26 14:41:26', '2025-02-26 21:54:34'),
(6, 'Rafiya', 'rafiya@gmail.com', '01825896321', '2/01', 'Rafiya Ltd', NULL, 'Whole Seller', 'rafiya', '1894638567', 'BSI', 'Panthamari', 'Panthamari', '2025-02-26 14:41:26', '2025-02-28 08:30:30'),
(7, 'Safwon Mirza', 'safwon@gmail.com', '0189632541', 'rs/25', 'Collection IT', NULL, 'Distributor', 'safwon', '4787539123', 'BNI', 'Mohakhali', 'Mohakhali', '2025-02-26 14:41:26', '2025-03-01 04:50:27'),
(8, 'Ismail', 'lstrosin@example.org', '01585895968', '39/12', 'Ismai\'s IT', NULL, 'Whole Seller', 'ismail', '4849165589', 'BSI', 'Agargaon', 'Agargaon', '2025-02-26 14:41:26', '2025-02-28 08:26:27'),
(9, 'Munna', 'munna@gmail.com', '01853626589', '29/45', 'Munna IT', NULL, 'Distributor', 'munna', '3072693359', 'BNI', 'Shymoli', 'Shymoli', '2025-02-26 14:41:26', '2025-02-28 08:11:44'),
(10, 'Imam', 'imam@gmail.com', '01698986532', '27/56', 'Imam Store', NULL, 'Whole Seller', 'imam', '6586370756', 'BCA', 'Noyakhali', 'Noyakhali', '2025-02-26 14:41:26', '2025-02-28 08:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `photo`) VALUES
(1, 'Rabbani', 'admin@gmail.com', '2025-02-26 14:41:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9G9lys1iJCgJw9AQcSU9NiWaF6ILIaaeiwUWdq8ockNGMg2DTZ4TTiODaUy9', '2025-02-26 14:41:26', '2025-03-01 15:09:06', 'admin', '1825427523049107.jpg'),
(5, 'Galib Hasan Megh', 'bornohin@gmail.com', NULL, '$2y$10$l1JwvM0pih0sx.PNtdt1FeJKb6OrCzxHZR4YsH4tYeL1DZ7peCuQq', NULL, '2025-03-04 15:04:03', '2025-03-04 15:04:03', 'bornohin', '1825698997306377.jpg'),
(6, 'Kazi Khiruddin', 'kk@gmail.com', NULL, '$2y$10$J66yLMSvr7oKrjZkY8VPAu0LotYwPDmiphyOuMyumQ7UoWPzPsawi', NULL, '2025-03-04 15:04:41', '2025-03-04 15:04:41', 'nirban', '1825699037691790.jpg'),
(7, 'Alamin', 'user@gmail.com', NULL, '$2y$10$NbW.6ksW4jKhgqeIc8tYVOibt8jUBCfTRghmejIH1OuuRxzH4TQk.', NULL, '2025-03-04 15:05:21', '2025-03-04 15:05:21', 'user', '1825699079306769.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendences`
--
ALTER TABLE `attendences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD UNIQUE KEY `employees_phone_unique` (`phone`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pay_salaries`
--
ALTER TABLE `pay_salaries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendences`
--
ALTER TABLE `attendences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pay_salaries`
--
ALTER TABLE `pay_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
