-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 06:12 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ralali`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`) VALUES
(1, 'Smartphone', 'Smartphone'),
(2, 'Jam Tangan', 'Jam-Tangan'),
(3, 'Memori Eksternal', 'Memori-Eksternal'),
(4, 'Komputer PC', 'Komputer-PC'),
(5, 'Alat Musik', 'Alat-Musik'),
(6, 'Tas', 'Tas'),
(7, 'Kamera', 'Kamera'),
(8, 'Alat Elektronik', 'Alat-Elektronik'),
(9, 'Furniture', 'Furniture');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_slug` varchar(191) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `slug_prod` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_slug`, `product_name`, `slug_prod`, `price`, `description`, `thumbnail`, `datetime`) VALUES
(1, 'Smartphone', 'Lenovo A7000', 'Lenovo-A7000', '4200000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-1.jpg', '2017-03-17 00:03:06'),
(2, 'Jam-Tangan', 'CASIO Watch', 'CASIO-Watch', '2040000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-2.jpg', '2017-03-17 00:03:06'),
(3, 'Memori-Eksternal', 'Sandisk 2TB', 'Sandisk-2TB', '150000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-3.jpg', '2017-03-17 00:03:06'),
(4, 'Komputer-PC', 'Asus PC Monitor', 'Asus-PC-Monitor', '2040000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-4.jpg', '2017-03-17 00:03:06'),
(5, 'Alat-Musik', 'Yamaha Electric Guitar', 'Yamaha-Electric-Guitar', '5630000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ', 'product-5.jpg', '2017-03-17 00:03:06'),
(6, 'Tas', 'Adidas Backpack', 'Adidas-Backpack', '780000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-6.jpg', '2017-03-17 00:03:06'),
(7, 'Kamera', 'Canon Camera', 'Canon-Camera', '2200000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-7.jpg', '2017-03-17 00:03:06'),
(8, 'Furniture', 'Sanken Iron', 'Sanken-Iron', '345000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-8.jpg', '2017-03-17 00:03:06'),
(9, 'Alat-Elektronik', 'Dyson Vacuum Cleaner', 'Dyson-Vacuum-Cleaner', '1300000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-9.jpg', '2017-03-17 00:03:06'),
(10, 'Kamera', 'Kamera Hitam', 'kamerara-hitam', '4200000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'camera-1.jpg', '2017-03-17 00:03:06'),
(11, 'Kamera', 'Kamera Nikon', 'CASIO-Watch', '2040000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'camera-large.jpg', '2017-03-17 00:03:06'),
(12, 'Komputer-PC', 'Desktop gaming', 'desktop-gaming', '150000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'desktop-1.jpg', '2017-03-17 00:03:06'),
(13, 'Komputer-PC', 'Laptop macbook', 'laptop-macbook', '2040000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'laptop-4.jpg', '2017-03-17 00:03:06'),
(14, 'Smartphone', 'Iphon 7', 'iphone-7', '5630000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ', 'phone-1.jpg', '2017-03-17 00:03:06'),
(15, 'Tas', 'Adidas ', 'Adidas', '780000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-6.jpg', '2017-03-17 00:03:06'),
(16, 'Alat-Elektronik', 'televisi', 'telesvisi', '2200000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'tv-1.jpg', '2017-03-17 00:03:06'),
(17, 'Smartphone', 'tablet samsung', 'tablet-samsung', '345000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'tablet-1.jpg', '2017-03-17 00:03:06'),
(18, 'Furniture', 'Kursi Kantor', 'kursi-kantor', '1300000', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.', 'product-10.jpg', '2017-03-17 00:03:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
