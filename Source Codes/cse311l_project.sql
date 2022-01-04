-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 04:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freshpick`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(10) NOT NULL,
  `admin_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `admin_name`, `email`, `password`, `address`, `contact`, `user_type`) VALUES
(3, 'A 01', 'A email 01', 'A pass', 'A address 01', 'A contact 01', 'admin'),
(98, 'A 06', 'A email 06', 'A pass', 'A address 06', 'A contact 06', 'admin'),
(790, 'A 04', 'A email 04', 'A pass', 'A address 04', 'A contact 04', 'admin'),
(958, 'A 05', 'A email 05', 'A pass', 'A address 05', 'A contact 05', 'admin'),
(6813, 'A 02', 'A email 02', 'A pass', 'A address 02', 'A contact 02', 'admin'),
(83579, 'A 03', 'A email 03', 'A pass', 'A address 03', 'A contact 03', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `checkout_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_unit` int(10) DEFAULT NULL,
  `unit_price` int(30) DEFAULT NULL,
  `total_price` int(50) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `comments` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `user_id` int(10) NOT NULL,
  `customer_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`user_id`, `customer_name`, `email`, `password`, `address`, `contact`, `user_type`) VALUES
(1, 'C 01', 'C email 01', 'C pass 01', 'C address 01', 'C contact 01', 'customer'),
(2, 'C 02', 'C email 02', 'C pass 02', 'C address 02', 'C contact 02', 'customer'),
(3, 'C 03', 'C email 03', 'C pass 03', 'C address 03', 'C contact 03', 'customer'),
(4, 'C 04', 'C email 04', 'C pass 04', 'C address 04', 'C contact 04', 'customer'),
(5, 'C 05', 'C email 05', 'C pass 05', 'C address 05', 'C contact 05', 'customer'),
(6, 'C 06', 'C email 06', 'C pass 06', 'C address 06', 'C contact 06', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(10) NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `email`, `password`, `user_type`) VALUES
(3, 'A Email 01', 'A pass', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `marchent`
--

CREATE TABLE `marchent` (
  `user_id` int(10) NOT NULL,
  `marchent_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marchent`
--

INSERT INTO `marchent` (`user_id`, `marchent_name`, `email`, `password`, `address`, `contact`, `user_type`) VALUES
(1, 'M 01', 'M email 01', 'M pass 01', 'M address 01', 'M contact 01', 'marchent'),
(4, 'M 02', 'M email 02', 'M pass 02', 'M address 02', 'M contact 02', 'marchent'),
(5, 'M 03', 'M email 03', 'M pass 03', 'M address 03', 'M contact 03', 'marchent'),
(725, 'M 04', 'M email 04', 'M pass 04', 'M address 04', 'M contact 04', 'marchent'),
(726, 'M 05', 'M email 05', 'M pass 05', 'M address 05', 'M contact 05', 'marchent'),
(168902, 'M 06', 'M email 06', 'M pass 06', 'M address 06', 'M contact 06', 'marchent');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(230) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_available` int(10) NOT NULL,
  `product_price` int(15) NOT NULL,
  `marchent_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `featured` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `Image`, `product_description`, `quantity_available`, `product_price`, `marchent_name`, `user_id`, `featured`) VALUES
(2, 'P Name 02', '/FreshPick/Images/broccoli.jpg', 'P desc 02', 100, 700, 'M 02', 4, 2),
(4, 'P Name 04', '/FreshPick/Images/Alphonso Mango.jpg', 'P desc 04', 200, 400, 'M 04', 725, 4),
(66, 'P Name 06', '/FreshPick/Images/Ghee.jfif', 'P desc 06', 500, 50, 'M 06', 168902, 6),
(417, 'P Name 03', '/FreshPick/Images/mushrooms.jpg', 'P desc 03', 150, 550, 'M 03', 5, 3),
(2199, 'P Name 01', '/FreshPick/Images/Cheese.jpg', 'P desc 01', 10, 1100, 'M 01', 1, 1),
(58527, 'P Name 05', '/FreshPick/Images/Curd_Doi.jpeg', 'P desc 05', 300, 100, 'M 05', 726, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`,`email`,`password`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `marchent`
--
ALTER TABLE `marchent`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `checkout_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `marchent`
--
ALTER TABLE `marchent`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168903;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58528;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
