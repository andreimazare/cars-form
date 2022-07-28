-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2022 at 07:01 PM
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
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(100) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'Dacia');

-- --------------------------------------------------------

--
-- Table structure for table `datainsert`
--

CREATE TABLE `datainsert` (
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datainsert`
--

INSERT INTO `datainsert` (`brand`, `model`, `price`) VALUES
('', '', 12),
('', '', 12),
('', '', 12),
('', '', 12),
('', '', 12),
('', '', 12),
('', '', 12),
('', '', 12),
('1', '<br />\r\n<b>Warning</b>:  Undefined array key \"id\" in <b>C:xampphtdocslastgetsubcategory.php</b> on line <b>9</b><br />\r\n', 13),
('1', '<br />\r\n<b>Warning</b>:  Undefined array key \"id\" in <b>C:xampphtdocslastgetsubcategory.php</b> on line <b>9</b><br />\r\n', 14),
('2', '<br />\r\n<b>Warning</b>:  Undefined array key \"id\" in <b>C:xampphtdocslastgetsubcategory.php</b> on line <b>9</b><br />\r\n', 14),
('2', '<br />\r\n<b>Warning</b>:  Undefined array key \"id\" in <b>C:xampphtdocslastgetsubcategory.php</b> on line <b>9</b><br />\r\n', 15),
('1', '<br />\r\n<b>Warning</b>:  Undefined array key \"id\" in <b>C:xampphtdocslastgetsubcategory.php</b> on line <b>9</b><br />\r\n', 16),
('3', '<br />\r\n<b>Warning</b>:  Undefined array key \"id\" in <b>C:xampphtdocslastgetsubcategory.php</b> on line <b>9</b><br />\r\n', 15),
('1', '<br />\r\n<b>Warning</b>:  Undefined array key \"id\" in <b>C:xampphtdocslastgetsubcategory.php</b> on line <b>9</b><br />\r\n', 11),
('1', 'A4', 14),
('2', 'Lodgy', 11),
('3', 'X3', 1),
('1', 'A6', 1),
('1', 'A4', 100),
('2', 'X3', 1),
('', 'X3', 31),
('', 'X3', 31),
('', 'A5', 123),
('', 'X4', 123),
('Audi', 'A5', 123123),
('Audi', 'A5', 123456),
('BMW', 'X4', 123),
('BMW', 'X4', 123),
('BMW', 'X4', 123),
('BMW', 'X4', 123),
('Audi', 'A4', 456),
('Dacia', 'Lodgy', 100),
('Audi', 'A4', 13),
('Audi', 'A4', 13),
('Audi', 'A5', 10000),
('Audi', 'A5', 10000),
('Audi', 'A4', 123);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `category_id` int(100) NOT NULL,
  `subcategory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`category_id`, `subcategory`) VALUES
(1, 'A4'),
(1, 'A5'),
(1, 'A6'),
(3, 'Lodgy'),
(3, 'Logan'),
(3, 'Sandero'),
(2, 'X3'),
(2, 'X4'),
(2, 'X5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategory`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
