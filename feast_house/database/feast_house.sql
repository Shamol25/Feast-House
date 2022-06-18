-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 09:52 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feast_house`
--

-- --------------------------------------------------------

--
-- Table structure for table `bazaar_list`
--

CREATE TABLE `bazaar_list` (
  `id` int(20) NOT NULL,
  `date` date NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_quantity` varchar(200) NOT NULL,
  `product_price` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bazaar_list`
--

INSERT INTO `bazaar_list` (`id`, `date`, `product_name`, `product_quantity`, `product_price`) VALUES
(1, '2019-04-01', 'chal', '2kg', 90),
(2, '2019-04-01', 'dal', '1kg', 40),
(3, '2019-04-01', 'oil', '500gm', 50),
(4, '2019-04-02', 'chal', '2kg', 100),
(5, '2019-04-02', 'dal', '500gm', 35),
(6, '2019-04-02', 'egg', '5', 40),
(7, '2019-04-03', 'chal', '2kg', 90),
(8, '2019-04-03', 'oil', '500gm', 50),
(9, '2019-04-03', 'Chicken', '500gm', 100),
(10, '2019-04-04', 'Chal', '2kg', 100),
(11, '2019-04-04', 'egg', '5', 45),
(12, '2019-04-04', 'oil', '500gm', 50);

-- --------------------------------------------------------

--
-- Table structure for table `eventi`
--

CREATE TABLE `eventi` (
  `id` int(10) NOT NULL,
  `n` varchar(20) NOT NULL,
  `j` varchar(20) NOT NULL,
  `k` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventi`
--

INSERT INTO `eventi` (`id`, `n`, `j`, `k`) VALUES
(1, 'fair', 'darun', 'joss'),
(3, 'ri', 'pagol', 'chillay');

-- --------------------------------------------------------

--
-- Table structure for table `meal_manage`
--

CREATE TABLE `meal_manage` (
  `date` date NOT NULL,
  `total_meal` float NOT NULL,
  `total_bazaar_amount` float NOT NULL,
  `meal_rate` float NOT NULL,
  `total_meal_rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal_manage`
--

INSERT INTO `meal_manage` (`date`, `total_meal`, `total_bazaar_amount`, `meal_rate`, `total_meal_rate`) VALUES
('2019-04-01', 10, 350, 35, 35),
('2019-04-02', 12, 175, 14.5833, 23.8636),
('2019-04-03', 8, 240, 30, 25.5),
('2019-04-04', 14, 195, 13.9286, 21.8182);

-- --------------------------------------------------------

--
-- Table structure for table `meal_write`
--

CREATE TABLE `meal_write` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `breakfast` int(30) NOT NULL,
  `lunch` int(30) NOT NULL,
  `dinner` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal_write`
--

INSERT INTO `meal_write` (`id`, `name`, `date`, `breakfast`, `lunch`, `dinner`) VALUES
(1, 'Md Sakib Al Islam', '2019-04-01', 1, 2, 1),
(2, 'Riaz Morshed', '2019-04-01', 0, 1, 2),
(3, 'Fardeen Rahman', '2019-04-01', 1, 1, 1),
(4, 'Md Sakib Al Islam', '2019-04-02', 1, 1, 3),
(5, 'Riaz Morshed', '2019-04-02', 1, 1, 2),
(6, 'Fardeen Rahman', '2019-04-02', 0, 1, 2),
(7, 'Md Sakib Al Islam', '2019-04-03', 0, 1, 2),
(8, 'Md Sakib Al Islam', '2019-04-04', 1, 1, 1),
(9, 'Riaz Morshed', '2019-04-03', 0, 0, 1),
(10, 'Riaz Morshed', '2019-04-04', 1, 3, 1),
(11, 'Fardeen Rahman', '2019-04-03', 1, 2, 1),
(12, 'Fardeen Rahman', '2019-04-04', 1, 2, 3),
(13, '', '0000-00-00', 1, 1, 1),
(14, '', '0000-00-00', 2, 2, 2),
(15, '', '0000-00-00', 2, 2, 2),
(16, '', '0000-00-00', 2, 2, 2),
(17, '', '0000-00-00', 2, 2, 2),
(18, 'Fardeen Rahman', '0000-00-00', 2, 2, 2),
(19, '', '0000-00-00', 2, 2, 2),
(20, '', '0000-00-00', 2, 2, 2),
(21, '', '0000-00-00', 2, 2, 2),
(22, '', '0000-00-00', 1, 1, 1),
(23, '', '0000-00-00', 1, 1, 1),
(24, '', '2019-12-10', 1, 1, 1),
(25, 'Fardeen Rahman', '0000-00-00', 0, 0, 0),
(26, '', '2019-12-25', 2, 1, 3),
(27, '', '2019-12-25', 1, 1, 2),
(28, '', '2019-12-20', 2, 3, 4),
(29, '', '2019-12-19', 1, 1, 2),
(30, '', '2019-12-20', 2, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `old_password` varchar(100) NOT NULL,
  `permanent_address` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `vkey` varchar(100) NOT NULL,
  `validation` tinyint(1) NOT NULL,
  `regis_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expired_date` timestamp NULL DEFAULT current_timestamp(),
  `lock_out` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `email`, `password`, `old_password`, `permanent_address`, `phone`, `role`, `vkey`, `validation`, `regis_date`, `expired_date`, `lock_out`) VALUES
(1, 'Md Sakib Al Islam', 'sakibalislam12345@gmail.com', 's', '0', 'Dhaka', '01799419478', 1, '10e4973d38b70a6852aa055e1cb666eb', 1, '2019-11-28 19:24:39', '2019-12-01 19:34:15', NULL),
(67, 'Fardeen Rahman', 'shamol35-1636@diu.edu.bd', 'b5f4551942b33da6df31e986e42b1cb3', 'b5f4551942b33da6df31e986e42b1cb3', 'Bheramar, Kushtia', '01912847869', 0, '908cb73f17cb4822d301d8f19845bfe0', 1, '2019-12-16 20:28:09', '2019-12-26 20:28:09', '2019-12-16 20:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_balance`
--

CREATE TABLE `user_balance` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_balance`
--

INSERT INTO `user_balance` (`id`, `name`, `balance`) VALUES
(1, 'Md Sakib Al Islam', 1000),
(2, 'Riaz Morshed', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bazaar_list`
--
ALTER TABLE `bazaar_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventi`
--
ALTER TABLE `eventi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_write`
--
ALTER TABLE `meal_write`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_balance`
--
ALTER TABLE `user_balance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bazaar_list`
--
ALTER TABLE `bazaar_list`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `eventi`
--
ALTER TABLE `eventi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meal_write`
--
ALTER TABLE `meal_write`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user_balance`
--
ALTER TABLE `user_balance`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
