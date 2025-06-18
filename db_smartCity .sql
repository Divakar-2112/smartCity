-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2025 at 05:29 PM
-- Server version: 10.6.22-MariaDB-ubu2004
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_smartCity`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add department', 6, 'add_department'),
(22, 'Can change department', 6, 'change_department'),
(23, 'Can delete department', 6, 'delete_department'),
(24, 'Can view department', 6, 'view_department'),
(25, 'Can add user', 7, 'add_newuser'),
(26, 'Can change user', 7, 'change_newuser'),
(27, 'Can delete user', 7, 'delete_newuser'),
(28, 'Can view user', 7, 'view_newuser'),
(29, 'Can add sub category', 8, 'add_subcategory'),
(30, 'Can change sub category', 8, 'change_subcategory'),
(31, 'Can delete sub category', 8, 'delete_subcategory'),
(32, 'Can view sub category', 8, 'view_subcategory'),
(33, 'Can add complaint detail', 9, 'add_complaintdetail'),
(34, 'Can change complaint detail', 9, 'change_complaintdetail'),
(35, 'Can delete complaint detail', 9, 'delete_complaintdetail'),
(36, 'Can view complaint detail', 9, 'view_complaintdetail'),
(37, 'Can add faq', 10, 'add_faq'),
(38, 'Can change faq', 10, 'change_faq'),
(39, 'Can delete faq', 10, 'delete_faq'),
(40, 'Can view faq', 10, 'view_faq'),
(41, 'Can add gallery item', 11, 'add_galleryitem'),
(42, 'Can change gallery item', 11, 'change_galleryitem'),
(43, 'Can delete gallery item', 11, 'delete_galleryitem'),
(44, 'Can view gallery item', 11, 'view_galleryitem'),
(45, 'Can add hero section', 12, 'add_herosection'),
(46, 'Can change hero section', 12, 'change_herosection'),
(47, 'Can delete hero section', 12, 'delete_herosection'),
(48, 'Can view hero section', 12, 'view_herosection'),
(49, 'Can add news item', 13, 'add_newsitem'),
(50, 'Can change news item', 13, 'change_newsitem'),
(51, 'Can delete news item', 13, 'delete_newsitem'),
(52, 'Can view news item', 13, 'view_newsitem'),
(53, 'Can add vision section', 14, 'add_visionsection'),
(54, 'Can change vision section', 14, 'change_visionsection'),
(55, 'Can delete vision section', 14, 'delete_visionsection'),
(56, 'Can view vision section', 14, 'view_visionsection'),
(57, 'Can add hero content', 15, 'add_herocontent'),
(58, 'Can change hero content', 15, 'change_herocontent'),
(59, 'Can delete hero content', 15, 'delete_herocontent'),
(60, 'Can view hero content', 15, 'view_herocontent'),
(61, 'Can add testimonials', 16, 'add_testimonials'),
(62, 'Can change testimonials', 16, 'change_testimonials'),
(63, 'Can delete testimonials', 16, 'delete_testimonials'),
(64, 'Can view testimonials', 16, 'view_testimonials'),
(65, 'Can add faq_ section', 17, 'add_faq_section'),
(66, 'Can change faq_ section', 17, 'change_faq_section'),
(67, 'Can delete faq_ section', 17, 'delete_faq_section'),
(68, 'Can view faq_ section', 17, 'view_faq_section'),
(69, 'Can add latest_ news', 18, 'add_latest_news'),
(70, 'Can change latest_ news', 18, 'change_latest_news'),
(71, 'Can delete latest_ news', 18, 'delete_latest_news'),
(72, 'Can view latest_ news', 18, 'view_latest_news'),
(73, 'Can add state location', 19, 'add_statelocation'),
(74, 'Can change state location', 19, 'change_statelocation'),
(75, 'Can delete state location', 19, 'delete_statelocation'),
(76, 'Can view state location', 19, 'view_statelocation'),
(77, 'Can add district location', 20, 'add_districtlocation'),
(78, 'Can change district location', 20, 'change_districtlocation'),
(79, 'Can delete district location', 20, 'delete_districtlocation'),
(80, 'Can view district location', 20, 'view_districtlocation');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_complaintdetail`
--

