-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 18, 2018 at 11:14 AM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radius`
--

-- --------------------------------------------------------

--
-- Table structure for table `nas`
--

CREATE TABLE `nas` (
  `id` int(10) NOT NULL,
  `nasname` varchar(128) NOT NULL,
  `shortname` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT 'other',
  `ports` int(5) DEFAULT NULL,
  `secret` varchar(60) NOT NULL DEFAULT 'secret',
  `server` varchar(64) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT 'RADIUS Client'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nas`
--

INSERT INTO `nas` (`id`, `nasname`, `shortname`, `type`, `ports`, `secret`, `server`, `community`, `description`) VALUES
(2, '0.0.0.0/0', 'myNAS', 'other', NULL, 'mysecret', NULL, NULL, 'RADIUS Client');

-- --------------------------------------------------------

--
-- Table structure for table `radacct`
--

CREATE TABLE `radacct` (
  `radacctid` bigint(21) NOT NULL,
  `acctsessionid` varchar(64) NOT NULL DEFAULT '',
  `acctuniqueid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasportid` varchar(15) DEFAULT NULL,
  `nasporttype` varchar(32) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctsessiontime` int(12) UNSIGNED DEFAULT NULL,
  `acctauthentic` varchar(32) DEFAULT NULL,
  `connectinfo_start` varchar(50) DEFAULT NULL,
  `connectinfo_stop` varchar(50) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `acctterminatecause` varchar(32) NOT NULL DEFAULT '',
  `servicetype` varchar(32) DEFAULT NULL,
  `framedprotocol` varchar(32) DEFAULT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `acctstartdelay` int(12) UNSIGNED DEFAULT NULL,
  `acctstopdelay` int(12) UNSIGNED DEFAULT NULL,
  `xascendsessionsvrkey` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radacct`
--

INSERT INTO `radacct` (`radacctid`, `acctsessionid`, `acctuniqueid`, `username`, `groupname`, `realm`, `nasipaddress`, `nasportid`, `nasporttype`, `acctstarttime`, `acctstoptime`, `acctsessiontime`, `acctauthentic`, `connectinfo_start`, `connectinfo_stop`, `acctinputoctets`, `acctoutputoctets`, `calledstationid`, `callingstationid`, `acctterminatecause`, `servicetype`, `framedprotocol`, `framedipaddress`, `acctstartdelay`, `acctstopdelay`, `xascendsessionsvrkey`) VALUES
(126, '0D904509E679C6B9AE02CB75EC19B855', '9d90a8d9d53a20ae', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-12 15:13:06', '2018-12-12 15:20:15', 429, '', '', '', 255350, 1223079, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(127, 'B808906673BAC0093E63DC0B025300D1', 'b2e5f2b28f95d5ba', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-12 15:20:22', '2018-12-12 15:42:30', 1328, '', '', '', 185408, 404196, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(128, '871B29409145C35677B305589DA788E5', '41c432c64409cc38', 'ceko', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-12 15:52:38', '2018-12-12 15:53:44', 66, '', '', '', 49166, 142998, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.224', 0, 0, ''),
(129, '424D736A01023890B0080904C2236760', '9e6bc167f81aa8b5', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 10:53:54', '2018-12-17 10:54:44', 50, '', '', '', 11127, 5015, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(130, '57200C13EDC41649B0476ED8E29D1110', '69783dd6565ba1f9', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 10:54:56', '2018-12-17 10:55:24', 28, '', '', '', 7066, 4785, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(131, '400ADAD07C1DB367039C0C0E306B9DC8', '09f565d3d9c91420', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 10:55:41', '2018-12-17 11:00:27', 286, '', '', '', 77137, 663477, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(132, '009E00E8B0E06570D490E7790C364B73', '8cc9d7361973556b', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 11:00:56', '2018-12-17 11:01:12', 16, '', '', '', 11460, 4785, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(133, '6045D2B113EEAB057B6B63E1DACABB20', 'bcda362e37f0a6d8', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 11:03:53', '2018-12-17 11:04:40', 48, '', '', '', 21733, 5015, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(134, '15B5DABCC1D81405AC07651698C1C5BA', '85997ebd4f2279ac', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 11:04:48', '2018-12-17 11:14:33', 585, '', '', '', 51904, 185769, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(135, '8E8164D337A7846CAAAC3EE943704BED', 'bf670fe257877a47', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 11:14:46', '2018-12-17 11:36:07', 1281, '', '', '', 60637, 314410, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(136, '755EBD27D6A9B5D592A6AC373C2347B0', '50e59884d59b30ef', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 11:38:44', '2018-12-17 11:47:45', 541, '', '', '', 125305, 1367916, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(137, '0AEAA15001A1C6DC913C052836B83405', 'cf6da8429031430e', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 11:48:36', '2018-12-17 13:50:01', 7285, '', '', '', 453872, 5166635, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(138, '247CA68C8B571514830C92014ED8E708', 'f0921b4ec292efed', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 14:18:50', '2018-12-17 14:20:22', 92, '', '', '', 119254, 11520, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(139, 'D6A33752E80767DE01281AD270032610', '96cbf2eee04a034e', 'soft', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-17 14:20:37', '2018-12-17 15:57:07', 5790, '', '', '', 105581, 255066, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.12', 0, 0, ''),
(140, '1611B214C0676EC18A571050BE17E1A5', 'c3f5ae8f22b076c3', 'ceko', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-18 08:28:55', '2018-12-18 10:24:42', 6947, '', '', '', 1271360, 16661535, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.224', 0, 0, ''),
(141, '5843313758324C8B28D5B34C3AA0E480', '646c946d880bd1a3', 'ceko', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-18 11:02:05', '2018-12-18 11:02:07', 2, '', '', '', 0, 0, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.224', 0, 0, ''),
(142, '0007AD8076CC97606B8DE76EA168ED68', 'df4895fbcc1024f1', 'ceko', '', '', '127.0.0.1', '1', 'Virtual', '2018-12-18 11:04:04', NULL, 0, '', '', '', 0, 0, '', '94.236.252.45', '', 'Outbound-User', 'PPP', '10.8.0.224', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `radcheck`
--

CREATE TABLE `radcheck` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radcheck`
--

INSERT INTO `radcheck` (`id`, `username`, `attribute`, `op`, `value`) VALUES
(1, 'soft', 'Cleartext-Password', ':=', 'soft12'),
(3, 'ceko', 'SHA1-Password', ':=', '9ffcb7eda22d2c68f2e703729e61a417aa5fe909');

-- --------------------------------------------------------

--
-- Table structure for table `radgroupcheck`
--

CREATE TABLE `radgroupcheck` (
  `id` int(11) UNSIGNED NOT NULL,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radgroupcheck`
--

INSERT INTO `radgroupcheck` (`id`, `groupname`, `attribute`, `op`, `value`) VALUES
(1, 'cekogroup', 'Pool-Name', ':=', 'test_pool'),
(7, 'cekogroup', 'Auth-Type', ':=', 'PAP');

-- --------------------------------------------------------

--
-- Table structure for table `radgroupreply`
--

CREATE TABLE `radgroupreply` (
  `id` int(11) UNSIGNED NOT NULL,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radgroupreply`
--

INSERT INTO `radgroupreply` (`id`, `groupname`, `attribute`, `op`, `value`) VALUES
(1, 'dynamic', 'Framed-Compression', ':=', 'Van-Jacobsen-TCP-IP'),
(2, 'dynamic', 'Framed-Protocol', ':=', 'PPP'),
(3, 'dynamic', 'Service-Type', ':=', 'Framed-User'),
(4, 'dynamic', 'Framed-MTU', ':=', '1500'),
(15, 'static', 'Framed-Protocol', ':=', 'PPP'),
(16, 'static', 'Service-Type', ':=', 'Framed-User'),
(17, 'static', 'Framed-Compression', ':=', 'Van-Jacobsen-TCP-IP'),
(18, 'cekogroup', 'Service-Type', ':=', 'Framed-User'),
(19, 'cekogroup', 'Framed-Protocol', ':=', 'PPP'),
(26, 'cekogroup', 'Framed-Compression', ':=', 'Van-Jacobsen-TCP-IP'),
(27, 'cekogroup', 'Framed-MTU', ':=', '1500');

-- --------------------------------------------------------

--
-- Table structure for table `radippool`
--

CREATE TABLE `radippool` (
  `id` int(11) UNSIGNED NOT NULL,
  `pool_name` varchar(30) NOT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `calledstationid` varchar(30) NOT NULL,
  `callingstationid` varchar(30) NOT NULL,
  `expiry_time` datetime DEFAULT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `pool_key` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radippool`
--

INSERT INTO `radippool` (`id`, `pool_name`, `framedipaddress`, `nasipaddress`, `calledstationid`, `callingstationid`, `expiry_time`, `username`, `pool_key`) VALUES
(1, 'test_pool', '10.8.0.224', '', '', '', NULL, '', '0'),
(5, 'test_pool', '10.8.0.225', '', '', '', NULL, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `radpostauth`
--

CREATE TABLE `radpostauth` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `pass` varchar(64) NOT NULL DEFAULT '',
  `reply` varchar(32) NOT NULL DEFAULT '',
  `authdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radpostauth`
--

INSERT INTO `radpostauth` (`id`, `username`, `pass`, `reply`, `authdate`) VALUES
(189, 'soft', 'soft12', 'Access-Accept', '2018-12-12 13:01:53'),
(190, 'soft', 'soft12', 'Access-Accept', '2018-12-12 13:03:16'),
(191, 'soft', 'soft12', 'Access-Accept', '2018-12-12 13:05:23'),
(192, 'soft', 'soft12', 'Access-Accept', '2018-12-12 13:11:44'),
(193, 'soft', 'soft12', 'Access-Accept', '2018-12-12 13:13:05'),
(194, 'soft', 'soft12', 'Access-Accept', '2018-12-12 13:20:21'),
(195, 'ceko', 'ceko12', 'Access-Reject', '2018-12-12 13:48:53'),
(196, 'ceko', 'ceko12', 'Access-Reject', '2018-12-12 13:50:31'),
(197, 'ceko', 'ceko12', 'Access-Reject', '2018-12-12 13:50:32'),
(198, 'ceko', 'ceko12', 'Access-Accept', '2018-12-12 13:52:37'),
(199, 'soft', 'soft12', 'Access-Accept', '2018-12-17 08:53:53'),
(200, 'soft', 'soft12', 'Access-Accept', '2018-12-17 08:54:55'),
(201, 'soft', 'soft12', 'Access-Accept', '2018-12-17 08:55:40'),
(202, 'soft', 'soft12', 'Access-Accept', '2018-12-17 09:00:55'),
(203, 'soft', 'soft12', 'Access-Accept', '2018-12-17 09:03:51'),
(204, 'soft', 'soft12', 'Access-Accept', '2018-12-17 09:04:47'),
(205, 'soft', 'soft12', 'Access-Accept', '2018-12-17 09:14:44'),
(206, 'soft', 'soft12', 'Access-Accept', '2018-12-17 09:38:43'),
(207, 'soft', 'soft12', 'Access-Accept', '2018-12-17 09:48:35'),
(208, 'soft', 'soft12', 'Access-Accept', '2018-12-17 10:49:01'),
(209, 'soft', 'soft12', 'Access-Accept', '2018-12-17 12:18:49'),
(210, 'soft', 'soft12', 'Access-Accept', '2018-12-17 12:20:36'),
(211, 'soft', 'soft12', 'Access-Accept', '2018-12-17 13:20:36'),
(212, 'ceko', 'ceko12', 'Access-Accept', '2018-12-18 06:28:54'),
(213, 'ceko', 'ceko12', 'Access-Accept', '2018-12-18 07:28:54'),
(214, 'ceko', 'ceko12', 'Access-Accept', '2018-12-18 09:02:04'),
(215, 'ceko', 'dsafas', 'Access-Reject', '2018-12-18 09:03:50'),
(216, 'ceko', 'dsafas', 'Access-Reject', '2018-12-18 09:03:51'),
(217, 'ceko', 'ceko12', 'Access-Accept', '2018-12-18 09:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `radreply`
--

CREATE TABLE `radreply` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radreply`
--

INSERT INTO `radreply` (`id`, `username`, `attribute`, `op`, `value`) VALUES
(5, 'soft', 'Framed-IP-Address', ':=', '10.8.0.12');

-- --------------------------------------------------------

--
-- Table structure for table `radusergroup`
--

CREATE TABLE `radusergroup` (
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radusergroup`
--

INSERT INTO `radusergroup` (`username`, `groupname`, `priority`) VALUES
('soft', 'dynamic', 1),
('ceko', 'cekogroup', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nas`
--
ALTER TABLE `nas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nasname` (`nasname`);

--
-- Indexes for table `radacct`
--
ALTER TABLE `radacct`
  ADD PRIMARY KEY (`radacctid`),
  ADD UNIQUE KEY `acctuniqueid` (`acctuniqueid`),
  ADD KEY `username` (`username`),
  ADD KEY `framedipaddress` (`framedipaddress`),
  ADD KEY `acctsessionid` (`acctsessionid`),
  ADD KEY `acctsessiontime` (`acctsessiontime`),
  ADD KEY `acctstarttime` (`acctstarttime`),
  ADD KEY `acctstoptime` (`acctstoptime`),
  ADD KEY `nasipaddress` (`nasipaddress`);

--
-- Indexes for table `radcheck`
--
ALTER TABLE `radcheck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32));

--
-- Indexes for table `radgroupcheck`
--
ALTER TABLE `radgroupcheck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupname` (`groupname`(32));

--
-- Indexes for table `radgroupreply`
--
ALTER TABLE `radgroupreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupname` (`groupname`(32));

--
-- Indexes for table `radippool`
--
ALTER TABLE `radippool`
  ADD PRIMARY KEY (`id`),
  ADD KEY `radippool_poolname_expire` (`pool_name`,`expiry_time`),
  ADD KEY `framedipaddress` (`framedipaddress`),
  ADD KEY `radippool_nasip_poolkey_ipaddress` (`nasipaddress`,`pool_key`,`framedipaddress`);

--
-- Indexes for table `radpostauth`
--
ALTER TABLE `radpostauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radreply`
--
ALTER TABLE `radreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32));

--
-- Indexes for table `radusergroup`
--
ALTER TABLE `radusergroup`
  ADD KEY `username` (`username`(32));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nas`
--
ALTER TABLE `nas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `radacct`
--
ALTER TABLE `radacct`
  MODIFY `radacctid` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `radcheck`
--
ALTER TABLE `radcheck`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `radgroupcheck`
--
ALTER TABLE `radgroupcheck`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `radgroupreply`
--
ALTER TABLE `radgroupreply`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `radippool`
--
ALTER TABLE `radippool`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `radpostauth`
--
ALTER TABLE `radpostauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT for table `radreply`
--
ALTER TABLE `radreply`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
