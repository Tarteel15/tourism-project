-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2025 at 03:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `trip_date` date NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `destination_id`, `full_name`, `email`, `phone`, `trip_date`, `message`, `created_at`) VALUES
(1, 6, 'tarteel ashraf', 'tarteel@gmail.com', '01008136210', '2025-12-12', 'kjpefjpowei[od', '2025-12-03 22:53:04'),
(2, 6, 'tarteel ashraf', 'tarteel@gmail.com', '01008136210', '2025-12-12', 'kjpefjpowei[od', '2025-12-03 22:53:04'),
(3, 2, 'tarteel ashraf', 'tarteel@gmail.com', '01008136210', '2025-12-05', 'kiiiiiiii', '2025-12-03 22:59:15'),
(4, 2, 'tarteel ashraf', 'tarteel@gmail.com', '01008136210', '2025-12-05', 'kiiiiiiii', '2025-12-03 22:59:15'),
(5, 0, 'nada', 'nada@gmail.com', '01008136210', '2025-12-19', 'mmmmmmm', '2025-12-03 23:01:35'),
(6, 0, 'nada', 'nada@gmail.com', '01008136210', '2025-12-19', 'mmmmmmm', '2025-12-03 23:01:35'),
(7, 2, 'nada', 'tarteel@gmail.com', '01008136210', '2025-12-27', '09i0i0ii', '2025-12-03 23:11:00'),
(8, 2, 'nada', 'tarteel@gmail.com', '01008136210', '2025-12-27', '09i0i0ii', '2025-12-03 23:11:00'),
(9, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:22:01'),
(10, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:22:01'),
(11, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:23:04'),
(12, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:23:04'),
(13, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:26:25'),
(14, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:26:25'),
(15, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:41:12'),
(16, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:41:12'),
(17, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:46:11'),
(18, 3, '', '', '', '0000-00-00', '', '2025-12-03 23:46:11'),
(19, 3, '', '', '01008136210', '0000-00-00', 'iouopuu;i', '2025-12-03 23:48:49'),
(20, 3, '', '', '01008136210', '0000-00-00', 'iouopuu;i', '2025-12-03 23:48:49'),
(21, 3, 'nada', 'tarteel@gmail.com', '01008136210', '0000-00-00', 'iouopuu;i', '2025-12-03 23:49:47'),
(22, 3, '', '', '', '0000-00-00', '', '2025-12-04 00:08:45'),
(23, 3, 'tarteel', 'tarteelashraf075@gmail.com', '01008136210', '2025-12-18', 'tarteel', '2025-12-09 15:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `name`, `image`, `description`, `location`, `rating`, `duration`) VALUES
(1, 'Giza Pyramids', 'bg3.jpg', 'The Great Pyramids of Giza, one of the world\'s wonders.', 'Giza, Egypt', 4.9, '3 hours'),
(2, 'Egyptian Museum', 'museum2.webp', 'Explore thousands of ancient artifacts.', 'Cairo, Egypt', 4.7, '2 hours'),
(3, 'Aswan', 'aswan.jpg', 'Beautiful Nile views and temples.', 'Aswan, Egypt', 4.8, '4 hours'),
(4, 'Sharm El Sheikh', 'bg9.jpg', 'Red Sea paradise with diving spots.', 'Sharm El Sheikh, Egypt', 4.6, 'Full day'),
(5, 'Nile River', 'bg6.jpg', 'The longest river in the world.', 'Nile River, Egypt', 4.5, '2-3 hours'),
(6, 'Cairo Tower', 'bg.jpg', 'Iconic tower overlooking Cairo city.', 'Cairo, Egypt', 4.4, '1 hour'),
(7, 'Dahab', 'bg11.jpg', 'Golden beaches and amazing snorkeling.', 'Dahab, Egypt', 4.7, 'Full day'),
(8, 'Sinai', 'bg4.jpg', 'Historic mountains and breathtaking nature.', 'Sinai, Egypt', 4.8, 'Half day');

-- --------------------------------------------------------

--
-- Table structure for table `destination_images`
--

CREATE TABLE `destination_images` (
  `id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destination_images`
--

INSERT INTO `destination_images` (`id`, `destination_id`, `image_url`, `caption`) VALUES
(1, 1, 'bg2.jpg', 'View of the Great Pyramid from the front'),
(2, 1, 'bg1.jpg', 'Pyramid of Khafre at sunset'),
(3, 2, 'museum2.webp', 'Ancient Egyptian artifacts'),
(4, 2, 'museum1.webp', 'Mummies display'),
(5, 3, 'aswan.jpg', 'Nile river view in Aswan'),
(6, 3, 'Philae Temple.jpg', 'Philae Temple'),
(7, 4, 'coral reefs.jpg', 'Coral reefs for diving'),
(8, 4, 'bg6.jpg', 'Sunset on the Red Sea'),
(9, 5, 'back.jpg', 'Nile river cruise'),
(10, 6, 'bg.jpg', 'Cairo Tower at night'),
(11, 7, 'bg9.jpg', 'Beach and snorkeling spots'),
(12, 8, 'bg4.jpg', 'Mount Sinai panorama');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `destination_images`
--
ALTER TABLE `destination_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destination_images`
--
ALTER TABLE `destination_images`
  ADD CONSTRAINT `destination_images_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destination` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
