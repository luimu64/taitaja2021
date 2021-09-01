-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31.08.2021 klo 15:21
-- Palvelimen versio: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laitekanta`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `battery`
--

CREATE TABLE `battery` (
  `id` int(11) NOT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `warning-level` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `energy` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `energy-empty` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `energy-full` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `energy-full-design` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `voltage` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `percentage` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `capacity` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `technology` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `deviceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `laitteet`
--

CREATE TABLE `laitteet` (
  `id` int(11) NOT NULL,
  `school` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `timestamp` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_swedish_ci NOT NULL,
  `release1` varchar(233) COLLATE utf8mb4_swedish_ci NOT NULL,
  `kernel_version` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `kernel_args` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `serial` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `mainboard_serial` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `bios_vendor` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `bios_version` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `bios_release_date` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `cpu` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `cpu_count` int(11) NOT NULL,
  `memory_mib` int(11) NOT NULL,
  `hdd_model` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `hdd_size_bytes` int(11) NOT NULL,
  `hdd_is_ssd` tinyint(1) NOT NULL,
  `wifi_adapter` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_location` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `warranty_ends` date DEFAULT NULL,
  `personally_administered` tinyint(1) NOT NULL,
  `xrandr_commands` int(11) NOT NULL,
  `xrandr_output` varchar(1000) COLLATE utf8mb4_swedish_ci NOT NULL,
  `automatic_shutdown` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `lspci`
--

CREATE TABLE `lspci` (
  `id` int(11) NOT NULL,
  `pcidevice` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `deviceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `lsudb`
--

CREATE TABLE `lsudb` (
  `id` int(11) NOT NULL,
  `usbdevice` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `deviceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `mac`
--

CREATE TABLE `mac` (
  `id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `deviceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `memory`
--

CREATE TABLE `memory` (
  `id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `slot` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `deviceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Rakenne taululle `xrandr_commands`
--

CREATE TABLE `xrandr_commands` (
  `id` int(11) NOT NULL,
  `commands` varchar(1000) COLLATE utf8mb4_swedish_ci NOT NULL,
  `deviceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `a` (`deviceid`);

--
-- Indexes for table `laitteet`
--
ALTER TABLE `laitteet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lspci`
--
ALTER TABLE `lspci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b` (`deviceid`);

--
-- Indexes for table `lsudb`
--
ALTER TABLE `lsudb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c` (`deviceid`);

--
-- Indexes for table `mac`
--
ALTER TABLE `mac`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d` (`deviceid`);

--
-- Indexes for table `memory`
--
ALTER TABLE `memory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e` (`deviceid`);

--
-- Indexes for table `xrandr_commands`
--
ALTER TABLE `xrandr_commands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f` (`deviceid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `battery`
--
ALTER TABLE `battery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laitteet`
--
ALTER TABLE `laitteet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lspci`
--
ALTER TABLE `lspci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lsudb`
--
ALTER TABLE `lsudb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mac`
--
ALTER TABLE `mac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memory`
--
ALTER TABLE `memory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xrandr_commands`
--
ALTER TABLE `xrandr_commands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `battery`
--
ALTER TABLE `battery`
  ADD CONSTRAINT `a` FOREIGN KEY (`deviceid`) REFERENCES `laitteet` (`id`);

--
-- Rajoitteet taululle `lspci`
--
ALTER TABLE `lspci`
  ADD CONSTRAINT `b` FOREIGN KEY (`deviceid`) REFERENCES `laitteet` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Rajoitteet taululle `lsudb`
--
ALTER TABLE `lsudb`
  ADD CONSTRAINT `c` FOREIGN KEY (`deviceid`) REFERENCES `laitteet` (`id`);

--
-- Rajoitteet taululle `mac`
--
ALTER TABLE `mac`
  ADD CONSTRAINT `d` FOREIGN KEY (`deviceid`) REFERENCES `laitteet` (`id`);

--
-- Rajoitteet taululle `memory`
--
ALTER TABLE `memory`
  ADD CONSTRAINT `e` FOREIGN KEY (`deviceid`) REFERENCES `laitteet` (`id`);

--
-- Rajoitteet taululle `xrandr_commands`
--
ALTER TABLE `xrandr_commands`
  ADD CONSTRAINT `f` FOREIGN KEY (`deviceid`) REFERENCES `laitteet` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