CREATE TABLE `citizen_complaintdetail` (
  `complaint_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `subCategory_id` int(11) NOT NULL,
  `image_upload` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `district_id` int(11) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `state_id` int(11) NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_complaintdetail`
--

INSERT INTO `citizen_complaintdetail` (`complaint_id`, `description`, `status`, `created_at`, `updated_at`, `user_id`, `department_id`, `subCategory_id`, `image_upload`, `address`, `district_id`, `pincode`, `state_id`, `latitude`, `longitude`) VALUES
(1, 'Road damage issue reported', 'Resolved', '2025-05-26 04:56:19.000000', '2025-06-13 10:41:35.623483', 259, 1, 1, '', 'Main Road', 30, '636820', 1, 11.429171, 77.736634),
(2, 'Footpath issues issue reported', 'In Progress', '2025-05-08 04:56:19.000000', '2025-06-13 09:45:04.117080', 260, 1, 2, 'uploads/Footpath_Issues1.jpeg', 'Park Avenue', 30, '606721', 1, 10.028763, 77.183445),
(3, 'Construction waste issue reported', 'Resolved', '2025-05-30 04:56:19.000000', '2025-06-13 09:45:36.822279', 261, 1, 3, 'uploads/Construction_Waste1.jpeg', '2nd Street', 14, '694213', 1, 9.735931, 80.282051),
(4, 'Illegal constructions issue reported', 'Pending', '2025-05-12 10:20:00.000000', '2025-06-13 10:28:37.120782', 262, 1, 4, 'uploads/Illegal_Constructions3_0rUhAui.jpeg', 'Temple Road', 3, '600105', 1, 13.082680, 80.270721),
(5, 'Drainage blockage issue reported', 'In Progress', '2025-06-01 08:15:00.000000', '2025-06-13 10:28:12.468031', 263, 1, 5, 'uploads/Drainage_Blockage3_BUldXoN.jpeg', 'Market Street', 4, '641018', 1, 11.016845, 76.955833),
(6, 'Street repair delay issue reported', 'Resolved', '2025-05-20 14:30:00.000000', '2025-06-13 10:27:36.806103', 264, 1, 6, 'uploads/Street_Repair_Delay2.jpeg', 'Hill Top Road', 14, '625020', 1, 9.925201, 78.119774),
(7, 'Water leakage issue reported', 'Pending', '2025-05-18 11:45:00.000000', '2025-06-13 10:27:12.650084', 265, 2, 7, 'uploads/Water_Leakage2_dzepCvY.jpeg', 'Lake View Road', 3, '600034', 1, 13.084045, 80.248629),
(8, 'No water supply issue reported', 'In Progress', '2025-06-02 09:10:00.000000', '2025-06-13 10:26:39.483130', 266, 2, 8, 'uploads/No_Water_Supply3.jpeg', 'Gandhi Street', 29, '620001', 1, 10.790483, 78.704673),
(9, 'Low water pressure issue reported', 'Resolved', '2025-05-25 13:40:00.000000', '2025-06-13 10:26:07.596599', 267, 2, 9, 'uploads/Low_Water_Pressure2_hPnVXNn.jpeg', 'Park Avenue', 23, '636007', 1, 11.664325, 78.146014),
(10, 'Dirty water supply issue reported', 'Pending', '2025-05-14 07:25:00.000000', '2025-06-13 10:25:46.078645', 268, 2, 10, 'uploads/Dirty_Water_Supply3.jpeg', '3rd Street', 4, '641012', 1, 11.016796, 76.957000),
(11, 'Broken water meter issue reported', 'In Progress', '2025-05-22 12:05:00.000000', '2025-06-13 10:25:23.343334', 269, 2, 11, 'uploads/Broken_Water_Meter2_I0Iq0ha.jpeg', 'College Road', 3, '600119', 1, 13.050000, 80.226110),
(12, 'Unauthorised water connection issue reported', 'Resolved', '2025-05-30 17:00:00.000000', '2025-06-13 10:24:58.724327', 270, 2, 12, 'uploads/Unauthorised_Water_Connection2_BsMMDlu.jpeg', 'Temple Street', 14, '625001', 1, 9.930000, 78.121000),
(13, 'Street light not working issue reported', 'Pending', '2025-05-28 06:50:00.000000', '2025-06-13 10:24:17.017813', 271, 3, 13, 'uploads/Street_Light_Not_Working3_Us7FWVQ.jpeg', 'Main Road', 29, '620002', 1, 10.791500, 78.703200),
(14, 'Flickering lights issue reported', 'In Progress', '2025-06-03 15:15:00.000000', '2025-06-13 10:23:51.692042', 272, 3, 14, 'uploads/Flickering_Lights2_M838YNf.jpeg', '2nd Street', 3, '600017', 1, 13.065700, 80.239600),
(15, 'Power outage issue reported', 'Resolved', '2025-05-10 10:30:00.000000', '2025-06-13 10:23:28.056640', 273, 3, 15, 'uploads/Power_Outage2_H7Efy4d.jpeg', 'Market Lane', 14, '625002', 1, 9.935000, 78.123500),
(16, 'Exposed wires issue reported', 'Pending', '2025-05-16 14:40:00.000000', '2025-06-13 10:22:55.477420', 274, 3, 16, 'uploads/Exposed_Wires4.jpeg', 'Temple Road', 23, '636005', 1, 11.663000, 78.146500),
(17, 'Transformer noise issue reported', 'In Progress', '2025-05-19 09:20:00.000000', '2025-06-13 10:22:27.456563', 275, 3, 17, 'uploads/Transformer_Noise4.jpeg', 'Hill Top Road', 4, '641014', 1, 11.020000, 76.952000),
(18, 'New connection delay issue reported', 'Resolved', '2025-05-21 13:55:00.000000', '2025-05-23 15:25:00.000000', 276, 3, 18, NULL, 'Park Avenue', 30, '627007', 1, 11.128800, 78.143600),
(19, 'Garbage not collected issue reported', 'Pending', '2025-05-11 11:05:00.000000', '2025-06-13 10:22:01.518216', 277, 4, 19, 'uploads/Garbage_Not_Collected4.jpeg', 'Main Road', 3, '600022', 1, 13.070000, 80.261000),
(20, 'Overflowing dustbins issue reported', 'In Progress', '2025-05-13 08:45:00.000000', '2025-06-13 10:21:00.600427', 278, 4, 20, 'uploads/Overflowing_Dustbins5.jpeg', 'College Road', 14, '625003', 1, 9.934500, 78.124200),
(21, 'Dead animal disposal issue reported', 'Resolved', '2025-05-17 13:10:00.000000', '2025-06-13 10:20:08.892253', 279, 4, 21, 'uploads/Dead_Animal_Disposal1_g3JcKE2.jpeg', 'Temple Street', 4, '641015', 1, 11.018200, 76.956100),
(22, 'Illegal dumping issue reported', 'Pending', '2025-05-24 07:35:00.000000', '2025-06-13 10:19:46.826646', 280, 4, 22, 'uploads/Illegal_Dumping3_jZCwLcY.jpeg', 'Market Lane', 29, '620004', 1, 10.795000, 78.707000),
(23, 'No dustbin issue reported', 'In Progress', '2025-05-27 12:25:00.000000', '2025-06-13 10:19:24.716001', 281, 4, 23, 'uploads/No_Dustbin3.jpeg', '2nd Street', 23, '636006', 1, 11.665000, 78.147000),
(24, 'Sewage overflow issue reported', 'Resolved', '2025-05-29 10:15:00.000000', '2025-06-13 10:18:58.793237', 282, 4, 24, 'uploads/Sewage_Overflow3.jpeg', 'Park Avenue', 3, '600025', 1, 13.040000, 80.249000),
(25, 'Road damage issue reported', 'Pending', '2025-05-06 14:00:00.000000', '2025-06-13 10:18:00.383321', 283, 1, 1, 'uploads/Roaddamage4.jpeg', 'Main Road', 14, '625005', 1, 9.935700, 78.123000),
(26, 'Footpath issues issue reported', 'In Progress', '2025-05-07 09:50:00.000000', '2025-06-13 10:17:35.756048', 284, 1, 2, 'uploads/Footpath_Issues4.jpeg', '2nd Street', 4, '641016', 1, 11.019000, 76.960000),
(27, 'Construction waste issue reported', 'Resolved', '2025-05-09 13:30:00.000000', '2025-06-13 10:17:12.091292', 285, 1, 3, 'uploads/Construction_Waste4.jpeg', 'Temple Road', 29, '620005', 1, 10.790900, 78.704000),
(28, 'Illegal constructions issue reported', 'Pending', '2025-05-14 08:10:00.000000', '2025-06-13 10:16:26.784625', 286, 1, 4, 'uploads/Illegal_Constructions3_6NPAqqa.jpeg', 'Hill Top Road', 23, '636007', 1, 11.666000, 78.146500),
(29, 'Drainage blockage issue reported', 'In Progress', '2025-05-16 12:45:00.000000', '2025-06-13 10:15:55.391424', 287, 1, 5, 'uploads/Drainage_Blockage3_gpNydts.jpeg', 'Park Avenue', 3, '600026', 1, 13.069000, 80.259000),
(30, 'Street repair delay issue reported', 'Resolved', '2025-05-18 10:20:00.000000', '2025-06-13 10:15:18.965946', 288, 1, 6, 'uploads/Street_Repair_Delay3_1OVxCl9.jpeg', 'Market Lane', 14, '625006', 1, 9.936700, 78.133000),
(31, 'Broken water meter reported', 'Pending', '2025-05-15 09:20:00.000000', '2025-06-13 10:12:57.692121', 259, 2, 11, 'uploads/Broken_Water_Meter3_KfHPcKL.jpeg', 'Mill Road', 7, '624001', 1, 10.360200, 77.969500),
(32, 'Illegal water connection reported', 'In Progress', '2025-05-19 12:10:00.000000', '2025-06-13 10:12:41.340906', 260, 2, 12, 'uploads/Unauthorised_Water_Connection2.jpeg', 'Anna Nagar', 3, '600040', 1, 13.081000, 80.218600),
(33, 'Street light not working', 'Resolved', '2025-05-21 08:00:00.000000', '2025-06-13 10:12:24.533991', 261, 3, 13, 'uploads/Street_Light_Not_Working3.jpeg', 'Central Avenue', 29, '620003', 1, 10.789000, 78.703000),
(34, 'Lights flickering in park', 'Pending', '2025-05-22 14:20:00.000000', '2025-06-13 10:12:08.302999', 262, 3, 14, 'uploads/Flickering_Lights2_u0hfRwY.jpeg', 'City Park Lane', 8, '638001', 1, 11.341000, 77.717200),
(35, 'Power outage in area', 'In Progress', '2025-05-23 18:00:00.000000', '2025-06-13 10:11:44.954780', 263, 3, 15, 'uploads/Power_Outage2_NkHOk6W.jpeg', '4th Cross Road', 32, '641601', 1, 11.108500, 77.341100),
(36, 'Wires exposed on pole', 'Resolved', '2025-05-24 09:00:00.000000', '2025-06-13 10:11:24.525740', 264, 3, 16, 'uploads/Exposed_Wires3_rOflMM6.jpeg', 'Old Bus Stand', 28, '628002', 1, 8.764200, 78.134800),
(37, 'Transformer noise complaint', 'Pending', '2025-05-25 11:40:00.000000', '2025-06-13 10:11:02.613132', 265, 3, 17, 'uploads/Transformer_Noise1_byAFDNy.jpeg', 'Bazaar Street', 23, '636008', 1, 11.664300, 78.146000),
(38, 'New electrical connection delay', 'Resolved', '2025-05-26 07:50:00.000000', '2025-05-27 08:40:00.000000', 266, 3, 18, NULL, 'Lakshmi Nagar', 17, '637001', 1, 11.219600, 78.167600),
(39, 'Garbage collection missed', 'In Progress', '2025-05-27 13:10:00.000000', '2025-06-13 10:10:34.726934', 267, 4, 19, 'uploads/Garbage_Not_Collected3.jpeg', 'Periyar Street', 36, '632001', 1, 12.916500, 79.132500),
(40, 'Dustbins overflowing', 'Resolved', '2025-05-28 10:00:00.000000', '2025-06-13 10:10:12.871754', 268, 4, 20, 'uploads/Overflowing_Dustbins3.jpeg', 'Green Park Road', 12, '639001', 1, 10.960100, 78.076600),
(41, 'Dead animal not disposed', 'Pending', '2025-05-29 07:20:00.000000', '2025-06-13 10:09:52.658316', 269, 4, 21, 'uploads/Dead_Animal_Disposal1_s3kkApl.jpeg', '3rd Cross Lane', 26, '613001', 1, 10.786700, 79.139100),
(42, 'Illegal garbage dumping reported', 'In Progress', '2025-05-30 11:10:00.000000', '2025-06-13 10:09:24.622943', 270, 4, 22, 'uploads/Illegal_Dumping3.jpeg', 'Market Area', 16, '611001', 1, 10.765000, 79.842400),
(43, 'No dustbin in the area', 'Resolved', '2025-06-01 14:30:00.000000', '2025-06-13 10:08:32.207146', 271, 4, 23, 'uploads/No_Dustbin2.jpeg', 'New Town', 6, '636701', 1, 12.121100, 78.158500),
(44, 'Sewage overflow problem', 'Pending', '2025-06-02 09:15:00.000000', '2025-06-13 10:08:13.274192', 272, 4, 24, 'uploads/Sewage_Overflow2.jpeg', 'Old Bypass Road', 5, '607001', 1, 11.744700, 79.768000),
(45, 'Road damaged again', 'Resolved', '2025-06-03 17:00:00.000000', '2025-06-13 10:07:53.108543', 273, 1, 1, 'uploads/Roaddamage3.jpeg', 'East Main Road', 27, '625531', 1, 10.006800, 77.478200),
(46, 'Footpath blocks in busy area', 'In Progress', '2025-06-04 07:00:00.000000', '2025-06-13 10:07:34.357551', 274, 1, 2, 'uploads/Footpath_Issue3.jpeg', 'Station Road', 34, '606601', 1, 12.226000, 79.073200),
(47, 'Waste construction materials dumped', 'Pending', '2025-06-05 08:45:00.000000', '2025-06-13 10:07:12.841825', 275, 1, 3, 'uploads/Construction_Waste3.jpeg', 'Industrial Area', 10, '631501', 1, 12.835600, 79.704100),
(48, 'Illegal construction near river', 'In Progress', '2025-06-06 10:10:00.000000', '2025-06-17 06:13:43.124065', 276, 1, 4, 'uploads/Illegal_Constructions3.jpeg', 'River Bank Street', 1, '621704', 1, 11.155300, 79.072500),
(49, 'Blocked drainage system', 'In Progress', '2025-06-07 12:15:00.000000', '2025-06-13 10:06:25.231135', 277, 1, 5, 'uploads/Drainage_Blockage3.jpeg', '5th Cross Road', 20, '622001', 1, 10.381300, 78.821400),
(50, 'Repair delay in damaged street', 'Pending', '2025-06-08 11:00:00.000000', '2025-06-13 10:05:56.132244', 278, 1, 6, 'uploads/Street_Repair_Delay3.jpeg', 'Hospital Road', 21, '623501', 1, 9.370100, 78.835500),
(51, 'Severe water leakage reported', 'Resolved', '2025-06-09 06:40:00.000000', '2025-06-13 10:05:28.613619', 279, 2, 7, 'uploads/Water_Leakage2_HDTW64Z.jpeg', '1st Main Road', 38, '626001', 1, 9.585900, 77.957400),
(52, 'Zero water supply in building', 'In Progress', '2025-06-09 13:30:00.000000', '2025-06-13 10:05:03.997718', 280, 2, 8, 'uploads/No_Water_Supply2.jpeg', 'Library Street', 19, '621212', 1, 11.236200, 78.869200),
(53, 'Very low pressure water supply', 'Pending', '2025-06-10 09:00:00.000000', '2025-06-13 10:04:41.516069', 281, 2, 9, 'uploads/Low_Water_Pressure2_Z9n7V51.jpeg', '4th Avenue', 33, '602001', 1, 13.143700, 79.908500),
(54, 'Mud mixed water supplied', 'Resolved', '2025-06-11 14:00:00.000000', '2025-06-13 10:04:15.639836', 282, 2, 10, 'uploads/Dirty_Water_Supply4.jpeg', 'Station Road', 24, '630561', 1, 9.849500, 78.480500),
(55, 'Broken water meter leaking', 'In Progress', '2025-06-12 11:45:00.000000', '2025-06-13 10:03:51.030128', 283, 2, 11, 'uploads/Broken_Water_Meter3.jpeg', 'Collector Office Road', 35, '610001', 1, 10.772700, 79.638600),
(56, 'Unauthorized water tap found', 'Pending', '2025-06-12 17:20:00.000000', '2025-06-13 10:03:31.498396', 284, 2, 12, 'uploads/Unauthorised_Water_Connection1.jpeg', 'Ring Road', 11, '629001', 1, 8.171500, 77.434500),
(57, 'Street lights down for days', 'Resolved', '2025-06-13 07:15:00.000000', '2025-06-13 10:03:14.899732', 285, 3, 13, 'uploads/Street_Light_Not_Working2_bnqu8Dx.jpeg', 'High School Road', 13, '635001', 1, 12.518600, 78.213700),
(58, 'Flickering lights near mosque', 'In Progress', '2025-06-14 10:50:00.000000', '2025-06-13 10:02:56.298121', 286, 3, 14, 'uploads/Flickering_Lights2_A7NsUST.jpeg', 'Mosque Street', 25, '627811', 1, 8.960400, 77.315800),
(59, 'Major power outage reported', 'Pending', '2025-06-15 06:00:00.000000', '2025-06-13 10:02:35.431287', 287, 3, 15, 'uploads/Power_Outage1_BE1eLm2.jpeg', 'Main Bazaar', 15, '609001', 1, 11.103200, 79.653900),
(60, 'Wires hanging on roadside', 'Resolved', '2025-06-15 16:20:00.000000', '2025-06-13 10:02:15.527315', 288, 3, 16, 'uploads/Exposed_Wires3.jpeg', 'Church Road', 31, '628215', 1, 8.498600, 78.122700),
(61, 'Road damage issue reported', 'Rejected', '2025-04-03 22:00:00.000000', '2025-06-16 08:54:43.398068', 259, 1, 1, 'uploads/Roaddamage2.jpeg', 'Market Lane', 36, '646862', 1, 10.776605, 79.536992),
(62, 'New connection delay issue reported', 'Pending', '2025-06-05 14:00:00.000000', '2025-06-06 14:00:00.000000', 260, 3, 18, NULL, 'Park Avenue', 3, '624140', 1, 9.882133, 78.620896),
(63, 'Sewage overflow issue reported', 'In Progress', '2025-05-31 18:00:00.000000', '2025-06-13 10:01:33.297269', 261, 4, 24, 'uploads/Sewage_Overflow1.jpeg', 'Market Lane', 3, '620011', 1, 9.809143, 78.590715),
(64, 'Exposed wires issue reported', 'Resolved', '2025-05-30 20:00:00.000000', '2025-06-13 10:01:12.048256', 262, 3, 16, 'uploads/Exposed_Wires2.jpeg', 'North Street', 14, '695801', 1, 10.247845, 79.891225),
(65, 'Illegal dumping issue reported', 'Pending', '2025-05-14 10:00:00.000000', '2025-06-13 10:00:48.070043', 263, 4, 22, 'uploads/Illegal_Dumping1.jpeg', '2nd Street', 8, '683441', 1, 9.981532, 77.752341),
(66, 'Drainage blockage issue reported', 'In Progress', '2025-05-08 04:00:00.000000', '2025-06-13 10:00:25.464865', 264, 1, 5, 'uploads/Drainage_Blockage1.jpeg', 'Main Road', 29, '612200', 1, 11.013762, 76.936744),
(67, 'Low water pressure issue reported', 'Resolved', '2025-04-27 02:00:00.000000', '2025-06-13 10:00:01.213432', 265, 2, 9, 'uploads/Low_Water_Pressure2.jpeg', 'Park Avenue', 3, '692230', 1, 12.514153, 78.276190),
(68, 'Power outage issue reported', 'Pending', '2025-04-06 07:00:00.000000', '2025-06-13 09:59:35.531525', 266, 3, 15, 'uploads/Power_Outage2_aFpqQCH.jpeg', 'North Street', 30, '620112', 1, 8.825041, 78.433456),
(69, 'Dead animal disposal issue reported', 'In Progress', '2025-05-15 16:00:00.000000', '2025-06-13 09:59:13.797244', 267, 4, 21, 'uploads/Dead_Animal_Disposal1.jpeg', 'College Road', 23, '631147', 1, 12.342856, 78.135411),
(70, 'Illegal constructions issue reported', 'Pending', '2025-06-02 05:00:00.000000', '2025-06-13 09:58:46.539018', 268, 1, 4, 'uploads/Illegal_Constructions1.jpeg', '2nd Street', 4, '610221', 1, 11.125789, 77.206941),
(71, 'Garbage not collected issue reported', 'Resolved', '2025-04-28 11:00:00.000000', '2025-06-13 09:57:31.540544', 269, 4, 19, 'uploads/Garbage_Not_Collected2_CdYbOyp.jpeg', 'Main Road', 36, '617340', 1, 12.984159, 79.134234),
(72, 'Water leakage issue reported', 'In Progress', '2025-05-03 08:00:00.000000', '2025-06-13 09:58:14.845684', 270, 2, 7, 'uploads/Water_Leakage2.jpeg', 'College Road', 14, '688314', 1, 9.843206, 78.495920),
(73, 'Footpath issues reported', 'Pending', '2025-04-24 14:00:00.000000', '2025-06-13 09:57:08.789425', 271, 1, 2, 'uploads/Footpath_Issues1_iH4cM08.jpeg', 'Market Lane', 3, '694124', 1, 13.034158, 80.241236),
(74, 'Flickering lights issue reported', 'Resolved', '2025-05-10 12:00:00.000000', '2025-06-13 09:56:45.594752', 272, 3, 14, 'uploads/Flickering_Lights2.jpeg', 'Main Road', 4, '618327', 1, 11.017489, 76.963265),
(75, 'No dustbin issue reported', 'In Progress', '2025-05-21 15:00:00.000000', '2025-06-13 09:56:13.788325', 273, 4, 23, 'uploads/No_Dustbin1.jpeg', 'Park Avenue', 23, '690113', 1, 11.609402, 78.132720),
(76, 'Construction waste issue reported', 'Resolved', '2025-05-25 17:00:00.000000', '2025-06-13 09:55:58.057975', 274, 1, 3, 'uploads/Construction_Waste2.jpeg', '2nd Street', 29, '611242', 1, 10.736942, 78.744159),
(77, 'Transformer noise issue reported', 'Pending', '2025-04-17 09:00:00.000000', '2025-06-13 09:55:28.213831', 275, 3, 17, 'uploads/Transformer_Noise3.jpeg', 'College Road', 8, '637141', 1, 11.358921, 77.755823),
(78, 'No water supply issue reported', 'In Progress', '2025-04-19 06:00:00.000000', '2025-06-13 09:55:05.101531', 276, 2, 8, 'uploads/No_Water_Supply1.jpeg', 'Market Lane', 14, '681123', 1, 9.950327, 78.227251),
(79, 'Dirty water supply issue reported', 'Resolved', '2025-04-29 13:00:00.000000', '2025-06-13 09:54:34.302493', 277, 2, 10, 'uploads/Dirty_Water_Supply2.jpeg', 'North Street', 36, '690020', 1, 12.856137, 79.216307),
(80, 'Street repair delay issue reported', 'Pending', '2025-05-06 19:00:00.000000', '2025-06-13 09:54:01.635951', 278, 1, 6, 'uploads/Street_Repair_Delay1.jpeg', '2nd Street', 3, '698044', 1, 13.064999, 80.254711),
(81, 'Illegal water connection', 'Resolved', '2025-05-14 15:25:00.000000', '2025-05-16 15:25:00.000000', 279, 2, 12, NULL, 'Main Road', 4, '641002', 1, 11.014900, 76.972000),
(82, 'Street light not working', 'Pending', '2025-05-03 08:00:00.000000', '2025-06-13 09:53:26.159175', 280, 3, 13, 'uploads/Street_Light_Not_Working2.jpeg', 'North Street', 23, '636002', 1, 11.652200, 78.160200),
(83, 'New connection delay', 'Resolved', '2025-04-18 11:50:00.000000', '2025-04-20 11:50:00.000000', 281, 3, 18, NULL, 'North Street', 14, '625003', 1, 9.907500, 78.112200),
(84, 'Overflowing dustbins', 'Pending', '2025-05-12 16:10:00.000000', '2025-06-13 09:53:03.221614', 282, 4, 20, 'uploads/Overflowing_Dustbins1_sVjr2Bi.jpeg', 'College Road', 4, '641003', 1, 11.007300, 76.970700),
(85, 'Broken water meter', 'Pending', '2025-04-20 13:10:00.000000', '2025-06-13 09:52:48.882441', 283, 2, 11, 'uploads/Broken_Water_Meter2.jpeg', 'Park Avenue', 29, '620002', 1, 10.805000, 78.685600),
(86, 'Transformer noise complaint', 'Pending', '2025-05-06 07:15:00.000000', '2025-06-13 09:52:33.521272', 284, 3, 17, 'uploads/Transformer_Noise2.jpeg', 'Main Road', 3, '600003', 1, 13.080500, 80.261800),
(87, 'Garbage not collected', 'In Progress', '2025-05-07 13:30:00.000000', '2025-06-13 09:52:17.563176', 285, 4, 19, 'uploads/Garbage_Not_Collected2.jpeg', '2nd Street', 29, '620003', 1, 10.797200, 78.681600),
(88, 'Water leakage reported', 'Pending', '2025-05-12 11:00:00.000000', '2025-06-13 09:52:00.554527', 286, 2, 7, 'uploads/Water_Leakage1.jpeg', 'Main Road', 30, '627001', 1, 8.713900, 77.756700),
(89, 'Power outage in area', 'Resolved', '2025-04-22 10:30:00.000000', '2025-06-13 09:51:35.674247', 287, 3, 15, 'uploads/Power_Outage2.jpeg', 'College Road', 30, '627002', 1, 8.724100, 77.753300),
(90, 'Dirty water supply complaint', 'In Progress', '2025-05-08 09:40:00.000000', '2025-06-13 09:51:15.841837', 288, 2, 10, 'uploads/Dirty_Water_Supply1.jpeg', 'College Road', 14, '625002', 1, 9.918900, 78.130700),
(91, 'Broken water meter reported', 'Pending', '2025-04-20 13:10:00.000000', '2025-06-13 09:50:54.115766', 259, 2, 11, 'uploads/Broken_Water_Meter1.jpeg', 'Park Avenue', 29, '620002', 1, 10.805000, 78.685600),
(92, 'Illegal water connection', 'Resolved', '2025-05-14 15:25:00.000000', '2025-05-16 15:25:00.000000', 260, 2, 12, NULL, 'Main Road', 4, '641002', 1, 11.014900, 76.972000),
(93, 'Street light not working', 'Pending', '2025-05-03 08:00:00.000000', '2025-06-13 09:49:39.155214', 261, 3, 13, 'uploads/Street_Light_Not_Working1.jpeg', 'North Street', 23, '636002', 1, 11.652200, 78.160200),
(94, 'Flickering light complaint', 'In Progress', '2025-05-09 17:00:00.000000', '2025-06-13 09:49:23.548568', 262, 3, 14, 'uploads/Flickering_Lights1.jpeg', '2nd Street', 8, '638002', 1, 11.331600, 77.717300),
(95, 'Power outage in area', 'Resolved', '2025-04-22 10:30:00.000000', '2025-06-13 09:49:06.027054', 263, 3, 15, 'uploads/Power_Outage1.jpeg', 'College Road', 30, '627002', 1, 8.724100, 77.753300),
(96, 'Exposed wires spotted', 'In Progress', '2025-05-11 14:45:00.000000', '2025-06-13 09:48:50.872013', 264, 3, 16, 'uploads/Exposed_Wires1.jpeg', 'Market Lane', 36, '632002', 1, 12.913200, 79.134900),
(97, 'Transformer noise complaint', 'Pending', '2025-05-06 07:15:00.000000', '2025-06-13 09:48:31.886992', 265, 3, 17, 'uploads/Transformer_Noise1.jpeg', 'Main Road', 3, '600003', 1, 13.080500, 80.261800),
(98, 'New connection delay', 'Resolved', '2025-04-18 11:50:00.000000', '2025-04-20 11:50:00.000000', 266, 3, 18, NULL, 'North Street', 14, '625003', 1, 9.907500, 78.112200),
(99, 'Garbage not collected', 'In Progress', '2025-05-07 13:30:00.000000', '2025-06-13 09:46:45.771422', 267, 4, 19, 'uploads/Garbage_Not_Collected1.jpeg', '2nd Street', 29, '620003', 1, 10.797200, 78.681600),
(100, 'Overflowing dustbins', 'Pending', '2025-05-12 16:10:00.000000', '2025-06-13 09:46:05.360638', 268, 4, 20, 'uploads/Overflowing_Dustbins1.jpeg', 'College Road', 4, '641003', 1, 11.007300, 76.970700),
(1086, 'roaddamaged', 'Pending', '2025-06-13 06:22:18.954837', '2025-06-13 06:22:18.954868', 259, 1, 1, 'uploads/Roaddamage1_haMN9ea.jpeg', 'L76A, L Block,', 2, '600102', 1, 13.084262, 80.206234),
(1093, 'WATER LEAKAGE IN OUR AREA', 'Resolved', '2025-06-14 06:26:40.127894', '2025-06-14 06:31:42.595775', 289, 2, 7, 'uploads/smile_EiaDI2Q.png', 'L76A, L Block, 21st Street', 29, '600102', 1, 13.084262, 80.206234),
(1096, 'hii', 'Resolved', '2025-06-14 09:32:30.719702', '2025-06-14 09:34:11.607898', 278, 1, 4, 'uploads/Unauthorised_Water_Connection1_nzPELzy.jpeg', 'dhdu', 184, '600097', 7, 13.084262, 80.206234),
(1097, 'street road damage', 'Pending', '2025-06-14 09:38:15.432032', '2025-06-14 09:38:15.432093', 291, 1, 1, 'uploads/Roaddamage3_buU6Bq3.jpeg', 'sagasv', 38, '237673', 1, 13.084262, 80.206234),
(1098, 'NO LIGHT', 'Pending', '2025-06-14 09:44:53.879623', '2025-06-14 09:44:53.879654', 292, 3, 14, 'uploads/react.png', 'L76A, L Block, 21st Street', 40, '600102', 2, 13.084262, 80.206234),
(1099, 'n', 'Pending', '2025-06-16 05:39:42.822949', '2025-06-16 05:39:42.822990', 278, 1, 1, 'uploads/Test-A-Result.png', 'L76A, L Block, 21st Street', 61, '600102', 3, 13.084262, 80.206234),
(1100, 'Footpath issues', 'Resolved', '2025-06-18 11:56:44.841735', '2025-06-18 11:58:19.146986', 278, 1, 2, 'uploads/react_5P0xczw.png', 'L76A, L Block, 21st Street', 3, '620001', 1, 13.064602, 80.219341);

-- --------------------------------------------------------

--
-- Table structure for table `citizen_department`
--

CREATE TABLE `citizen_department` (
  `department_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_department`
--

INSERT INTO `citizen_department` (`department_id`, `name`, `description`) VALUES
(1, 'Public Works', 'Handles road, construction and public infrastructure'),
(2, 'Water Supply', 'Manages water distribution and supply'),
(3, 'Electrical', 'Handles street lights and electrical maintenance'),
(4, 'Waste Management', 'Responsible for garbage and sanitation');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_districtlocation`
--

CREATE TABLE `citizen_districtlocation` (
  `distric_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_districtlocation`
--

INSERT INTO `citizen_districtlocation` (`distric_id`, `name`, `state_id`) VALUES
(1, 'Ariyalur', 1),
(2, 'Chengalpattu', 1),
(3, 'Chennai', 1),
(4, 'Coimbatore', 1),
(5, 'Cuddalore', 1),
(6, 'Dharmapuri', 1),
(7, 'Dindigul', 1),
(8, 'Erode', 1),
(9, 'Kallakurichi', 1),
(10, 'Kancheepuram', 1),
(11, 'Kanyakumari', 1),
(12, 'Karur', 1),
(13, 'Krishnagiri', 1),
(14, 'Madurai', 1),
(15, 'Mayiladuthurai', 1),
(16, 'Nagapattinam', 1),
(17, 'Namakkal', 1),
(18, 'Nilgiris', 1),
(19, 'Perambalur', 1),
(20, 'Pudukkottai', 1),
(21, 'Ramanathapuram', 1),
(22, 'Ranipet', 1),
(23, 'Salem', 1),
(24, 'Sivaganga', 1),
(25, 'Tenkasi', 1),
(26, 'Thanjavur', 1),
(27, 'Theni', 1),
(28, 'Thoothukudi', 1),
(29, 'Tiruchirappalli', 1),
(30, 'Tirunelveli', 1),
(31, 'Tirupathur', 1),
(32, 'Tiruppur', 1),
(33, 'Tiruvallur', 1),
(34, 'Tiruvannamalai', 1),
(35, 'Tiruvarur', 1),
(36, 'Vellore', 1),
(37, 'Viluppuram', 1),
(38, 'Virudhunagar', 1),
(39, 'Anantapur', 2),
(40, 'Chittoor', 2),
(41, 'East Godavari', 2),
(42, 'Guntur', 2),
(43, 'Kadapa', 2),
(44, 'Krishna', 2),
(45, 'Kurnool', 2),
(46, 'Nellore', 2),
(47, 'Prakasam', 2),
(48, 'Srikakulam', 2),
(49, 'Visakhapatnam', 2),
(50, 'Vizianagaram', 2),
(51, 'West Godavari', 2),
(52, 'Parvathipuram Manyam', 2),
(53, 'Alluri Sitharama Raju', 2),
(54, 'Annamayya', 2),
(55, 'Bapatla', 2),
(56, 'Eluru', 2),
(57, 'Konaseema', 2),
(58, 'Nandyal', 2),
(59, 'Tirupati', 2),
(60, 'Tawang', 3),
(61, 'West Kameng', 3),
(62, 'East Kameng', 3),
(63, 'Pakke-Kessang', 3),
(64, 'Papum Pare', 3),
(65, 'Kra Daadi', 3),
(66, 'Kurung Kumey', 3),
(67, 'Lower Subansiri', 3),
(68, 'Upper Subansiri', 3),
(69, 'West Siang', 3),
(70, 'East Siang', 3),
(71, 'Siang', 3),
(72, 'Upper Siang', 3),
(73, 'Lower Siang', 3),
(74, 'Lower Dibang Valley', 3),
(75, 'Dibang Valley', 3),
(76, 'Lohit', 3),
(77, 'Namsai', 3),
(78, 'Changlang', 3),
(79, 'Tirap', 3),
(80, 'Longding', 3),
(81, 'Kamle', 3),
(82, 'Leparada', 3),
(83, 'Shi Yomi', 3),
(84, 'Anjaw', 3),
(85, 'Baksa', 4),
(86, 'Barpeta', 4),
(87, 'Biswanath', 4),
(88, 'Bongaigaon', 4),
(89, 'Cachar', 4),
(90, 'Charaideo', 4),
(91, 'Chirang', 4),
(92, 'Darrang', 4),
(93, 'Dhemaji', 4),
(94, 'Dhubri', 4),
(95, 'Dibrugarh', 4),
(96, 'Dima Hasao', 4),
(97, 'Goalpara', 4),
(98, 'Golaghat', 4),
(99, 'Hailakandi', 4),
(100, 'Hojai', 4),
(101, 'Jorhat', 4),
(102, 'Kamrup', 4),
(103, 'Kamrup Metropolitan', 4),
(104, 'Karbi Anglong', 4),
(105, 'Karimganj', 4),
(106, 'Kokrajhar', 4),
(107, 'Lakhimpur', 4),
(108, 'Majuli', 4),
(109, 'Morigaon', 4),
(110, 'Nagaon', 4),
(111, 'Nalbari', 4),
(112, 'Sivasagar', 4),
(113, 'Sonitpur', 4),
(114, 'South Salmara-Mankachar', 4),
(115, 'Tinsukia', 4),
(116, 'Udalguri', 4),
(117, 'West Karbi Anglong', 4),
(118, 'Araria', 5),
(119, 'Arwal', 5),
(120, 'Aurangabad', 5),
(121, 'Banka', 5),
(122, 'Begusarai', 5),
(123, 'Bhagalpur', 5),
(124, 'Bhojpur', 5),
(125, 'Buxar', 5),
(126, 'Darbhanga', 5),
(127, 'East Champaran', 5),
(128, 'Gaya', 5),
(129, 'Gopalganj', 5),
(130, 'Jamui', 5),
(131, 'Jehanabad', 5),
(132, 'Kaimur', 5),
(133, 'Katihar', 5),
(134, 'Khagaria', 5),
(135, 'Kishanganj', 5),
(136, 'Lakhisarai', 5),
(137, 'Madhepura', 5),
(138, 'Madhubani', 5),
(139, 'Munger', 5),
(140, 'Muzaffarpur', 5),
(141, 'Nalanda', 5),
(142, 'Nawada', 5),
(143, 'Patna', 5),
(144, 'Purnia', 5),
(145, 'Rohtas', 5),
(146, 'Saharsa', 5),
(147, 'Samastipur', 5),
(148, 'Saran', 5),
(149, 'Sheikhpura', 5),
(150, 'Sheohar', 5),
(151, 'Sitamarhi', 5),
(152, 'Siwan', 5),
(153, 'Supaul', 5),
(154, 'Vaishali', 5),
(155, 'West Champaran', 5),
(156, 'Balod', 6),
(157, 'Baloda Bazar', 6),
(158, 'Balrampur', 6),
(159, 'Bastar', 6),
(160, 'Bemetara', 6),
(161, 'Bijapur', 6),
(162, 'Bilaspur', 6),
(163, 'Dantewada', 6),
(164, 'Dhamtari', 6),
(165, 'Durg', 6),
(166, 'Gariaband', 6),
(167, 'Gaurela-Pendra-Marwahi', 6),
(168, 'Janjgir-Champa', 6),
(169, 'Jashpur', 6),
(170, 'Kabirdham', 6),
(171, 'Kanker', 6),
(172, 'Kondagaon', 6),
(173, 'Korba', 6),
(174, 'Koriya', 6),
(175, 'Mahasamund', 6),
(176, 'Mungeli', 6),
(177, 'Narayanpur', 6),
(178, 'Raigarh', 6),
(179, 'Raipur', 6),
(180, 'Rajnandgaon', 6),
(181, 'Sukma', 6),
(182, 'Surajpur', 6),
(183, 'Surguja', 6),
(184, 'North Goa', 7),
(185, 'South Goa', 7),
(186, 'Ahmedabad', 8),
(187, 'Amreli', 8),
(188, 'Anand', 8),
(189, 'Aravalli', 8),
(190, 'Banaskantha', 8),
(191, 'Bharuch', 8),
(192, 'Bhavnagar', 8),
(193, 'Botad', 8),
(194, 'Chhota Udaipur', 8),
(195, 'Dahod', 8),
(196, 'Dang', 8),
(197, 'Devbhoomi Dwarka', 8),
(198, 'Gandhinagar', 8),
(199, 'Gir Somnath', 8),
(200, 'Jamnagar', 8),
(201, 'Junagadh', 8),
(202, 'Kheda', 8),
(203, 'Kutch', 8),
(204, 'Mahisagar', 8),
(205, 'Mehsana', 8),
(206, 'Morbi', 8),
(207, 'Narmada', 8),
(208, 'Navsari', 8),
(209, 'Panchmahal', 8),
(210, 'Patan', 8),
(211, 'Porbandar', 8),
(212, 'Rajkot', 8),
(213, 'Sabarkantha', 8),
(214, 'Surat', 8),
(215, 'Surendranagar', 8),
(216, 'Tapi', 8),
(217, 'Vadodara', 8),
(218, 'Valsad', 8),
(219, 'Ambala', 9),
(220, 'Bhiwani', 9),
(221, 'Charkhi Dadri', 9),
(222, 'Faridabad', 9),
(223, 'Fatehabad', 9),
(224, 'Gurugram', 9),
(225, 'Hisar', 9),
(226, 'Jhajjar', 9),
(227, 'Jind', 9),
(228, 'Kaithal', 9),
(229, 'Karnal', 9),
(230, 'Kurukshetra', 9),
(231, 'Mahendragarh', 9),
(232, 'Nuh', 9),
(233, 'Palwal', 9),
(234, 'Panchkula', 9),
(235, 'Panipat', 9),
(236, 'Rewari', 9),
(237, 'Rohtak', 9),
(238, 'Sirsa', 9),
(239, 'Sonipat', 9),
(240, 'Yamunanagar', 9),
(241, 'Bilaspur', 10),
(242, 'Chamba', 10),
(243, 'Hamirpur', 10),
(244, 'Kangra', 10),
(245, 'Kinnaur', 10),
(246, 'Kullu', 10),
(247, 'Lahaul and Spiti', 10),
(248, 'Mandi', 10),
(249, 'Shimla', 10),
(250, 'Sirmaur', 10),
(251, 'Solan', 10),
(252, 'Una', 10),
(253, 'Bokaro', 11),
(254, 'Chatra', 11),
(255, 'Deoghar', 11),
(256, 'Dhanbad', 11),
(257, 'Dumka', 11),
(258, 'East Singhbhum', 11),
(259, 'Garhwa', 11),
(260, 'Giridih', 11),
(261, 'Godda', 11),
(262, 'Gumla', 11),
(263, 'Hazaribagh', 11),
(264, 'Jamtara', 11),
(265, 'Khunti', 11),
(266, 'Koderma', 11),
(267, 'Latehar', 11),
(268, 'Lohardaga', 11),
(269, 'Pakur', 11),
(270, 'Palamu', 11),
(271, 'Ramgarh', 11),
(272, 'Ranchi', 11),
(273, 'Sahibganj', 11),
(274, 'Seraikela Kharsawan', 11),
(275, 'Simdega', 11),
(276, 'West Singhbhum', 11),
(277, 'Bagalkot', 12),
(278, 'Ballari', 12),
(279, 'Belagavi', 12),
(280, 'Bengaluru Rural', 12),
(281, 'Bengaluru Urban', 12),
(282, 'Bidar', 12),
(283, 'Chamarajanagar', 12),
(284, 'Chikkaballapur', 12),
(285, 'Chikkamagaluru', 12),
(286, 'Chitradurga', 12),
(287, 'Dakshina Kannada', 12),
(288, 'Davanagere', 12),
(289, 'Dharwad', 12),
(290, 'Gadag', 12),
(291, 'Hassan', 12),
(292, 'Haveri', 12),
(293, 'Kalaburagi', 12),
(294, 'Kodagu', 12),
(295, 'Kolar', 12),
(296, 'Koppal', 12),
(297, 'Mandya', 12),
(298, 'Mysuru', 12),
(299, 'Raichur', 12),
(300, 'Ramanagara', 12),
(301, 'Shivamogga', 12),
(302, 'Tumakuru', 12),
(303, 'Udupi', 12),
(304, 'Uttara Kannada', 12),
(305, 'Vijayapura', 12),
(306, 'Yadgir', 12),
(307, 'Alappuzha', 13),
(308, 'Ernakulam', 13),
(309, 'Idukki', 13),
(310, 'Kannur', 13),
(311, 'Kasaragod', 13),
(312, 'Kollam', 13),
(313, 'Kottayam', 13),
(314, 'Kozhikode', 13),
(315, 'Malappuram', 13),
(316, 'Palakkad', 13),
(317, 'Pathanamthitta', 13),
(318, 'Thiruvananthapuram', 13),
(319, 'Thrissur', 13),
(320, 'Wayanad', 13),
(321, 'Agar Malwa', 14),
(322, 'Alirajpur', 14),
(323, 'Anuppur', 14),
(324, 'Ashoknagar', 14),
(325, 'Balaghat', 14),
(326, 'Barwani', 14),
(327, 'Betul', 14),
(328, 'Bhind', 14),
(329, 'Bhopal', 14),
(330, 'Burhanpur', 14),
(331, 'Chhatarpur', 14),
(332, 'Chhindwara', 14),
(333, 'Damoh', 14),
(334, 'Datia', 14),
(335, 'Dewas', 14),
(336, 'Dhar', 14),
(337, 'Dindori', 14),
(338, 'Guna', 14),
(339, 'Gwalior', 14),
(340, 'Harda', 14),
(341, 'Hoshangabad', 14),
(342, 'Indore', 14),
(343, 'Jabalpur', 14),
(344, 'Jhabua', 14),
(345, 'Katni', 14),
(346, 'Khandwa', 14),
(347, 'Khargone', 14),
(348, 'Mandla', 14),
(349, 'Mandsaur', 14),
(350, 'Morena', 14),
(351, 'Narsinghpur', 14),
(352, 'Neemuch', 14),
(353, 'Niwari', 14),
(354, 'Panna', 14),
(355, 'Raisen', 14),
(356, 'Rajgarh', 14),
(357, 'Ratlam', 14),
(358, 'Rewa', 14),
(359, 'Sagar', 14),
(360, 'Satna', 14),
(361, 'Sehore', 14),
(362, 'Seoni', 14),
(363, 'Shahdol', 14),
(364, 'Shajapur', 14),
(365, 'Sheopur', 14),
(366, 'Shivpuri', 14),
(367, 'Sidhi', 14),
(368, 'Singrauli', 14),
(369, 'Tikamgarh', 14),
(370, 'Ujjain', 14),
(371, 'Umaria', 14),
(372, 'Vidisha', 14),
(373, 'Ahmednagar', 15),
(374, 'Akola', 15),
(375, 'Amravati', 15),
(376, 'Aurangabad', 15),
(377, 'Beed', 15),
(378, 'Bhandara', 15),
(379, 'Buldhana', 15),
(380, 'Chandrapur', 15),
(381, 'Dhule', 15),
(382, 'Gadchiroli', 15),
(383, 'Gondia', 15),
(384, 'Hingoli', 15),
(385, 'Jalgaon', 15),
(386, 'Jalna', 15),
(387, 'Kolhapur', 15),
(388, 'Latur', 15),
(389, 'Mumbai City', 15),
(390, 'Mumbai Suburban', 15),
(391, 'Nagpur', 15),
(392, 'Nanded', 15),
(393, 'Nandurbar', 15),
(394, 'Nashik', 15),
(395, 'Osmanabad', 15),
(396, 'Palghar', 15),
(397, 'Parbhani', 15),
(398, 'Pune', 15),
(399, 'Raigad', 15),
(400, 'Ratnagiri', 15),
(401, 'Sangli', 15),
(402, 'Satara', 15),
(403, 'Sindhudurg', 15),
(404, 'Solapur', 15),
(405, 'Thane', 15),
(406, 'Wardha', 15),
(407, 'Washim', 15),
(408, 'Yavatmal', 15),
(409, 'Bishnupur', 16),
(410, 'Chandel', 16),
(411, 'Churachandpur', 16),
(412, 'Imphal East', 16),
(413, 'Imphal West', 16),
(414, 'Jiribam', 16),
(415, 'Kakching', 16),
(416, 'Kamjong', 16),
(417, 'Kangpokpi', 16),
(418, 'Noney', 16),
(419, 'Pherzawl', 16),
(420, 'Senapati', 16),
(421, 'Tamenglong', 16),
(422, 'Tengnoupal', 16),
(423, 'Thoubal', 16),
(424, 'Ukhrul', 16),
(425, 'East Garo Hills', 17),
(426, 'East Jaintia Hills', 17),
(427, 'East Khasi Hills', 17),
(428, 'North Garo Hills', 17),
(429, 'Ri-Bhoi', 17),
(430, 'South Garo Hills', 17),
(431, 'South West Garo Hills', 17),
(432, 'South West Khasi Hills', 17),
(433, 'West Garo Hills', 17),
(434, 'West Jaintia Hills', 17),
(435, 'West Khasi Hills', 17),
(436, 'Aizawl', 18),
(437, 'Champhai', 18),
(438, 'Hnahthial', 18),
(439, 'Khawzawl', 18),
(440, 'Kolasib', 18),
(441, 'Lawngtlai', 18),
(442, 'Lunglei', 18),
(443, 'Mamit', 18),
(444, 'Saiha', 18),
(445, 'Saitual', 18),
(446, 'Serchhip', 18),
(447, 'Chümoukedima', 19),
(448, 'Dimapur', 19),
(449, 'Kiphire', 19),
(450, 'Kohima', 19),
(451, 'Longleng', 19),
(452, 'Mokokchung', 19),
(453, 'Mon', 19),
(454, 'Niuland', 19),
(455, 'Noklak', 19),
(456, 'Peren', 19),
(457, 'Phek', 19),
(458, 'Shamator', 19),
(459, 'Tseminyu', 19),
(460, 'Tuensang', 19),
(461, 'Wokha', 19),
(462, 'Zünheboto', 19),
(463, 'Angul', 20),
(464, 'Balangir', 20),
(465, 'Balasore', 20),
(466, 'Bargarh', 20),
(467, 'Bhadrak', 20),
(468, 'Boudh', 20),
(469, 'Cuttack', 20),
(470, 'Deogarh', 20),
(471, 'Dhenkanal', 20),
(472, 'Gajapati', 20),
(473, 'Ganjam', 20),
(474, 'Jagatsinghpur', 20),
(475, 'Jajpur', 20),
(476, 'Jharsuguda', 20),
(477, 'Kalahandi', 20),
(478, 'Kandhamal', 20),
(479, 'Kendrapara', 20),
(480, 'Kendujhar (Keonjhar)', 20),
(481, 'Khordha', 20),
(482, 'Koraput', 20),
(483, 'Malkangiri', 20),
(484, 'Mayurbhanj', 20),
(485, 'Nabarangpur', 20),
(486, 'Nayagarh', 20),
(487, 'Nuapada', 20),
(488, 'Puri', 20),
(489, 'Rayagada', 20),
(490, 'Sambalpur', 20),
(491, 'Subarnapur (Sonepur)', 20),
(492, 'Sundargarh', 20),
(493, 'Amritsar', 21),
(494, 'Barnala', 21),
(495, 'Bathinda', 21),
(496, 'Faridkot', 21),
(497, 'Fatehgarh Sahib', 21),
(498, 'Fazilka', 21),
(499, 'Ferozepur', 21),
(500, 'Gurdaspur', 21),
(501, 'Hoshiarpur', 21),
(502, 'Jalandhar', 21),
(503, 'Kapurthala', 21),
(504, 'Ludhiana', 21),
(505, 'Malerkotla', 21),
(506, 'Mansa', 21),
(507, 'Moga', 21),
(508, 'Mohali (SAS Nagar)', 21),
(509, 'Muktsar', 21),
(510, 'Pathankot', 21),
(511, 'Patiala', 21),
(512, 'Rupnagar', 21),
(513, 'Sangrur', 21),
(514, 'Shaheed Bhagat Singh Nagar (Nawanshahr)', 21),
(515, 'Tarn Taran', 21),
(516, 'Ajmer', 22),
(517, 'Alwar', 22),
(518, 'Banswara', 22),
(519, 'Baran', 22),
(520, 'Barmer', 22),
(521, 'Bharatpur', 22),
(522, 'Bhilwara', 22),
(523, 'Bikaner', 22),
(524, 'Bundi', 22),
(525, 'Chittorgarh', 22),
(526, 'Churu', 22),
(527, 'Dausa', 22),
(528, 'Dholpur', 22),
(529, 'Dungarpur', 22),
(530, 'Hanumangarh', 22),
(531, 'Jaipur', 22),
(532, 'Jaisalmer', 22),
(533, 'Jalore', 22),
(534, 'Jhalawar', 22),
(535, 'Jhunjhunu', 22),
(536, 'Jodhpur', 22),
(537, 'Karauli', 22),
(538, 'Kota', 22),
(539, 'Nagaur', 22),
(540, 'Pali', 22),
(541, 'Pratapgarh', 22),
(542, 'Rajsamand', 22),
(543, 'Sawai Madhopur', 22),
(544, 'Sikar', 22),
(545, 'Sirohi', 22),
(546, 'Sri Ganganagar', 22),
(547, 'Tonk', 22),
(548, 'Udaipur', 22),
(549, 'Gangtok', 23),
(550, 'Mangan', 23),
(551, 'Namchi', 23),
(552, 'Gyalshing', 23),
(553, 'Adilabad', 24),
(554, 'Bhadradri Kothagudem', 24),
(555, 'Hyderabad', 24),
(556, 'Jagtial', 24),
(557, 'Jangaon', 24),
(558, 'Jayashankar Bhupalpally', 24),
(559, 'Jogulamba Gadwal', 24),
(560, 'Kamareddy', 24),
(561, 'Karimnagar', 24),
(562, 'Khammam', 24),
(563, 'Komaram Bheem', 24),
(564, 'Mahabubabad', 24),
(565, 'Mahabubnagar', 24),
(566, 'Mancherial', 24),
(567, 'Medak', 24),
(568, 'Medchal–Malkajgiri', 24),
(569, 'Mulugu', 24),
(570, 'Nagarkurnool', 24),
(571, 'Nalgonda', 24),
(572, 'Narayanpet', 24),
(573, 'Nirmal', 24),
(574, 'Nizamabad', 24),
(575, 'Peddapalli', 24),
(576, 'Rajanna Sircilla', 24),
(577, 'Ranga Reddy', 24),
(578, 'Sangareddy', 24),
(579, 'Siddipet', 24),
(580, 'Suryapet', 24),
(581, 'Vikarabad', 24),
(582, 'Wanaparthy', 24),
(583, 'Warangal Rural', 24),
(584, 'Warangal Urban', 24),
(585, 'Yadadri Bhuvanagiri', 24),
(586, 'Dhalai', 25),
(587, 'Gomati', 25),
(588, 'Khowai', 25),
(589, 'North Tripura', 25),
(590, 'Sepahijala', 25),
(591, 'South Tripura', 25),
(592, 'Unakoti', 25),
(593, 'West Tripura', 25),
(594, 'Agra', 26),
(595, 'Aligarh', 26),
(596, 'Prayagraj', 26),
(597, 'Ambedkar Nagar', 26),
(598, 'Amethi', 26),
(599, 'Amroha', 26),
(600, 'Auraiya', 26),
(601, 'Ayodhya', 26),
(602, 'Azamgarh', 26),
(603, 'Badaun', 26),
(604, 'Baghpat', 26),
(605, 'Bahraich', 26),
(606, 'Ballia', 26),
(607, 'Balrampur', 26),
(608, 'Banda', 26),
(609, 'Barabanki', 26),
(610, 'Bareilly', 26),
(611, 'Basti', 26),
(612, 'Bhadohi', 26),
(613, 'Bijnor', 26),
(614, 'Budaun', 26),
(615, 'Bulandshahr', 26),
(616, 'Chandauli', 26),
(617, 'Chitrakoot', 26),
(618, 'Deoria', 26),
(619, 'Etah', 26),
(620, 'Etawah', 26),
(621, 'Farrukhabad', 26),
(622, 'Fatehpur', 26),
(623, 'Firozabad', 26),
(624, 'Gautam Buddha Nagar', 26),
(625, 'Ghaziabad', 26),
(626, 'Ghazipur', 26),
(627, 'Gonda', 26),
(628, 'Gorakhpur', 26),
(629, 'Hamirpur', 26),
(630, 'Hapur', 26),
(631, 'Hardoi', 26),
(632, 'Hathras', 26),
(633, 'Jalaun', 26),
(634, 'Jaunpur', 26),
(635, 'Jhansi', 26),
(636, 'Kannauj', 26),
(637, 'Kanpur Dehat', 26),
(638, 'Kanpur Nagar', 26),
(639, 'Kasganj', 26),
(640, 'Kaushambi', 26),
(641, 'Kheri', 26),
(642, 'Kushinagar', 26),
(643, 'Lalitpur', 26),
(644, 'Lucknow', 26),
(645, 'Maharajganj', 26),
(646, 'Mahoba', 26),
(647, 'Mainpuri', 26),
(648, 'Mathura', 26),
(649, 'Mau', 26),
(650, 'Meerut', 26),
(651, 'Mirzapur', 26),
(652, 'Moradabad', 26),
(653, 'Muzaffarnagar', 26),
(654, 'Pilibhit', 26),
(655, 'Pratapgarh', 26),
(656, 'Raebareli', 26),
(657, 'Rampur', 26),
(658, 'Saharanpur', 26),
(659, 'Sambhal', 26),
(660, 'Sant Kabir Nagar', 26),
(661, 'Shahjahanpur', 26),
(662, 'Shamli', 26),
(663, 'Shravasti', 26),
(664, 'Siddharthnagar', 26),
(665, 'Sitapur', 26),
(666, 'Sonbhadra', 26),
(667, 'Sultanpur', 26),
(668, 'Unnao', 26),
(669, 'Varanasi', 26),
(670, 'Almora', 27),
(671, 'Bageshwar', 27),
(672, 'Chamoli', 27),
(673, 'Champawat', 27),
(674, 'Dehradun', 27),
(675, 'Haridwar', 27),
(676, 'Nainital', 27),
(677, 'Pauri Garhwal', 27),
(678, 'Pithoragarh', 27),
(679, 'Rudraprayag', 27),
(680, 'Tehri Garhwal', 27),
(681, 'Udham Singh Nagar', 27),
(682, 'Uttarkashi', 27),
(683, 'Alipurduar', 28),
(684, 'Bankura', 28),
(685, 'Birbhum', 28),
(686, 'Cooch Behar', 28),
(687, 'Dakshin Dinajpur', 28),
(688, 'Darjeeling', 28),
(689, 'Hooghly', 28),
(690, 'Howrah', 28),
(691, 'Jalpaiguri', 28),
(692, 'Jhargram', 28),
(693, 'Kalimpong', 28),
(694, 'Kolkata', 28),
(695, 'Malda', 28),
(696, 'Murshidabad', 28),
(697, 'Nadia', 28),
(698, 'North 24 Parganas', 28),
(699, 'Paschim Bardhaman', 28),
(700, 'Paschim Medinipur', 28),
(701, 'Purba Bardhaman', 28),
(702, 'Purba Medinipur', 28),
(703, 'Purulia', 28),
(704, 'South 24 Parganas', 28),
(705, 'Uttar Dinajpur', 28);

-- --------------------------------------------------------

--
-- Table structure for table `citizen_faq_section`
--

CREATE TABLE `citizen_faq_section` (
  `id` bigint(20) NOT NULL,
  `faq_question` longtext NOT NULL,
  `faq_answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_faq_section`
--

INSERT INTO `citizen_faq_section` (`id`, `faq_question`, `faq_answer`) VALUES
(1, 'What is a Smart City?', 'A smart city uses technology and data-driven solutions...'),
(2, 'How smart cities work?', 'Smart cities integrate IoT, data analytics, and digital platforms to manage resources efficiently and deliver better public services.'),
(3, 'Sustainability and community', 'They promote green initiatives, waste management, and community engagement for inclusive and sustainable growth.'),
(4, 'Security and privacy', 'Smart cities ensure data privacy and security through robust cybersecurity measures and transparent data policies.');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_herocontent`
--

CREATE TABLE `citizen_herocontent` (
  `id` bigint(20) NOT NULL,
  `title_desc` longtext NOT NULL,
  `sub_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_herocontent`
--

INSERT INTO `citizen_herocontent` (`id`, `title_desc`, `sub_desc`) VALUES
(1, 'Empowering Urban Innovation for a', 'Discover how our city is transforming into a smart, sustainable, and inclusive urban space by leveraging technology, data, and community engagement. Our mission is to enhance quality of life, drive economic growth, and protect the environment for all.');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_latest_news`
--

CREATE TABLE `citizen_latest_news` (
  `id` bigint(20) NOT NULL,
  `new_title` longtext NOT NULL,
  `new_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_latest_news`
--

INSERT INTO `citizen_latest_news` (`id`, `new_title`, `new_desc`) VALUES
(1, 'Latest News &', 'The renovation of the Nageswara Rao Pantulu Park involves civil infrastructure upgrade, landscaping, installation of new fixtures, and development of pedestrian pathways and play areas.');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_newuser`
--

CREATE TABLE `citizen_newuser` (
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` varchar(10) NOT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_newuser`
--

INSERT INTO `citizen_newuser` (`last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `user_id`, `name`, `email`, `phone`, `password`, `role`, `department_id`) VALUES
('2025-06-18 11:51:20.392132', 1, 'Balaji', 'Balaji', 'S', 1, 1, '2025-05-24 04:17:10.000000', 9, 'Balaji S', 'balaji@admin.com', '9865581367', 'pbkdf2_sha256$600000$tKkbwieAdBhrzs9udS3h5X$1rL7fKqrWWlnVzagJK6RbSOqOmhyPDblxmcAoqluFJM=', 'admin', NULL),
('2025-06-17 06:14:36.693522', 0, 'dckap_admin', 'DCKAP', 'R', 1, 1, '2025-05-28 10:45:53.000000', 140, 'Dckap Admin', 'dckap.admin@gmail.com', '9940025087', 'pbkdf2_sha256$600000$9cPMWlIpKZh79Z5DvOzri4$ymlZ9lq2EEw/VT5etdS3GB3MXUFOem2sngQTmPRD5b4=', 'staff', NULL),
('2025-06-18 11:58:02.402674', 0, 'bala_pw_dpt', 'Bala Chandar', 'S', 1, 1, '2025-05-28 10:49:16.000000', 141, 'Bala Chandar S', 'bala.pw.dpt@gmail.com', '9940025087', 'pbkdf2_sha256$600000$UdSlvnIAfqjpLKuhkOTiMb$ofWcyGeI0VDcQm0hG6sDrxYeprqHpBzCqw1+pq7LBeY=', 'staff', NULL),
('2025-06-14 06:30:59.959867', 0, 'lokesh_ws_dpt', 'Lokesh', 'M', 1, 1, '2025-05-28 10:50:26.000000', 142, 'Lokesh M', 'lokesh.ws.dpt@gmail.com', '9940025087', 'pbkdf2_sha256$600000$js9v5aCThQTSb8YTseqgZh$P2/obqeNxBrAm24A9ZOV8AWK0GhWn7AhDdmW6O1HVyI=', 'staff', NULL),
('2025-06-13 09:39:18.615283', 0, 'vicky_elect_dpt', 'Vicky', 'C', 1, 1, '2025-05-28 10:51:24.000000', 143, 'Vicky C', 'vicky.elect.dpt@gmail.com', '9940025087', 'pbkdf2_sha256$1000000$33gWUykxULjKgtEDCK0Jd8$4eqn9mAncGKV2kxWcWLvUZvRbllLElTfLfLc9NrFGzg=', 'staff', NULL),
('2025-06-13 09:39:50.350394', 0, 'gopi_wm_dpt', 'Gopinath', 'J', 1, 1, '2025-05-28 10:52:21.000000', 144, 'Gopinath J', 'gopi.wm.dpt@gmail.com', '9940025087', 'pbkdf2_sha256$1000000$MsbXaOBbrvdfjq6TdO0kFA$OYgB6bZY9btb0CNunoEArSyiP1eU1viOjuUe8njo+dU=', 'staff', NULL),
('2025-06-13 06:19:34.299855', 0, 'user01', '', '', 0, 1, '2025-06-13 06:19:32.995254', 259, '', 'user01@example.com', '', 'pbkdf2_sha256$1000000$7LN30COx8I0WekS2srlrLC$05lABuckZ/ZK0nJ6WkG5xFdB836lyiOvHzzab1UyU5Q=', 'citizen', NULL),
('2025-06-13 11:02:15.181192', 0, 'user02', '', '', 0, 1, '2025-06-13 08:54:42.167052', 260, '', 'user02@gmail.com', '', 'pbkdf2_sha256$1000000$AmmwYAD0YZ7G3w3HvNpHa9$GP+H/FLk0isLK0PdqS3O+pSpp5AfWd8jNypSS32KD00=', 'citizen', NULL),
('2025-06-13 08:55:25.934279', 0, 'user03', '', '', 0, 1, '2025-06-13 08:55:24.638576', 261, '', 'user03@gmail.com', '', 'pbkdf2_sha256$1000000$kAR97RJNPIczPEJtdUQM42$G8bzWncHiXP0Y6VDGUPOXhj5OSOVOEpTgO3GThPv07w=', 'citizen', NULL),
('2025-06-13 08:56:25.378881', 0, 'user04', '', '', 0, 1, '2025-06-13 08:56:24.078824', 262, '', 'user04@gmail.com', '', 'pbkdf2_sha256$1000000$s0Tm32JqCKzH5x7gu7Zhjo$I9B3cImBdMCElB8QnINJSFFd4V7BipEA2jGEscx2x/Q=', 'citizen', NULL),
('2025-06-13 08:58:10.360222', 0, 'user05', '', '', 0, 1, '2025-06-13 08:58:09.056954', 263, '', 'user05@gmail.com', '', 'pbkdf2_sha256$1000000$c40VqvGEPfbuhWCt81zcr7$1M4M31CPf4dCMqx0FvFQXaRp6oliTYlzzANdeNrpwoU=', 'citizen', NULL),
('2025-06-13 08:59:20.288623', 0, 'user06', '', '', 0, 1, '2025-06-13 08:59:18.977910', 264, '', 'user06@gmail.com', '', 'pbkdf2_sha256$1000000$4YXRyy3cteZXbwj3PJ0eTd$Ra8s7/GLlj/Daho7/8/4csUInYFqG+mLvaDqEvIPJDE=', 'citizen', NULL),
('2025-06-13 09:00:26.493168', 0, 'user07', '', '', 0, 1, '2025-06-13 09:00:25.021329', 265, '', 'user07@gmail.com', '', 'pbkdf2_sha256$1000000$4Dd2lGdJLVslrMLunqHfo9$wPlbbOU/aVFEZUhFk3221pkZ8W+/ThetTBCM3RWbDpM=', 'citizen', NULL),
('2025-06-13 09:01:11.391923', 0, 'user08', '', '', 0, 1, '2025-06-13 09:01:10.067616', 266, '', 'user08@gmail.com', '', 'pbkdf2_sha256$1000000$6o7b9PIvOFQrte0CWC1dU3$8dsLuPXXDcLuF7YHOK1XcvfuAZQqne8cOhzVzZHZt8k=', 'citizen', NULL),
('2025-06-13 09:01:56.209843', 0, 'user09', '', '', 0, 1, '2025-06-13 09:01:54.917736', 267, '', 'user09@gmail.com', '', 'pbkdf2_sha256$1000000$nfbNvosEPZ7AozLB39337p$OfttLP85k6TMhIP4Je13j8rvuwOCqZOm4uQHRZrX1KQ=', 'citizen', NULL),
('2025-06-13 09:02:29.536572', 0, 'user10', '', '', 0, 1, '2025-06-13 09:02:28.212210', 268, '', 'user10@gmail.com', '', 'pbkdf2_sha256$1000000$r2v9F87RMZSK0kphzj9gdw$n17/gX2xg11220td/jQMXCzQCagwNHOTftG4I/w+wGw=', 'citizen', NULL),
('2025-06-13 09:02:57.571003', 0, 'user11', '', '', 0, 1, '2025-06-13 09:02:56.268557', 269, '', 'user11@gmail.com', '', 'pbkdf2_sha256$1000000$np9hxDGzK1qBr6kc1tiRN6$voLcUN7Z6PR1s5faPS2G14EV7t6//wPdDuUG2/UrcXQ=', 'citizen', NULL),
('2025-06-13 09:03:22.428073', 0, 'user12', '', '', 0, 1, '2025-06-13 09:03:21.107768', 270, '', 'user12@gmail.com', '', 'pbkdf2_sha256$1000000$b4149d6ESJMpwBfSSKKPVF$55vkjgqG7/8JA4Kh8RB8Z3e27LSaXMrF162Z+oPO+PA=', 'citizen', NULL),
('2025-06-13 09:03:49.707708', 0, 'user13', '', '', 0, 1, '2025-06-13 09:03:48.395500', 271, '', 'user13@gmail.com', '', 'pbkdf2_sha256$1000000$ZxWNHrJe9aroIl7yhH3I9y$GBY7S9lDV8CixzDpOpoBN0EFglf2D9+Z7GWZhRbnh5g=', 'citizen', NULL),
('2025-06-13 09:04:17.228004', 0, 'user14', '', '', 0, 1, '2025-06-13 09:04:15.948391', 272, '', 'user14@gmail.com', '', 'pbkdf2_sha256$1000000$Xhj0GPCeHYEVhlQgBjnaF4$zUru3LjmhJAkk+UbBTuejFFl4hUz6w9ANLCAoayajuQ=', 'citizen', NULL),
('2025-06-13 09:04:48.550010', 0, 'user15', '', '', 0, 1, '2025-06-13 09:04:47.083974', 273, '', 'user15@gmail.com', '', 'pbkdf2_sha256$1000000$hFi6mcpW4YZ6ikllynlKsX$6iAskty5Fk24o5ONAOB3l185kCKi2VZcqRbJic4mdlk=', 'citizen', NULL),
('2025-06-13 09:05:26.040796', 0, 'user16', '', '', 0, 1, '2025-06-13 09:05:24.565473', 274, '', 'user16@gmail.com', '', 'pbkdf2_sha256$1000000$rCTOpo7fTPrFzM3Yv4GTrG$gjIswRtZeaOehcyQ3sRcldTlRk/U6b9xgssjdVTSjxc=', 'citizen', NULL),
('2025-06-13 09:05:54.454612', 0, 'user17', '', '', 0, 1, '2025-06-13 09:05:53.153244', 275, '', 'user17@gmail.com', '', 'pbkdf2_sha256$1000000$an4D2luALyRlZAJxMKd4U4$em7G/S8vKZfamIBZkmsro7OCmGwY5qDfKhyoovIUUL8=', 'citizen', NULL),
('2025-06-13 09:06:26.252716', 0, 'user18', '', '', 0, 1, '2025-06-13 09:06:24.937869', 276, '', 'user18@gmail.com', '', 'pbkdf2_sha256$1000000$xbx5s3dLm0PHJfvQqyyMzT$jbpLbQWp2+BYqxsjY0B5G6ulhDzsgctnqA+TxgNUl0A=', 'citizen', NULL),
('2025-06-13 09:06:53.489402', 0, 'user19', '', '', 0, 1, '2025-06-13 09:06:52.209456', 277, '', 'user19@gmail.com', '', 'pbkdf2_sha256$1000000$FUMi7ufBoVthsfabjV1g7o$l1eg5mFSGdj6D4z47iur02Odqe5tLy/SBhiFW2W2AMQ=', 'citizen', NULL),
('2025-06-18 11:54:29.590402', 0, 'user200', 'User', 'Twenty', 0, 1, '2025-06-13 09:07:26.094380', 278, '', 'user20@gmail.com', '8976541320', 'pbkdf2_sha256$600000$sQQX6ZvAnPDZ3cB4Gcpbbw$YkgNHcg9T/w9QdtW6BZI0TlGkTvuVRlZ4QtZBfgQCHw=', 'citizen', NULL),
('2025-06-13 09:07:55.554271', 0, 'user21', '', '', 0, 1, '2025-06-13 09:07:54.284309', 279, '', 'user21@gmail.com', '', 'pbkdf2_sha256$1000000$UiAsuWKmnNaUYsqmdJCJwR$zeUG4lqYUqMgKMhHv6LaO0BhpZ390rJeG9KgmvyFvuU=', 'citizen', NULL),
('2025-06-13 09:08:23.643238', 0, 'user22', '', '', 0, 1, '2025-06-13 09:08:22.363090', 280, '', 'user22@gmail.com', '', 'pbkdf2_sha256$1000000$U28SFjJZzIwHPqsmD0jMUl$MZ4ddvu58+0jztXlVkz3tpO1l/FEG0vWBVO0UZxInsM=', 'citizen', NULL),
('2025-06-13 09:08:46.759077', 0, 'user23', '', '', 0, 1, '2025-06-13 09:08:45.431324', 281, '', 'user23@gmail.com', '', 'pbkdf2_sha256$1000000$SH2Q1ykJNMvlbZIu7pnKma$fKOqYJz4BcEoC093NEBF5LEJwKD615DTDAUaQuNQ5wY=', 'citizen', NULL),
('2025-06-13 09:09:12.297743', 0, 'user24', '', '', 0, 1, '2025-06-13 09:09:10.912344', 282, '', 'user24@gmail.com', '', 'pbkdf2_sha256$1000000$NwULnr3jDXqpDMLruX2WMd$C10T9bPdF0JqldGxoildcUVQy211M7RkN9ClmPlevBU=', 'citizen', NULL),
('2025-06-13 09:09:42.814745', 0, 'user25', '', '', 0, 1, '2025-06-13 09:09:41.499942', 283, '', 'user25@gmail.com', '', 'pbkdf2_sha256$1000000$50Tv3TIWgFAl1o0iZbIE1i$m3csC1/ebhapjPE1OWpRMNLwaHuZZ81l8R0FKa6QzWg=', 'citizen', NULL),
('2025-06-13 09:10:08.884110', 0, 'user26', '', '', 0, 1, '2025-06-13 09:10:07.584010', 284, '', 'user26@gmail.com', '', 'pbkdf2_sha256$1000000$EALAkjLYloxTUwm3JUkFGc$JGWUBkOR66B5TBETYPhbS+2QgDhOo2oPy6dzppgGZdA=', 'citizen', NULL),
('2025-06-13 09:10:33.601956', 0, 'user27', '', '', 0, 1, '2025-06-13 09:10:32.324023', 285, '', 'user27@gmail.com', '', 'pbkdf2_sha256$1000000$OzxvmGofZhCH7jq1liqOD5$4uRxQRb8hXr30vLkZ596OiB4tzoRXmJZwuDifa9zs6I=', 'citizen', NULL),
('2025-06-13 09:10:59.397178', 0, 'user28', '', '', 0, 1, '2025-06-13 09:10:58.116708', 286, '', 'user28@gmail.com', '', 'pbkdf2_sha256$1000000$LrfwBlndb1IqEfFpHWANM2$W+VJchy8s0HSMzJXywkBfDaVRpofeIo2/7YkHzTCIk4=', 'citizen', NULL),
('2025-06-13 09:11:24.285050', 0, 'user29', '', '', 0, 1, '2025-06-13 09:11:22.946548', 287, '', 'user29@gmail.com', '', 'pbkdf2_sha256$1000000$6vujtmIRAdmgleCC0ffFHN$r5DN0x9vFNpcMCuShwKrbjk75Srjf7NTNY6ICVwzGFU=', 'citizen', NULL),
('2025-06-18 11:11:26.400353', 0, 'user30', '', '', 0, 1, '2025-06-13 09:11:56.700289', 288, '', 'user30@gmail.com', '', 'pbkdf2_sha256$600000$zNmBK1DVS3cx9UFcsWL6kj$9JpWHDNlDjoAxEV3ehwepBYu/ESYBSqX7ToqzEVVIWU=', 'citizen', NULL),
('2025-06-14 06:58:32.173494', 0, 'Hari', 'hari', 'haran', 0, 1, '2025-06-14 06:20:36.170211', 289, '', 'Hari@gmail.com', '7200726364', 'pbkdf2_sha256$600000$6c4J58TQ7wrQQEtyDayaiY$1p1Y1EugQvikIFtQukhQkcGYAiT5Y292kAAMOHpRnA0=', 'citizen', NULL),
('2025-06-14 06:50:53.799420', 0, 'priya', '', '', 0, 1, '2025-06-14 06:50:53.033954', 290, '', 'priya@gmail.com', '', 'pbkdf2_sha256$600000$DJcFfjNrgisGfJOTdjGJhj$imRIKKxvnX40Dp+ACS0eBbCReGQIP0ggNfA2fyNiqXg=', 'citizen', NULL),
('2025-06-14 09:37:22.418860', 0, 'user31', '', '', 0, 1, '2025-06-14 09:37:21.067298', 291, '', 'user31@gmail.com', '', 'pbkdf2_sha256$1000000$A8Ptwo0svdAlbz1TqOaeDA$aug30aFyWcJEB+QWz+lmtYsca+auGYyOZwBONNORQcM=', 'citizen', NULL),
('2025-06-14 09:44:19.279768', 0, 'vickyboii', '', '', 0, 1, '2025-06-14 09:44:18.496598', 292, '', 'vicky@gmail.com', '', 'pbkdf2_sha256$600000$aL6ooxXBX9HuxeMVrH8Eqw$BsK1KWAstyd8v9hyNQRuq/QmVqF4JNXTGVDH+zwOtA8=', 'citizen', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `citizen_newuser_groups`
--

CREATE TABLE `citizen_newuser_groups` (
  `id` bigint(20) NOT NULL,
  `newuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `citizen_newuser_user_permissions`
--

CREATE TABLE `citizen_newuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `newuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `citizen_statelocation`
--

CREATE TABLE `citizen_statelocation` (
  `state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_statelocation`
--

INSERT INTO `citizen_statelocation` (`state_id`, `name`) VALUES
(1, 'TamilNadu'),
(2, 'AndhraPradesh'),
(3, 'ArunachalPradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chhattisgarh'),
(7, 'Goa'),
(8, 'Gujarat'),
(9, 'Haryana'),
(10, 'HimachalPradesh'),
(11, 'Jharkhand'),
(12, 'Karnataka'),
(13, 'Kerala'),
(14, 'MadhyaPradesh'),
(15, 'Maharashtra'),
(16, 'Manipur'),
(17, 'Meghalaya'),
(18, 'Mizoram'),
(19, 'Nagaland'),
(20, 'Odisha'),
(21, 'Punjab'),
(22, 'Rajasthan'),
(23, 'Sikkim'),
(24, 'Telangana'),
(25, 'Tripura'),
(26, 'UttarPradesh'),
(27, 'Uttarakhand'),
(28, 'WestBengal');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_subcategory`
--

CREATE TABLE `citizen_subcategory` (
  `subCategory_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_subcategory`
--

INSERT INTO `citizen_subcategory` (`subCategory_id`, `name`, `description`, `department_id`) VALUES
(1, 'Road Damage', 'Damaged or broken roads', 1),
(2, 'Footpath Issues', 'Broken or blocked footpaths', 1),
(3, 'Construction Waste', 'Leftover construction material on roads', 1),
(4, 'Illegal Constructions', 'Unauthorized buildings or encroachments', 1),
(5, 'Drainage Blockage', 'Blocked or overflowing roadside drains', 1),
(6, 'Street Repair Delay', 'Delayed maintenance work', 1),
(7, 'Water Leakage', 'Leaking water pipes', 2),
(8, 'No Water Supply', 'Complete lack of water', 2),
(9, 'Low Water Pressure', 'Insufficient water flow', 2),
(10, 'Dirty Water Supply', 'Contaminated or muddy water', 2),
(11, 'Broken Water Meter', 'Faulty or broken water meters', 2),
(12, 'Unauthorized Water Connection', 'Illegal water tapping', 2),
(13, 'Street Light Not Working', 'Non-functional street lights', 3),
(14, 'Flickering Lights', 'Inconsistent lighting at night', 3),
(15, 'Power Outage', 'Electricity cut or blackouts', 3),
(16, 'Exposed Wires', 'Dangerously hanging wires', 3),
(17, 'Transformer Noise', 'Buzzing or disturbing transformer noise', 3),
(18, 'New Connection Delay', 'Delay in electrical connection requests', 3),
(19, 'Garbage Not Collected', 'Uncollected waste in residential areas', 4),
(20, 'Overflowing Dustbins', 'Dustbins full and not cleaned', 4),
(21, 'Dead Animal Disposal', 'Dead animals not removed from roads', 4),
(22, 'Illegal Dumping', 'Garbage dumped in non-designated areas', 4),
(23, 'No Dustbin', 'Dustbins missing in public areas', 4),
(24, 'Sewage Overflow', 'Open and overflowing sewage lines', 4);

-- --------------------------------------------------------

--
-- Table structure for table `citizen_testimonials`
--

CREATE TABLE `citizen_testimonials` (
  `id` bigint(20) NOT NULL,
  `main_title` longtext NOT NULL,
  `sub_title` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_testimonials`
--

INSERT INTO `citizen_testimonials` (`id`, `main_title`, `sub_title`, `image`) VALUES
(1, 'User-Friendly Interface', 'Intuitive design for effortless reporting', 'user_friendly.svg'),
(2, 'Direct Communication', 'Your reports go straight to the responsible city\r\ndepartment', 'Driect_Communication.jpg'),
(3, 'Community Impact', 'Be a part of the solution for a cleaner, safer, and more efficient city.', 'Community_Imapct.svg');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-05-24 04:33:21.510157', '1', 'Balaji', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Phone\", \"Role\"]}}]', 7, 1),
(2, '2025-05-27 04:47:26.284830', '124', 'test', 3, '', 7, 1),
(3, '2025-05-27 04:47:26.296026', '121', 'tytasaq', 3, '', 7, 1),
(4, '2025-05-27 04:47:26.298617', '120', 'pagoxiqyre', 3, '', 7, 1),
(5, '2025-05-27 04:47:26.300910', '111', 'abc', 3, '', 7, 1),
(6, '2025-05-27 04:47:26.302351', '110', 'mydolal', 3, '', 7, 1),
(7, '2025-05-27 04:47:26.303857', '109', 'vanakam', 3, '', 7, 1),
(8, '2025-05-27 04:47:26.305313', '108', 'hello', 3, '', 7, 1),
(9, '2025-05-27 04:47:26.306647', '107', 'rejol', 3, '', 7, 1),
(10, '2025-05-27 04:47:26.308611', '106', 'ekent', 3, '', 7, 1),
(11, '2025-05-27 04:47:26.310471', '105', 'djones', 3, '', 7, 1),
(12, '2025-05-27 04:47:26.312016', '104', 'cmiller', 3, '', 7, 1),
(13, '2025-05-27 04:47:26.313946', '103', 'bwayne', 3, '', 7, 1),
(14, '2025-05-27 04:47:26.315995', '102', 'admin01', 3, '', 7, 1),
(15, '2025-05-27 04:47:26.317875', '101', 'jdoe', 3, '', 7, 1),
(16, '2025-05-27 04:47:26.319278', '3', 'naveen', 3, '', 7, 1),
(17, '2025-05-27 04:47:26.321025', '2', 'hari', 3, '', 7, 1),
(18, '2025-05-27 04:59:42.376236', '125', 'bala_tat_dpt', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Role\"]}}]', 7, 1),
(19, '2025-05-27 05:05:08.417234', '126', 'lokesh_pw_dpt', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Role\", \"Department\"]}}]', 7, 1),
(20, '2025-05-27 05:05:17.698882', '125', 'bala_tat_dpt', 2, '[{\"changed\": {\"fields\": [\"Department\"]}}]', 7, 1),
(21, '2025-05-27 05:08:37.061537', '127', 'vicky_par_dpt', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Role\", \"Department\"]}}]', 7, 1),
(22, '2025-05-27 07:02:27.196336', '130', 'jidofyted', 3, '', 7, 1),
(23, '2025-05-27 07:02:27.208109', '129', 'hi', 3, '', 7, 1),
(24, '2025-05-27 07:02:48.521578', '131', 'test', 3, '', 7, 1),
(25, '2025-05-27 07:05:35.750831', '128', 'gopi_sd_dpt', 2, '[{\"changed\": {\"fields\": [\"Role\", \"Department\"]}}]', 7, 1),
(26, '2025-05-27 07:09:39.398891', '132', 'priya_admin', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Role\"]}}]', 7, 1),
(27, '2025-05-27 10:48:13.845874', '11', 'Complaint #11 by test man', 1, '[{\"added\": {}}]', 9, 1),
(28, '2025-05-28 06:40:58.477845', '12', 'Complaint #12 by Meena Iyer', 1, '[{\"added\": {}}]', 9, 1),
(29, '2025-05-29 05:52:34.034247', '26', 'Complaint #26 by Channing Waller', 2, '[{\"changed\": {\"fields\": [\"Image url\", \"Status\"]}}]', 9, 9),
(30, '2025-05-29 09:06:52.532595', '26', 'Complaint #26 by Channing Waller', 3, '', 9, 9),
(31, '2025-05-29 10:58:00.064378', '25', 'Complaint #25 by Channing Waller', 2, '[{\"changed\": {\"fields\": [\"Image url\"]}}]', 9, 9),
(32, '2025-05-30 11:36:03.938188', '153', 'Carly Hopkins', 3, '', 7, 9),
(33, '2025-06-02 05:00:55.612688', '140', 'Priya R', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Role\"]}}]', 7, 9),
(34, '2025-06-02 05:02:06.817965', '141', 'Bala Chandar S', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Role\"]}}]', 7, 9),
(35, '2025-06-02 05:02:20.234078', '142', 'Lokesh M', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Role\"]}}]', 7, 9),
(36, '2025-06-02 05:02:34.350952', '144', 'Gopinath J', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Role\"]}}]', 7, 9),
(37, '2025-06-02 05:13:11.802625', '143', 'Vicky C', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Role\"]}}]', 7, 9),
(38, '2025-06-10 09:25:52.327147', '1055', 'Complaint #1055 by Mohan R', 1, '[{\"added\": {}}]', 9, 9),
(39, '2025-06-18 11:51:43.543619', '1', 'Herocontent #Empowering Urban Innovation for a by Discover how our city is transforming into a smart, sustainable, and inclusive urban space by leveraging technology, data, and community engagement. O', 2, '[{\"changed\": {\"fields\": [\"Title desc\"]}}]', 15, 9),
(40, '2025-06-18 11:52:33.115469', '1', 'Latest_News #Latest News & by The renovation of the Nageswara Rao Pantulu Park involves civil infrastructure upgrade, landscaping, installation of new fixtures, and development of pedestrian pathways ', 2, '[{\"changed\": {\"fields\": [\"New title\"]}}]', 18, 9);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(9, 'citizen', 'complaintdetail'),
(6, 'citizen', 'department'),
(20, 'citizen', 'districtlocation'),
(10, 'citizen', 'faq'),
(17, 'citizen', 'faq_section'),
(11, 'citizen', 'galleryitem'),
(15, 'citizen', 'herocontent'),
(12, 'citizen', 'herosection'),
(18, 'citizen', 'latest_news'),
(13, 'citizen', 'newsitem'),
(7, 'citizen', 'newuser'),
(19, 'citizen', 'statelocation'),
(8, 'citizen', 'subcategory'),
(16, 'citizen', 'testimonials'),
(14, 'citizen', 'visionsection'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-05-24 04:15:56.814968'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-05-24 04:15:56.836808'),
(3, 'auth', '0001_initial', '2025-05-24 04:15:56.920801'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-05-24 04:15:56.954503'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-05-24 04:15:56.961795'),
(6, 'auth', '0004_alter_user_username_opts', '2025-05-24 04:15:56.969417'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-05-24 04:15:56.975451'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-05-24 04:15:56.977461'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-05-24 04:15:56.983299'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-05-24 04:15:56.990780'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-05-24 04:15:56.998594'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-05-24 04:15:57.010070'),
(13, 'auth', '0011_update_proxy_permissions', '2025-05-24 04:15:57.017434'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-05-24 04:15:57.024320'),
(15, 'citizen', '0001_initial', '2025-05-24 04:15:57.223870'),
(16, 'admin', '0001_initial', '2025-05-24 04:15:57.293479'),
(17, 'admin', '0002_logentry_remove_auto_add', '2025-05-24 04:15:57.320414'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2025-05-24 04:15:57.336974'),
(19, 'sessions', '0001_initial', '2025-05-24 04:15:57.354624'),
(20, 'citizen', '0002_faq_galleryitem_herosection_newsitem_visionsection', '2025-06-04 05:20:32.598889'),
(21, 'citizen', '0002_remove_complaintdetail_image_url_and_more', '2025-06-05 11:25:13.942471'),
(22, 'citizen', '0002_herocontent', '2025-06-06 11:02:02.981060'),
(23, 'citizen', '0003_merge_20250606_0615', '2025-06-06 11:02:02.983193'),
(24, 'citizen', '0004_remove_complaintdetail_location_and_more', '2025-06-10 09:22:01.718490'),
(25, 'citizen', '0003_merge_20250606_0523', '2025-06-11 05:04:21.429619'),
(26, 'citizen', '0004_testimonials', '2025-06-11 05:04:21.437992'),
(27, 'citizen', '0005_testimonials_image', '2025-06-11 05:04:21.446379'),
(28, 'citizen', '0006_alter_testimonials_image', '2025-06-11 05:04:21.449568'),
(29, 'citizen', '0007_alter_testimonials_image', '2025-06-11 05:04:21.452700'),
(30, 'citizen', '0008_alter_testimonials_image', '2025-06-11 05:04:21.455483'),
(31, 'citizen', '0009_faq_section', '2025-06-11 05:04:21.461762'),
(32, 'citizen', '0010_latest_news', '2025-06-11 05:04:21.468865'),
(33, 'citizen', '0011_merge_20250611_0504', '2025-06-11 05:04:21.470536'),
(34, 'citizen', '0012_complaintdetail_latitude_complaintdetail_longitude', '2025-06-12 07:14:30.540181'),
(35, 'citizen', '0004_alter_complaintdetail_image_upload', '2025-06-12 08:30:01.851064'),
(36, 'citizen', '0005_alter_complaintdetail_image_upload', '2025-06-12 08:30:01.860228'),
(37, 'citizen', '0013_merge_20250612_0829', '2025-06-12 08:30:01.861540'),
(38, 'citizen', '0014_districtlocation_statelocation_and_more', '2025-06-14 07:32:02.391681');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0bcen00zfr8v51tzequwacq9nbdfvtur', '.eJxVjLsOwjAQBP_FNYoc48QxJRIloqK2zndrxSIJUh4NiH8noBTQzuzOUwVa5jYsE8aQRR2UMU7tfmkkvmH4KM5zfmAovm7Dxamn3F3G6zodqMf5LuiO2-Wv09LUrhEPW3o0JpnILom1Kbqq0nUDabQWrg2JNsTCDlxaxzHCC2BrgU92r15vQ4c8ow:1uPxaM:APkCQGHFP0-XfOzv_Ekb6L0pHXrubVXs_h6yvzPQM0o', '2025-06-13 06:38:18.790036'),
('0h0jrllel1z3wpjvlkhk8e7ul3kejeyo', '.eJxVjLsOgkAQRf9la0OA2YUZSxNLY2VNhpkhbOSR8Gg0_rtoKLQ9597zdBWvS1uts01VVHd05A6_rGa52_AREpf4sCH5uh0n555jd51u23Tg3i6jWnfaL3-dlud2i6SkSpShZugFkLCAUGBao4gFSEspG58zqQRsCI29JwKA4Elz8KW51xu6Tjn7:1uRO47:c7Q9ZaJB4TArFFIZE62HZLwxUITnCH6c8Vq_GTyggCE', '2025-06-17 05:06:55.596142'),
('2xjsf6um8mb2bab7zt9kx5kvq7pc5lxx', '.eJxVjLsOwjAQBP_FNYoc48QxJRIloqK2zndrxSIJUh4NiH8noBTQzuzOUwVa5jYsE8aQRR2UMU7tfmkkvmH4KM5zfmAovm7Dxamn3F3G6zodqMf5LuiO2-Wv09LUrhEPW3o0JpnILom1Kbqq0nUDabQWrg2JNsTCDlxaxzHCC2BrgU92r15vQ4c8ow:1uQ02W:0HIWkiVDrKy7_eKmWdvQTWqJ-6P6mWRy3uWpVoe7gLI', '2025-06-13 09:15:32.949971'),
('4oytqbfvhbldo5z8jhcqio169mnkz6fa', '.eJxVjLkOwjAQBf_FNYocHwlLiUSJqKit9e5asUiMlKMB8e8ElALamffmqQIucxeWScaQWR2UMV7tfmlEukn5KMpzfkipvm7D1WnA3F_G6zotOMj5ztIft8tfp8OpWyPWOmi8lsTNvmVAB1KzSegdGQCOjI014Lw27CCBRGqtjuyp1kRMWr3eH987qg:1uPaJv:GPiHvxiavPjvMCWBKNXR58Q5RSmxtwri5h26BViWxxI', '2025-06-12 05:47:47.428908'),
('576qawi5xjwa0n48ob3taetn8aa2xfck', '.eJxVjL0OwiAURt-F2TSlwKU4mjgaJ2fChUsgtjTpz6Lx3UXTQddzzvc9mXXbmuy20GxzYEfGpWKHX4rO36l8lM9rflBpvm7HzXl0ebjOt5oWN9JlCjSc9snfT3JLqicoIHiNXdQGfK901EoFajWPkoMg5B1ICjFyQAfc1AANyZZ6DVKSUOz1BimuOzU:1uOt80:3TMwRHwXNeQE4-yGNgv8EBtKmxznFkIu6aBmKy3MCFE', '2025-06-10 07:40:36.296578'),
('5vk9sz6wwa9qha9oddxo5bimhr4kf3h8', '.eJxVjLsOgkAQRf9la0OA2YUZSxNLY2VNhpkhbOSR8Gg0_rtoKLQ9597zdBWvS1uts01VVHd05A6_rGa52_AREpf4sCH5uh0n555jd51u23Tg3i6jWnfaL3-dlud2i6SkSpShZugFkLCAUGBao4gFSEspG58zqQRsCI29JwKA4Elz8KW51xu6Tjn7:1uR64S:r9KYZnov5mal2NYqDAD4_lVYOIJOvy2Vhjcgg87_mcc', '2025-06-16 09:54:04.381850'),
('70wr8py4mv52dje3amnq85xzi2htfjwc', '.eJxVjLkOwjAQRP_FNYrY2GyylEiUiIraWq_XikUOKUcD4t8JKAV0ozcz72k8L3Pjl0lHn6M5mhLQ7H5pYLlr_6kkz_mhffHtNlycO87tdbyt0547vQxR29N2-fM0PDWrBCGKU05kK0Q9YJI6AiUkiIgVyBo4QNxzVZdOxZIldmKRlQJhqs3rDSmNO2o:1uPCbr:FUQajJqdof81oXvoUjPPUJsM_U3o8ML3N8g2YFxfHUQ', '2025-06-11 04:28:43.708282'),
('7ixv933gjdejzwmcsn7qxfobqpeihgma', '.eJxVjLkOwjAQBf_FNYp8xd5QIlEiKupovV7LFjmkHA2IfyegFNDOvDdP0eK65HadeWpLFEehPYjDLw1Idx4-ispSHjxUX7fj6txj6a7TbZsO2PNljNyd9stfJ-Oct4jiukmNI4voFbLyGEFHp41kIGtIgnGggExjU6BkrYkajZIQQm29k-L1BiY_OuY:1uQLNQ:T1K8rpHnS6pyetsgR-mPadLStM8QTTIvj4x9g_uzbOU', '2025-06-14 08:02:32.121368'),
('7zwp062igdcm2zk5znn9nhhminw0gnfr', '.eJxVjbsOwjAQBP_FNYrOjoNtSiRKREVtne8uikUSpDwaEP-OQSmg3dmdfaqI69LFdZYpZlYHpS2o3W-akG4yfhDlJT9krL5si6vTgLm_TNdSHXGQ852lP26TP0-Hc1ckINR43KMrR8JcI5DRZIIFdAZTam2brATAWhvtGscePJjgW3Y1pcDq9QYoLztZ:1uQ2KS:6_vKK8BL-YIaFJK1d61pDLWGRwA6u-_cmCyn-HbN8tA', '2025-06-13 11:42:12.345629'),
('9iunflym7xth4kqw42qlqrq7hra6b9yj', '.eJxVjLkOwjAQRP_FNYrY2GyylEiUiIraWq_XikUOKUcD4t8JKAV0ozcz72k8L3Pjl0lHn6M5mhLQ7H5pYLlr_6kkz_mhffHtNlycO87tdbyt0547vQxR29N2-fM0PDWrBCGKU05kK0Q9YJI6AiUkiIgVyBo4QNxzVZdOxZIldmKRlQJhqs3rDSmNO2o:1uOteI:GKrRlGKt97uy0YlRNYJEWWzPluXYVNKl7QNirHlYT4k', '2025-06-10 08:13:58.182604'),
('a7ksj6n5otpljnumjnw2fp4ulpete80r', '.eJxVjLkOwjAQBf_FNYp8xd5QIlEiKupovV7LFjmkHA2IfyegFNDOvDdP0eK65HadeWpLFEehPYjDLw1Idx4-ispSHjxUX7fj6txj6a7TbZsO2PNljNyd9stfJ-Oct4jiukmNI4voFbLyGEFHp41kIGtIgnGggExjU6BkrYkajZIQQm29k-L1BiY_OuY:1uQMAh:1pkARxkVAr7lzL2dHtUe4RVjW28Xv21smFMfRj_1YxI', '2025-06-14 08:53:27.274673'),
('d4000g1rw0c8rk30jvb7tv4qojcdpaae', '.eJxVjLkOwjAQBf_FNYpiO147lEiUiIo6Wu9uZIscUo4GxL9DUApoZ96bp2pwXVKzzjI1mdVRGR_U4ZdGpLsMm6K85IcMxdftuDj3mLvrdPtMB-zlMrJ0p_3y10k4py0CLLqVCjV5z7EWT9GSswJEltuqdkYzsLdkrIkleAiEQNo6KAO5Ur3eVNg7qQ:1uQKsj:1d92Z-xz3pDzIJavRL0IW2IoXcFsl5Usi-PG1R5dq-g', '2025-06-14 07:30:49.087130'),
('faqylfshcre860tzzxamae8efzmd7gd0', '.eJxVjLkOwjAQRP_FNYrY2GyylEiUiIraWq_XikUOKUcD4t8JKAV0ozcz72k8L3Pjl0lHn6M5mhLQ7H5pYLlr_6kkz_mhffHtNlycO87tdbyt0547vQxR29N2-fM0PDWrBCGKU05kK0Q9YJI6AiUkiIgVyBo4QNxzVZdOxZIldmKRlQJhqs3rDSmNO2o:1uOu8G:9e6XTIY-bbCQFpgXytdCrnIkWV6dgE9Qgg-DCpOkvHc', '2025-06-10 08:44:56.892709'),
('frn22dyw8ats5ic7wec1xbp3i2gjlbjh', '.eJxVjL0OwiAURt-F2TSlwKU4mjgaJ2fChUsgtjTpz6Lx3UXTQddzzvc9mXXbmuy20GxzYEfGpWKHX4rO36l8lM9rflBpvm7HzXl0ebjOt5oWN9JlCjSc9snfT3JLqicoIHiNXdQGfK901EoFajWPkoMg5B1ICjFyQAfc1AANyZZ6DVKSUOz1BimuOzU:1uPb5L:ovmi5dd2LysglTqCt5tE7hOOxP59xc_0y0hjhQXZa8I', '2025-06-12 06:36:47.759247'),
('h77rvg3k4ij34njch3o3xg9yxki2apdr', '.eJxVjL0OwiAURt-F2TSlwKU4mjgaJ2fChUsgtjTpz6Lx3UXTQddzzvc9mXXbmuy20GxzYEfGpWKHX4rO36l8lM9rflBpvm7HzXl0ebjOt5oWN9JlCjSc9snfT3JLqicoIHiNXdQGfK901EoFajWPkoMg5B1ICjFyQAfc1AANyZZ6DVKSUOz1BimuOzU:1uPcSo:1coasMC0govmZAArpW1srbqXAOXKZjMCcK6g_-G6b1w', '2025-06-12 08:05:06.317992'),
('id9pelomxrsc0akzjucag2x35zhec35b', '.eJxVjLkOwjAQRP_FNYrY2GyylEiUiIraWq_XikUOKUcD4t8JKAV0ozcz72k8L3Pjl0lHn6M5mhLQ7H5pYLlr_6kkz_mhffHtNlycO87tdbyt0547vQxR29N2-fM0PDWrBCGKU05kK0Q9YJI6AiUkiIgVyBo4QNxzVZdOxZIldmKRlQJhqs3rDSmNO2o:1uPEwm:wrp5W2fd2JAyyEPF2cuIrXxsgzzJTQPF2SIOXY4ijc0', '2025-06-11 06:58:28.173384'),
('j5sfeafhtud7uiazf56naisp86fpf293', '.eJxVjLkOwjAQRP_FNYrY2GyylEiUiIraWq_XikUOKUcD4t8JKAV0ozcz72k8L3Pjl0lHn6M5mhLQ7H5pYLlr_6kkz_mhffHtNlycO87tdbyt0547vQxR29N2-fM0PDWrBCGKU05kK0Q9YJI6AiUkiIgVyBo4QNxzVZdOxZIldmKRlQJhqs3rDSmNO2o:1uOx5M:xrtBbUesbH8kQEz-AS8isy7SoLLyjiWB_JH9THb-Bbg', '2025-06-10 11:54:08.198741'),
('kwlyjef36wzvkutd7g9ypx8bype5e54l', '.eJxVjLkOwjAQRP_FNYrY2GyylEiUiIraWq_XikUOKUcD4t8JKAV0ozcz72k8L3Pjl0lHn6M5mhLQ7H5pYLlr_6kkz_mhffHtNlycO87tdbyt0547vQxR29N2-fM0PDWrBCGKU05kK0Q9YJI6AiUkiIgVyBo4QNxzVZdOxZIldmKRlQJhqs3rDSmNO2o:1uOvG1:jxsVCgbaYK2c78CWBXZWRJcXhro7gEpEUbvr-3t0fO4', '2025-06-10 09:57:01.011746'),
('lsrzppixqs3zo5r6m839ez4n15edtv7v', '.eJxVjLkOwjAQBf_FNYrseOODEokSUVFH681atkgcKUcD4t8JKAW0M-_NU7S4LqldZ57a3Imj8OLwywLSnctHUF7yg0v1dTuuzgPm_jrdtmnBgS9jx_1pv_x1Es5pi8hIHkyDVikJjeaI0RtHsQbk4EztNIOWxiIrDYo4BlCNBIIovQ2kxOsNzzk6qw:1uPwgP:es4mItFgPGnqp_kGSaMNq9COkaomlvyULc69I9ccl5k', '2025-06-13 05:40:29.658777'),
('nn54v3eqxq085v08mbjjhs8395qxmgzt', '.eJxVjL0OwiAURt-F2TRcLhR0NHE0Ts4ELreB2GLSn0Xju1tNB13P-b7zFD4sc_bLxKMvSRwEaCl2vzQGunH9KCpzeXBtvm7DzWkIpb-M13Vaw8Dne-L-uF3-OjlMeY0gGEfaoTEMVmEy2iaFsVVJcsvkuANCCTJSJxVHIkQL0kG07T4pp8XrDQJ0Op8:1uQ2KT:VimMWBXhMuwBf8gnpSk1NfHtnjmJpiTHUlMLj6AJl-U', '2025-06-13 11:42:13.016627'),
('okbq2vx8h8nf33yztfbowxmmfvv26n7z', '.eJxVjMEOwiAQRP-FsyFlCy149N5vILsLSNVAUtqT8d9tkx70OPPezFt43NbstxYXPwdxFUpcfjtCfsZygPDAcq-Sa1mXmeShyJM2OdUQX7fT_TvI2PK-TjiYwKB6xckG4AQA_ZgGG7VOHXXkFBtnR4a4R-UMo3VEmnqMrK0Rny_yqzhf:1uJSGX:2zsBqa8HKcHetaGFTYuQHuXy84UBfS8vhxO76fjdyAg', '2025-06-09 07:28:57.292955'),
('p9k1ijebu5vhl3nx34cntlic98lvq9fg', '.eJxVjLkOwjAQBf_FNYp8H5RIlIiKOtq117JFDilHA-LfCSgFtDPvzZO1sC6lXWea2prYkQnN2eGXIsQ7DR8V61IfNDRft-Pm3EPtrtNtmw7Q02VM1J32y1-nwFy2iAzRosvKEFIy3FovKKpkEEF7ASZybZ2TWTuBAa0jksGHKCVXErMh9noDKVg7Sg:1uR1vn:a7R0_O7_f-ePZiRdpaJg4_UZM1p4FxjuWpn9dNL3uNo', '2025-06-16 05:28:51.167676'),
('qxgznwslurzuy7be8ujtw4gbmu6wcca7', '.eJxVjLkOwjAQRP_FNYrY2GyylEiUiIraWq_XikUOKUcD4t8JKAV0ozcz72k8L3Pjl0lHn6M5mhLQ7H5pYLlr_6kkz_mhffHtNlycO87tdbyt0547vQxR29N2-fM0PDWrBCGKU05kK0Q9YJI6AiUkiIgVyBo4QNxzVZdOxZIldmKRlQJhqs3rDSmNO2o:1uOwzc:oEOJPC6dgKi9gWH-DHNbS4MMDD-zOTG6Yo3TpWLtNbw', '2025-06-10 11:19:52.846286'),
('rdq3qmbax1mema84y7ve1a1hcsiddoyt', '.eJxVjLkOwjAQBf_FNYrseOODEokSUVFH681atkgcKUcD4t8JKAW0M-_NU7S4LqldZ57a3Imj8OLwywLSnctHUF7yg0v1dTuuzgPm_jrdtmnBgS9jx_1pv_x1Es5pi8hIHkyDVikJjeaI0RtHsQbk4EztNIOWxiIrDYo4BlCNBIIovQ2kxOsNzzk6qw:1uOs8z:AUs8awXGN0Hc3xo1M0852ITdzyxMaDznGtfP6p2OHeo', '2025-06-10 06:37:33.090926'),
('s0jqdrein58gbmeewlsoj37n8h2cjy4o', '.eJxVjLkOwjAQBf_FNYocXxtTIlEiKupo11nLFokj5WhA_DsBpYB25r15ihbXJbXrzFObO3EUtZHi8EsJw53LR4W85AeX6ut2XJ0HzP11um3TggNfxo7703756ySc0xYBtnUDBF6jjzKCZ881RAOWpJFRGessIkmntaWmY6JGuYCsNBCbIMXrDRQyO0o:1uOZs5:z5C-x1WCBsiiBIIYViBoEIibohVumctL0iIBUtEBzsA', '2025-06-09 11:06:53.692638'),
('tdyw5c06quwzq7x4siw9pufy8ae4xf8z', '.eJxVjL0OwiAURt-F2TRwwUvraOJonJzJBS6B2GLSn0Xju2tNB13P-b7zFI6WObtl4tGVKA5CGSV2v9RTuHFdVShzeXBtvm7DzWmg0l_G62daaeDzPXJ_3C5_nUxTXiOBvJWeNbRBt2BiVB0k1AycKGhAi8SYWAYjFRFKQNxbiVZq1RkF4vUGNS06yA:1uPf1p:hRLTHmrHOFraruZ3-qCx60Ui76Zk5sDMG4C_7U03YqE', '2025-06-12 10:49:25.374103'),
('tsnx2idzdeizef300zpdy742rxsq1fqy', '.eJxVjLsOwjAQBP_FNYoc48QxJRIloqK2zndrxSIJUh4NiH8noBTQzuzOUwVa5jYsE8aQRR2UMU7tfmkkvmH4KM5zfmAovm7Dxamn3F3G6zodqMf5LuiO2-Wv09LUrhEPW3o0JpnILom1Kbqq0nUDabQWrg2JNsTCDlxaxzHCC2BrgU92r15vQ4c8ow:1uPvnF:JzCzUcUvj_uDx7UIOZQmVIf2R3eWQXHZ4riW-P-N3Jo', '2025-06-13 04:43:29.749594'),
('ucjknmd9dhx3i6jfzct2xgxdlrk752kt', '.eJxVjL0OwiAURt-F2TSlwKU4mjgaJ2fChUsgtjTpz6Lx3UXTQddzzvc9mXXbmuy20GxzYEfGpWKHX4rO36l8lM9rflBpvm7HzXl0ebjOt5oWN9JlCjSc9snfT3JLqicoIHiNXdQGfK901EoFajWPkoMg5B1ICjFyQAfc1AANyZZ6DVKSUOz1BimuOzU:1uPZlx:BdCtxnHcC5YOCZfxG68DuUkcI6fvsGYjHmO5QmbJFQ0', '2025-06-12 05:12:41.616725'),
('un3l0j6v6dshw4pbjsyvmusgtdwb1men', '.eJxVjLkOwjAQRP_FNYrY2GyylEiUiIraWq_XikUOKUcD4t8JKAV0ozcz72k8L3Pjl0lHn6M5mhLQ7H5pYLlr_6kkz_mhffHtNlycO87tdbyt0547vQxR29N2-fM0PDWrBCGKU05kK0Q9YJI6AiUkiIgVyBo4QNxzVZdOxZIldmKRlQJhqs3rDSmNO2o:1uPETc:gEktmS3K4P0iC2AC2wF8VXmVrzDpYgovdO0UbbopW7I', '2025-06-11 06:28:20.602356'),
('xt1pmt6xl9pw0br9fczm8lhg86cog8gj', '.eJxVjLkOwjAQRP_FNYrY2GyylEiUiIraWq_XikUOKUcD4t8JKAV0ozcz72k8L3Pjl0lHn6M5mhLQ7H5pYLlr_6kkz_mhffHtNlycO87tdbyt0547vQxR29N2-fM0PDWrBCGKU05kK0Q9YJI6AiUkiIgVyBo4QNxzVZdOxZIldmKRlQJhqs3rDSmNO2o:1uPKQy:UWjNcOEacj5GCrLEEJG_xlNcNSL-bsw6siXAkCklt2c', '2025-06-11 12:50:00.486835'),
('ypwsbif6fy1oa4vjm61kssym716xl988', '.eJxVjLkOwjAQBf_FNYocXxtTIlEiKupo11nLFokj5WhA_DsBpYB25r15ihbXJbXrzFObO3EUtZHi8EsJw53LR4W85AeX6ut2XJ0HzP11um3TggNfxo7703756ySc0xYBtnUDBF6jjzKCZ881RAOWpJFRGessIkmntaWmY6JGuYCsNBCbIMXrDRQyO0o:1uOrQa:4RCBi5k6gDa9YRgRw3LPcQFp9yuB_Rz4FvkQ-XbEhUw', '2025-06-10 05:51:40.069926'),
('yz4fo4dqnlxfgn0rng230r7l2bokrhbn', '.eJxVjLkOwjAQBf_FNYp8bYwpkSgRFbW19m5ki8RIORoQ_05AKaCdeW-eIuAy57BMPIZC4iC0V2L3SyOmG9ePSmUuD67N1224OQ1Y-st4XacVBz7fifvjdvnrZJzyGpHsbKv22gGkZBV0YKC1RIw-RlBExjJjNLojiZqcYvDRKY0kteSE4vUGIEA7vA:1uQNKE:zX5UpgypvJCfdbn_UnnudHal-TVhtidunSXhuJw6Vj8', '2025-06-14 10:07:22.420523');

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
-- Indexes for table `citizen_complaintdetail`
--
ALTER TABLE `citizen_complaintdetail`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `citizen_complaintdet_user_id_6c0df093_fk_citizen_n` (`user_id`),
  ADD KEY `citizen_complaintdet_department_id_13d039b4_fk_citizen_d` (`department_id`),
  ADD KEY `citizen_complaintdet_subCategory_id_9b9255da_fk_citizen_s` (`subCategory_id`),
  ADD KEY `citizen_complaintdetail_district_id_abe2ada5` (`district_id`),
  ADD KEY `citizen_complaintdetail_state_id_42a748a8` (`state_id`);

--
-- Indexes for table `citizen_department`
--
ALTER TABLE `citizen_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `citizen_districtlocation`
--
ALTER TABLE `citizen_districtlocation`
  ADD PRIMARY KEY (`distric_id`),
  ADD KEY `citizen_districtloca_state_id_08f6d113_fk_citizen_s` (`state_id`);

--
-- Indexes for table `citizen_faq_section`
--
ALTER TABLE `citizen_faq_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citizen_herocontent`
--
ALTER TABLE `citizen_herocontent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citizen_latest_news`
--
ALTER TABLE `citizen_latest_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `citizen_newuser`
--
ALTER TABLE `citizen_newuser`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `citizen_newuser_department_id_5efea0a1_fk_citizen_d` (`department_id`);

--
-- Indexes for table `citizen_newuser_groups`
--
ALTER TABLE `citizen_newuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `citizen_newuser_groups_newuser_id_group_id_b48648ba_uniq` (`newuser_id`,`group_id`),
  ADD KEY `citizen_newuser_groups_group_id_de45e610_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `citizen_newuser_user_permissions`
--
ALTER TABLE `citizen_newuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `citizen_newuser_user_per_newuser_id_permission_id_bada179a_uniq` (`newuser_id`,`permission_id`),
  ADD KEY `citizen_newuser_user_permission_id_c1f9e11b_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `citizen_statelocation`
--
ALTER TABLE `citizen_statelocation`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `citizen_subcategory`
--
ALTER TABLE `citizen_subcategory`
  ADD PRIMARY KEY (`subCategory_id`),
  ADD KEY `citizen_subcategory_department_id_885f046b_fk_citizen_d` (`department_id`);

--
-- Indexes for table `citizen_testimonials`
--
ALTER TABLE `citizen_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_citizen_newuser_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `citizen_complaintdetail`
--
ALTER TABLE `citizen_complaintdetail`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1101;

--
-- AUTO_INCREMENT for table `citizen_department`
--
ALTER TABLE `citizen_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `citizen_districtlocation`
--
ALTER TABLE `citizen_districtlocation`
  MODIFY `distric_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;

--
-- AUTO_INCREMENT for table `citizen_faq_section`
--
ALTER TABLE `citizen_faq_section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `citizen_herocontent`
--
ALTER TABLE `citizen_herocontent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `citizen_latest_news`
--
ALTER TABLE `citizen_latest_news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `citizen_newuser`
--
ALTER TABLE `citizen_newuser`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `citizen_newuser_groups`
--
ALTER TABLE `citizen_newuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `citizen_newuser_user_permissions`
--
ALTER TABLE `citizen_newuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `citizen_statelocation`
--
ALTER TABLE `citizen_statelocation`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `citizen_subcategory`
--
ALTER TABLE `citizen_subcategory`
  MODIFY `subCategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `citizen_testimonials`
--
ALTER TABLE `citizen_testimonials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
-- Constraints for table `citizen_complaintdetail`
--
ALTER TABLE `citizen_complaintdetail`
  ADD CONSTRAINT `citizen_complaintdet_department_id_13d039b4_fk_citizen_d` FOREIGN KEY (`department_id`) REFERENCES `citizen_department` (`department_id`),
  ADD CONSTRAINT `citizen_complaintdet_district_id_abe2ada5_fk_citizen_d` FOREIGN KEY (`district_id`) REFERENCES `citizen_districtlocation` (`distric_id`),
  ADD CONSTRAINT `citizen_complaintdet_state_id_42a748a8_fk_citizen_s` FOREIGN KEY (`state_id`) REFERENCES `citizen_statelocation` (`state_id`),
  ADD CONSTRAINT `citizen_complaintdet_subCategory_id_9b9255da_fk_citizen_s` FOREIGN KEY (`subCategory_id`) REFERENCES `citizen_subcategory` (`subCategory_id`),
  ADD CONSTRAINT `citizen_complaintdet_user_id_6c0df093_fk_citizen_n` FOREIGN KEY (`user_id`) REFERENCES `citizen_newuser` (`user_id`);

--
-- Constraints for table `citizen_districtlocation`
--
ALTER TABLE `citizen_districtlocation`
  ADD CONSTRAINT `citizen_districtloca_state_id_08f6d113_fk_citizen_s` FOREIGN KEY (`state_id`) REFERENCES `citizen_statelocation` (`state_id`);

--
-- Constraints for table `citizen_newuser`
--
ALTER TABLE `citizen_newuser`
  ADD CONSTRAINT `citizen_newuser_department_id_5efea0a1_fk_citizen_d` FOREIGN KEY (`department_id`) REFERENCES `citizen_department` (`department_id`);

--
-- Constraints for table `citizen_newuser_groups`
--
ALTER TABLE `citizen_newuser_groups`
  ADD CONSTRAINT `citizen_newuser_grou_newuser_id_ae58b46f_fk_citizen_n` FOREIGN KEY (`newuser_id`) REFERENCES `citizen_newuser` (`user_id`),
  ADD CONSTRAINT `citizen_newuser_groups_group_id_de45e610_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `citizen_newuser_user_permissions`
--
ALTER TABLE `citizen_newuser_user_permissions`
  ADD CONSTRAINT `citizen_newuser_user_newuser_id_cd51b3ed_fk_citizen_n` FOREIGN KEY (`newuser_id`) REFERENCES `citizen_newuser` (`user_id`),
  ADD CONSTRAINT `citizen_newuser_user_permission_id_c1f9e11b_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `citizen_subcategory`
--
ALTER TABLE `citizen_subcategory`
  ADD CONSTRAINT `citizen_subcategory_department_id_885f046b_fk_citizen_d` FOREIGN KEY (`department_id`) REFERENCES `citizen_department` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
