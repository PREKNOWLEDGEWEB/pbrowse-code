-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 12, 2021 at 07:51 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activate_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `al_id` int(11) NOT NULL,
  `al_log` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `al_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`al_id`, `al_log`, `al_date`) VALUES
(1, 'Successful login from IP <b>208.78.41.150</b> (Vancouver, Canada) using Chrome 83.0.4103.97 on Windows 10.', '2020-06-06 04:11:31'),
(2, 'Successful login from IP <b>49.37.4.197</b> (Kolkata, India) using Chrome 86.0.4240.198 on Windows 7.', '2020-12-08 17:24:02'),
(3, 'Successful login from IP <b>49.37.4.129</b> (Kolkata, India) using Chrome 87.0.4280.88 on Windows 8.1.', '2020-12-09 12:56:53'),
(4, 'New product <b>Grocery with Map System Multistore</b> added by Administrator.', '2020-12-09 12:57:48'),
(5, 'Activation attempt blocked for client <b>d</b> using license <b>f</b> for product Grocery with Map System Multistore on URL <a href=\"http://preknowledge.in/grocery1//activate.php\">preknowledge.in/grocery1//activate.php</a>, due to incorrect license or product id.', '2020-12-09 13:48:38'),
(6, 'New Grocery with Map System Multistore license <b>3FAD-0CD5-9238-F8DF8D6A-BE8C</b> added by Administrator.', '2020-12-09 13:50:36'),
(7, 'Activation attempt blocked for client <b>devpritam</b> using license <b>3FAD-0CD5-9238-F8DF8D6A-BE8C</b> for product <b>Grocery with Map System Multistore</b> on URL <a href=\"http://preknowledge.in/grocery1//activate.php\">preknowledge.in/grocery1//activate.php</a>, as provided license is not assigned to this client.', '2020-12-09 13:50:51'),
(8, 'License <b>3FAD-0CD5-9238-F8DF8D6A-BE8C</b> was used by client <b>pritamdev</b> for activating product <b>Grocery with Map System Multistore</b> on URL <a href=\"http://preknowledge.in/grocery1//activate.php\">preknowledge.in/grocery1//activate.php</a>.', '2020-12-09 13:51:10'),
(9, 'Failed login attempt from IP <b>49.37.3.113</b> (Kolkata, India) using Chrome 87.0.4280.88 on Windows 7.', '2020-12-13 17:51:57'),
(10, 'Successful login from IP <b>49.37.3.113</b> (Kolkata, India) using Chrome 87.0.4280.88 on Windows 7.', '2020-12-13 17:52:11'),
(11, 'New product <b>Website Grocery with Admin Pannel with SMS intergation</b> added by Administrator.', '2020-12-13 17:52:55'),
(12, 'Successful login from IP <b>49.37.7.165</b> (Kolkata, India) using Chrome 87.0.4280.88 on Windows 7.', '2020-12-29 08:52:03'),
(13, 'Activation attempt blocked for client <b>ff</b> using license <b>ff</b> for product Grocery with Map System Multistore on URL <a href=\"http://localhost/grocery1/activate.php\">localhost/grocery1/activate.php</a>, due to incorrect license or product id.', '2021-02-19 15:30:43'),
(14, 'Failed login attempt from IP <b>49.37.45.184</b> (Kolkata, India) using Chrome 91.0.4472.124 on Windows 10.', '2021-07-13 17:07:52'),
(15, 'Failed login attempt from IP <b>49.37.45.184</b> (Kolkata, India) using Chrome 91.0.4472.124 on Windows 10.', '2021-07-13 17:09:10'),
(16, 'Failed login attempt from IP <b>49.37.45.184</b> (Kolkata, India) using Chrome 91.0.4472.124 on Windows 10.', '2021-07-13 17:21:36'),
(17, 'Successful login from IP <b>49.37.45.184</b> (Kolkata, India) using Chrome 91.0.4472.124 on Windows 10.', '2021-07-13 17:27:07'),
(18, 'New product <b>GoGrocer</b> added by Administrator.', '2021-07-13 17:28:10'),
(19, 'New GoGrocer license <b>5E77-97FC-2F1C-6EA3CB8C-0490</b> added by Administrator.', '2021-07-13 17:30:04'),
(20, 'License <b>5E77-97FC-2F1C-6EA3CB8C-0490</b> was used by client <b>AAA</b> for activating product <b>GoGrocer</b> on URL <a href=\"http://localhost/gog/verifyPost\">localhost/gog/verifyPost</a>.', '2021-07-13 17:30:20'),
(21, 'License <b>5E77-97FC-2F1C-6EA3CB8C-0490</b> was used by client <b>aads</b> for activating product <b>GoGrocer</b> on URL <a href=\"http://localhost/gog/verifyPost\">localhost/gog/verifyPost</a>.', '2021-07-13 17:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text COLLATE utf8mb4_unicode_ci,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `key`, `controller`, `ignore_limits`, `ip_addresses`, `date_created`) VALUES
(1, '6C3AC7CA29439CB81EB1', '/api_external', 0, NULL, '2020-12-09 13:33:56'),
(2, '470750F5ED33BB2F6E09', '/api_internal', 1, NULL, '2020-12-13 18:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `api_limits`
--

CREATE TABLE `api_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `as_id` int(11) NOT NULL,
  `as_name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `as_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`as_id`, `as_name`, `as_value`) VALUES
