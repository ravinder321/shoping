-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 12:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userid`, `productid`, `qty`) VALUES
(3, 5, 25, 2),
(12, 1, 25, 2),
(14, 5, 18, 2),
(15, 5, 18, 2),
(16, 5, 18, 2),
(17, 5, 18, 2),
(18, 5, 18, 2),
(19, 5, 18, 2),
(20, 5, 18, 5),
(21, 5, 19, 10),
(22, 5, 19, 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`) VALUES
(1, 'tvs'),
(2, 'dishwasher'),
(3, 'Ranges'),
(4, 'Computer'),
(5, 'Blu-ray & DVD Player'),
(6, 'Projectors'),
(7, 'Hometheater System'),
(8, 'Cameras'),
(9, 'Camcorders'),
(10, 'Washer & Dryers'),
(11, 'Refrigerators'),
(12, 'Microwaves');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `massage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `fullname`, `email`, `massage`) VALUES
(1, 'ravi', 'ravinder@gmail.com', ''),
(2, 'ravi', 'ravinder@gmail.com', 'hello'),
(3, 'ravi', 'ravinder@gmail.com', 'hi'),
(4, 'ravi', 'ravinder@gmail.com', 'srgrw');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pdescription` text NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `pstock` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `special` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `pname`, `pdescription`, `pprice`, `pstock`, `pimage`, `special`) VALUES
(11, 7, 'Samsung', 'Samsung 356', 'Rs.20000', 43, 'images/10.png', 0),
(12, 5, 'Nikon D7000', 'Nikon', 'Rs.3500', 53, 'images/5.png', 0),
(13, 8, 'Kodak Camera', 'Camera', 'Rs.3000', 1494, 'images/14.png', 0),
(14, 1, 'Acer Monitor', '22 inch', 'Rs.15000', 234, 'images/15.png', 0),
(15, 9, 'Sony camcorders', 'Sony lense', 'Rs.16000', 765, 'images/1.png', 1),
(16, 6, 'Samsung Projector', 'Projector', 'Rs.27950', 11, 'images/4.png', 1),
(18, 2, 'Godrej', 'Dishwasher', 'Rs.1200', 7, 'images/13.png', 0),
(19, 4, 'LG RH', 'LG ', 'Rs.9999', 407, 'images/7.png', 0),
(20, 3, 'Samsung Range', 'Range', 'Rs.7500', 0, 'images/3.png', 0),
(21, 5, 'Phillips Bdp32', 'DVD Player', 'Rs.1365', 541, 'images/11.png', 1),
(22, 7, 'Intex GT43', 'Hometheator', 'Rs.2500', 1102, 'images/8.png', 1),
(23, 7, 'Zebronics Fast21', 'Hometheator', 'Rs.4350', 359, 'images/9.png', 0),
(24, 10, 'Whirpool DR', 'Dryers', 'Rs.14599', 7, 'images/12.png', 0),
(25, 12, 'Black Decker', 'Microwave', 'Rs.6700', 50, 'images/6.png', 0),
(28, 11, 'Vox M22', 'Hometheater', 'Rs.1222', 200, 'images/z.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product1`
--

CREATE TABLE `product1` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pdescription` varchar(255) NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'regerg', 'tjhetsh', '4654'),
(4, 'ravi', 'ravinder@gmail.com', '1234'),
(5, 'ravi', 'ravi@gmail.com', 'ravi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product1`
--
ALTER TABLE `product1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product1`
--
ALTER TABLE `product1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
