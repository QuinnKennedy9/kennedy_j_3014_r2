-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 23, 2018 at 09:50 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_createusers`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL,
  `user_level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_level`) VALUES
(1, 'Quinn', 'quinnedy', '$2y$10$8.Prh7qmrqIM0yWpfJ7Zq.FVNkN3p5RiXE6ilmn.LazrD2lRjN0Hu', 'qnnkennedy922@gmail.com', '2018-02-23 01:48:14', '', '1'),
(2, 'Jon', 'jkenn22', '$2y$10$f8e5UR6Yr/PcuCQCRkK/ruWfE4gpJs7bHU/s6VY//qvLL2EkSR5nS', 'jkenn22@uwo.ca', '2018-02-23 01:49:50', '', '2'),
(3, 'Doug', 'DougDimmadome', '$2y$10$PpIkxUB4NjbdQ/9iOo1aTO4lCAB0bPBmnooiF/C1YjID3nHU1U0rq', 'dougdimmadome@dimmadome.ca', '2018-02-23 03:27:26', '', '2'),
(4, 'Dave', 'theDave', '$2y$10$5WIL7irEWUJUvaPmjzhCwuiG9s2ldJdyh5knR2kcUK0ZKQlYQ5Ad.', 'qnnkennedy922@gmail.com', '2018-02-23 03:49:30', '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
