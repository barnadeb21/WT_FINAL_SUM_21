-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 09:03 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `go_rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'MD. KAMRUL ISLAM', 'kamrul@gmail.com', 'problem', 'face a problem'),
(2, 'MD. KAMRUL ISLAM', 'kamrul@gmail.com', 'problem', 'no problem'),
(3, 'MD. KAMRUL ISLAM', 'kamrul@gmail.com', 'problem', 'dsd'),
(4, 'MD. KAMRUL ISLAM', 'kamrul@gmail.com', 'problem', 'gfgf'),
(5, 'barna', 'barnadeb2019@gmail.com', 'web', 'hate u'),
(6, 'barna', 'barnadeb2019@gmail.com', 'web', 'hate u bro'),
(7, 'barna', 'barnadeb2019@gmail.com', 'web', 'hate u'),
(8, 'barna', 'barnadeb2019@gmail.com', 'web', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `review` varchar(50) NOT NULL,
  `o_exp` varchar(50) NOT NULL,
  `response` varchar(50) NOT NULL,
  `support` varchar(50) NOT NULL,
  `satisfaction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `review`, `o_exp`, `response`, `support`, `satisfaction`) VALUES
(1, 'MD. KAMRUL ISLAM', 'kamrul@gmail.com', 'borna kharap', 'Very Good', 'Good', 'Very Good', 'Good'),
(2, 'MD. KAMRUL ISLAM', 'kamrul@gmail.com', 'xxx', 'Very Good', 'Very Good', 'Very Good', 'Very Good'),
(3, 'MD. KAMRUL ISLAM', 'nijumniloy@gmail.com', 'asasassa', 'Very Good', 'Good', 'Very Good', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `post_vehicle`
--

CREATE TABLE `post_vehicle` (
  `id` int(50) NOT NULL,
  `renter_id` int(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `pcondition` varchar(50) NOT NULL,
  `rnumber` varchar(50) NOT NULL,
  `meter` varchar(50) NOT NULL,
  `loc` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `tc` varchar(255) NOT NULL,
  `insertedDate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_vehicle`
--

INSERT INTO `post_vehicle` (`id`, `renter_id`, `title`, `category`, `rate`, `pcondition`, `rnumber`, `meter`, `loc`, `address`, `contact`, `tc`, `insertedDate`) VALUES
(49, 48, 'Premio Model G Series', 'Car', '1000', 'Good', '654321', '100', 'Notun Bajar', 'Vatara', '01712345678', 'You must to have a driving license', '2021-08-18 12:18:33'),
(50, 48, 'Tesla Model X', 'Car', '2500', 'Excellent', '987654', '100', 'Mirpur', 'Block C', '01711223344', 'You have to return it in time.', '2021-08-18 12:21:17'),
(51, 49, 'Suzuki GSXR 155R', 'MotorBike', '2500', 'Medium', '654789', '300', 'Dhaka', 'Kuril', '01546542545', 'You have to pay fine if any scratch is found.', '2021-08-18 12:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(50) NOT NULL,
  `post_id` int(50) NOT NULL,
  `renter_id` int(50) NOT NULL,
  `rentee_id` int(50) NOT NULL,
  `status` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `post_id`, `renter_id`, `rentee_id`, `status`) VALUES
(13, 49, 48, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ucategory` varchar(50) NOT NULL,
  `wallet` int(255) NOT NULL DEFAULT 0,
  `enrollment` varchar(50) DEFAULT NULL,
  `noticebyadmin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `email`, `pass`, `name`, `ucategory`, `wallet`, `enrollment`, `noticebyadmin`) VALUES
(48, 'renter1@gmail.com', 'SpaceX1@', 'Renter One Plus', 'renter', 1000, '2021-08-18 12:17:06', NULL),
(49, 'renter2@gmail.com', 'SpaceX1@', 'Renter Two', 'renter', 0, '2021-08-18 12:17:21', NULL),
(50, 'rentee1@gmail.com', 'SpaceX1@', 'Rentee One', 'rentee', 0, '2021-08-18 12:24:00', NULL),
(51, 'rentee2@gmail.com', 'SpaceX1@', 'Rentee Two', 'rentee', 0, '2021-08-18 12:24:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_banned`
--

CREATE TABLE `user_banned` (
  `id` int(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `b_days` varchar(50) NOT NULL,
  `message` varchar(250) NOT NULL,
  `post_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_banned`
--

INSERT INTO `user_banned` (`id`, `user_id`, `b_days`, `message`, `post_id`) VALUES
(1, '007', '57', 'good man', '008'),
(2, '21', '20', 'rude behavbiour', '21'),
(3, '21', '20', 'rude behaviur', '22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_vehicle`
--
ALTER TABLE `post_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_banned`
--
ALTER TABLE `user_banned`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_vehicle`
--
ALTER TABLE `post_vehicle`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `user_banned`
--
ALTER TABLE `user_banned`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
