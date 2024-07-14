-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 02:37 AM
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
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin123', 'admin@example.com'),
(2, 'azura', '123456', 'zura@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `transmission` varchar(20) DEFAULT NULL,
  `air_conditioning` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price_per_day` decimal(10,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand`, `model`, `type`, `seats`, `transmission`, `air_conditioning`, `image`, `price_per_day`, `status`) VALUES
(1, 'Toyota', 'Alphard', 'minivan', 4, 'automatic', '1', 'alphard.png', 900.00, 'Available'),
(3, 'Nissan', 'Almeera', 'hatchback', 5, 'automatic', 'yes', 'almeera.png', 400.00, 'Available'),
(4, 'Toyota', 'Harrier', 'SUV', 5, 'automatic', 'yes', 'harrier.png', 850.00, 'Available'),
(5, 'Perodua', 'Aruz', 'SUV', 7, 'automatic', 'yes', 'aruz.png', 600.00, 'Available'),
(6, 'Perodua', 'Ativa', 'SUV', 5, 'automatic', 'yes', 'ativa.png', 350.00, 'Available'),
(7, 'Perodua', 'Bezza', 'sedan', 5, 'automatic', 'yes', 'bezza.png', 350.00, 'Available'),
(8, 'Honda', 'City', 'sedan', 5, 'automatic', 'yes', 'city.png', 450.00, 'Available'),
(9, 'Honda', 'CR-V', 'SUV', 5, 'automatic', 'yes', 'crv.png', 650.00, 'Available'),
(10, 'Proton', 'Exora', 'MPV', 7, 'automatic', 'yes', 'exora.png', 600.00, 'Available'),
(11, 'Proton', 'Iriz', 'hatchback', 5, 'automatic', 'yes', 'iriz.png', 250.00, 'Available'),
(12, 'Honda', 'Jazz', 'hatchback', 5, 'automatic', 'yes', 'jazz.png', 300.00, 'Available'),
(13, 'Mazda', 'Mazda 2', 'sedan', 5, 'automatic', 'yes', 'mazda 2.png', 450.00, 'Available'),
(14, 'Perodua', 'Myvi', 'hatchback', 5, 'automatic', 'yes', 'myvi.png', 180.00, 'Available'),
(15, 'Nissan', 'Navara', 'suv', 5, 'automatic', 'yes', 'navara.png', 350.00, 'Available'),
(16, 'Proton', 'Persona', 'sedan', 5, 'automatic', 'yes', 'persona.png', 200.00, 'Available'),
(17, 'Nissan', 'Serena', 'MPV', 7, 'automatic', 'yes', 'serena.png', 400.00, 'Available'),
(18, 'Toyota', 'Vios', 'sedan', 5, 'automatic', 'yes', 'vios.png', 250.00, 'Available'),
(19, 'Honda', 'WR-V', 'SUV', 5, 'automatic', 'yes', 'wrv.png', 300.00, 'Available'),
(20, 'Proton', 'X50', 'SUV', 5, 'automatic', 'yes', 'x50.png', 550.00, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `pickup_location` varchar(255) NOT NULL,
  `pickup_date` date NOT NULL,
  `dropoff_date` date NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_ic` varchar(12) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `car_price_per_day` decimal(10,2) NOT NULL,
  `total_days` int(11) NOT NULL,
  `payment_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `car_id`, `pickup_location`, `pickup_date`, `dropoff_date`, `customer_name`, `customer_ic`, `customer_email`, `customer_phone`, `customer_address`, `payment_method`, `total_price`, `car_price_per_day`, `total_days`, `payment_status`) VALUES
(2, 15, 'kol', '2024-07-27', '2024-07-29', 'ok', '111111', 'zura@test.com', '2323232', 'adaa1a1', 'Cash', 700.00, 350.00, 2, 'Pending'),
(4, 5, 'sekilau', '2024-07-15', '2024-07-16', 'mainan', '4566955565', 'zura@test.com', '0000', 'adaa1a1', 'Cash', 600.00, 600.00, 1, 'Pending'),
(5, 4, 'sekilau', '2024-07-15', '2024-07-16', 'll', '123456', 'zura@test.com', '0169699969', 'aaaa', 'Online Transfer', 850.00, 850.00, 1, 'Booked'),
(7, 1, 'sekilau', '2024-07-20', '2024-07-22', 'mainan', '15556666', 'jej@yahoo.com', '0000', 'aaaa', 'Cash', 1800.00, 900.00, 2, 'Pending'),
(18, 3, 'sekilau', '2024-07-19', '2024-07-20', 'ok', '111111', 'jej@yahoo.com', '0000', 'aaaa', 'QR Code', 400.00, 400.00, 1, 'Booked'),
(19, 4, 'sekilau', '2024-07-20', '2024-07-22', 'kamal', '3333333', '22@test.com', '2323232', 'aaaa', 'Online Transfer', 1700.00, 850.00, 2, 'Booked');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_id` (`car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
