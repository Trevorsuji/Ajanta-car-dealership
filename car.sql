-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2026 at 05:32 PM
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
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(11) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(256) NOT NULL,
  `price` varchar(256) NOT NULL,
  `condition` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `speed` varchar(256) NOT NULL,
  `mileage` varchar(256) NOT NULL,
  `battery` tinytext NOT NULL,
  `fuel` varchar(256) NOT NULL,
  `total_run` varchar(256) NOT NULL,
  `gear` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `car_type` varchar(256) NOT NULL,
  `stock` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `manufacturer`, `model`, `price`, `condition`, `phone`, `email`, `speed`, `mileage`, `battery`, `fuel`, `total_run`, `gear`, `image`, `car_type`, `stock`) VALUES
(25, 'Mazda', '370z', '20000.5', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'test@gmail.com', '250', '55', 'OK', 'Patrol', '20000', 'Auto', 'Carnissan_370z.jpg', 'Sports', 0),
(26, 'Macedes', 'A-class 2020', '40500', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'toma@gmail.com', '170', '60', 'OK', 'Octen  ', '12000', 'Auto', 'CarAclass.jpg', 'Regular', 0),
(27, 'BMW', '2-series 2018', '23000', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'molly@gmail.com', '220', '50', 'OK', 'Patrol', '14500', 'Manual', 'Carbmw2series.jpg', 'Sports', 0),
(28, 'BMW', 'M2 sedan', '20000.5', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'dolly@gmail.com', '250', '54', 'OK', 'Patrol', '12000', 'Auto', 'Carbmwsedan.jpg', 'Regular', 0),
(29, 'Chevrolet', 'Camaro 2019', '32500', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'molly@gmail.com', '250', '55', 'OK', 'Octen  ', '12000', 'Manual', 'Carcamaro.jpg', 'Sports', 0),
(30, 'Macedes', 'G-class 2016', '20000.5', 'ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ', '01863987793', 'molly@gmail.com', '170', '50', 'OK', 'Octen  ', '14500', 'Auto', 'CarGclass.jpg', 'Off road', 0),
(31, 'Nissan', 'GTR r35 2018', '34500', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'dolly@gmail.com', '220', '50', 'Need change', 'Patrol', '20300', 'Manual', 'Cargtr35.jpg', 'Sports', 0),
(32, 'General Motors', 'Hummer H3', '15000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'srity@gmail.com', '123', '40', 'OK', 'Dessel ', '20000', 'Manual', 'Carh3.jpg', 'Off road', 0),
(33, 'Mazda', 'MX-5 Miara', '20000.5', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '170', '55', 'Need change', 'Dessel ', '14500', 'Manual', 'Carmiata.jpg', 'Sports', 0),
(34, 'Ford', 'Mustang Eco-boost 2016', '23000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '220', '50', 'OK', 'Dessel ', '12000', 'Auto', 'Carmustang.jpg', 'Sports', 0),
(35, 'Toyota', 'Prias 2019', '12000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'dolly@gmail.com', '140', '60', 'OK', 'Patrol', '14500', 'Auto', 'Carprias.jpeg', 'Regular', 0),
(36, 'Audi', 'R8 sports 2020', '44000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '250', '50', 'OK', 'Octen  ', '20000', 'Auto', 'CarR8.jpg', 'Sports', 0),
(38, 'Ford', 'Runner Raptor 2016', '20045', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '170', '55', 'OK', 'Dessel ', '20000', 'Manual', 'Carraptor.jpg', 'Off road', 0),
(39, 'Toyota', 'Runner 2020', '37000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '200', '50', 'OK', 'Octen  ', '20000', 'Manual', 'Carrunner.jpg', 'Off road', 0),
(40, 'Mazda', 'RX-7 2002', '20000.5', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '220', '55', 'Need change', 'Dessel ', '12000', 'Auto', 'Carrx7.jpg', 'Sports', 0),
(41, 'Toyota', 'Supra 2020', '27500', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '220', '40', 'OK', 'Patrol', 'New', 'Auto', 'Carsupra.jpg', 'Sports', 0),
(42, 'Toyota', 'Camry TRD 2019 ', '21600', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'molly@gmail.com', '180', '46', 'OK', 'Octen  ', '20000', 'Manual', 'Cartoyota_camry.jpg', 'Regular', 0),
(43, 'Range rover', 'Valar V6 2017', '45000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '200', '50', 'OK', 'Dessel ', '12000', 'Auto', 'Carvalar.jpg', 'Off road', 0),
(44, 'Volks Wagon', 'Beetle 2006', '20000.5', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '123', '55', 'Need change', 'Octen  ', '28000', 'Auto', 'Carvolkswagen_beetle.jpg', 'Regular', 0),
(45, 'Volks Wagon', 'Passat 2020', '12400', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'dolly@gmail.com', '130', '56', 'OK', 'Patrol', 'New', 'Auto', 'Carvolkswagen_passat.jpg', 'Regular', 0),
(46, 'Jeep', 'Wrangler Rubicon 2017', '37800', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '01863987793', 'tarunno@gmail.com', '170', '50', 'OK', 'Dessel ', '14500', 'Manual', 'Carwrangler.jpg', 'Off road', 0),
(47, 'General Motors', 'Ram V6 2017', '20240', '500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with', '01863987793', 'tarunno@gmail.com', '140', '55', 'OK', 'Octen  ', '20000', 'Manual', 'Carram.jpg', 'Off road', 0),
(48, 'Lambougini', 'Huracan 2017', '67000', '500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with', '01863987793', 'toma@gmail.com', '220', '37', 'OK', 'Patrol', '12000', 'Auto', 'Carhuracan.jpg', 'Sports', 0),
(49, 'Laxus', 'LC V4 turbo 2014', '22500', '500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with', '01863987793', 'molly@gmail.com', '200', '50', 'Need change', 'Octen  ', '20000', 'Auto', 'CarLexus_LC.jpg', 'Sports', 0),
(50, 'Tesla', 'Model S 2015', '20000.5', 'Tarunno ince the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised', '01863987793', 'toma@gmail.com', '250', '50', 'OK', 'Electric ', '20000', 'Auto', 'CarteslaModelS.jpg', 'Regular', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `product_id` bigint(11) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `user_name` varchar(256) NOT NULL,
  `product_model` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `product_image` varchar(256) NOT NULL,
  `product_id_2` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `image1` varchar(256) NOT NULL,
  `image2` varchar(256) NOT NULL,
  `image3` varchar(256) NOT NULL,
  `image4` varchar(256) NOT NULL,
  `image5` varchar(256) NOT NULL,
  `image6` varchar(256) NOT NULL,
  `image7` varchar(256) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `id`) VALUES
('', 'GallaryBronco-Two-Door.jpg', 'gallary1.jpeg', '', 'GallaryThoughtrocket-bunny-gtr-1.jpg', 'gallary9.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_thoughts`
--

CREATE TABLE `my_thoughts` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT current_timestamp(),
  `tag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `postal_code` varchar(256) NOT NULL,
  `status` enum('pending','approved','cancelled') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address`, `city`, `phone`, `postal_code`, `status`) VALUES
(8, 9, 'P.O.Box 361-00208', 'ngong', '0728815057', 'P.O.BOX 361-00208', 'approved'),
(9, 10, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved'),
(10, 12, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved'),
(11, 13, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved'),
(12, 14, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved'),
(13, 15, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved'),
(15, 17, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved'),
(16, 17, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved'),
(17, 27, 'nairobi', 'Nairobi', '0728815057', '00100', 'approved'),
(18, 27, 'nairobi', 'Nairobi', '0728815057', '00100', 'approved'),
(19, 27, 'nairobi', 'Nairobi', '0728815057', '00100', 'approved'),
(20, 10, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved'),
(21, 10, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved'),
(22, 9, '300003 (C/O ESTHER SUJI) Moi Avenue', 'Nairobi', '0728815057', '00100', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL DEFAULT -1,
  `product_id2` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_id2`) VALUES
(22, 8, 32, -1),
(23, 8, 26, -1),
(24, 8, -1, 3),
(25, 8, -1, 3),
(26, 9, 44, -1),
(27, 10, 28, -1),
(28, 11, 42, -1),
(29, 12, 50, -1),
(30, 13, 45, -1),
(31, 13, 26, -1),
(34, 15, 45, -1),
(35, 15, 26, -1),
(36, 15, 26, -1),
(37, 17, 35, -1),
(38, 17, -1, 9),
(39, 9, 44, -1),
(40, 9, -1, 10),
(41, 9, 26, -1),
(42, 8, 26, -1),
(43, 8, -1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `method` enum('mpesa','card') NOT NULL,
  `details` varchar(256) NOT NULL,
  `status` enum('pending','completed','failed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `amount`, `method`, `details`, `status`, `created_at`) VALUES
(1, 9, 20000.00, 'card', '1434757547325|12/43|301', 'completed', '2026-03-10 23:05:04'),
(2, 10, 20000.00, 'mpesa', '0735489532', 'completed', '2026-03-11 07:50:36'),
(3, 11, 21600.00, 'card', '1234567890123|12/26|101', 'completed', '2026-03-11 07:54:23'),
(4, 12, 20000.00, 'mpesa', '0726374825', 'completed', '2026-03-11 07:55:46'),
(5, 13, 52900.00, 'mpesa', '0735362874', 'completed', '2026-03-11 07:58:26'),
(7, 15, 52900.00, 'mpesa', '0936392632', 'completed', '2026-03-11 08:00:55'),
(8, 16, 40500.00, 'mpesa', '0725384726', 'completed', '2026-03-11 08:19:05'),
(9, 17, 12000.00, 'mpesa', '071248876336', 'completed', '2026-04-22 21:36:03'),
(10, 18, 45.00, 'mpesa', '0728815057', 'completed', '2026-04-22 21:42:25'),
(11, 19, 0.00, 'mpesa', '0728815057', 'completed', '2026-04-22 21:49:43'),
(12, 20, 20256.00, 'mpesa', '0714633923', 'completed', '2026-04-23 08:21:03'),
(13, 21, 40500.00, 'mpesa', '0728815057', 'completed', '2026-04-23 08:35:36'),
(14, 22, 60500.00, 'card', '5477430006506440|10/30|108', 'completed', '2026-06-15 07:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(256) NOT NULL,
  `price` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `condition` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `manufacturer`, `model`, `price`, `type`, `image`, `condition`, `email`, `phone`) VALUES
(3, 'Toyota', 'Turbo Charger', '100.5', 'Turbo', 'ProductTarboCharger2.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'dolly@gmail.com', '01863987793'),
(4, 'General Motors', 'Spare parts', '123', 'Parts', 'ProductspareParts\'.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'mahadi@gmail.com', '01863987793'),
(6, 'GDMs', 'Hilux Crank shaft', '300', 'Crank Shaft', 'ProductHilux_crankshaft.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(9, 'Nissan', 'Turbo Charger', '45.8', 'Turbo', 'ProductTurboCharger.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(10, 'General Motors', 'Still Bushes', '256', 'Bushes', 'ProductstillBushes.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'toma@gmail.com', '01863987793'),
(11, 'GDMs', 'Cumming Engine Parts', '1000', 'Parts', 'ProductcummingEngineParts.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'dolly@gmail.com', '01863987793'),
(12, 'Toyota', 'Crank shaft', '100.5', 'Crank Shaft', 'Productcrankshaft.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(13, 'General Motors', 'OME', '45.8', 'OME', 'ProductOME.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'toma@gmail.com', '01863987793'),
(14, 'Rubicon Motors', 'Water pump', '2000.5', 'Pump', 'ProductwaterPump.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'tarunno@gmail.com', '01863987793'),
(15, 'General Motors', 'Tharmo State', '100.5', 'Tharmo State', 'ProductTharmoState.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(16, 'merc', 'parts', '20000.5', 'part', 'Productheadlights-2.jpg', 'good', 'sujitrevor@gmail.com', '0728815057');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `body` varchar(256) NOT NULL,
  `showing` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `title`, `body`, `showing`) VALUES
(36, 'Supra Rocket bunny kit', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1),
(37, 'RX-7 tuned upto 1000hp', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1),
(38, 'GMDs car megazine released ', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1),
(39, 'Mclran F1 the ultimate beast', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1),
(41, 'RX-7 Red beauty', 'ndustry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic t', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `admin`, `role`) VALUES
(4, 'Trevor', 'Trevor@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1, 'super_admin'),
(9, 'johndoe', 'johndoe@gmail.com', '$2y$10$QDIx7Ot2UNQCFxi4.jXp8u9riY6JLj8LOhz1ugpIp6Dh0LhwRWrvm', 1, 'super_admin'),
(10, 'normal', 'normal@gmail.com', '$2y$10$GTP7EMBrsudMlZGClfaqP.IgngUrZ5.5OGCI1LgkTcY8n6KQw78e2', 0, 'user'),
(11, 'test', 'test@gmail.com', '$2y$10$xK8NXph5.n56ZOZWkQRcae24a36PS2ZkbtNvi78wR.dhCgiRzJAV.', 0, 'staff'),
(12, 'James', 'james.mwangi@email.com', '$2y$10$PBf.MqY3BQMltOfVJBh/h./kY2xZQYbwmsjSMtZjHdGKv9JAyMw/q', 0, 'user'),
(13, 'Brian', 'brian.odhiambo@email.com', '$2y$10$7W/gf0kn4HBoW9mbgMB2reyM7c4juzDfcEj/sQkWCOs6D54pn6qNm', 0, 'user'),
(14, 'Kevin', 'kevin.kimani@email.com', '$2y$10$lX0Dm6blF5535DmgrO.H2eGukSCndhDhlPbOcfC7OcLNBqKwMu5v.', 0, 'user'),
(15, 'daniel', 'daniel.otieno@email.com', '$2y$10$48FGlgqTIQpWLbLST0UbqesLssZ/jXglrC4G/dhjiZLubWz0.xMD2', 0, 'user'),
(17, 'John', 'john.njoroge@email.com', '$2y$10$I/QV5uI/L5Yn52YaTlnnxuOufjNWmDRhxQ9KHo8UA8RmrNbRvqF.S', 0, 'user'),
(18, 'David', 'david.maina@email.com', '$2y$10$LGpa/tsUFDAAt.GDtGWa7u500b0Rrx2J8FnzElLXmqg8Z0QXP6r.W', 0, 'user'),
(19, 'Samuel', 'samuel.kiptoo@email.com', '$2y$10$xydL.5ZvgromU.AaXgOrTefP11l7/DxfHlHRLWblvhHKYqBbFSgb2', 0, 'user'),
(20, 'Mark', 'mark.wanyama@email.com', '$2y$10$JrxZuBR.xLLXgjOa4NOvpOFtK7VezXdldWLYukf.pQ1ftnG5LBmLy', 0, 'user'),
(21, 'Victor', 'victor.ochieng@email.com', '$2y$10$mA45MSr/GdaE.0e6yx3LFuVctgn/DERezquW38028Tpz5KxTRolrW', 0, 'user'),
(22, 'Alex', 'alex.muriuki@email.com', '$2y$10$knkfaWcAPdJA8m453lbgle8jRHY7TpGNbYcy17R6MCSRlu1kJf4o6', 0, 'user'),
(23, 'Dennis', 'dennis.kariuki@email.com', '$2y$10$vkT.fUuGblUpVY7rpJhfj.VavBUe7Z/HdLNxiUE3LeRsCwm4CsNO6', 0, 'user'),
(24, 'Patrick', 'patrick.mutua@email.com', '$2y$10$glhbyejEr6/SE4RgcTLOGuprh0spafvpt5X3XpaQ8kD7ljU.rTUYG', 0, 'user'),
(25, 'Paul', 'paul.kibet@email.com', '$2y$10$rFYRPAp9XnxvmTniyzf29ujFLLOzrS0.iUeN53IVcm14gTfheXU8O', 0, 'user'),
(26, '12345', 'dave@gmail.com', '$2y$10$gSxqyURWLLVfjOL72LGFguMuQXBjYP0DSKNeLhZjVjtrCb9/u7Oqi', 0, 'user'),
(27, '123', 'say@gmail.com', '$2y$10$8CojdAFb8puH9uq2JlA73OFQUWTcTeALdtDsX7PbYT/.jMxQmH8uG', 0, 'user'),
(28, '1024', 'grace@gmail.com', '$2y$10$3.bQTxzjQoWsX3vYpH/ivOvn4vfUmPHzEa8ruR/Wn8cXv3/oqKYc6', 0, 'user'),
(29, '0726801405', 'sujitrevor@gmail.com', '$2y$10$1iM0pN2sxyuQ9mzRCM1PMOUSo56eSnx.Rh49DE4LrU9unZu539Fuu', 0, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_ibfk_1` (`user_id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_thoughts`
--
ALTER TABLE `my_thoughts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_ibfk_2` (`order_id`),
  ADD KEY `order_items_ibfk_3` (`product_id`),
  ADD KEY `product_id2` (`product_id2`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_ibfk_1` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_thoughts`
--
ALTER TABLE `my_thoughts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
