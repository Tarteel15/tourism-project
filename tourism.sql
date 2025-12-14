-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 01, 2025 at 05:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `name`, `image`, `description`) VALUES
(1, 'Giza Pyramids', 'bg3.jpg', 'The Great Pyramids of Giza, one of the world\'s wonders.'),
(2, 'Egyptian Museum', 'museum2.webp', 'Explore thousands of ancient artifacts.'),
(3, 'Aswan', 'aswan.jpg', 'Beautiful Nile views and temples.'),
(4, 'Sharm El Sheikh', 'bg9.jpg', 'Red Sea paradise with diving spots.'),
(5, 'Nile River', 'bg6.jpg', 'The longest river in the world.'),
(6, 'Cairo Tower', 'bg.jpg', 'Iconic tower overlooking Cairo city.'),
(7, 'Dahab', 'bg11.jpg', 'Golden beaches and amazing snorkeling.'),
(8, 'Sinai', 'bg4.jpg', 'Historic mountains and breathtaking nature.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--


ALTER TABLE `destination`
ADD COLUMN `location` VARCHAR(255) DEFAULT NULL,
ADD COLUMN `rating` FLOAT DEFAULT NULL,
ADD COLUMN `duration` VARCHAR(100) DEFAULT NULL;

UPDATE `destination` SET 
location='Giza, Egypt', rating=4.9, duration='3 hours' WHERE id=1;

UPDATE `destination` SET 
location='Cairo, Egypt', rating=4.7, duration='2 hours' WHERE id=2;

UPDATE `destination` SET 
location='Aswan, Egypt', rating=4.8, duration='4 hours' WHERE id=3;

UPDATE `destination` SET 
location='Sharm El Sheikh, Egypt', rating=4.6, duration='Full day' WHERE id=4;

UPDATE `destination` SET 
location='Nile River, Egypt', rating=4.5, duration='2-3 hours' WHERE id=5;

UPDATE `destination` SET 
location='Cairo, Egypt', rating=4.4, duration='1 hour' WHERE id=6;

UPDATE `destination` SET 
location='Dahab, Egypt', rating=4.7, duration='Full day' WHERE id=7;

UPDATE `destination` SET 
location='Sinai, Egypt', rating=4.8, duration='Half day' WHERE id=8;



CREATE TABLE `destination_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`destination_id`) REFERENCES `destination`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `destination_images` (`destination_id`, `image_url`, `caption`) VALUES
(1, 'bg2.jpg', 'View of the Great Pyramid from the front'),
(1, 'bg1.jpg', 'Pyramid of Khafre at sunset'),
(2, 'museum2.webp', 'Ancient Egyptian artifacts'),
(2, 'museum1.webp', 'Mummies display'),
(3, 'aswan.jpg', 'Nile river view in Aswan'),
(3, 'Philae Temple.jpg', 'Philae Temple'),
(4, 'coral reefs.jpg', 'Coral reefs for diving'),
(4, 'bg6.jpg', 'Sunset on the Red Sea'),
(5, 'back.jpg', 'Nile river cruise'),
(6, 'bg.jpg', 'Cairo Tower at night'),
(7, 'bg9.jpg', 'Beach and snorkeling spots'),
(8, 'bg4.jpg', 'Mount Sinai panorama');

