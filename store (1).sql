-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 15, 2021 at 07:11 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Canon EOS', 36000),
(2, 'Nikon DSLR', 40000),
(3, 'Sony DSLR', 45000),
(4, 'Olympus DSLR', 50000),
(5, 'Titan Model #301', 13000),
(6, 'Titan Model #201', 3000),
(7, 'HMT Milan', 8000),
(8, 'Faber Luba #111', 18000),
(9, 'H&W', 800),
(10, 'Luis Phil', 1000),
(11, 'John Zok', 1500),
(12, 'Jhalsani', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(4, 'Archana Bisht', 'shubhamm191200@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(3, 'Archana Bisht', 'archanabisht174@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(5, 'Archana Bisht', 'archanabisht789@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(6, 'Archana Bisht', 'arhu@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(7, 'Archana Bisht', 'ayushi@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(8, 'arushi', 'arushi123@gmail.com', 'a1c7182c4c5b7e414d860c76ae1d0f9f', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(9, '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', ''),
(10, 'Archana Bisht', 'vivek@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(11, 'Archana Bisht', 'shubhamm191200@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(12, 'Archana Bisht', 'uma@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(13, 'Archana Bisht', 'archanabisht174@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(14, 'Archana Bisht', 'archanabisht174@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(15, 'Archana Bisht', 'archanabisht174@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(16, 'Archana Bisht', 'archanabisht174@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(17, 'Archana Bisht', 'archanabisht174@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(18, 'Archana Bisht', 'archanabisht174@gmail.com', 'a152e841783914146e4bcd4f39100686', '6399104055', 'dehradun', 'bus stand,uttarakhand'),
(19, 'Archana Bisht', 'archanabisht174@gmail.com', '7815696ecbf1c96e6894b779456d330e', '6399104055', 'dehradun', 'bus stand,uttarakhand');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(4, 2, 4, 'Confirmed'),
(6, 4, 1, 'Confirmed'),
(7, 4, 2, 'Confirmed'),
(8, 4, 1, 'Confirmed'),
(9, 4, 2, 'Confirmed'),
(10, 5, 1, 'Confirmed'),
(11, 6, 1, 'Confirmed'),
(12, 6, 2, 'Confirmed'),
(13, 6, 2, 'Confirmed'),
(14, 6, 3, 'Confirmed'),
(15, 7, 1, 'Confirmed'),
(16, 7, 2, 'Confirmed'),
(17, 8, 1, 'Confirmed'),
(37, 3, 4, 'Confirmed'),
(23, 10, 2, 'Confirmed'),
(20, 10, 2, 'Confirmed'),
(22, 10, 1, 'Added to cart'),
(25, 11, 1, 'Added to cart'),
(26, 12, 1, 'Added to cart'),
(27, 12, 2, 'Confirmed'),
(28, 12, 4, 'Confirmed'),
(29, 5, 2, 'Confirmed'),
(30, 5, 1, 'Added to cart'),
(31, 5, 3, 'Confirmed'),
(32, 5, 4, 'Confirmed'),
(36, 3, 3, 'Confirmed'),
(35, 3, 2, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
