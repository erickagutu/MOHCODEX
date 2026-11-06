-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2026 at 03:33 PM
-- Server version: 10.11.19-MariaDB-cll-lve
-- PHP Version: 8.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chasonet_mohdemov2`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_points`
--

CREATE TABLE `action_points` (
  `id` int(11) NOT NULL,
  `ref_no` varchar(50) NOT NULL,
  `action_date` date NOT NULL,
  `meeting_title` varchar(255) DEFAULT NULL,
  `issue` text NOT NULL,
  `person_responsible` varchar(150) NOT NULL,
  `timeline` varchar(100) DEFAULT NULL,
  `status` enum('ON TRACK','NOT STARTED','DELAYED','STALLED','COMPLETED','CANCELLED') DEFAULT 'ON TRACK',
  `action` text NOT NULL,
  `resolution_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_points`
--

INSERT INTO `action_points` (`id`, `ref_no`, `action_date`, `meeting_title`, `issue`, `person_responsible`, `timeline`, `status`, `action`, `resolution_notes`, `created_at`, `archived_at`) VALUES
(1, 'NASCOP-APT-202602', '2026-01-25', 'NASCOP Quarterly Review Meeting', 'Viral load suppression at 94%, below 95% target in high-burden counties', 'NASCOP Program Manager', '2026-03-31', 'ON TRACK', 'Implement targeted adherence counseling and community support programs', 'Scale up viral load sample courier networks in ASAL counties.', '2026-10-07 04:53:24', NULL),
(2, 'APT-20260120-327', '2026-01-20', 'Awareness Campaign Review', 'Create awareness on HIV testing and self-test kit distribution', 'Dan Mugo', '2026-02-28', 'NOT STARTED', 'Finalize mass media spot campaign and social mobilization tools', 'Pending procurement approval for printing materials.', '2026-10-07 04:53:24', NULL),
(3, 'APT-010', '2025-03-05', 'Risk Assessment Workshop', 'Address identified cyber security vulnerabilities in Taifa Care server', 'Jennifer Taylor', '10 days', 'DELAYED', 'Security patch deployment and penetration re-test', 'Vulnerability mitigated in staging environment; production scheduled for weekend maintenance.', '2026-10-07 04:53:24', NULL),
(4, 'APT-009', '2025-03-01', 'Financial Audit Meeting', 'Review quarterly expense reports and reconcile exchequer releases', 'James Miller', '2 days', 'COMPLETED', 'Report review and submit documentation to National Treasury', 'Reconciliation approved by Chief Finance Officer on March 3.', '2026-10-07 04:53:24', NULL),
(5, 'APT-008', '2025-02-25', 'Strategic Planning Session', 'Implement new workflow processes for medical equipment service approval', 'Maria Garcia', '3 weeks', 'NOT STARTED', 'Process documentation and Directorate validation workshop', 'Awaiting PS approval of the revised circular.', '2026-10-07 04:53:24', NULL),
(6, 'APT-007', '2025-02-20', 'Quality Assurance Review', 'Update security protocols and access controls at KEMSA Embakasi store', 'David Wilson', '1 week', 'ON TRACK', 'Documentation update and physical security audit', 'Biometric turnstiles inspected and operational.', '2026-10-07 04:53:24', NULL),
(7, 'APT-006', '2025-02-15', 'Client Progress Meeting', 'Deliver Phase 1 prototype of Blood Transfusion Damu-KE App', 'Lisa Wang', '5 days', 'DELAYED', 'Prototype development and user acceptance testing', 'Delayed due to API integration with national citizen registry e-Citizen.', '2026-10-07 04:53:24', NULL),
(8, 'APT-005', '2025-02-10', 'Technical Review Board', 'Resolve server compatibility issues on LINAC radiation treatment stations', 'Robert Brown', '1 week', 'STALLED', 'Vendor coordination with Elekta engineers', 'Hardware part import delayed at customs in Mombasa.', '2026-10-07 04:53:24', NULL),
(9, 'APT-004', '2025-02-01', 'Stakeholder Consultation', 'Market research initiative for local medical gloves production', 'Emily Davis', '2 weeks', 'CANCELLED', 'Data collection replaced by UNIDO joint industrial study', 'Merged into UNIDO local manufacturing roadmap.', '2026-10-07 04:53:24', NULL),
(10, 'APT-003', '2025-01-25', 'Team Progress Update', 'Complete user acceptance testing for KNH Burns ICU monitors', 'Mike Chen', '3 days', 'COMPLETED', 'Testing Phase completed with clinical staff sign-off', 'Tested by Head of Anesthesia and Certified Fit for Use.', '2026-10-07 04:53:24', NULL),
(11, 'APT-002', '2025-01-20', 'Budget Review Session', 'Secure vendor quotations for equipment at Mathari hospital modern wing', 'Sarah Johnson', '1 week', 'ON TRACK', 'Vendor coordination and market price survey', 'Three compliant quotations received and forwarded to evaluation committee.', '2026-10-07 04:53:24', NULL),
(12, 'APT-001', '2025-01-15', 'SAGAs CEO Meeting with PS-SDMS', 'Pediatric Oncology Centre at MTRH: secure dedicated funding allocation', 'Dennis Abongo', '4 weeks', 'STALLED', 'Treasury engagement for supplementary budget line item', 'Meeting with Principal Secretary National Treasury pending confirmation.', '2026-10-07 04:53:24', NULL),
(13, '1', '2025-01-01', 'KNH Executive Inspection', 'KNH bed capacity and patient congestion in emergency surgical admissions', 'Patrick Mwamburi', '2 weeks', 'NOT STARTED', 'Requisition raised for 50 additional overflow recovery beds', 'Awaiting delivery of approved beds from approved framework contract.', '2026-10-07 04:53:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_notifications`
--

CREATE TABLE `app_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_key` varchar(190) NOT NULL,
  `title` varchar(180) NOT NULL,
  `message` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `read_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_notifications`
--

INSERT INTO `app_notifications` (`id`, `user_id`, `notification_key`, `title`, `message`, `link`, `created_at`, `read_at`) VALUES
(1, 1, 'action:1', 'Action Point', 'Action item NASCOP-APT-202602 assigned to NASCOP Program Manager', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(2, 2, 'action:1', 'Action Point', 'Action item NASCOP-APT-202602 assigned to NASCOP Program Manager', '/modules/actions.php', '2026-11-04 09:59:19', NULL),
(3, 1, 'action:2', 'Action Point', 'Action item APT-20260120-327 assigned to Dan Mugo', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(4, 2, 'action:2', 'Action Point', 'Action item APT-20260120-327 assigned to Dan Mugo', '/modules/actions.php', '2026-11-04 09:59:19', NULL),
(5, 1, 'action:3', 'Action Point', 'Action item APT-010 assigned to Jennifer Taylor', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(6, 2, 'action:3', 'Action Point', 'Action item APT-010 assigned to Jennifer Taylor', '/modules/actions.php', '2026-11-04 09:59:19', NULL),
(7, 1, 'action:5', 'Action Point', 'Action item APT-008 assigned to Maria Garcia', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(8, 2, 'action:5', 'Action Point', 'Action item APT-008 assigned to Maria Garcia', '/modules/actions.php', '2026-11-04 09:59:19', NULL),
(9, 1, 'action:6', 'Action Point', 'Action item APT-007 assigned to David Wilson', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(10, 2, 'action:6', 'Action Point', 'Action item APT-007 assigned to David Wilson', '/modules/actions.php', '2026-11-04 09:59:19', NULL),
(11, 1, 'action:7', 'Action Point', 'Action item APT-006 assigned to Lisa Wang', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(12, 2, 'action:7', 'Action Point', 'Action item APT-006 assigned to Lisa Wang', '/modules/actions.php', '2026-11-04 09:59:19', NULL),
(13, 1, 'action:8', 'Action Point', 'Action item APT-005 assigned to Robert Brown', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(14, 2, 'action:8', 'Action Point', 'Action item APT-005 assigned to Robert Brown', '/modules/actions.php', '2026-11-04 09:59:19', NULL),
(15, 1, 'action:11', 'Action Point', 'Action item APT-002 assigned to Sarah Johnson', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(16, 2, 'action:11', 'Action Point', 'Action item APT-002 assigned to Sarah Johnson', '/modules/actions.php', '2026-11-04 09:59:19', NULL),
(17, 1, 'action:12', 'Action Point', 'Action item APT-001 assigned to Dennis Abongo', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(18, 2, 'action:12', 'Action Point', 'Action item APT-001 assigned to Dennis Abongo', '/modules/actions.php', '2026-11-04 09:59:19', NULL),
(19, 1, 'action:13', 'Action Point', 'Action item 1 assigned to Patrick Mwamburi', '/modules/actions.php', '2026-11-04 09:59:19', '2026-11-04 14:19:45'),
(20, 2, 'action:13', 'Action Point', 'Action item 1 assigned to Patrick Mwamburi', '/modules/actions.php', '2026-11-04 09:59:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `action` varchar(100) NOT NULL,
  `module` varchar(100) NOT NULL,
  `record_id` int(11) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT '127.0.0.1',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_name`, `user_email`, `action`, `module`, `record_id`, `details`, `ip_address`, `created_at`) VALUES
(1, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-14 11:59:25'),
(2, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-14 13:03:07'),
(3, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.216.95.108', '2026-10-14 14:09:52'),
(4, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-14 19:49:44'),
(5, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '102.203.101.253', '2026-10-14 19:50:19'),
(6, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-14 19:50:23'),
(7, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '102.203.101.253', '2026-10-14 20:30:34'),
(8, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-14 20:36:30'),
(9, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '102.203.101.253', '2026-10-14 21:23:00'),
(10, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-14 21:23:05'),
(11, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-15 14:33:48'),
(12, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-15 18:36:54'),
(13, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.216.95.108', '2026-10-15 22:30:57'),
(14, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.216.95.108', '2026-10-15 23:03:45'),
(15, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-16 06:12:36'),
(16, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-16 07:50:34'),
(17, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-16 09:36:40'),
(18, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-16 10:35:28'),
(19, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.144.83', '2026-10-16 13:40:24'),
(20, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-16 14:28:49'),
(21, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.144.83', '2026-10-16 15:49:25'),
(22, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.144.83', '2026-10-16 16:34:27'),
(23, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-16 16:57:46'),
(24, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.144.83', '2026-10-16 18:59:54'),
(25, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-16 19:00:56'),
(26, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.144.83', '2026-10-16 19:27:04'),
(27, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.216.92.20', '2026-10-17 07:25:46'),
(28, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-17 07:37:16'),
(29, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-17 07:42:35'),
(30, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '102.203.101.253', '2026-10-17 09:53:30'),
(31, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.216.92.20', '2026-10-17 10:08:08'),
(32, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.216.92.20', '2026-10-17 11:17:59'),
(33, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.216.92.20', '2026-10-17 11:18:12'),
(34, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-18 07:38:30'),
(35, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-18 08:01:45'),
(36, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-18 08:43:00'),
(37, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-18 08:58:16'),
(38, 'System Administrator', 'admin@health.go.ke', 'CREATE', 'Activities & Events', 5, 'Created activity: KNH Inspection', '102.212.237.135', '2026-10-18 19:06:31'),
(39, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.173.173.193', '2026-10-18 19:50:01'),
(40, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Exported action points as PDF', '41.173.173.193', '2026-10-18 20:00:32'),
(41, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.173.173.193', '2026-10-19 02:46:05'),
(42, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.152', '2026-10-19 07:59:29'),
(43, 'System Administrator', 'admin@health.go.ke', 'CREATE', 'Performance Contract', 1, 'Uploaded report PC_Summary.xlsx', '102.212.236.152', '2026-10-19 08:29:02'),
(44, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.161.88.146', '2026-10-19 09:18:45'),
(45, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.152', '2026-10-19 10:44:05'),
(46, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.161.134.164', '2026-10-19 13:33:15'),
(47, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.152', '2026-10-19 13:37:57'),
(48, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.203.101.253', '2026-10-20 09:21:30'),
(49, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.216.85.25', '2026-10-20 18:38:59'),
(50, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '196.216.85.25', '2026-10-20 18:39:31'),
(51, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.216.85.25', '2026-10-20 18:39:33'),
(52, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Exported action points as PDF', '196.216.85.25', '2026-10-20 18:48:17'),
(53, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 06:22:55'),
(54, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 07:03:45'),
(55, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 08:53:14'),
(56, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 11:00:22'),
(57, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 11:25:25'),
(58, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 12:33:32'),
(59, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 14:05:30'),
(60, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 14:47:18'),
(61, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.90.177.65', '2026-10-21 16:04:48'),
(62, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 20:30:24'),
(63, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-21 20:42:59'),
(64, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.18', '2026-10-21 21:58:56'),
(65, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 04:43:27'),
(66, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.18', '2026-10-22 04:45:15'),
(67, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 05:47:56'),
(68, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 05:52:40'),
(69, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 07:04:44'),
(70, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.76.172.9', '2026-10-22 07:19:29'),
(71, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 09:13:10'),
(72, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Flagships', 1, 'Updated linked projects: 19, 17, 22', '102.212.237.132', '2026-10-22 09:14:12'),
(73, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Flagships', 3, 'Updated linked projects: 31, 27, 28', '102.212.237.132', '2026-10-22 09:14:56'),
(74, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Flagships', 2, 'Updated linked projects: 18', '102.212.237.132', '2026-10-22 09:15:25'),
(75, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'action_points', 1, 'Updated action point #1 (changed fields: projects)', '102.212.237.132', '2026-10-22 09:16:21'),
(76, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 10:16:14'),
(77, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Exported action points as PDF', '102.212.237.132', '2026-10-22 10:16:37'),
(78, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 11:25:30'),
(79, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.76.172.9', '2026-10-22 11:50:48'),
(80, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 11:51:01'),
(81, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 13:25:17'),
(82, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Performance Contract', 1, 'Edited achievement / status of KPI record #1', '102.212.237.132', '2026-10-22 13:26:44'),
(83, 'System Administrator', 'admin@health.go.ke', 'CREATE', 'Performance Contract', 2, 'Uploaded report action-points-2026-10-20.pdf', '102.212.237.132', '2026-10-22 13:29:24'),
(84, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 13:29:34'),
(85, 'System Administrator', 'admin@health.go.ke', 'CREATE', 'Performance Contract', 3, 'Uploaded report performance-contract-2026-10-19.pdf', '102.212.237.132', '2026-10-22 13:30:08'),
(86, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.132', '2026-10-22 14:17:37'),
(87, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.198', '2026-10-22 16:17:31'),
(88, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.198', '2026-10-22 17:05:19'),
(89, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.198', '2026-10-22 20:32:31'),
(90, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.198', '2026-10-23 04:23:28'),
(91, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.198', '2026-10-23 04:39:47'),
(92, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '154.157.252.25', '2026-10-23 09:02:15'),
(93, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.164.112.172', '2026-10-23 13:48:43'),
(94, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.164.112.172', '2026-10-23 17:34:09'),
(95, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.164.54.82', '2026-10-24 07:38:58'),
(96, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-24 12:09:06'),
(97, 'System Administrator', 'admin@health.go.ke', 'CREATE', 'Meetings', 6, 'Added meeting \"Online System Meeting\" with 1 new document(s)', '102.212.236.195', '2026-10-24 13:32:58'),
(98, 'System Administrator', 'admin@health.go.ke', 'DELETE', 'Performance Contract', 1, 'Removed report PC_Summary.xlsx', '102.212.236.195', '2026-10-24 15:10:54'),
(99, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-24 17:50:20'),
(100, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-24 19:19:31'),
(101, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.248.27', '2026-10-24 19:48:26'),
(102, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-24 20:34:03'),
(103, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-25 07:05:14'),
(104, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-25 09:18:16'),
(105, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-25 09:26:02'),
(106, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.96.166.179', '2026-10-25 10:58:09'),
(107, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '196.96.166.179', '2026-10-25 10:58:50'),
(108, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.96.166.179', '2026-10-25 10:59:07'),
(109, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.96.166.179', '2026-10-25 10:59:34'),
(110, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '196.96.166.179', '2026-10-25 11:39:36'),
(111, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.164.97.172', '2026-10-25 12:37:40'),
(112, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.164.97.172', '2026-10-25 12:37:52'),
(113, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.164.49.20', '2026-10-25 13:37:17'),
(114, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-25 16:52:37'),
(115, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.164.113.69', '2026-10-25 16:55:39'),
(116, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-25 17:41:52'),
(117, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Performance Contract', 2, 'Updated review achievements and status for KPI record #2', '41.60.145.169', '2026-10-25 18:20:10'),
(118, 'System Administrator', 'admin@health.go.ke', 'CREATE', 'Performance Contract', 4, 'Uploaded report action-points-2026-10-20 (2).pdf', '41.60.145.169', '2026-10-25 18:34:11'),
(119, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '41.60.145.169', '2026-10-25 19:00:44'),
(120, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '105.164.113.69', '2026-10-25 19:36:16'),
(121, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-25 20:21:27'),
(122, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-25 21:11:09'),
(123, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '41.60.145.169', '2026-10-25 21:48:59'),
(124, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-25 22:09:06'),
(125, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-26 04:57:22'),
(126, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.76.172.9', '2026-10-26 05:07:47'),
(127, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.134', '2026-10-26 05:25:03'),
(128, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-26 05:49:48'),
(129, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.134', '2026-10-26 06:00:46'),
(130, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-26 06:21:30'),
(131, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.134', '2026-10-26 07:06:36'),
(132, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.134', '2026-10-26 07:48:15'),
(133, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'action_points', 12, 'Updated action point #12 (changed fields: person_responsible)', '102.212.237.134', '2026-10-26 08:05:46'),
(134, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Exported action points as PDF', '41.60.145.169', '2026-10-26 08:10:52'),
(135, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Exported action points as PDF', '102.212.237.134', '2026-10-26 08:18:02'),
(136, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 08:25:17'),
(137, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 08:31:52'),
(138, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 08:36:28'),
(139, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 08:41:24'),
(140, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 08:45:42'),
(141, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 08:54:55'),
(142, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 08:55:37'),
(143, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 09:00:19'),
(144, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 09:04:37'),
(145, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.134', '2026-10-26 09:05:31'),
(146, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-26 12:38:19'),
(147, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-26 13:00:55'),
(148, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-26 15:32:00'),
(149, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-26 15:41:31'),
(150, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '41.60.145.169', '2026-10-26 15:45:46'),
(151, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-26 17:57:40'),
(152, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-26 23:00:08'),
(153, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '41.60.145.169', '2026-10-26 23:02:02'),
(154, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '41.60.145.169', '2026-10-26 23:02:44'),
(155, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '41.60.145.169', '2026-10-26 23:03:18'),
(156, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '41.60.145.169', '2026-10-26 23:03:30'),
(157, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '41.60.145.169', '2026-10-26 23:03:42'),
(158, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-27 05:35:23'),
(159, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-27 06:04:29'),
(160, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '41.60.145.169', '2026-10-27 06:05:28'),
(161, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '154.77.86.121', '2026-10-27 06:13:56'),
(162, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Meetings', 6, 'Edited meeting \"Online System Meeting\" with 1 new document(s)', '102.212.236.195', '2026-10-27 06:20:16'),
(163, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.236.195', '2026-10-27 06:41:13'),
(164, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.195', '2026-10-27 07:54:36'),
(165, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-10-27 08:35:54'),
(166, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 5, 'Updated KPI record Plumbing Works 2026-03 (project 17)', '102.212.237.131', '2026-10-27 08:38:58'),
(167, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 5, 'Updated KPI record Plumbing Works 2026-03 (project 17)', '102.212.237.131', '2026-10-27 08:40:32'),
(168, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-10-27 09:36:59'),
(169, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-10-27 10:35:41'),
(170, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 5, 'Updated KPI record Plumbing Works March 2026 (project 17)', '102.212.237.131', '2026-10-27 10:42:54'),
(171, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 5, 'Updated KPI record Plumbing Works March 2026 (project 17)', '102.212.237.131', '2026-10-27 10:44:04'),
(172, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '154.157.188.93', '2026-10-27 12:02:47'),
(173, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-10-27 12:57:43'),
(174, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-10-27 13:40:57'),
(175, 'System Administrator', 'admin@health.go.ke', 'EXPORT', 'action_points', NULL, 'Printed action points (filtered view)', '102.212.237.131', '2026-10-27 14:00:03'),
(176, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 36, 'Updated KPI record Foundation structure October 2026 (project 17)', '102.212.237.131', '2026-10-27 14:50:24'),
(177, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 36, 'Updated KPI record Foundation structure October 2026 (project 17)', '102.212.237.131', '2026-10-27 14:51:09'),
(178, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 2, 'Updated KPI record Structural Works March 2026 (project 17)', '102.212.237.131', '2026-10-27 14:52:17'),
(179, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 37, 'Updated KPI record Structural Works October 2026 (project 17)', '102.212.237.131', '2026-10-27 14:57:38'),
(180, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-10-27 21:23:47'),
(181, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-27 23:36:47'),
(182, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-28 05:35:05'),
(183, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.145.169', '2026-10-28 06:43:41'),
(184, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.133', '2026-10-31 19:12:47'),
(185, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.236.148', '2026-11-01 09:03:44'),
(186, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.238.154', '2026-11-02 10:21:54'),
(187, 'System Administrator', 'admin@health.go.ke', 'LOGOUT', 'Auth', 1, 'User logged out', '102.212.238.154', '2026-11-02 10:23:30'),
(188, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.238.154', '2026-11-02 10:23:39'),
(189, 'Authorized User', '', 'UPLOAD', 'Reports', 1, 'Uploaded statutory report: Damu-KE Blood Transfusion App Progress Review (rep_20261102_132916_16db84d7.pdf)', '102.212.238.154', '2026-11-02 10:29:16'),
(190, 'Authorized User', '', 'DOWNLOAD', 'Reports', 1, 'Downloaded report attachment: rep_20261102_132916_16db84d7.pdf (Ref: MOH-REP-2026-446A)', '102.212.238.154', '2026-11-02 10:29:32'),
(191, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 18, 'Priority recalculated to Critical (score 70)', '102.212.238.154', '2026-11-02 10:38:08'),
(192, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 20, 'Priority recalculated to High (score 46.22)', '102.212.238.154', '2026-11-02 10:38:08'),
(193, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 21, 'Priority recalculated to Low (score 0)', '102.212.238.154', '2026-11-02 10:38:08'),
(194, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 22, 'Priority recalculated to High (score 69.7)', '102.212.238.154', '2026-11-02 10:38:08'),
(195, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 23, 'Priority recalculated to Low (score 0)', '102.212.238.154', '2026-11-02 10:38:08'),
(196, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 24, 'Priority recalculated to Low (score 0)', '102.212.238.154', '2026-11-02 10:38:08'),
(197, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 25, 'Priority recalculated to Low (score 0)', '102.212.238.154', '2026-11-02 10:38:08'),
(198, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 26, 'Priority recalculated to Low (score 0)', '102.212.238.154', '2026-11-02 10:38:08'),
(199, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 27, 'Priority recalculated to Low (score 2.56)', '102.212.238.154', '2026-11-02 10:38:08'),
(200, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 28, 'Priority recalculated to Low (score 0.6)', '102.212.238.154', '2026-11-02 10:38:08'),
(201, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 29, 'Priority recalculated to Low (score 7.5)', '102.212.238.154', '2026-11-02 10:38:08'),
(202, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 30, 'Priority recalculated to Critical (score 70)', '102.212.238.154', '2026-11-02 10:38:08'),
(203, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Project Priority', 31, 'Priority recalculated to High (score 66.64)', '102.212.238.154', '2026-11-02 10:38:08'),
(204, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Flagships', 1, 'Updated flagship: Universal Health Coverage  Rollout (linked projects: 19, 22)', '102.212.238.154', '2026-11-02 10:40:00'),
(205, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Flagships', 1, 'Updated flagship: Universal Health Coverage  (UHC) Rollout (linked projects: 19, 22)', '102.212.238.154', '2026-11-02 10:40:17'),
(206, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Performance Contract', 2, 'Updated review achievements and status for KPI record #2', '102.212.238.154', '2026-11-02 10:50:12'),
(207, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Performance Contract', 2, 'Updated review achievements and status for KPI record #2', '102.212.238.154', '2026-11-02 10:57:29'),
(208, 'System Administrator', 'admin@health.go.ke', 'ARCHIVE', 'Flagships', 5, 'Archived flagship: National Health Products Security & Local Manufacturing', '102.212.237.144', '2026-11-02 11:41:05'),
(209, 'System Administrator', 'admin@health.go.ke', 'RESTORE', 'Flagships', 5, 'Restored flagship: National Health Products Security & Local Manufacturing', '102.212.237.144', '2026-11-02 11:41:24'),
(210, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.144', '2026-11-02 12:44:45'),
(211, 'Authorized User', '', 'EXPORT', 'Reports', NULL, 'Exported reports repository catalog to CSV (1 records)', '102.212.237.144', '2026-11-02 13:39:41'),
(212, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Meetings', 1, 'Edited meeting \"Quarterly Project Steering Committee\"', '102.212.237.144', '2026-11-02 13:40:31'),
(213, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Meetings', 2, 'Edited meeting \"Global Fund Partner Coordination Meeting\"', '102.212.237.144', '2026-11-02 13:40:52'),
(214, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 24, 'Updated KPI record Electrical Works July 2026 (project 17)', '102.212.237.144', '2026-11-02 13:58:49'),
(215, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 5, 'Updated KPI record Plumbing Works March 2026 (project 17)', '102.212.237.144', '2026-11-02 13:59:34'),
(216, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.144', '2026-11-02 17:41:36'),
(217, 'Authorized User', '', 'DOWNLOAD', 'Reports', 1, 'Downloaded report attachment: rep_20261102_132916_16db84d7.pdf (Ref: MOH-REP-2026-446A)', '102.212.237.144', '2026-11-02 17:55:16'),
(218, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.144', '2026-11-02 22:28:03'),
(219, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.233.154', '2026-11-03 07:45:36'),
(220, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-11-03 09:37:50'),
(221, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Performance Contract', 2, 'Updated review achievements, status, and remarks for KPI record #2', '102.212.237.131', '2026-11-03 10:00:17'),
(222, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Performance Contract', 4, 'Updated review achievements, status, and remarks for KPI record #4', '102.212.237.131', '2026-11-03 10:00:36'),
(223, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.233.154', '2026-11-03 10:40:55'),
(224, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-11-03 14:28:54'),
(225, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'KPI Progress', 5, 'Updated KPI record Plumbing Works March 2026 (project 18)', '102.212.237.131', '2026-11-03 15:15:24'),
(226, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-11-03 17:19:31'),
(227, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.236.179', '2026-11-03 18:58:20'),
(228, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-11-04 09:59:18'),
(229, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-11-04 11:44:16'),
(230, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.236.179', '2026-11-04 13:30:46'),
(231, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.236.179', '2026-11-04 13:59:38'),
(232, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-11-04 14:18:59'),
(233, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '41.60.236.179', '2026-11-04 14:20:42'),
(234, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Projects', 29, 'Updated project remarks', '102.212.237.131', '2026-11-04 14:38:26'),
(235, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Projects', 17, 'Updated project details', '102.212.237.131', '2026-11-04 16:13:38'),
(236, 'System Administrator', 'admin@health.go.ke', 'CREATE', 'Projects', 17, 'Added a dated Action & Progress update', '102.212.237.131', '2026-11-04 16:15:07'),
(237, 'System Administrator', 'admin@health.go.ke', 'CREATE', 'Activities & Events', 10, 'Created activity: Onli Performance System Training', '102.212.237.131', '2026-11-04 16:29:39'),
(238, 'System Administrator', 'admin@health.go.ke', 'UPDATE', 'Activities & Events', 10, 'Updated activity: Online Performance System Training', '102.212.237.131', '2026-11-04 16:31:30'),
(239, 'System Administrator', 'admin@health.go.ke', 'LOGIN', 'Auth', 1, 'User logged into PP-SDOMS from cPanel web portal', '102.212.237.131', '2026-11-05 02:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_items`
--

CREATE TABLE `deleted_items` (
  `id` int(11) NOT NULL,
  `item_type` varchar(50) NOT NULL COMMENT 'e.g. Flagship',
  `item_id` int(11) NOT NULL COMMENT 'Original primary key',
  `item_title` varchar(255) DEFAULT NULL,
  `item_data` longtext DEFAULT NULL COMMENT 'JSON snapshot of the row and its links',
  `deleted_by` varchar(150) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_units`
--

CREATE TABLE `delivery_units` (
  `delivery_init__id` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `code` varchar(20) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_units`
--

INSERT INTO `delivery_units` (`delivery_init__id`, `name`, `code`, `description`) VALUES
('1', 'Kenya Medical Research Institute (KEMRI)', 'KEMRI', 'Medical research and vaccine innovation hub'),
('10', 'National Syndemic Diseases Control Council (NSDCC)', 'NSDCC', 'Syndemic disease response, HIV, TB and viral hepatitis'),
('11', 'Kenya National Blood Transfusion Service (KNBTS)', 'KNBTS', 'Safe blood and component services across all counties'),
('12', 'National Spinal Injury Referral Hospital (NSIRH)', 'NSIRH', 'Specialized spinal rehabilitation and surgical care'),
('2', 'Kenya Medical Supplies Authority (KEMSA)', 'KEMSA', 'Strategic medical logistics and supply chain'),
('3', 'Kenyatta National Hospital (KNH)', 'KNH', 'National referral and specialized teaching hospital'),
('4', 'Moi Teaching and Referral Hospital (MTRH)', 'MTRH', 'Western Kenya multi-specialty referral facility'),
('5', 'Mathari National Teaching and Referral Hospital (MNTRH)', 'MNTRH', 'National specialized psychiatric and mental health hospital'),
('6', 'Kenyatta University Teaching, Referral & Research Hospital (KUTRRH)', 'KUTRRH', 'National oncology, research and specialized care hospital'),
('7', 'Mwai Kibaki Referral Hospital (MKRH)', 'MKRH', 'Mt. Kenya regional annex hospital for specialized surgery'),
('8', 'Jaramogi Oginga Odinga Teaching and Referral Hospital (JOOTRH)', 'JOOTRH', 'Lake Basin regional referral and research hub'),
('9', 'National Cancer Institute Kenya (NCIK)', 'NCIK', 'Cancer prevention, registration and early detection authority');

-- --------------------------------------------------------

--
-- Table structure for table `diary_attendance_responses`
--

CREATE TABLE `diary_attendance_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `response` enum('PENDING','ACCEPTED','EXCUSED') NOT NULL DEFAULT 'PENDING',
  `remarks` text DEFAULT NULL,
  `responded_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diary_attendee_responses`
--

CREATE TABLE `diary_attendee_responses` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `recipient_user_id` int(11) NOT NULL,
  `creator_user_id` int(11) NOT NULL,
  `response_status` varchar(20) NOT NULL DEFAULT 'pending',
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `responded_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diary_events`
--

CREATE TABLE `diary_events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `event_type` varchar(50) DEFAULT 'Event',
  `event_date` date NOT NULL,
  `event_time` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `attendees` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'UPCOMING',
  `priority` varchar(30) DEFAULT 'Medium',
  `project_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diary_events`
--

INSERT INTO `diary_events` (`id`, `title`, `description`, `event_type`, `event_date`, `event_time`, `location`, `host`, `attendees`, `status`, `priority`, `project_id`, `created_at`, `created_by`) VALUES
(1, 'System Status Report', 'Technical requirements verification.', 'Meeting', '2026-10-19', '09:00', 'Afya House', 'Operations Manager', 'Collins Mwangi, Erick Agutu', 'COMPLETED', 'High', 31, '2026-10-17 08:55:56', NULL),
(2, 'Auditor Consultation', 'Audit Report', 'Meeting', '2026-10-19', '09:00', 'Afya House', 'MOH Operations Manager', 'Collins Mwangi, Erick Agutu', 'COMPLETED', 'Medium', 27, '2026-10-17 08:59:56', NULL),
(3, 'Status Update  on Theatre Refurbishment', 'Update on  renovation & construction progress', 'Task', '2026-10-19', '15:30', 'Afya House', 'Morris', 'Collins Mwangi, Erick Agutu', 'COMPLETED', 'High', 19, '2026-10-17 09:02:56', NULL),
(4, 'System Deployment', 'ERP System Deployment', 'Deadline', '2026-10-19', '09:00', NULL, 'MOH Director', 'CS Health, Collins Mwangi', 'COMPLETED', 'High', 21, '2026-10-17 09:06:23', NULL),
(5, 'KNH Inspection', 'Inspection', 'Field Visit', '2026-10-21', '10:07:00', 'Nairobi County', 'Principal Secretary', 'Collins', 'COMPLETED', 'Medium', NULL, '2026-10-18 19:06:31', NULL),
(6, 'Q3 Auditor  Consultation', 'Financial Audit', 'Event', '2026-10-22', '09:00', 'Afya House', 'MOH Director', 'Collins Mwangi, Erick Agutu', 'COMPLETED', 'High', 28, '2026-10-20 06:19:24', NULL),
(7, 'Online System Status Report', 'Determine the functionalities implemented so far.\nList the user levels to be implemented\nDetermine the documents accessible by members of each user leve.', 'Deadline', '2026-11-10', '09:00', 'Afya House', 'PS', 'Collins Mwangi, Erick Agutu', 'UPCOMING', 'Critical', 21, '2026-11-03 11:00:01', NULL),
(8, 'KNH Burns and Paediatrics Center   Inspection', 'Evaluate the progress on  the  facility upgrade\nConfirm the sufficiency of the new medical equipment..', 'Field Visit', '2026-11-11', '09:00', 'KNH', 'PS', 'PS, CS Health', 'UPCOMING', 'Medium', 17, '2026-11-03 11:07:39', NULL),
(9, 'Online System Training Brief', 'Give the training dates for different departments\nName the training venues\nGive  the rules and  protocols brief on the use of the new system', 'Meeting', '2026-11-03', '09:00', 'Afya House', 'MOH Operations Manager', 'Collins Mwangi, Erick Agutu', 'COMPLETED', 'High', NULL, '2026-11-03 11:15:30', NULL),
(10, 'Online Performance System Training', 'Online Performance System Training', 'Training', '2026-11-04', '20:30:00', 'Online Zoom Session', 'Principal Secretary', 'Collins Mwangi, Erick Agutu', 'ONGOING', 'Medium', NULL, '2026-11-04 16:29:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diary_event_projects`
--

CREATE TABLE `diary_event_projects` (
  `event_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diary_event_projects`
--

INSERT INTO `diary_event_projects` (`event_id`, `project_id`, `created_at`) VALUES
(1, 31, '2026-10-20 06:13:52'),
(2, 27, '2026-10-20 06:13:52'),
(3, 19, '2026-10-20 06:13:52'),
(4, 21, '2026-10-20 06:13:52'),
(6, 21, '2026-10-20 06:19:24'),
(6, 24, '2026-10-20 06:19:24'),
(6, 28, '2026-10-20 06:19:24'),
(7, 21, '2026-11-03 11:00:01'),
(8, 17, '2026-11-03 11:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `directorates`
--

CREATE TABLE `directorates` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `code` varchar(20) NOT NULL,
  `head` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directorates`
--

INSERT INTO `directorates` (`id`, `name`, `code`, `head`, `description`, `created_at`) VALUES
(1, 'Directorate for Curative Services', 'CS', 'Dr. Peter Mwangi', 'Curative health and tertiary care services', '2026-10-15 16:03:04'),
(2, 'Directorate for Family Health', 'FH', 'Dr. Jane Kimani', 'Reproductive, maternal, newborn, child and adolescent health', '2026-10-15 16:03:04'),
(3, 'Directorate for Health Products and Technologies', 'HPT', 'Dr. Fredrick Ochieng', 'Pharmaceuticals, medical supplies and cold-chain supply chain', '2026-10-15 16:03:04'),
(4, 'Directorate for Policy, Digital Health and Innovations', 'PDHI', 'Eng. Kiprono Koech', 'E-Health, Digital Health Superhighway, m-Health, and data platforms', '2026-10-15 16:03:04'),
(5, 'Directorate for Kenya National Blood Tissues & Transfusion Services', 'KNBTTS', 'Dr. Angela Waweru', 'Blood safety, DAMU-KE, and human organ transplants', '2026-10-15 16:03:04'),
(6, 'Public Health & Sanitation Directorate', 'PHS', NULL, NULL, '2026-10-16 17:24:45'),
(7, 'Primary Healthcare Directorate', 'PHC', NULL, NULL, '2026-10-16 17:24:45'),
(8, 'Health Standards, Regulation & Quality Assurance Directorate', 'HSRQA', NULL, NULL, '2026-10-16 17:24:45'),
(9, 'Health Sector Coordination & Research Directorate', 'HSCR', NULL, NULL, '2026-10-16 17:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `directorate_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `directorate_id`, `name`, `created_at`) VALUES
(1, 1, 'Nursing Services Division', '2026-10-16 17:24:45'),
(2, 1, 'Healthy Aging, Palliative Care & Older Persons', '2026-10-16 17:24:45'),
(3, 1, 'Oral Health, Eye & Hearing Care Division', '2026-10-16 17:24:45'),
(4, 1, 'Pathology & Forensic Services', '2026-10-16 17:24:45'),
(5, 1, 'National Health Referral & Emergency Services', '2026-10-16 17:24:45'),
(6, 1, 'Clinical Services Division', '2026-10-16 17:24:45'),
(7, 2, 'Mental Health Division', '2026-10-16 17:24:45'),
(8, 2, 'National Vaccination Services Division', '2026-10-16 17:24:45'),
(9, 2, 'Cancer & Non-Communicable Diseases Management Division', '2026-10-16 17:24:45'),
(10, 2, 'HIV/STI Prevention & Control Division', '2026-10-16 17:24:45'),
(11, 2, 'Reproductive, Maternal, Neonatal, Child & Adolescent Health Division', '2026-10-16 17:24:45'),
(12, 3, 'Quality Assurance & Market Shaping Division', '2026-10-16 17:24:45'),
(13, 3, 'Traditional & Alternative Medicine Division', '2026-10-16 17:24:45'),
(14, 3, 'HPT Management & Therapeutics Division', '2026-10-16 17:24:45'),
(15, 9, 'Health Sector Research and Development Division', '2026-10-16 17:24:45'),
(16, 9, 'International Health Relations Division', '2026-10-16 17:24:45'),
(17, 9, 'Health Sector Coordination & Intergovernmental Relations Division', '2026-10-16 17:24:45'),
(18, 8, 'Health Sector Monitoring & Quality Assurance Division', '2026-10-16 17:24:45'),
(19, 8, 'Human Resource for Health & Professional Standards Division', '2026-10-16 17:24:45'),
(20, 8, 'Health Standards & Compliance Division', '2026-10-16 17:24:45'),
(21, 8, 'Health Policy & Regulations Division', '2026-10-16 17:24:45'),
(22, 4, 'Policy, Health Research & Relations Division', '2026-10-16 17:24:45'),
(23, 4, 'Digital Health, Informatics & Innovations Division', '2026-10-16 17:24:45'),
(24, 4, 'Health Financing Division', '2026-10-16 17:24:45'),
(25, 7, 'Nutrition & Dietetics Division', '2026-10-16 17:24:45'),
(26, 7, 'School Health Division', '2026-10-16 17:24:45'),
(27, 7, 'Primary Care Networks Division', '2026-10-16 17:24:45'),
(28, 7, 'Community Health Division', '2026-10-16 17:24:45'),
(29, 7, 'Health & Wellness Division', '2026-10-16 17:24:45'),
(30, 7, 'Health Promotion & Education Management Division', '2026-10-16 17:24:45'),
(31, 7, 'TB & Other Lung Diseases Division', '2026-10-16 17:24:45'),
(32, 7, 'Drug Control & Substance Abuse Division', '2026-10-16 17:24:45'),
(33, 7, 'Malaria Control & Management Division', '2026-10-16 17:24:45'),
(34, 6, 'Port Health Division', '2026-10-16 17:24:45'),
(35, 6, 'National Laboratory Services Division', '2026-10-16 17:24:45'),
(36, 6, 'Environmental Health & Sanitation Division', '2026-10-16 17:24:45'),
(37, 6, 'National Emergency & Preparedness', '2026-10-16 17:24:45'),
(38, 6, 'Disease Surveillance Division', '2026-10-16 17:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `document_permissions`
--

CREATE TABLE `document_permissions` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT 1,
  `can_download` tinyint(1) NOT NULL DEFAULT 1,
  `granted_by` varchar(150) DEFAULT NULL,
  `granted_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `document_permissions`
--

INSERT INTO `document_permissions` (`id`, `report_id`, `user_email`, `user_name`, `role`, `can_view`, `can_download`, `granted_by`, `granted_at`) VALUES
(1, 1, '', 'Authorized User', 'Viewer', 1, 1, 'Self (Upload)', '2026-11-02 10:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `flagships`
--

CREATE TABLE `flagships` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `lead_directorate` varchar(150) NOT NULL,
  `progress_pct` decimal(5,2) DEFAULT 0.00,
  `priority_tier` enum('Critical','High','Medium','Low') DEFAULT 'Medium',
  `allocated_budget` decimal(15,2) DEFAULT 0.00,
  `utilized_budget` decimal(15,2) DEFAULT 0.00,
  `lead_officer` varchar(150) DEFAULT NULL,
  `team_name` varchar(150) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `target_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT 'IN PROGRESS',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `is_archived` tinyint(1) NOT NULL DEFAULT 0,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flagships`
--

INSERT INTO `flagships` (`id`, `title`, `description`, `lead_directorate`, `progress_pct`, `priority_tier`, `allocated_budget`, `utilized_budget`, `lead_officer`, `team_name`, `start_date`, `target_date`, `status`, `created_at`, `is_archived`, `archived_at`) VALUES
(1, 'Universal Health Coverage  (UHC) Rollout', 'Nationwide implementation of the digital health superhighway, community health promoter digitization and Primary Care Networks.', 'Directorate for Policy, Digital Health and Innovations', 45.00, 'Critical', 45000000000.00, 18500000000.00, 'Dr. Timothy Wafula', 'Team UHC Delivery', '2023-07-01', '2026-12-31', 'IN PROGRESS', '2026-10-07 04:53:24', 0, NULL),
(2, 'Establishment of Regional Cancer Centres', 'Operationalizing comprehensive oncology diagnostic, radiotherapy and chemotherapy hubs in Kisii, Meru, Garissa and Nyeri.', 'National Cancer Institute Kenya (NCIK)', 25.00, 'Critical', 8000000000.00, 2140000000.00, 'Dr. Rose Njeru', 'Team Oncology', '2021-01-01', '2027-06-30', 'IN PROGRESS', '2026-10-07 04:53:24', 0, NULL),
(3, 'HIV Epidemic Control through NASCOP', 'Achieve 95-95-95 UNAIDS targets through universal access to ART, PMTCT elimination, and transitioning to local sustainable financing.', 'National Syndemic Diseases Control Council (NSDCC)', 94.00, 'Critical', 37641000000.00, 31500000000.00, 'Dr. Ruth Masha', 'NASCOP Steering Unit', '2021-07-01', '2026-12-31', 'IN PROGRESS', '2026-10-07 04:53:24', 0, NULL),
(4, 'Expansion of KNH Burns and Specialized Surgical Unit', 'Construction, equipping and staffing of modern 150-bed specialized Burns and Pediatric Care Centre with dedicated ICUs and surgical suites.', 'Kenyatta National Hospital (KNH)', 43.00, 'High', 5459000000.00, 2350000000.00, 'Dr. Patrick Mwamburi', 'KNH Project Team', '2018-03-03', '2026-06-30', 'IN PROGRESS', '2026-10-07 04:53:24', 0, NULL),
(5, 'National Health Products Security & Local Manufacturing', 'Strategic buffer stock enhancement, KEMSA modernization, and establishing local human vaccine manufacturing via BIOVAX Institute.', 'Directorate for Health Products and Technologies', 35.00, 'High', 16400000000.00, 4800000000.00, 'Dr. Fredrick Ochieng', 'BIOVAX Taskforce', '2022-01-01', '2028-06-30', 'IN PROGRESS', '2026-10-07 04:53:24', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kpis_and_sub_kpis`
--

CREATE TABLE `kpis_and_sub_kpis` (
  `id` int(11) NOT NULL,
  `serial_no` varchar(20) DEFAULT NULL,
  `performance_criteria` text DEFAULT NULL,
  `unit_of_measure` varchar(50) DEFAULT NULL,
  `weight_percent` decimal(5,2) DEFAULT NULL,
  `target` varchar(50) DEFAULT NULL,
  `achievement_before_review` varchar(50) DEFAULT NULL,
  `achievement_after_review` varchar(50) DEFAULT NULL,
  `weight_achieved_percent` decimal(5,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `reports` varchar(255) DEFAULT NULL,
  `actions` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kpis_and_sub_kpis`
--

INSERT INTO `kpis_and_sub_kpis` (`id`, `serial_no`, `performance_criteria`, `unit_of_measure`, `weight_percent`, `target`, `achievement_before_review`, `achievement_after_review`, `weight_achieved_percent`, `status`, `reports`, `actions`, `remarks`) VALUES
(1, 'A', 'Financial Stewardship', NULL, 0.00, '10', NULL, NULL, 9.53, 'Reviewed', NULL, NULL, NULL),
(2, 'A1', 'Absorption of Allocated Funds ( GoK )', '%', 2.00, '95', '90', '80', 1.94, 'Reviewed', NULL, NULL, 'Funds absorption initiated.\r\nFunds received.\r\nAbsorption areas identified.'),
(3, 'A2', 'Appropriation -In-Aid', 'Kshs', 2.00, '500M', '480M', '490M', 1.96, 'Reviewed', NULL, NULL, NULL),
(4, 'A3', 'Absorption of Externally Mobilized Funds', '%', 3.00, '90', '85', '88', 2.93, 'Reviewed', NULL, NULL, 'Funds absorption initiated.\r\nFunds received.\r\nAbsorption areas identified.'),
(5, 'A4', 'Pending Bills Ratio', '%', 3.00, '10', '12', '11', 2.70, 'Reviewed', NULL, NULL, NULL),
(6, 'B', 'Service Delivery', NULL, NULL, NULL, NULL, NULL, 14.39, 'Reviewed', NULL, NULL, NULL),
(7, 'B1', 'Implementation of Citizens\' Service Delivery Charter', '%', 4.00, '100', '95', '98', 3.92, 'Reviewed', NULL, NULL, NULL),
(8, 'B2', 'Digitalization of Government Services', '%', 7.00, '80', '70', '75', 6.56, 'Reviewed', NULL, NULL, NULL),
(9, 'B3', 'Resolution of Public Complaints', '%', 4.00, '90', '85', '88', 3.91, 'Reviewed', NULL, NULL, NULL),
(10, 'C', 'Core Mandate', NULL, NULL, NULL, NULL, NULL, 62.73, 'Reviewed', NULL, NULL, NULL),
(11, 'C9_2', 'Universal Health Coverage in Counties Rolled Out', '%', 6.00, '100', '90', '95', 5.70, 'Reviewed', NULL, NULL, NULL),
(12, 'C9_3', 'Access to Health Products and Technologies Enhanced', '%', 2.00, '85', '80', '82', 1.93, 'Reviewed', NULL, NULL, NULL),
(13, 'C9_4', 'Strategic Plan for The Local Manufacture of HPTs Developed', 'No', 3.00, 'Yes', 'No', 'Yes', 3.00, 'Reviewed', NULL, NULL, NULL),
(14, 'C9_5', 'Kenya Health Sector Strategic Plan Developed', 'No', 3.00, 'Yes', 'No', 'Yes', 3.00, 'Reviewed', NULL, NULL, NULL),
(15, 'C9_6', 'Proportion of Deliveries Performed by Skilled Birth Attendants Increased', '%', 3.00, '75', '70', '72', 2.88, 'Reviewed', NULL, NULL, NULL),
(16, 'C9_7', 'Mother to Child Transmission of HIV Rate Halted and Reversed', '%', 4.00, '5', '6', '5', 4.00, 'Reviewed', NULL, NULL, NULL),
(17, 'C9_8', 'Number of HIV Patients on Anti-Retroviral Therapy Increased', 'No', 3.00, 'Yes', 'Yes', 'Yes', 3.00, 'Reviewed', NULL, NULL, NULL),
(18, 'C9_9', 'STEPS Survey for NCD Risk Factors Conducted', '%', 4.00, '100', '90', '95', 3.80, 'Reviewed', NULL, NULL, NULL),
(19, 'C9_10', 'Number of Blood and Blood Components for Transfusion Availed', 'No', 3.00, '50000', '45000', '48000', 2.88, 'Reviewed', NULL, NULL, NULL),
(20, 'C9_11', 'Percentage of Health Facilities Offering Adolescent and Youth Friendly Services Increased', '%', 4.00, '70', '65', '68', 3.89, 'Reviewed', NULL, NULL, NULL),
(21, 'C9_13', 'Total Confirmed Malaria Cases ( Per 1000 Population) Reduced', 'Index', 4.00, '50', '55', '52', 3.84, 'Reviewed', NULL, NULL, NULL),
(22, 'C9_14', 'Number of People Diagnosed with Drug Susceptible TB (All forms) and Put on Treatment Increased', 'No', 3.00, '80000', '75000', '78000', 2.93, 'Reviewed', NULL, NULL, NULL),
(23, 'C9_15', 'Number of Patients with Drug Resistant Tuberculosis Started on Treatment Increased', 'No', 3.00, '2000', '1800', '1900', 2.85, 'Reviewed', NULL, NULL, NULL),
(24, 'C9_16', 'Percentage of Eligible School Age Children Dewormed Annually Increased', '%', 3.00, '85', '80', '83', 2.93, 'Reviewed', NULL, NULL, NULL),
(25, 'C9_17', 'Regional Cancer Centre at Kisii Level 5 Hospital Constructed', '%', 3.00, '100', '70', '80', 2.40, 'Reviewed', NULL, NULL, NULL),
(26, 'C9_18', 'Science, Technology and Innovation Mainstreaming', '%', 2.00, '90', '85', '88', 1.96, 'Reviewed', NULL, NULL, NULL),
(27, 'C9_19', 'Productivity Improvement', '%', 3.00, '75', '70', '72', 2.88, 'Reviewed', NULL, NULL, NULL),
(28, 'C9_20', 'Typhoid Conjugate Vaccine to Children Aged 9 Months Introduced', 'No', 2.00, 'Yes', 'No', 'Yes', 2.00, 'Reviewed', NULL, NULL, NULL),
(29, 'C9_23', 'Internship Opportunities to Medical Trainees Availed', 'No', 2.00, '500', '450', '480', 1.92, 'Reviewed', NULL, NULL, NULL),
(30, 'C9_24', 'New Structure for the Acquisition of Medical Equipment Designed', 'No', 3.00, 'Yes', 'No', 'Yes', 3.00, 'Reviewed', NULL, NULL, NULL),
(31, 'C9_25', 'Project Completion Rate', '%', 2.00, '95', '90', '92', 1.94, 'Reviewed', NULL, NULL, NULL),
(32, 'D', 'Implementation of Presidential Directives', NULL, NULL, NULL, NULL, NULL, 1.96, 'Reviewed', NULL, NULL, NULL),
(33, 'D1', 'Implementation of Presidential Directives', '%', 2.00, '100', '95', '98', 1.96, 'Reviewed', NULL, NULL, NULL),
(34, 'E', 'Affirmative Action in Procurement', NULL, NULL, NULL, NULL, NULL, 3.83, 'Reviewed', NULL, NULL, NULL),
(35, 'E1', 'Access to Government Procurement Opportunities', 'Kshs', 2.00, '200M', '180M', '190M', 1.90, 'Reviewed', NULL, NULL, NULL),
(36, 'E2', 'Promotion of Local Content in Procurement', 'Kshs', 2.00, '150M', '140M', '145M', 1.93, 'Reviewed', NULL, NULL, NULL),
(37, 'F', 'Cross - Cutting', NULL, NULL, NULL, NULL, NULL, 3.87, 'Reviewed', NULL, NULL, NULL),
(38, 'F1', 'Asset Management', '%', 1.00, '90', '85', '88', 0.98, 'Reviewed', NULL, NULL, NULL),
(39, 'F2', 'Youth Internships/ Industrial Attachments/ Apprenticeships', 'No', 1.00, '1000', '900', '950', 0.95, 'Reviewed', NULL, NULL, NULL),
(40, 'F3', 'Competence Development', '%', 1.00, '85', '80', '82', 0.96, 'Reviewed', NULL, NULL, NULL),
(41, 'F4', 'National Values and Principles of Governance', '%', 1.00, '100', '95', '98', 0.98, 'Reviewed', NULL, NULL, NULL),
(42, NULL, 'Total Weight Achieved [(Achievement ÷ Target)×Weight]', NULL, NULL, NULL, NULL, NULL, 96.31, 'Reviewed', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_time` time DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `venue` varchar(150) DEFAULT NULL,
  `attendees` text DEFAULT NULL,
  `agenda` text DEFAULT NULL,
  `decisions` text DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `meeting_date`, `meeting_time`, `title`, `description`, `venue`, `attendees`, `agenda`, `decisions`, `document`, `created_at`) VALUES
(1, '2026-10-26', '09:00:00', 'Quarterly Project Steering Committee', 'Review of Q3 progress across all SDMS projects.', 'Afya House, Boardroom 3', 'Principal Secretary SDMS, Director Medical Services, Project Coordinators, Finance Officer', '1. Confirmation of previous minutes. 2. Q3 physical and financial progress. 3. Risks and delays. 4. Q4 work plan and budget.', 'Q3 progress report approved. Delayed projects to submit recovery plans within 14 days. Q4 work plan adopted as presented.', NULL, '2026-10-24 13:05:17'),
(2, '2026-10-22', '14:30:00', 'Global Fund Partner Coordination Meeting', 'Coordination on HIV, TB and malaria commodity funding.', 'Virtual (Microsoft Teams)', 'Global Fund Country Team, NASCOP Programme Manager, NMCP Head, Pharmacy and Poisons Board Representative', '1. Grant absorption update. 2. Commodity quantification and supply plan. 3. Viral load sample transport. 4. Reporting timelines.', 'Partner to release second tranche upon submission of expenditure report. NASCOP to scale up sample courier networks in ASAL counties.', NULL, '2026-10-24 13:05:17'),
(3, '2026-10-15', '10:00:00', 'Medical Equipment Service Agreement Review', 'Review of managed equipment service contracts in level 5 and 6 hospitals.', 'Kenyatta National Hospital, Conference Room', 'Head of Biomedical Engineering, KNH Procurement Officer, Contractor Representatives, Legal Advisor', '1. Equipment uptime performance. 2. Outstanding payments. 3. Contract amendments. 4. Training of technicians.', 'Contractors to maintain 95% uptime or face penalties. Legal to review proposed amendments before next meeting.', NULL, '2026-10-24 13:05:17'),
(4, '2026-09-30', '11:15:00', 'Pediatric Oncology Centre Funding Engagement', 'Engagement with development partners on dedicated funding for the MTRH centre.', 'Treasury Building, Room 214', 'National Treasury Representative, CEO MTRH, Development Partner Delegates, SDMS Project Team', '1. Project status and funding gap. 2. Counterpart funding commitment. 3. Procurement timelines.', 'Treasury to consider supplementary budget line item. Partners to confirm co-financing commitments within 30 days.', NULL, '2026-10-24 13:05:17'),
(5, '2026-09-18', '15:00:00', 'Damu-KE Blood Transfusion App Progress Review', 'Client progress review on the Phase 1 prototype.', 'MOH ICT Directorate, Afya House', 'ICT Director, KNBTS Representative, Vendor Project Manager, Operations Manager', '1. Prototype demonstration. 2. e-Citizen API integration status. 3. User acceptance testing schedule.', 'Vendor to complete API integration by end of October. UAT to begin with three pilot blood donation centres in November.', NULL, '2026-10-24 13:05:17'),
(6, '2026-10-24', '10:30:00', 'Online System Meeting', 'Performance tracking Online System update Meeting', 'Afya House, Boardroom', 'Collins Mwangi, Erick Agutu', 'Define  timelines on Performance tracking Online System .', 'Implementation timelines\r\nDeliverables', '771f57b09dd2d9104dbe46109b931146.xlsx', '2026-10-24 13:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_action_points`
--

CREATE TABLE `meeting_action_points` (
  `meeting_id` int(11) NOT NULL,
  `action_point_id` int(11) NOT NULL,
  `linked_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_action_points`
--

INSERT INTO `meeting_action_points` (`meeting_id`, `action_point_id`, `linked_at`) VALUES
(1, 1, '2026-11-02 13:40:31'),
(2, 4, '2026-11-02 13:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_documents`
--

CREATE TABLE `meeting_documents` (
  `id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `stored_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL DEFAULT 0,
  `uploaded_by` varchar(150) DEFAULT NULL,
  `uploaded_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_documents`
--

INSERT INTO `meeting_documents` (`id`, `meeting_id`, `original_name`, `stored_name`, `file_size`, `uploaded_by`, `uploaded_at`) VALUES
(1, 6, 'Monthly KPIs Updates_Projects_Module_Page.xlsx', '771f57b09dd2d9104dbe46109b931146.xlsx', 25402, 'System Administrator', '2026-10-24 13:32:58'),
(2, 6, 'Global Fund Partner Coordination Meeting Notes.pdf', '5e5d2c4ba7493858da62980910754efa.pdf', 186013, 'System Administrator', '2026-10-27 06:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_progress`
--

CREATE TABLE `monthly_progress` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `year_month` varchar(7) NOT NULL COMMENT 'Report Month (YYYY-MM)',
  `kpi_name` varchar(255) NOT NULL COMMENT 'KPI',
  `baseline_pct` decimal(6,2) NOT NULL DEFAULT 0.00 COMMENT 'Baseline %',
  `target_pct` decimal(6,2) NOT NULL DEFAULT 100.00 COMMENT 'Target %',
  `actual_pct` decimal(6,2) NOT NULL DEFAULT 0.00 COMMENT 'Actual % (Actual Achieved)',
  `achieved_pct` decimal(6,2) GENERATED ALWAYS AS (if(`target_pct` > 0,round(`actual_pct` / `target_pct` * 100,2),0)) STORED COMMENT 'Achieved % = Actual / Target',
  `monthly_progress_pct` decimal(6,2) NOT NULL DEFAULT 0.00 COMMENT 'Monthly Progress %',
  `cumulative_pct` decimal(6,2) NOT NULL DEFAULT 0.00 COMMENT 'Cumulative %',
  `weight` decimal(5,2) DEFAULT NULL COMMENT 'KPI weight %; NULL = equal share between the KPIs',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monthly_progress`
--

INSERT INTO `monthly_progress` (`id`, `project_id`, `year_month`, `kpi_name`, `baseline_pct`, `target_pct`, `actual_pct`, `monthly_progress_pct`, `cumulative_pct`, `weight`, `notes`, `created_at`) VALUES
(1, 17, '2026-03', 'Foundation structure', 0.00, 100.00, 20.00, 20.00, 20.00, NULL, NULL, '2026-10-22 05:57:04'),
(2, 17, '2026-03', 'Structural Works', 0.00, 100.00, 15.00, 15.00, 15.00, NULL, NULL, '2026-10-22 05:57:04'),
(3, 17, '2026-03', 'Mechanical Works', 0.00, 100.00, 10.00, 10.00, 10.00, NULL, NULL, '2026-10-22 05:57:04'),
(4, 17, '2026-03', 'Electrical Works', 0.00, 100.00, 12.00, 12.00, 12.00, NULL, NULL, '2026-10-22 05:57:04'),
(5, 17, '2026-03', 'Plumbing Works', 0.00, 100.00, 8.00, 8.00, 8.00, NULL, NULL, '2026-10-22 05:57:04'),
(6, 17, '2026-03', 'Medical Gas Systems', 0.00, 100.00, 5.00, 5.00, 5.00, NULL, NULL, '2026-10-22 05:57:04'),
(7, 17, '2026-03', 'Ward 1 Construction', 0.00, 100.00, 18.00, 18.00, 18.00, NULL, NULL, '2026-10-22 05:57:04'),
(8, 17, '2026-03', 'Ward 2 Construction', 0.00, 100.00, 15.00, 15.00, 15.00, NULL, NULL, '2026-10-22 05:57:04'),
(9, 17, '2026-03', 'Ward 3 Construction', 0.00, 100.00, 12.00, 12.00, 12.00, NULL, NULL, '2026-10-22 05:57:04'),
(10, 17, '2026-03', 'Ward 4 Construction', 0.00, 100.00, 10.00, 10.00, 10.00, NULL, NULL, '2026-10-22 05:57:04'),
(11, 17, '2026-04', 'Foundation structure', 20.00, 100.00, 25.00, 25.00, 45.00, NULL, NULL, '2026-10-22 05:57:04'),
(12, 17, '2026-04', 'Structural Works', 15.00, 100.00, 20.00, 20.00, 35.00, NULL, NULL, '2026-10-22 05:57:04'),
(13, 17, '2026-04', 'Mechanical Works', 10.00, 100.00, 15.00, 15.00, 25.00, NULL, NULL, '2026-10-22 05:57:04'),
(14, 17, '2026-04', 'Electrical Works', 12.00, 100.00, 18.00, 18.00, 30.00, NULL, NULL, '2026-10-22 05:57:04'),
(15, 17, '2026-04', 'Plumbing Works', 8.00, 100.00, 15.00, 15.00, 23.00, NULL, NULL, '2026-10-22 05:57:04'),
(16, 17, '2026-04', 'Medical Gas Systems', 5.00, 100.00, 10.00, 10.00, 15.00, NULL, NULL, '2026-10-22 05:57:04'),
(17, 17, '2026-04', 'Ward 1 Construction', 18.00, 100.00, 20.00, 20.00, 38.00, NULL, NULL, '2026-10-22 05:57:04'),
(18, 17, '2026-04', 'Ward 2 Construction', 15.00, 100.00, 20.00, 20.00, 35.00, NULL, NULL, '2026-10-22 05:57:04'),
(19, 17, '2026-04', 'Ward 3 Construction', 12.00, 100.00, 18.00, 18.00, 30.00, NULL, NULL, '2026-10-22 05:57:04'),
(20, 17, '2026-04', 'Ward 4 Construction', 10.00, 100.00, 15.00, 15.00, 25.00, NULL, NULL, '2026-10-22 05:57:04'),
(21, 17, '2026-05', 'Foundation structure', 45.00, 100.00, 20.00, 20.00, 65.00, NULL, NULL, '2026-10-22 05:57:04'),
(22, 17, '2026-05', 'Structural Works', 35.00, 100.00, 20.00, 20.00, 55.00, NULL, NULL, '2026-10-22 05:57:04'),
(23, 17, '2026-05', 'Mechanical Works', 25.00, 100.00, 20.00, 20.00, 45.00, NULL, NULL, '2026-10-22 05:57:04'),
(24, 17, '2026-05', 'Electrical Works', 30.00, 100.00, 20.00, 20.00, 50.00, NULL, NULL, '2026-10-22 05:57:04'),
(25, 17, '2026-05', 'Plumbing Works', 23.00, 100.00, 20.00, 20.00, 43.00, NULL, NULL, '2026-10-22 05:57:04'),
(26, 17, '2026-05', 'Medical Gas Systems', 15.00, 100.00, 15.00, 15.00, 30.00, NULL, NULL, '2026-10-22 05:57:04'),
(27, 17, '2026-05', 'Ward 1 Construction', 38.00, 100.00, 20.00, 20.00, 58.00, NULL, NULL, '2026-10-22 05:57:04'),
(28, 17, '2026-05', 'Ward 2 Construction', 35.00, 100.00, 20.00, 20.00, 55.00, NULL, NULL, '2026-10-22 05:57:04'),
(29, 17, '2026-05', 'Ward 3 Construction', 30.00, 100.00, 20.00, 20.00, 50.00, NULL, NULL, '2026-10-22 05:57:04'),
(30, 17, '2026-05', 'Ward 4 Construction', 25.00, 100.00, 20.00, 20.00, 45.00, NULL, NULL, '2026-10-22 05:57:04'),
(31, 17, '2026-06', 'Foundation structure', 65.00, 100.00, 15.00, 15.00, 80.00, NULL, NULL, '2026-10-22 05:57:04'),
(32, 17, '2026-06', 'Structural Works', 55.00, 100.00, 15.00, 15.00, 70.00, NULL, NULL, '2026-10-22 05:57:04'),
(33, 17, '2026-06', 'Mechanical Works', 45.00, 100.00, 15.00, 15.00, 60.00, NULL, NULL, '2026-10-22 05:57:04'),
(34, 17, '2026-06', 'Electrical Works', 50.00, 100.00, 15.00, 15.00, 65.00, NULL, NULL, '2026-10-22 05:57:04'),
(35, 17, '2026-06', 'Plumbing Works', 43.00, 100.00, 15.00, 15.00, 58.00, NULL, NULL, '2026-10-22 05:57:04'),
(36, 17, '2026-06', 'Medical Gas Systems', 30.00, 100.00, 15.00, 15.00, 45.00, NULL, NULL, '2026-10-22 05:57:04'),
(37, 17, '2026-06', 'Ward 1 Construction', 58.00, 100.00, 15.00, 15.00, 73.00, NULL, NULL, '2026-10-22 05:57:04'),
(38, 17, '2026-06', 'Ward 2 Construction', 55.00, 100.00, 15.00, 15.00, 70.00, NULL, NULL, '2026-10-22 05:57:04'),
(39, 17, '2026-06', 'Ward 3 Construction', 50.00, 100.00, 15.00, 15.00, 65.00, NULL, NULL, '2026-10-22 05:57:04'),
(40, 17, '2026-06', 'Ward 4 Construction', 45.00, 100.00, 15.00, 15.00, 60.00, NULL, NULL, '2026-10-22 05:57:04'),
(41, 17, '2026-07', 'Foundation structure', 80.00, 100.00, 10.00, 10.00, 90.00, NULL, NULL, '2026-10-22 05:57:04'),
(42, 17, '2026-07', 'Structural Works', 70.00, 100.00, 10.00, 10.00, 80.00, NULL, NULL, '2026-10-22 05:57:04'),
(43, 17, '2026-07', 'Mechanical Works', 60.00, 100.00, 15.00, 15.00, 75.00, NULL, NULL, '2026-10-22 05:57:04'),
(44, 17, '2026-07', 'Electrical Works', 65.00, 100.00, 15.00, 15.00, 80.00, NULL, NULL, '2026-10-22 05:57:04'),
(45, 17, '2026-07', 'Plumbing Works', 58.00, 100.00, 15.00, 15.00, 73.00, NULL, NULL, '2026-10-22 05:57:04'),
(46, 17, '2026-07', 'Medical Gas Systems', 45.00, 100.00, 20.00, 20.00, 65.00, NULL, NULL, '2026-10-22 05:57:04'),
(47, 17, '2026-07', 'Ward 1 Construction', 73.00, 100.00, 15.00, 15.00, 88.00, NULL, NULL, '2026-10-22 05:57:04'),
(48, 17, '2026-07', 'Ward 2 Construction', 70.00, 100.00, 15.00, 15.00, 85.00, NULL, NULL, '2026-10-22 05:57:04'),
(49, 17, '2026-07', 'Ward 3 Construction', 65.00, 100.00, 15.00, 15.00, 80.00, NULL, NULL, '2026-10-22 05:57:04'),
(50, 17, '2026-07', 'Ward 4 Construction', 60.00, 100.00, 15.00, 15.00, 75.00, NULL, NULL, '2026-10-22 05:57:04'),
(51, 17, '2026-08', 'Foundation structure', 90.00, 100.00, 5.00, 5.00, 95.00, NULL, NULL, '2026-10-22 05:57:04'),
(52, 17, '2026-08', 'Structural Works', 80.00, 100.00, 10.00, 10.00, 90.00, NULL, NULL, '2026-10-22 05:57:04'),
(53, 17, '2026-08', 'Mechanical Works', 75.00, 100.00, 10.00, 10.00, 85.00, NULL, NULL, '2026-10-22 05:57:04'),
(54, 17, '2026-08', 'Electrical Works', 80.00, 100.00, 10.00, 10.00, 90.00, NULL, NULL, '2026-10-22 05:57:04'),
(55, 17, '2026-08', 'Plumbing Works', 73.00, 100.00, 12.00, 12.00, 85.00, NULL, NULL, '2026-10-22 05:57:04'),
(56, 17, '2026-08', 'Medical Gas Systems', 65.00, 100.00, 15.00, 15.00, 80.00, NULL, NULL, '2026-10-22 05:57:04'),
(57, 17, '2026-08', 'Ward 1 Construction', 88.00, 100.00, 7.00, 7.00, 95.00, NULL, NULL, '2026-10-22 05:57:04'),
(58, 17, '2026-08', 'Ward 2 Construction', 85.00, 100.00, 10.00, 10.00, 95.00, NULL, NULL, '2026-10-22 05:57:04'),
(59, 17, '2026-08', 'Ward 3 Construction', 80.00, 100.00, 10.00, 10.00, 90.00, NULL, NULL, '2026-10-22 05:57:04'),
(60, 17, '2026-08', 'Ward 4 Construction', 75.00, 100.00, 10.00, 10.00, 85.00, NULL, NULL, '2026-10-22 05:57:04'),
(61, 17, '2026-09', 'Foundation structure', 95.00, 100.00, 3.00, 3.00, 98.00, NULL, NULL, '2026-10-22 05:57:04'),
(62, 17, '2026-09', 'Structural Works', 90.00, 100.00, 5.00, 5.00, 95.00, NULL, NULL, '2026-10-22 05:57:04'),
(63, 17, '2026-09', 'Mechanical Works', 85.00, 100.00, 10.00, 10.00, 95.00, NULL, NULL, '2026-10-22 05:57:04'),
(64, 17, '2026-09', 'Electrical Works', 90.00, 100.00, 5.00, 5.00, 95.00, NULL, NULL, '2026-10-22 05:57:04'),
(65, 17, '2026-09', 'Plumbing Works', 85.00, 100.00, 10.00, 10.00, 95.00, NULL, NULL, '2026-10-22 05:57:04'),
(66, 17, '2026-09', 'Medical Gas Systems', 80.00, 100.00, 10.00, 10.00, 90.00, NULL, NULL, '2026-10-22 05:57:04'),
(67, 17, '2026-09', 'Ward 1 Construction', 95.00, 100.00, 3.00, 3.00, 98.00, NULL, NULL, '2026-10-22 05:57:04'),
(68, 17, '2026-09', 'Ward 2 Construction', 95.00, 100.00, 3.00, 3.00, 98.00, NULL, NULL, '2026-10-22 05:57:04'),
(69, 17, '2026-09', 'Ward 3 Construction', 90.00, 100.00, 5.00, 5.00, 95.00, NULL, NULL, '2026-10-22 05:57:04'),
(70, 17, '2026-09', 'Ward 4 Construction', 85.00, 100.00, 10.00, 10.00, 95.00, NULL, NULL, '2026-10-22 05:57:04'),
(71, 17, '2026-10', 'Foundation structure', 98.00, 100.00, 2.00, 2.00, 100.00, NULL, NULL, '2026-10-22 05:57:04'),
(72, 17, '2026-10', 'Structural Works', 95.00, 100.00, 5.00, 5.00, 100.00, NULL, NULL, '2026-10-22 05:57:04'),
(73, 17, '2026-10', 'Mechanical Works', 95.00, 100.00, 5.00, 5.00, 100.00, NULL, NULL, '2026-10-22 05:57:04'),
(74, 17, '2026-10', 'Electrical Works', 95.00, 100.00, 5.00, 5.00, 100.00, NULL, NULL, '2026-10-22 05:57:04'),
(75, 17, '2026-10', 'Plumbing Works', 95.00, 100.00, 5.00, 5.00, 100.00, NULL, NULL, '2026-10-22 05:57:04'),
(76, 17, '2026-10', 'Medical Gas Systems', 90.00, 100.00, 10.00, 10.00, 100.00, NULL, NULL, '2026-10-22 05:57:04'),
(77, 17, '2026-10', 'Ward 1 Construction', 98.00, 100.00, 2.00, 2.00, 100.00, NULL, NULL, '2026-10-22 05:57:04'),
(78, 17, '2026-10', 'Ward 2 Construction', 98.00, 100.00, 2.00, 2.00, 100.00, NULL, NULL, '2026-10-22 05:57:04'),
(79, 17, '2026-10', 'Ward 3 Construction', 95.00, 100.00, 5.00, 5.00, 100.00, NULL, NULL, '2026-10-22 05:57:04'),
(80, 17, '2026-10', 'Ward 4 Construction', 95.00, 100.00, 5.00, 5.00, 100.00, NULL, NULL, '2026-10-22 05:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(180) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `notification_type` varchar(50) NOT NULL DEFAULT 'system',
  `source_key` varchar(190) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outputs`
--

CREATE TABLE `outputs` (
  `id` varchar(50) NOT NULL,
  `delivery_unit_id` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `indicator` varchar(255) DEFAULT NULL,
  `target_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pc_report_uploads`
--

CREATE TABLE `pc_report_uploads` (
  `id` int(11) NOT NULL,
  `serial_no` varchar(20) DEFAULT NULL,
  `financial_year` varchar(9) NOT NULL,
  `quarter` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `stored_name` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL DEFAULT 0,
  `uploaded_by` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pc_report_uploads`
--

INSERT INTO `pc_report_uploads` (`id`, `serial_no`, `financial_year`, `quarter`, `title`, `original_name`, `stored_name`, `file_size`, `uploaded_by`, `created_at`) VALUES
(2, 'A1', '2025/2026', 1, 'action-points-2026-10-20.pdf', 'action-points-2026-10-20.pdf', '6a0739abf60bde65d8e7f571a2d16b2a.pdf', 8427, 'System Administrator', '2026-10-22 13:29:24'),
(3, 'A1', '2025/2026', 0, 'performance-contract-2026-10-19.pdf', 'performance-contract-2026-10-19.pdf', '9a2b2872d547fece92d2f60aac2f6020.pdf', 3903, 'System Administrator', '2026-10-22 13:30:08'),
(4, 'A1', '2025/2026', 1, 'action-points-2026-10-20 (2).pdf', 'action-points-2026-10-20 (2).pdf', 'b62d35f1063af3f9b5d109e92b42857e.pdf', 8427, 'System Administrator', '2026-10-25 18:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `performance_kpis`
--

CREATE TABLE `performance_kpis` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `kpi_name` varchar(255) NOT NULL,
  `category` varchar(150) NOT NULL,
  `delivery_unit` varchar(150) DEFAULT NULL,
  `parent_kpi_name` varchar(255) DEFAULT NULL,
  `sub_kpi_weight` decimal(5,2) DEFAULT 0.00,
  `target_baseline` varchar(100) DEFAULT NULL,
  `target_2025_26` varchar(100) DEFAULT NULL,
  `target_baseline_2026_27` varchar(100) DEFAULT NULL,
  `target_2027_28` varchar(100) DEFAULT NULL,
  `target_2028_29` varchar(100) DEFAULT NULL,
  `target_2029_30` varchar(100) DEFAULT NULL,
  `actual_2025_26` varchar(100) DEFAULT NULL,
  `current_achievement` decimal(5,2) DEFAULT 0.00,
  `status` varchar(50) DEFAULT 'Achieved',
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_kpis`
--

INSERT INTO `performance_kpis` (`id`, `code`, `kpi_name`, `category`, `delivery_unit`, `parent_kpi_name`, `sub_kpi_weight`, `target_baseline`, `target_2025_26`, `target_baseline_2026_27`, `target_2027_28`, `target_2028_29`, `target_2029_30`, `actual_2025_26`, `current_achievement`, `status`, `remarks`) VALUES
(1, 'KNH-DEMO-A', 'Financial Stewardship', 'Financial Stewardship', 'Kenyatta National Hospital', 'KNH Strategic KPI Pillars', 10.00, NULL, '100%', '100%', '100%', '100%', '100%', '72%', 72.00, 'In Progress', 'DEMO DATA: illustrative financial stewardship achievement; replace with approved KNH reporting.'),
(2, 'KNH-DEMO-B', 'Service Delivery', 'Service Delivery', 'Kenyatta National Hospital', 'KNH Strategic KPI Pillars', 15.00, NULL, '100%', '100%', '100%', '100%', '100%', '68%', 68.00, 'In Progress', 'DEMO DATA: illustrative service delivery achievement; replace with approved KNH reporting.'),
(3, 'KNH-DEMO-C', 'Core Mandate', 'Core Mandate', 'Kenyatta National Hospital', 'KNH Strategic KPI Pillars', 65.00, NULL, '100%', '100%', '100%', '100%', '100%', '74%', 74.00, 'In Progress', 'DEMO DATA: illustrative core mandate achievement; replace with approved KNH reporting.'),
(4, 'KNH-DEMO-D', 'Implementation of Presidential Directives', 'Implementation of Presidential Directives', 'Kenyatta National Hospital', 'KNH Strategic KPI Pillars', 2.00, NULL, '100%', '100%', '100%', '100%', '100%', '80%', 80.00, 'In Progress', 'DEMO DATA: illustrative directives achievement; replace with approved KNH reporting.'),
(5, 'KNH-DEMO-E', 'Affirmative Action in Procurement', 'Affirmative Action in Procurement', 'Kenyatta National Hospital', 'KNH Strategic KPI Pillars', 4.00, NULL, '100%', '100%', '100%', '100%', '100%', '63%', 63.00, 'In Progress', 'DEMO DATA: illustrative affirmative procurement achievement; replace with approved KNH reporting.'),
(6, 'KNH-DEMO-F', 'Cross-Cutting', 'Cross-Cutting', 'Kenyatta National Hospital', 'KNH Strategic KPI Pillars', 4.00, NULL, '100%', '100%', '100%', '100%', '100%', '70%', 70.00, 'In Progress', 'DEMO DATA: illustrative cross-cutting achievement; replace with approved KNH reporting.');

-- --------------------------------------------------------

--
-- Table structure for table `programmes`
--

CREATE TABLE `programmes` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `objective` text DEFAULT NULL,
  `allocated_budget` decimal(15,2) DEFAULT 0.00,
  `lead_officer` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `flagship_id` int(11) DEFAULT NULL,
  `project_code` varchar(50) DEFAULT NULL,
  `project_type` varchar(30) NOT NULL DEFAULT 'Project',
  `programme_title` varchar(255) NOT NULL,
  `sub_programme` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `category` enum('Directorate','Saga','Division') NOT NULL DEFAULT 'Directorate',
  `directorate_name` varchar(150) DEFAULT NULL,
  `saga_name` varchar(150) DEFAULT NULL,
  `division_name` varchar(150) DEFAULT NULL,
  `delivery_unit` varchar(150) DEFAULT NULL,
  `priority_tier` varchar(100) DEFAULT 'Tier 1 - High Priority',
  `color` varchar(20) DEFAULT '#1976d2',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT 'IN PROGRESS',
  `progress_status` varchar(50) DEFAULT 'On Track',
  `overall_progress_pct` decimal(5,2) DEFAULT NULL,
  `progress_calculation_mode` enum('kpi_derived','manual') DEFAULT 'kpi_derived',
  `total_budget` decimal(15,2) DEFAULT 0.00,
  `gok_financing` decimal(15,2) DEFAULT NULL,
  `foreign_financing` decimal(15,2) DEFAULT NULL,
  `funds_outstanding` decimal(15,2) DEFAULT NULL,
  `funds_disbursed` decimal(15,2) DEFAULT 0.00,
  `funds_utilized` decimal(15,2) DEFAULT 0.00,
  `milestones_completed` int(11) DEFAULT 0,
  `milestones_total` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `is_archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `flagship_id`, `project_code`, `project_type`, `programme_title`, `sub_programme`, `description`, `remarks`, `category`, `directorate_name`, `saga_name`, `division_name`, `delivery_unit`, `priority_tier`, `color`, `start_date`, `end_date`, `status`, `progress_status`, `overall_progress_pct`, `progress_calculation_mode`, `total_budget`, `gok_financing`, `foreign_financing`, `funds_outstanding`, `funds_disbursed`, `funds_utilized`, `milestones_completed`, `milestones_total`, `created_at`, `is_archived`) VALUES
(17, 4, '1082100100', 'Project', 'Kenyatta National Hospital', 'KNH Burns and Pediatrics Centre', 'KNH Burns and Pediatrics Centre equipment upgrade and renovation.', NULL, 'Saga', NULL, 'Kenyatta National Hospital', NULL, 'KNH', 'Medium', '#1976d2', '2018-03-03', '2027-08-30', 'In Progress', '69.00%', 69.00, 'kpi_derived', 5459000000.00, 3482000000.00, 1977000000.00, 1710000000.00, NULL, 3749000000.00, 0, 0, '2026-10-15 14:32:15', 0),
(18, 2, '1082101100', 'Project', 'Moi Teaching and Referral Hospital', 'Cancer & Chronic Disease Management Centre – MTRH', NULL, NULL, 'Saga', NULL, 'Moi Teaching and Referral Hospital', NULL, 'MTRH', 'Critical', '#1976d2', '2013-01-07', '2028-06-30', 'In Progress', 'Not recorded', NULL, 'kpi_derived', 1843000000.00, 1393000000.00, 450000000.00, 473000000.00, NULL, 1370000000.00, 0, 0, '2026-10-15 14:32:15', 0),
(19, 1, '1082101400', 'Project', 'Moi Teaching and Referral Hospital', 'Expansion and Equipping of ICU-MTRH', NULL, NULL, 'Saga', NULL, 'Moi Teaching and Referral Hospital', NULL, 'MTRH', 'Medium', '#1976d2', '2015-07-01', '2028-12-01', 'In Progress', '59.00%', 59.00, 'kpi_derived', 484000000.00, 439000000.00, 0.00, 200000000.00, NULL, 284000000.00, 0, 0, '2026-10-15 14:32:15', 0),
(20, NULL, '1082101200', 'Project', 'Moi Teaching and Referral Hospital', 'Construction and Equipping Children Hospital- MTRH', NULL, NULL, 'Saga', NULL, 'Moi Teaching and Referral Hospital', NULL, 'MTRH', 'High', '#1976d2', '2014-01-01', '2028-06-30', 'In Progress', '53.00%', 53.00, 'kpi_derived', 1080000000.00, 830000000.00, 250000000.00, 507000000.00, NULL, 573000000.00, 0, 0, '2026-10-15 14:32:15', 0),
(21, NULL, NULL, 'Project', 'Mathari National Teaching and Referral Hospital', 'Procurement of the Hospital ERP & HMIS System and Associated ICT Infrastructure Project-MNTRH', NULL, NULL, 'Saga', NULL, 'Mathari National Teaching and Referral Hospital', NULL, 'MNTRH', 'Low', '#1976d2', '2027-01-07', '2030-06-30', 'Planning', '0.00%', 0.00, 'kpi_derived', 800000000.00, 800000000.00, 0.00, 800000000.00, NULL, 0.00, 0, 0, '2026-10-15 14:32:15', 0),
(22, 1, '1082108800', 'Project', 'Moi Teaching and Referral Hospital', 'New 2,000 Bed Multi-Specialty Hospital MTRH.', NULL, NULL, 'Saga', NULL, 'Moi Teaching and Referral Hospital', NULL, 'MTRH', 'High', '#1976d2', '2025-10-17', '2027-04-17', 'In Progress', '4.00%', 4.00, 'kpi_derived', 44701000000.00, 44701000000.00, 0.00, 42701000000.00, NULL, 2000000000.00, 0, 0, '2026-10-15 14:32:15', 0),
(23, NULL, NULL, 'Project', 'Mathari National Teaching and Referral Hospital', 'Construction of Acute and Intensive Care Ward-MNTRH', NULL, NULL, 'Saga', NULL, 'Mathari National Teaching and Referral Hospital', NULL, 'MNTRH', 'Low', '#1976d2', '2027-01-07', '2030-06-30', 'Planning', '0.00%', 0.00, 'kpi_derived', 300000000.00, 300000000.00, 0.00, 300000000.00, NULL, 0.00, 0, 0, '2026-10-15 14:32:15', 0),
(24, NULL, NULL, 'Project', 'Mathari National Teaching and Referral Hospital', 'Modernization and Refurbishment of the Forensic Psychiatric Unit -MNTRH', NULL, NULL, 'Saga', NULL, 'Mathari National Teaching and Referral Hospital', NULL, 'MNTRH', 'Low', '#1976d2', '2027-01-07', '2030-06-30', 'Planning', '0.00%', 0.00, 'kpi_derived', 700000000.00, 700000000.00, 0.00, 700000000.00, NULL, 0.00, 0, 0, '2026-10-15 14:32:15', 0),
(25, NULL, NULL, 'Project', 'Mathari National Teaching and Referral Hospital', 'Construction of MNTRH Administration Block and Doctors Plaza', NULL, NULL, 'Saga', NULL, 'Mathari National Teaching and Referral Hospital', NULL, 'MNTRH', 'Low', '#1976d2', '2027-01-07', '2028-06-30', 'Planning', '0.00%', 0.00, 'kpi_derived', 450000000.00, 450000000.00, 0.00, 450000000.00, NULL, 0.00, 0, 0, '2026-10-15 14:32:15', 0),
(26, NULL, NULL, 'Project', 'Mathari National Teaching and Referral Hospital', 'Construction of MNTRH Warehouse', NULL, NULL, 'Saga', NULL, 'Mathari National Teaching and Referral Hospital', NULL, 'MNTRH', 'Low', '#1976d2', '2027-01-07', '2028-06-30', 'Planning', '0.00%', 0.00, 'kpi_derived', 150000000.00, 150000000.00, 0.00, 150000000.00, NULL, 0.00, 0, 0, '2026-10-15 14:32:15', 0),
(27, 3, '1082107703', 'Programme', 'Family Health', 'Special Global Fund HIV Grant NFM4- NASCOP', NULL, NULL, 'Directorate', 'Family Health', NULL, NULL, 'NASCOP', 'Low', '#1976d2', '2024-01-07', '2028-06-30', 'In Progress', '74.00%', 74.00, 'kpi_derived', 3100000000.00, 2500000000.00, 600000000.00, 795000000.00, NULL, 2305000000.00, 0, 0, '2026-10-15 14:32:15', 0),
(28, 3, '1082104102', 'Programme', 'Family Health', 'Special Global Fund HIV Grant NFM4-NSDCC', NULL, NULL, 'Directorate', 'Family Health', NULL, NULL, 'NSDCC', 'Low', '#1976d2', '2022-07-01', '2028-06-30', 'In Progress', '75.00%', 75.00, 'kpi_derived', 1216000000.00, NULL, 1216000000.00, 304000000.00, NULL, 912000000.00, 0, 0, '2026-10-15 14:32:15', 0),
(29, NULL, '1082104800', 'Programme', 'Family Health', '9TH GoK/ UNFPA 10th County Programmes MOH NSDCC HIV -UNFPA', NULL, 'Project Initiated', 'Directorate', 'Family Health', NULL, NULL, 'NSDCC', 'Low', '#1976d2', '2027-01-01', '2027-06-30', 'Planning', '34.00%', 34.00, 'kpi_derived', 15000000.00, 0.00, 5000000.00, 10000000.00, NULL, 5000000.00, 0, 0, '2026-10-15 14:32:15', 0),
(30, NULL, '1081107400', 'Programme', 'Family Health', 'Acquisition of space by the National Syndemic Diseases Control Council', NULL, NULL, 'Directorate', 'Family Health', NULL, NULL, 'NSDCC', 'Critical', '#1976d2', '2017-08-29', '2028-06-30', 'In Progress', '17.00%', 17.00, 'kpi_derived', 600000000.00, 600000000.00, 0.00, 500000000.00, NULL, 100000000.00, 0, 0, '2026-10-15 14:32:15', 0),
(31, 3, '1082109200', 'Programme', 'Family Health', 'NASCOP HIV Program.', NULL, NULL, 'Directorate', 'Family Health', NULL, NULL, 'NASCOP', 'High', '#1976d2', '2026-01-07', '2027-06-30', 'In Progress', '0.00%', 0.00, 'kpi_derived', 201000000.00, 201000000.00, NULL, 200800000.00, NULL, NULL, 0, 0, '2026-10-15 14:32:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `project_action_logs`
--

CREATE TABLE `project_action_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `action_text` text NOT NULL,
  `action_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_by_name` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_financial_projections`
--

CREATE TABLE `project_financial_projections` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `fiscal_year` varchar(9) NOT NULL,
  `gok_financing` decimal(15,2) DEFAULT NULL,
  `foreign_financing` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_financial_projections`
--

INSERT INTO `project_financial_projections` (`id`, `project_id`, `fiscal_year`, `gok_financing`, `foreign_financing`) VALUES
(1, 17, '2027/28', 1137000000.00, 573000000.00),
(2, 18, '2027/28', 150000000.00, NULL),
(3, 19, '2027/28', 100000000.00, NULL),
(4, 20, '2027/28', 150000000.00, NULL),
(5, 21, '2027/28', 800000000.00, NULL),
(6, 22, '2027/28', 2000000000.00, NULL),
(7, 23, '2027/28', 300000000.00, NULL),
(8, 24, '2027/28', 700000000.00, NULL),
(9, 25, '2027/28', 450000000.00, NULL),
(10, 26, '2027/28', 150000000.00, NULL),
(11, 27, '2027/28', 2500000000.00, 300000000.00),
(12, 28, '2027/28', NULL, 150000000.00),
(13, 29, '2027/28', NULL, 15000000.00),
(14, 30, '2027/28', 200000000.00, NULL),
(15, 31, '2027/28', 200800000.00, NULL),
(16, 17, '2028/29', NULL, NULL),
(17, 18, '2028/29', 100000000.00, NULL),
(18, 19, '2028/29', NULL, NULL),
(19, 20, '2028/29', 100000000.00, NULL),
(20, 21, '2028/29', NULL, NULL),
(21, 22, '2028/29', 2000000000.00, NULL),
(22, 23, '2028/29', NULL, NULL),
(23, 24, '2028/29', NULL, NULL),
(24, 25, '2028/29', NULL, NULL),
(25, 26, '2028/29', NULL, NULL),
(26, 27, '2028/29', NULL, NULL),
(27, 28, '2028/29', NULL, 150000000.00),
(28, 29, '2028/29', NULL, NULL),
(29, 30, '2028/29', NULL, NULL),
(30, 31, '2028/29', NULL, NULL),
(31, 17, '2029/30', NULL, NULL),
(32, 18, '2029/30', 51000000.00, NULL),
(33, 19, '2029/30', NULL, NULL),
(34, 20, '2029/30', 157000000.00, NULL),
(35, 21, '2029/30', NULL, NULL),
(36, 22, '2029/30', 2000000000.00, NULL),
(37, 23, '2029/30', NULL, NULL),
(38, 24, '2029/30', NULL, NULL),
(39, 25, '2029/30', NULL, NULL),
(40, 26, '2029/30', NULL, NULL),
(41, 27, '2029/30', NULL, NULL),
(42, 28, '2029/30', NULL, NULL),
(43, 29, '2029/30', NULL, NULL),
(44, 30, '2029/30', NULL, 40767130000.00),
(45, 31, '2029/30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_key_output_results`
--

CREATE TABLE `project_key_output_results` (
  `id` int(11) NOT NULL,
  `scope_type` enum('SAGA','Delivery Unit','Project') NOT NULL DEFAULT 'SAGA',
  `scope_name` varchar(150) NOT NULL,
  `output_code` varchar(20) NOT NULL,
  `output_title` varchar(255) NOT NULL,
  `kpi_code` varchar(40) NOT NULL,
  `kpi_name` varchar(255) NOT NULL,
  `unit` varchar(40) NOT NULL DEFAULT '',
  `direction` enum('higher','lower') NOT NULL DEFAULT 'higher',
  `fiscal_year` varchar(9) NOT NULL,
  `target_value` decimal(15,2) DEFAULT NULL,
  `actual_value` decimal(15,2) DEFAULT NULL,
  `target_type` enum('Target','Baseline') NOT NULL DEFAULT 'Target',
  `source_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_key_output_results`
--

INSERT INTO `project_key_output_results` (`id`, `scope_type`, `scope_name`, `output_code`, `output_title`, `kpi_code`, `kpi_name`, `unit`, `direction`, `fiscal_year`, `target_value`, `actual_value`, `target_type`, `source_note`, `created_at`, `updated_at`) VALUES
(1, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-01', 'Number of Heart surgeries done', 'surgeries', 'higher', '2025/26', 784.00, 630.00, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(2, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-01', 'Number of Heart surgeries done', 'surgeries', 'higher', '2026/27', 784.00, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(3, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-01', 'Number of Heart surgeries done', 'surgeries', 'higher', '2027/28', 815.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(4, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-01', 'Number of Heart surgeries done', 'surgeries', 'higher', '2028/29', 863.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(5, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-01', 'Number of Heart surgeries done', 'surgeries', 'higher', '2029/30', 889.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(6, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-02', 'Number of other cardiothoracic surgeries conducted', 'surgeries', 'higher', '2025/26', 1519.00, 1023.00, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(7, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-02', 'Number of other cardiothoracic surgeries conducted', 'surgeries', 'higher', '2026/27', 1519.00, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(8, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-02', 'Number of other cardiothoracic surgeries conducted', 'surgeries', 'higher', '2027/28', 1261.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(9, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-02', 'Number of other cardiothoracic surgeries conducted', 'surgeries', 'higher', '2028/29', 1266.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(10, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-02', 'Number of other cardiothoracic surgeries conducted', 'surgeries', 'higher', '2029/30', 1281.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(11, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-03', 'Number of Kidney Transplants conducted.', 'transplants', 'higher', '2025/26', 24.00, 22.00, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(12, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-03', 'Number of Kidney Transplants conducted.', 'transplants', 'higher', '2026/27', 24.00, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(13, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-03', 'Number of Kidney Transplants conducted.', 'transplants', 'higher', '2027/28', 29.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(14, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-03', 'Number of Kidney Transplants conducted.', 'transplants', 'higher', '2028/29', 31.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(15, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-03', 'Number of Kidney Transplants conducted.', 'transplants', 'higher', '2029/30', 32.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(16, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-04', 'Number of minimally invasive surgeries done', 'surgeries', 'higher', '2025/26', 10716.00, 9852.00, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(17, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-04', 'Number of minimally invasive surgeries done', 'surgeries', 'higher', '2026/27', 10784.00, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(18, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-04', 'Number of minimally invasive surgeries done', 'surgeries', 'higher', '2027/28', 11539.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(19, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-04', 'Number of minimally invasive surgeries done', 'surgeries', 'higher', '2028/29', 11986.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(20, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-04', 'Number of minimally invasive surgeries done', 'surgeries', 'higher', '2029/30', 12346.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(21, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-05', 'Number of patients undergoing specialized Burns treatment (OBD)', 'patients', 'higher', '2025/26', 649.00, 439.00, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(22, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-05', 'Number of patients undergoing specialized Burns treatment (OBD)', 'patients', 'higher', '2026/27', 649.00, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(23, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-05', 'Number of patients undergoing specialized Burns treatment (OBD)', 'patients', 'higher', '2027/28', 595.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(24, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-05', 'Number of patients undergoing specialized Burns treatment (OBD)', 'patients', 'higher', '2028/29', 598.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(25, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-05', 'Number of patients undergoing specialized Burns treatment (OBD)', 'patients', 'higher', '2029/30', 604.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(26, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-06', 'Number of oncology sessions on (Chemotherapy and radiotherapy)', 'sessions', 'higher', '2025/26', 47646.00, 11545.00, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(27, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-06', 'Number of oncology sessions on (Chemotherapy and radiotherapy)', 'sessions', 'higher', '2026/27', 47646.00, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(28, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-06', 'Number of oncology sessions on (Chemotherapy and radiotherapy)', 'sessions', 'higher', '2027/28', 40600.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(29, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-06', 'Number of oncology sessions on (Chemotherapy and radiotherapy)', 'sessions', 'higher', '2028/29', 40637.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(30, 'SAGA', 'Kenyatta National Hospital', 'KNH-01', 'Specialized Healthcare Services', 'KNH-01-06', 'Number of oncology sessions on (Chemotherapy and radiotherapy)', 'sessions', 'higher', '2029/30', 41450.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(31, 'SAGA', 'Kenyatta National Hospital', 'KNH-02', 'Health Research disseminated', 'KNH-02-01', 'Number of new research projects disseminated', 'projects', 'higher', '2025/26', 5.00, 3.00, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(32, 'SAGA', 'Kenyatta National Hospital', 'KNH-02', 'Health Research disseminated', 'KNH-02-01', 'Number of new research projects disseminated', 'projects', 'higher', '2026/27', 5.00, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(33, 'SAGA', 'Kenyatta National Hospital', 'KNH-02', 'Health Research disseminated', 'KNH-02-01', 'Number of new research projects disseminated', 'projects', 'higher', '2027/28', 8.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(34, 'SAGA', 'Kenyatta National Hospital', 'KNH-02', 'Health Research disseminated', 'KNH-02-01', 'Number of new research projects disseminated', 'projects', 'higher', '2028/29', 9.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(35, 'SAGA', 'Kenyatta National Hospital', 'KNH-02', 'Health Research disseminated', 'KNH-02-01', 'Number of new research projects disseminated', 'projects', 'higher', '2029/30', 9.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(36, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-01', 'Average Length of Stay (ALOS) for trauma patients (days)', 'days', 'lower', '2025/26', 35.00, 40.90, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(37, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-01', 'Average Length of Stay (ALOS) for trauma patients (days)', 'days', 'lower', '2026/27', 34.20, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(38, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-01', 'Average Length of Stay (ALOS) for trauma patients (days)', 'days', 'lower', '2027/28', 33.50, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(39, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-01', 'Average Length of Stay (ALOS) for trauma patients (days)', 'days', 'lower', '2028/29', 33.20, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(40, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-01', 'Average Length of Stay (ALOS) for trauma patients (days)', 'days', 'lower', '2029/30', 32.80, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(41, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-02', 'Average waiting time (days) for radiotherapy', 'days', 'lower', '2025/26', 17.00, 57.00, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(42, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-02', 'Average waiting time (days) for radiotherapy', 'days', 'lower', '2026/27', 16.50, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(43, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-02', 'Average waiting time (days) for radiotherapy', 'days', 'lower', '2027/28', 16.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(44, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-02', 'Average waiting time (days) for radiotherapy', 'days', 'lower', '2028/29', 15.50, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(45, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-02', 'Average waiting time (days) for radiotherapy', 'days', 'lower', '2029/30', 15.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(46, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-03', 'Average waiting time (days) for chemotherapy', 'days', 'lower', '2025/26', 3.00, 2.10, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(47, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-03', 'Average waiting time (days) for chemotherapy', 'days', 'lower', '2026/27', 2.00, NULL, 'Baseline', 'Target (Baseline) 2026/27', '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(48, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-03', 'Average waiting time (days) for chemotherapy', 'days', 'lower', '2027/28', 2.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(49, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-03', 'Average waiting time (days) for chemotherapy', 'days', 'lower', '2028/29', 1.50, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41'),
(50, 'SAGA', 'Kenyatta National Hospital', 'KNH-03', 'Average waiting time for specialized diagnostic and treatment services reduced', 'KNH-03-03', 'Average waiting time (days) for chemotherapy', 'days', 'lower', '2029/30', 2.00, NULL, 'Target', NULL, '2026-10-15 15:40:41', '2026-10-15 15:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `project_kpis`
--

CREATE TABLE `project_kpis` (
  `id` int(11) NOT NULL,
  `year` smallint(4) DEFAULT NULL,
  `month` varchar(20) NOT NULL,
  `kpi_name` varchar(255) NOT NULL,
  `baseline` decimal(5,2) DEFAULT 0.00,
  `target` decimal(5,2) DEFAULT 100.00,
  `actual_achieved` decimal(5,2) DEFAULT 0.00,
  `monthly_progress_pct` decimal(5,4) DEFAULT 0.0000,
  `cumulative_progress_pct` decimal(5,4) DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_kpis`
--

INSERT INTO `project_kpis` (`id`, `year`, `month`, `kpi_name`, `baseline`, `target`, `actual_achieved`, `monthly_progress_pct`, `cumulative_progress_pct`, `created_at`) VALUES
(1, 2026, 'March', 'Foundation structure', 0.00, 100.00, 20.00, 0.2000, 0.2000, '2026-10-22 20:29:30'),
(2, 2026, 'March', 'Structural Works', 0.00, 100.00, 25.00, 0.2500, 0.2500, '2026-10-22 20:29:30'),
(3, 2026, 'March', 'Mechanical Works', 0.00, 100.00, 10.00, 0.1000, 0.1000, '2026-10-22 20:29:30'),
(4, 2026, 'March', 'Electrical Works', 0.00, 100.00, 12.00, 0.1200, 0.1200, '2026-10-22 20:29:30'),
(5, 2026, 'March', 'Plumbing Works', 0.00, 100.00, 8.00, 0.0800, 0.0800, '2026-10-22 20:29:30'),
(6, 2026, 'April', 'Foundation structure', 20.00, 100.00, 25.00, 0.2500, 0.4500, '2026-10-22 20:29:30'),
(7, 2026, 'April', 'Structural Works', 15.00, 100.00, 20.00, 0.2000, 0.3500, '2026-10-22 20:29:30'),
(8, 2026, 'April', 'Mechanical Works', 10.00, 100.00, 15.00, 0.1500, 0.2500, '2026-10-22 20:29:30'),
(9, 2026, 'April', 'Electrical Works', 12.00, 100.00, 18.00, 0.1800, 0.3000, '2026-10-22 20:29:30'),
(10, 2026, 'April', 'Plumbing Works', 8.00, 100.00, 15.00, 0.1500, 0.2300, '2026-10-22 20:29:30'),
(11, 2026, 'May', 'Foundation structure', 45.00, 100.00, 20.00, 0.2000, 0.6500, '2026-10-22 20:29:30'),
(12, 2026, 'May', 'Structural Works', 35.00, 100.00, 20.00, 0.2000, 0.5500, '2026-10-22 20:29:30'),
(13, 2026, 'May', 'Mechanical Works', 25.00, 100.00, 20.00, 0.2000, 0.4500, '2026-10-22 20:29:30'),
(14, 2026, 'May', 'Electrical Works', 30.00, 100.00, 20.00, 0.2000, 0.5000, '2026-10-22 20:29:30'),
(15, 2026, 'May', 'Plumbing Works', 23.00, 100.00, 20.00, 0.2000, 0.4300, '2026-10-22 20:29:30'),
(16, 2026, 'June', 'Foundation structure', 65.00, 100.00, 15.00, 0.1500, 0.8000, '2026-10-22 20:29:30'),
(17, 2026, 'June', 'Structural Works', 55.00, 100.00, 15.00, 0.1500, 0.7000, '2026-10-22 20:29:30'),
(18, 2026, 'June', 'Mechanical Works', 45.00, 100.00, 15.00, 0.1500, 0.6000, '2026-10-22 20:29:30'),
(19, 2026, 'June', 'Electrical Works', 50.00, 100.00, 15.00, 0.1500, 0.6500, '2026-10-22 20:29:30'),
(20, 2026, 'June', 'Plumbing Works', 43.00, 100.00, 15.00, 0.1500, 0.5800, '2026-10-22 20:29:30'),
(21, 2026, 'July', 'Foundation structure', 80.00, 100.00, 10.00, 0.1000, 0.9000, '2026-10-22 20:29:30'),
(22, 2026, 'July', 'Structural Works', 70.00, 100.00, 10.00, 0.1000, 0.8000, '2026-10-22 20:29:30'),
(23, 2026, 'July', 'Mechanical Works', 60.00, 100.00, 15.00, 0.1500, 0.7500, '2026-10-22 20:29:30'),
(24, 2026, 'July', 'Electrical Works', 65.00, 100.00, 18.00, 0.1800, 0.8300, '2026-10-22 20:29:30'),
(25, 2026, 'July', 'Plumbing Works', 58.00, 100.00, 15.00, 0.1500, 0.7300, '2026-10-22 20:29:30'),
(26, 2026, 'August', 'Foundation structure', 90.00, 100.00, 5.00, 0.0500, 0.9500, '2026-10-22 20:29:30'),
(27, 2026, 'August', 'Structural Works', 80.00, 100.00, 10.00, 0.1000, 0.9000, '2026-10-22 20:29:30'),
(28, 2026, 'August', 'Mechanical Works', 75.00, 100.00, 10.00, 0.1000, 0.8500, '2026-10-22 20:29:30'),
(29, 2026, 'August', 'Electrical Works', 83.00, 100.00, 10.00, 0.1000, 0.9300, '2026-10-22 20:29:30'),
(30, 2026, 'August', 'Plumbing Works', 73.00, 100.00, 12.00, 0.1200, 0.8500, '2026-10-22 20:29:30'),
(31, 2026, 'Sept', 'Foundation structure', 95.00, 100.00, 3.00, 0.0300, 0.9800, '2026-10-22 20:29:30'),
(32, 2026, 'Sept', 'Structural Works', 90.00, 100.00, 5.00, 0.0500, 0.9500, '2026-10-22 20:29:30'),
(33, 2026, 'Sept', 'Mechanical Works', 85.00, 100.00, 10.00, 0.1000, 0.9500, '2026-10-22 20:29:30'),
(34, 2026, 'Sept', 'Electrical Works', 93.00, 100.00, 5.00, 0.0500, 0.9800, '2026-10-22 20:29:30'),
(35, 2026, 'Sept', 'Plumbing Works', 85.00, 100.00, 10.00, 0.1000, 0.9500, '2026-10-22 20:29:30'),
(36, 2026, 'October', 'Foundation structure', 98.00, 100.00, 2.00, 0.0200, 1.0000, '2026-10-22 20:29:30'),
(37, 2026, 'October', 'Structural Works', 95.00, 100.00, 2.00, 0.0200, 0.9700, '2026-10-22 20:29:30'),
(38, 2026, 'October', 'Mechanical Works', 95.00, 100.00, 5.00, 0.0500, 1.0000, '2026-10-22 20:29:30'),
(39, 2026, 'October', 'Electrical Works', 98.00, 100.00, 5.00, 0.0500, 1.0300, '2026-10-22 20:29:30'),
(40, 2026, 'October', 'Plumbing Works', 95.00, 100.00, 5.00, 0.0500, 1.0000, '2026-10-22 20:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `project_priority_history`
--

CREATE TABLE `project_priority_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `priority_score` decimal(6,2) NOT NULL,
  `priority_tier` enum('Low','Medium','High','Critical') NOT NULL,
  `factors_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`factors_json`)),
  `calculated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_priority_history`
--

INSERT INTO `project_priority_history` (`id`, `project_id`, `priority_score`, `priority_tier`, `factors_json`, `calculated_at`) VALUES
(1, 18, 70.00, 'Critical', '{\"score\":70,\"tier\":\"Critical\",\"actual_progress\":0,\"expected_progress\":89.28,\"schedule_gap\":89.28,\"funds_utilisation_pct\":74.34,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(2, 20, 46.22, 'High', '{\"score\":46.22,\"tier\":\"High\",\"actual_progress\":53,\"expected_progress\":88.55,\"schedule_gap\":35.55,\"funds_utilisation_pct\":53.06,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(3, 21, 0.00, 'Low', '{\"score\":0,\"tier\":\"Low\",\"actual_progress\":0,\"expected_progress\":0,\"schedule_gap\":0,\"funds_utilisation_pct\":0,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(4, 22, 69.70, 'High', '{\"score\":69.7,\"tier\":\"High\",\"actual_progress\":4,\"expected_progress\":69.65,\"schedule_gap\":65.65,\"funds_utilisation_pct\":4.47,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(5, 23, 0.00, 'Low', '{\"score\":0,\"tier\":\"Low\",\"actual_progress\":0,\"expected_progress\":0,\"schedule_gap\":0,\"funds_utilisation_pct\":0,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(6, 24, 0.00, 'Low', '{\"score\":0,\"tier\":\"Low\",\"actual_progress\":0,\"expected_progress\":0,\"schedule_gap\":0,\"funds_utilisation_pct\":0,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(7, 25, 0.00, 'Low', '{\"score\":0,\"tier\":\"Low\",\"actual_progress\":0,\"expected_progress\":0,\"schedule_gap\":0,\"funds_utilisation_pct\":0,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(8, 26, 0.00, 'Low', '{\"score\":0,\"tier\":\"Low\",\"actual_progress\":0,\"expected_progress\":0,\"schedule_gap\":0,\"funds_utilisation_pct\":0,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(9, 27, 2.56, 'Low', '{\"score\":2.56,\"tier\":\"Low\",\"actual_progress\":74,\"expected_progress\":62.96,\"schedule_gap\":0,\"funds_utilisation_pct\":74.35,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(10, 28, 0.60, 'Low', '{\"score\":0.6,\"tier\":\"Low\",\"actual_progress\":75,\"expected_progress\":72.34,\"schedule_gap\":0,\"funds_utilisation_pct\":75,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(11, 29, 7.50, 'Low', '{\"score\":7.5,\"tier\":\"Low\",\"actual_progress\":34,\"expected_progress\":0,\"schedule_gap\":0,\"funds_utilisation_pct\":33.33,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(12, 30, 70.00, 'Critical', '{\"score\":70,\"tier\":\"Critical\",\"actual_progress\":17,\"expected_progress\":84.69,\"schedule_gap\":67.69,\"funds_utilisation_pct\":16.67,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08'),
(13, 31, 66.64, 'High', '{\"score\":66.64,\"tier\":\"High\",\"actual_progress\":0,\"expected_progress\":55.47,\"schedule_gap\":55.47,\"funds_utilisation_pct\":0,\"milestone_risk\":0,\"status_risk\":0,\"overdue\":false}', '2026-11-02 10:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `project_progress_updates`
--

CREATE TABLE `project_progress_updates` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `action_text` text NOT NULL,
  `progress_pct` decimal(5,2) DEFAULT NULL,
  `recorded_at` datetime NOT NULL,
  `recorded_by` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_progress_updates`
--

INSERT INTO `project_progress_updates` (`id`, `project_id`, `action_text`, `progress_pct`, `recorded_at`, `recorded_by`, `created_at`) VALUES
(1, 17, 'Facility Inspection.', 100.00, '2026-10-14 14:30:00', 'System Administrator', '2026-11-04 16:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `project` varchar(255) DEFAULT NULL,
  `report_date` date NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `visibility` varchar(50) DEFAULT 'Restricted',
  `status` varchar(50) DEFAULT 'Pending',
  `uploaded_by` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `module` varchar(100) DEFAULT 'General',
  `file_size` varchar(30) DEFAULT NULL,
  `uploader_email` varchar(190) DEFAULT NULL,
  `summary` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `code`, `title`, `project`, `report_date`, `file_name`, `visibility`, `status`, `uploaded_by`, `created_at`, `module`, `file_size`, `uploader_email`, `summary`) VALUES
(1, 'MOH-REP-2026-446A', 'Damu-KE Blood Transfusion App Progress Review', '9TH GoK/ UNFPA 10th County Programmes MOH NSDCC HIV -UNFPA', '2026-11-02', 'rep_20261102_132916_16db84d7.pdf', 'Public', 'Pending Review', 'Authorized User', '2026-11-02 10:29:16', 'General', '0.18 MB', '', 'App technical requirements submitted by developer');

-- --------------------------------------------------------

--
-- Table structure for table `repository_documents`
--

CREATE TABLE `repository_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `document_category` enum('Charter','Policy','Report','Mandate','Guideline','Other') NOT NULL DEFAULT 'Other',
  `repository_type` enum('system_upload','general_repository') NOT NULL DEFAULT 'system_upload',
  `source_module` varchar(100) DEFAULT NULL,
  `original_name` varchar(255) NOT NULL,
  `stored_name` varchar(255) NOT NULL,
  `mime_type` varchar(150) DEFAULT NULL,
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_by_name` varchar(150) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sagas`
--

CREATE TABLE `sagas` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `code` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sagas`
--

INSERT INTO `sagas` (`id`, `name`, `code`, `description`, `logo`, `created_at`) VALUES
(1, 'Kenya Medical Research Institute (KEMRI)', 'KEMRI', 'Medical research and vaccine innovation hub', 'assets/uploads/kemri.png', '2026-10-15 16:03:04'),
(2, 'Kenya Medical Supplies Authority (KEMSA)', 'KEMSA', 'Strategic medical logistics and supply chain', 'assets/uploads/kemsa-logo.png', '2026-10-15 16:03:04'),
(3, 'Kenyatta National Hospital (KNH)', 'KNH', 'National referral and specialized teaching hospital', 'assets/uploads/Kenya National Hospital.png', '2026-10-15 16:03:04'),
(4, 'Moi Teaching and Referral Hospital (MTRH)', 'MTRH', 'Western Kenya multi-specialty referral facility', 'assets/uploads/Moi Teaching and Referral Hospital.png', '2026-10-15 16:03:04'),
(5, 'Mathari National Teaching and Referral Hospital (MNTRH)', 'MNTRH', 'National specialized psychiatric and mental health hospital', 'assets/uploads/Mathari National Teaching.jpg', '2026-10-15 16:03:04'),
(6, 'Kenyatta University Teaching, Referral & Research Hospital (KUTRRH)', 'KUTRRH', 'National oncology, research and specialized care hospital', 'assets/uploads/KUTRRH.png', '2026-10-15 16:03:04'),
(7, 'Mwai Kibaki Referral Hospital (MKRH)', 'MKRH', 'Mt. Kenya regional annex hospital for specialized surgery', 'assets/uploads/MKRH.png', '2026-10-15 16:03:04'),
(8, 'Jaramogi Oginga Odinga Teaching and Referral Hospital (JOOTRH)', 'JOOTRH', 'Lake Basin regional referral and research hub', 'assets/uploads/JOOTRH logo.png', '2026-10-15 16:03:04'),
(9, 'National Cancer Institute Kenya (NCIK)', 'NCIK', 'Cancer prevention, registration and early detection authority', 'assets/uploads/NCI-KENYA-LOGO.png', '2026-10-15 16:03:04'),
(10, 'National Syndemic Diseases Control Council (NSDCC)', 'NSDCC', 'Syndemic disease response, HIV, TB and viral hepatitis', 'assets/uploads/NSDCC.jpg', '2026-10-15 16:03:04'),
(11, 'Kenya National Blood Transfusion Service (KNBTS)', 'KNBTS', 'Safe blood and component services across all counties', 'assets/uploads/KNBTS.png', '2026-10-15 16:03:04'),
(12, 'National Spinal Injury Referral Hospital (NSIRH)', 'NSIRH', 'Specialized spinal rehabilitation and surgical care', 'assets/uploads/NSIRH.png', '2026-10-15 16:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `sub_programmes`
--

CREATE TABLE `sub_programmes` (
  `id` varchar(50) NOT NULL,
  `programme_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'Viewer',
  `directorate` varchar(150) NOT NULL DEFAULT 'Health Systems',
  `can_upload` tinyint(1) DEFAULT 1,
  `can_edit` tinyint(1) DEFAULT 0,
  `can_approve` tinyint(1) DEFAULT 0,
  `is_admin` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `two_factor_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `two_factor_secret` text DEFAULT NULL,
  `rbac_category` varchar(60) NOT NULL DEFAULT 'Officer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password_hash`, `role`, `directorate`, `can_upload`, `can_edit`, `can_approve`, `is_admin`, `created_at`, `updated_at`, `two_factor_enabled`, `two_factor_secret`, `rbac_category`) VALUES
(1, 'System Administrator', 'admin@health.go.ke', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Administrator', 'Headquarters', 1, 1, 1, 1, '2026-10-14 08:52:53', '2026-11-02 22:28:14', 0, NULL, 'System Administrator'),
(2, 'Principal Secretary, CBS', 'ps@medicalservices.go.ke', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Principal Secretary', 'Executive Office', 1, 1, 1, 1, '2026-10-14 08:52:53', '2026-11-04 14:22:07', 0, NULL, 'System Administrator'),
(3, 'Project Monitoring Officer', 'monitoring@health.go.ke', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Planning Director', 'Policy & Planning', 1, 1, 0, 0, '2026-10-14 08:52:53', '2026-11-02 22:28:14', 0, NULL, 'Executive Oversight');

-- --------------------------------------------------------

--
-- Table structure for table `user_module_permissions`
--

CREATE TABLE `user_module_permissions` (
  `user_id` int(11) NOT NULL,
  `module_key` varchar(60) NOT NULL,
  `granted_by` int(11) DEFAULT NULL,
  `granted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_module_permissions`
--

INSERT INTO `user_module_permissions` (`user_id`, `module_key`, `granted_by`, `granted_at`) VALUES
(1, 'actions', NULL, '2026-11-02 22:28:14'),
(1, 'audit_logs', NULL, '2026-11-02 22:28:14'),
(1, 'dashboard', NULL, '2026-11-02 22:28:14'),
(1, 'diary', NULL, '2026-11-02 22:28:14'),
(1, 'events', NULL, '2026-11-02 22:28:14'),
(1, 'flagships', NULL, '2026-11-02 22:28:14'),
(1, 'meetings', NULL, '2026-11-02 22:28:14'),
(1, 'pc', NULL, '2026-11-02 22:28:14'),
(1, 'projects', NULL, '2026-11-02 22:28:14'),
(1, 'reports', NULL, '2026-11-02 22:28:14'),
(1, 'users', NULL, '2026-11-02 22:28:14'),
(2, 'actions', NULL, '2026-11-02 22:28:14'),
(2, 'audit_logs', NULL, '2026-11-02 22:28:14'),
(2, 'dashboard', NULL, '2026-11-02 22:28:14'),
(2, 'diary', NULL, '2026-11-02 22:28:14'),
(2, 'events', NULL, '2026-11-02 22:28:14'),
(2, 'flagships', NULL, '2026-11-02 22:28:14'),
(2, 'meetings', NULL, '2026-11-02 22:28:14'),
(2, 'pc', NULL, '2026-11-02 22:28:14'),
(2, 'projects', NULL, '2026-11-02 22:28:14'),
(2, 'reports', NULL, '2026-11-02 22:28:14'),
(2, 'users', NULL, '2026-11-02 22:28:14'),
(3, 'actions', NULL, '2026-11-02 22:28:14'),
(3, 'audit_logs', NULL, '2026-11-02 22:28:14'),
(3, 'dashboard', NULL, '2026-11-02 22:28:14'),
(3, 'diary', NULL, '2026-11-02 22:28:14'),
(3, 'events', NULL, '2026-11-02 22:28:14'),
(3, 'flagships', NULL, '2026-11-02 22:28:14'),
(3, 'meetings', NULL, '2026-11-02 22:28:14'),
(3, 'pc', NULL, '2026-11-02 22:28:14'),
(3, 'projects', NULL, '2026-11-02 22:28:14'),
(3, 'reports', NULL, '2026-11-02 22:28:14'),
(3, 'users', NULL, '2026-11-02 22:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_security_settings`
--

CREATE TABLE `user_security_settings` (
  `user_id` int(11) NOT NULL,
  `email_2fa_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_points`
--
ALTER TABLE `action_points`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_no` (`ref_no`);

--
-- Indexes for table `app_notifications`
--
ALTER TABLE `app_notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_app_notification_user_key` (`user_id`,`notification_key`),
  ADD KEY `idx_app_notification_user_read` (`user_id`,`read_at`,`created_at`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleted_items`
--
ALTER TABLE `deleted_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_deleted_type_item` (`item_type`,`item_id`);

--
-- Indexes for table `delivery_units`
--
ALTER TABLE `delivery_units`
  ADD PRIMARY KEY (`delivery_init__id`),
  ADD UNIQUE KEY `uq_delivery_units_code` (`code`);

--
-- Indexes for table `diary_attendance_responses`
--
ALTER TABLE `diary_attendance_responses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_diary_attendance` (`event_id`,`user_id`),
  ADD KEY `fk_diary_attendance_user` (`user_id`);

--
-- Indexes for table `diary_attendee_responses`
--
ALTER TABLE `diary_attendee_responses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_diary_attendee_response` (`event_id`,`recipient_user_id`),
  ADD KEY `idx_diary_attendee_recipient_status` (`recipient_user_id`,`response_status`);

--
-- Indexes for table `diary_events`
--
ALTER TABLE `diary_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_diary_project_id` (`project_id`);

--
-- Indexes for table `diary_event_projects`
--
ALTER TABLE `diary_event_projects`
  ADD PRIMARY KEY (`event_id`,`project_id`),
  ADD KEY `idx_dep_project` (`project_id`);

--
-- Indexes for table `directorates`
--
ALTER TABLE `directorates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_directorates_code` (`code`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_division_directorate_name` (`directorate_id`,`name`);

--
-- Indexes for table `document_permissions`
--
ALTER TABLE `document_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_doc_user` (`report_id`,`user_email`);

--
-- Indexes for table `flagships`
--
ALTER TABLE `flagships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_flagships_is_archived` (`is_archived`);

--
-- Indexes for table `kpis_and_sub_kpis`
--
ALTER TABLE `kpis_and_sub_kpis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_action_points`
--
ALTER TABLE `meeting_action_points`
  ADD PRIMARY KEY (`meeting_id`,`action_point_id`),
  ADD KEY `idx_map_action_point_id` (`action_point_id`),
  ADD KEY `idx_map_meeting_id` (`meeting_id`);

--
-- Indexes for table `meeting_documents`
--
ALTER TABLE `meeting_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meeting_id` (`meeting_id`);

--
-- Indexes for table `monthly_progress`
--
ALTER TABLE `monthly_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_month` (`project_id`,`year_month`),
  ADD KEY `idx_project_kpi` (`project_id`,`kpi_name`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_notification_user_source` (`user_id`,`source_key`),
  ADD KEY `idx_notification_user_unread` (`user_id`,`is_read`,`created_at`);

--
-- Indexes for table `outputs`
--
ALTER TABLE `outputs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_unit_id` (`delivery_unit_id`);

--
-- Indexes for table `pc_report_uploads`
--
ALTER TABLE `pc_report_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_kpis`
--
ALTER TABLE `performance_kpis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `programmes`
--
ALTER TABLE `programmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_projects_project_code` (`project_code`),
  ADD KEY `idx_projects_flagship_id` (`flagship_id`);

--
-- Indexes for table `project_action_logs`
--
ALTER TABLE `project_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_action_logs` (`project_id`,`action_at`),
  ADD KEY `fk_project_action_logs_user` (`created_by`);

--
-- Indexes for table `project_financial_projections`
--
ALTER TABLE `project_financial_projections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_project_financial_year` (`project_id`,`fiscal_year`);

--
-- Indexes for table `project_key_output_results`
--
ALTER TABLE `project_key_output_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_project_key_output_year` (`scope_type`,`scope_name`,`kpi_code`,`fiscal_year`),
  ADD KEY `idx_project_key_output_fy` (`scope_type`,`scope_name`,`fiscal_year`);

--
-- Indexes for table `project_kpis`
--
ALTER TABLE `project_kpis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_priority_history`
--
ALTER TABLE `project_priority_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_priority_project` (`project_id`,`calculated_at`);

--
-- Indexes for table `project_progress_updates`
--
ALTER TABLE `project_progress_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_progress_project_time` (`project_id`,`recorded_at`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `repository_documents`
--
ALTER TABLE `repository_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_repository_type_category` (`repository_type`,`document_category`),
  ADD KEY `fk_repository_uploaded_by` (`uploaded_by`);

--
-- Indexes for table `sagas`
--
ALTER TABLE `sagas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_sagas_code` (`code`);

--
-- Indexes for table `sub_programmes`
--
ALTER TABLE `sub_programmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programme_id` (`programme_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_module_permissions`
--
ALTER TABLE `user_module_permissions`
  ADD PRIMARY KEY (`user_id`,`module_key`),
  ADD KEY `idx_user_module_permissions_module` (`module_key`);

--
-- Indexes for table `user_security_settings`
--
ALTER TABLE `user_security_settings`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_points`
--
ALTER TABLE `action_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `app_notifications`
--
ALTER TABLE `app_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `deleted_items`
--
ALTER TABLE `deleted_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diary_attendance_responses`
--
ALTER TABLE `diary_attendance_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diary_attendee_responses`
--
ALTER TABLE `diary_attendee_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diary_events`
--
ALTER TABLE `diary_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `directorates`
--
ALTER TABLE `directorates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `document_permissions`
--
ALTER TABLE `document_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flagships`
--
ALTER TABLE `flagships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kpis_and_sub_kpis`
--
ALTER TABLE `kpis_and_sub_kpis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meeting_documents`
--
ALTER TABLE `meeting_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `monthly_progress`
--
ALTER TABLE `monthly_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pc_report_uploads`
--
ALTER TABLE `pc_report_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `performance_kpis`
--
ALTER TABLE `performance_kpis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `programmes`
--
ALTER TABLE `programmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `project_action_logs`
--
ALTER TABLE `project_action_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_financial_projections`
--
ALTER TABLE `project_financial_projections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `project_key_output_results`
--
ALTER TABLE `project_key_output_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `project_kpis`
--
ALTER TABLE `project_kpis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `project_priority_history`
--
ALTER TABLE `project_priority_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `project_progress_updates`
--
ALTER TABLE `project_progress_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `repository_documents`
--
ALTER TABLE `repository_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sagas`
--
ALTER TABLE `sagas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diary_attendance_responses`
--
ALTER TABLE `diary_attendance_responses`
  ADD CONSTRAINT `fk_diary_attendance_event` FOREIGN KEY (`event_id`) REFERENCES `diary_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_diary_attendance_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `diary_event_projects`
--
ALTER TABLE `diary_event_projects`
  ADD CONSTRAINT `fk_dep_event` FOREIGN KEY (`event_id`) REFERENCES `diary_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dep_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `divisions`
--
ALTER TABLE `divisions`
  ADD CONSTRAINT `fk_divisions_directorate` FOREIGN KEY (`directorate_id`) REFERENCES `directorates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `document_permissions`
--
ALTER TABLE `document_permissions`
  ADD CONSTRAINT `fk_doc_perm_report` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `monthly_progress`
--
ALTER TABLE `monthly_progress`
  ADD CONSTRAINT `monthly_progress_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `fk_projects_flagship` FOREIGN KEY (`flagship_id`) REFERENCES `flagships` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `project_action_logs`
--
ALTER TABLE `project_action_logs`
  ADD CONSTRAINT `fk_project_action_logs_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_project_action_logs_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_financial_projections`
--
ALTER TABLE `project_financial_projections`
  ADD CONSTRAINT `fk_project_financial_projection_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_priority_history`
--
ALTER TABLE `project_priority_history`
  ADD CONSTRAINT `fk_priority_history_project` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `repository_documents`
--
ALTER TABLE `repository_documents`
  ADD CONSTRAINT `fk_repository_uploaded_by` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sub_programmes`
--
ALTER TABLE `sub_programmes`
  ADD CONSTRAINT `sub_programmes_ibfk_1` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
