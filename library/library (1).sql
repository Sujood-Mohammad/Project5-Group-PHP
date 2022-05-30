-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 10:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total_cart` decimal(10,2) NOT NULL,
  `total` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_product` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `total_cart`, `total`, `quantity`, `user_id`, `name`, `total_product`) VALUES
(1, 2, '5.00', 0, 0, 0, '', 0),
(2, 2, '5.00', 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `url_image`, `description`) VALUES
(1, 'smart games', 'https://i.postimg.cc/qRwLkDLQ/smart-games-cat.png', 'contain all type of books like story , novel , english'),
(2, 'bags', 'https://i.postimg.cc/P570HJxN/bag-categ.png', 'contain all type of books like story , novel , english'),
(4, 'Books', 'https://i.postimg.cc/j5x2rMCs/book-cat.png', 'contain all type of books like story , novel , english'),
(6, 'school tools', 'https://i.postimg.cc/6p6Bq8t0/school-cat.png', 'contain all type of books like story , novel , english');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `text` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `text`, `product_id`, `created_at`, `user_id`) VALUES
(9, '', '', 'very nice', 0, '0000-00-00 00:00:00', 0),
(10, '', '', 'very nice', 0, '0000-00-00 00:00:00', 0),
(11, '', '', 'hello', 3, '0000-00-00 00:00:00', 1),
(12, '', '', 'esraa', 3, '0000-00-00 00:00:00', 1),
(13, '', '', 'esraa', 3, '0000-00-00 00:00:00', 2),
(14, '', '', 'esraa', 3, '0000-00-00 00:00:00', 2),
(15, '', '', 'esraa', 3, '0000-00-00 00:00:00', 6),
(16, '', '', 'Wow', 3, '0000-00-00 00:00:00', 7),
(17, '', '', 'very nice web', 3, '0000-00-00 00:00:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `coupon` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `coupon`, `discount`) VALUES
(0, 'esraa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `text`) VALUES
(2, 'website is very good '),
(3, 'very nice website and everything'),
(4, 'esraa'),
(5, 'very nice web iam sara');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `total_price`, `city`, `address`, `first_name`, `last_name`, `email`, `address2`, `country`, `state`, `zipcode`, `order_status`) VALUES
(2, '0.00', 'zarqa', 'zarqa', '', '', '', '', '', '', 0, ''),
(3, '0.00', 'zarqa', 'zarqa', '', '', '', '', '', '', 0, ''),
(4, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(5, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(6, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(7, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(8, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(9, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(10, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(11, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(12, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(13, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(14, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(15, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(16, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(17, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(18, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(19, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(20, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(21, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(22, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(23, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(24, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(25, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(26, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(27, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(28, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(29, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(30, '0.00', '', 'df', 'sadas', 'kh', 'queen_soso1996@yahoo.com', 'df', 'United States', 'California', 0, 'confirmed'),
(31, '0.00', '', 'df', 'sadas', 'kh', 'queen_soso1996@yahoo.com', 'df', 'United States', 'California', 0, 'confirmed'),
(32, '0.00', '', 'df', 'sadas', 'kh', 'queen_soso1996@yahoo.com', 'df', 'United States', 'California', 0, 'confirmed'),
(33, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(34, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(35, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(36, '0.00', '', 'df', 'd', 'kh', 'queen_soso1996@yahoo.com', 'df', 'United States', 'California', 0, 'confirmed'),
(37, '0.00', '', 'df', 'gjfghfjfdh', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(38, '0.00', '', 'df', 'gjfghfjfdh', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(39, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(40, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(41, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(42, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(43, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(44, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(45, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(46, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(47, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(48, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(49, '0.00', '', 'df', 'Esra&#039;a', 'Alkahlilah', 'esraa.khalilah@gmail.com', 'df', 'United States', 'California', 0, 'confirmed'),
(50, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(51, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 5, 'confirmed'),
(52, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(53, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(54, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(55, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(56, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(57, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 311, 'confirmed'),
(58, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 12, 'confirmed'),
(59, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 12, 'confirmed'),
(60, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(61, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 55, 'confirmed'),
(62, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(63, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1, 'confirmed'),
(64, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(65, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 12, 'confirmed'),
(66, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(67, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(68, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(69, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(70, '0.00', '', 'zarqa, 3', 'Esraa', 'kh', 'esraa.khalilah@gmail.com', 'zarqa, 3', 'United States', 'California', 1311, 'confirmed'),
(71, '0.00', '', 'irbid', 'sara', 'ahmad', 'sara@gmail.com', 'irbid', 'United States', 'California', 0, 'confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `descreption` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `price`, `url_image`, `order_id`, `cart_id`, `product_name`, `descreption`) VALUES
(2, 1, '6.00', 'http://smartmobilestudio.com/wp-content/uploads/2012/06/leather-book-preview.png', 35, 1, 'harry', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `password`, `gender`, `birthday`, `url_image`, `role`, `email`) VALUES
(1, 'Esraa kh', '827ccb0eea8a706c4c34a16891f84e7b', '', '0000-00-00', 'istockphoto-1297752994-170667a.jpg', 'user', 'esraa.khalilah@gmail.com'),
(2, 'FvMArket', '202cb962ac59075b964b07152d234b70', '', '0000-00-00', 'istockphoto-1297752994-170667a.jpg', 'user', 'queen_soso1996@yahoo.com'),
(3, 'dddddd', '202cb962ac59075b964b07152d234b70', '', '0000-00-00', 'istockphoto-1297752994-170667a.jpg', '', 'esraa@gmail.com'),
(4, 'esraakh', '123', '', '0000-00-00', '', 'admin', 'esraa@esraa\r\n'),
(5, 'Esraakhh', '202cb962ac59075b964b07152d234b70', '', '0000-00-00', 'WhatsApp Image 2022-05-25 at 1.53.00 AM.jpeg', 'user', 'esraa.khalilah1@gmail.com'),
(6, 'Esraaoooo', '202cb962ac59075b964b07152d234b70', '', '0000-00-00', '', 'user', 'esraa.khalilah789@gmail.com'),
(7, 'ali', '827ccb0eea8a706c4c34a16891f84e7b', '', '0000-00-00', '', 'user', 'ali@gmail.com'),
(8, 'Sara Ahmad', 'e10adc3949ba59abbe56e057f20f883e', '', '0000-00-00', '', 'admin', 'sara@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
