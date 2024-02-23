-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 07:58 PM
-- Server version: 11.1.2-MariaDB
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `owner` varchar(75) DEFAULT NULL,
  `quote` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `owner`, `quote`) VALUES
(1, 'Shaikh Ahemad', 'Use your brain to turn problem into solution, life is not easy for anyone.  And there is no option other than hard work, patience, concentration and hope to find a way to survive.  And in the end everyone leaves and goes away, one has to learn to live alone.'),
(2, 'Akash Kadam', 'Don\'t know which problems will come in our life but we have to face that problems with keeping confidence in our mind yes that is possible, there is no such type of problem which has no solution just we have to discover the solution of every problem and keep trying towards what we want to do.'),
(11, 'Aarti Thombre', 'Problem is not a life but it is a part of our life so don\'t skip the problem otherwise face the problem and make the solutions. \r\nWhatever want to achieve in your life then do work on your own way. don\'t copy  other but learn from their experience.\r\nthink positive , steady with your goal , do work hard and self authentic then definately you\'ll achieve that you want . because  it depends on you how to manage your life. Because you are the manager of your life.'),
(15, 'Vedprakash Raner', 'Absolutely Correct  Maintaining confidence and resilience in the face of challenges is key. Every problem comes with a solution; it\'s just a matter of discovering it through perseverance and determination. Keep striving towards your goals, and you\'ll find a way to overcome any obstacle.'),
(21, 'Ved', 'Absolutely Correct Maintaining confidence and resilience in the face of challenges is key. Every problem comes with a solution; it\'s just a matter of discovering it through perseverance and determination. Keep striving towards your goals, and you\'ll find a way to overcome any obstacle.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