(1, 'license_code_format', '{[Z]}{[Z]}{[Z]}{[Z]}-{[Z]}{[Z]}{[Z]}{[Z]}-{[Z]}{[Z]}{[Z]}{[Z]}-{[Z]}{[Z]}{[Z]}{[Z]}{[Z]}{[Z]}{[Z]}{[Z]}-{[Z]}{[Z]}{[Z]}{[Z]}'),
(2, 'licensebox_theme', 'flat'),
(3, 'envato_api_token', NULL),
(4, 'server_email', 'no-reply@example.com'),
(5, 'blacklisted_ips', NULL),
(6, 'blacklisted_domains', NULL),
(7, 'api_rate_limit_method', 'ip_address'),
(8, 'api_rate_limit', NULL),
(9, 'license_expiring', '<p>Hello,&nbsp;</p><p>Your <strong>{[product]}</strong> license is expiring today, please renew your license if you wish to continue using {[product]}.</p><p><i>Company</i></p>'),
(10, 'support_expiring', '<p>Hello,&nbsp;</p><p>Your <strong>{[product]}</strong> support period is ending today, please renew support to continue receiving a better prioritized support.</p><p><i>Company</i></p>'),
(11, 'updates_expiring', '<p>Hello,&nbsp;</p><p>Your <strong>{[product]}</strong> updates period is ending today, please renew updates and never miss out on our future releases.</p><p><i>Company</i></p>'),
(12, 'new_update', '<p>Hello,&nbsp;</p><p>We are excited to announce our new <strong>{[version]}</strong> update for <strong>{[product]}</strong>, grab the new version now and try it out yourself!&nbsp;</p><p><i>Company</i></p>'),
(13, 'license_expiring_enable', '0'),
(14, 'support_expiring_enable', '0'),
(15, 'updates_expiring_enable', '0'),
(16, 'new_update_enable', '0'),
(17, 'failed_activation_logs', '1'),
(18, 'failed_update_download_logs', '1'),
(19, 'auto_domain_blacklist', '70'),
(20, 'auto_ip_blacklist', '70'),
(21, 'server_timezone', 'UTC'),
(22, 'email_method', 'default'),
(23, 'smtp_connection', 'tls'),
(24, 'smtp_authentication', '0'),
(25, 'smtp_username', NULL),
(26, 'smtp_password', NULL),
(27, 'smtp_host', NULL),
(28, 'smtp_port', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_users`
--

CREATE TABLE `auth_users` (
  `au_id` int(11) NOT NULL,
  `au_uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `au_date_created` date NOT NULL,
  `au_reset_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `au_reset_exp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_users`
--

INSERT INTO `auth_users` (`au_id`, `au_uid`, `au_username`, `au_password`, `au_email`, `au_name`, `au_date_created`, `au_reset_key`, `au_reset_exp`) VALUES
(1, 'lbgstyu7g12', 'pritam', '$2y$10$m6Evl3m8x6lBANoWZiUUZu2iGGH5SgNYcjcGBPPbBC0MG1mVVfnmm', 'pritamkumarsamal@gmail.com', 'Administrator', '2019-02-13', '$2y$10$9iH64KKwgD2SAZplDNGyPu.cYLz2eadrySs.WVT1HMuFEQcZLIVLq', '2021-07-13 18:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `cron_mails`
--

CREATE TABLE `cron_mails` (
  `id` int(11) NOT NULL,
  `license` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_sent` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `version` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `pd_id` int(11) NOT NULL,
  `pd_pid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `envato_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pd_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pd_details` text COLLATE utf8mb4_unicode_ci,
  `license_update` tinyint(1) NOT NULL,
  `pd_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`pd_id`, `pd_pid`, `envato_id`, `pd_name`, `pd_details`, `license_update`, `pd_status`) VALUES
(1, 'NEWGRO99', NULL, 'Grocery with Map System Multistore', NULL, 1, 1),
(2, 'WBGRO', NULL, 'Website Grocery with Admin Pannel with SMS intergation', 'Website Grocery with Admin Pannel with SMS intergation', 1, 1),
(3, '41A60494', NULL, 'GoGrocer', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_installations`
--

CREATE TABLE `product_installations` (
  `pi_id` int(11) NOT NULL,
  `pi_product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_iid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_username` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_purchase_code` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_url` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_ip` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pi_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pi_agent` text COLLATE utf8mb4_unicode_ci,
  `pi_isvalid` tinyint(1) NOT NULL,
  `pi_isactive` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_installations`
--

INSERT INTO `product_installations` (`pi_id`, `pi_product`, `pi_iid`, `pi_username`, `pi_purchase_code`, `pi_url`, `pi_ip`, `pi_date`, `pi_agent`, `pi_isvalid`, `pi_isactive`) VALUES
(1, 'NEWGRO99', 'd251a2a6d32623e', 'd', 'f', 'http://preknowledge.in/grocery1//activate.php', '148.72.88.29', '2020-12-09 13:48:38', '', 0, 0),
(2, 'NEWGRO99', '563bf9f2c0c3fa3', 'devpritam', '3FAD-0CD5-9238-F8DF8D6A-BE8C', 'http://preknowledge.in/grocery1//activate.php', '148.72.88.29', '2020-12-09 13:50:51', '', 0, 0),
(3, 'NEWGRO99', '3e7bc20650d078e', 'pritamdev', '3FAD-0CD5-9238-F8DF8D6A-BE8C', 'http://preknowledge.in/grocery1//activate.php', '148.72.88.29', '2020-12-09 13:51:10', '', 1, 1),
(4, 'NEWGRO99', '71c96e2af71765a', 'ff', 'ff', 'http://localhost/grocery1/activate.php', '::1', '2021-02-19 15:30:43', '', 0, 0),
(5, '41A60494', '8ba8be792052e44', 'AAA', '5E77-97FC-2F1C-6EA3CB8C-0490', 'http://localhost/gog/verifyPost', '::1', '2021-07-13 17:30:20', '', 1, 1),
(6, '41A60494', '4be644308927078', 'aads', '5E77-97FC-2F1C-6EA3CB8C-0490', 'http://localhost/gog/verifyPost', '::1', '2021-07-13 17:42:36', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_licenses`
--

CREATE TABLE `product_licenses` (
  `id` int(11) NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_code` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_envato` tinyint(4) DEFAULT NULL,
  `added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `client` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `ips` text COLLATE utf8mb4_unicode_ci,
  `domains` text COLLATE utf8mb4_unicode_ci,
  `supported_till` datetime DEFAULT NULL,
  `updates_till` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `expiry_days` int(11) DEFAULT NULL,
  `uses` int(11) DEFAULT NULL,
  `uses_left` int(11) DEFAULT NULL,
  `parallel_uses` int(11) DEFAULT NULL,
  `parallel_uses_left` int(11) DEFAULT NULL,
  `validity` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_licenses`
--

INSERT INTO `product_licenses` (`id`, `pid`, `license_code`, `license_type`, `invoice`, `is_envato`, `added_on`, `client`, `email`, `comments`, `ips`, `domains`, `supported_till`, `updates_till`, `expiry`, `expiry_days`, `uses`, `uses_left`, `parallel_uses`, `parallel_uses_left`, `validity`) VALUES
(1, 'NEWGRO99', '3FAD-0CD5-9238-F8DF8D6A-BE8C', 'client', NULL, NULL, '2020-12-09 13:50:36', 'pritamdev', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1),
(2, '41A60494', '5E77-97FC-2F1C-6EA3CB8C-0490', NULL, NULL, NULL, '2021-07-13 17:30:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_versions`
--

CREATE TABLE `product_versions` (
  `id` int(11) NOT NULL,
  `vid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changelog` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_file` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_file` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `update_downloads`
--

CREATE TABLE `update_downloads` (
  `id` int(11) NOT NULL,
  `did` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `download_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isvalid` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`al_id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `api_limits`
--
ALTER TABLE `api_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`as_id`);

--
-- Indexes for table `auth_users`
--
ALTER TABLE `auth_users`
  ADD PRIMARY KEY (`au_id`),
  ADD UNIQUE KEY `username` (`au_username`),
  ADD UNIQUE KEY `au_email` (`au_email`),
  ADD UNIQUE KEY `au_uid` (`au_uid`);

--
-- Indexes for table `cron_mails`
--
ALTER TABLE `cron_mails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license` (`license`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`pd_id`),
  ADD UNIQUE KEY `pd_pid` (`pd_pid`);

--
-- Indexes for table `product_installations`
--
ALTER TABLE `product_installations`
  ADD PRIMARY KEY (`pi_id`),
  ADD UNIQUE KEY `pi_iid` (`pi_iid`);

--
-- Indexes for table `product_licenses`
--
ALTER TABLE `product_licenses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `license_code` (`license_code`);

--
-- Indexes for table `product_versions`
--
ALTER TABLE `product_versions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`);

--
-- Indexes for table `update_downloads`
--
ALTER TABLE `update_downloads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `did` (`did`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `al_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api_limits`
--
ALTER TABLE `api_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_users`
--
ALTER TABLE `auth_users`
  MODIFY `au_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cron_mails`
--
ALTER TABLE `cron_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_installations`
--
ALTER TABLE `product_installations`
  MODIFY `pi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_licenses`
--
ALTER TABLE `product_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_versions`
--
ALTER TABLE `product_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `update_downloads`
--
ALTER TABLE `update_downloads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
