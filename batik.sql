-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2019 at 02:48 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batik`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `permalink`, `description`) VALUES
(6, 'Batik Pria', 'batik-pria', 'Fashion Batik untuk pria'),
(7, 'Accessories', 'accessories', ''),
(8, 'Batik Wanita', 'batik-wanita', 'Fshion baju batik untuk wanita');

-- --------------------------------------------------------

--
-- Table structure for table `confirmations`
--

CREATE TABLE `confirmations` (
  `id` int(10) NOT NULL,
  `sender_bank` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) NOT NULL,
  `receiver_bank` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` int(11) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `type`, `key`, `mime`, `description`, `path`, `created`, `modified`) VALUES
(31, 'slide', 33, 'image/jpeg', 'Berbelanjalah sekarang juga!', 'public/slides/slider-2.jpg', '2013-05-25 13:03:19', '0000-00-00 00:00:00'),
(32, 'slide', 34, 'image/jpeg', 'barang berkulitas dan harga dijamin murah', 'public/slides/header.jpg', '2013-05-25 13:03:34', '0000-00-00 00:00:00'),
(37, 'product', 7, 'image/jpeg', 'Gelang Batik', 'public/products/11.jpg', '2018-12-08 08:00:48', '0000-00-00 00:00:00'),
(39, 'product', 8, 'image/jpeg', 'Kalung', 'public/products/22.jpg', '2018-12-08 23:29:06', '0000-00-00 00:00:00'),
(41, 'product', 9, 'image/jpeg', 'Butturfly Bandana', 'public/products/3.jpg', '2018-12-08 23:32:40', '0000-00-00 00:00:00'),
(43, 'product', 10, 'image/jpeg', 'Flatshoes Batik', 'public/products/4.jpg', '2018-12-08 23:38:43', '0000-00-00 00:00:00'),
(45, 'product', 11, 'image/jpeg', 'Dompet', 'public/products/5.jpg', '2018-12-08 23:44:49', '0000-00-00 00:00:00'),
(48, 'product', 12, 'image/jpeg', 'Bross Unik', 'public/products/6.jpg', '2018-12-08 23:49:12', '0000-00-00 00:00:00'),
(53, 'product', 14, 'image/jpeg', 'Kemeja', 'public/products/Untitled-1.jpg', '2018-12-09 00:02:47', '0000-00-00 00:00:00'),
(56, 'product', 15, 'image/jpeg', 'Kemeja Merah', 'public/products/Untitled-2.jpg', '2018-12-09 00:05:12', '0000-00-00 00:00:00'),
(58, 'product', 16, 'image/jpeg', 'Kemeja Maroon', 'public/products/Untitled-3.jpg', '2018-12-09 00:07:36', '0000-00-00 00:00:00'),
(60, 'product', 17, 'image/jpeg', 'Kemeja Kondangan', 'public/products/Untitled-4.jpg', '2018-12-09 00:10:15', '0000-00-00 00:00:00'),
(62, 'product', 18, 'image/jpeg', 'Kemeja', 'public/products/Untitled-5.jpg', '2018-12-09 00:12:23', '0000-00-00 00:00:00'),
(67, 'product', 19, 'image/jpeg', 'Blus green', 'public/products/21.jpg', '2018-12-09 00:16:43', '0000-00-00 00:00:00'),
(69, 'product', 20, 'image/jpeg', 'Red Blus', 'public/products/25.jpg', '2018-12-09 00:19:19', '0000-00-00 00:00:00'),
(71, 'product', 21, 'image/jpeg', 'Grape Blus', 'public/products/26.jpg', '2018-12-09 00:20:54', '0000-00-00 00:00:00'),
(73, 'product', 22, 'image/jpeg', 'Orange Blus', 'public/products/27.jpg', '2018-12-09 00:24:11', '0000-00-00 00:00:00'),
(74, 'product', 0, 'image/jpeg', 'Blus Larisa', 'public/products/3.jpg', '2018-12-09 00:25:17', '0000-00-00 00:00:00'),
(75, 'product', 23, 'image/jpeg', 'Blus Larisa', 'public/products/28.jpg', '2018-12-09 00:26:38', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `order_date` date NOT NULL,
  `payment_deadline` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `total`, `order_date`, `payment_deadline`, `payment_method`, `user_id`, `status`, `created`, `modified`) VALUES
(1, '7EMNR3EZ', 4000, '2018-11-29', '2018-12-06', '1', 2, 0, '2018-11-29 00:00:00', NULL),
(2, 'ZZ9FVG83', 7500, '2018-11-29', '2018-12-06', '1', 2, 0, '2018-11-29 00:00:00', NULL),
(3, 'Z97B7458', 25000, '2018-12-08', '2018-12-15', '1', 1, 0, '2018-12-08 00:00:00', NULL),
(4, 'WZS23TOK', 175000, '2018-12-09', '2018-12-16', '1', 5, 0, '2018-12-09 00:00:00', NULL),
(5, 'DHYPE8MR', 25000, '2019-01-06', '2019-01-13', '1', 4, 0, '2019-01-06 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_percent` double DEFAULT NULL,
  `net_price` double NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `code`, `name`, `qty`, `price`, `discount_percent`, `net_price`, `order_id`) VALUES
(1, 'ABCR34', 'Product Baru', 1, 4000, 20, 4000, 1),
(2, '234FS', 'Product Name', 1, 7500, 25, 7500, 2),
(3, 'aks1', 'Gelang Batik', 1, 25000, 0, 25000, 3),
(4, 'aks1', 'Gelang Batik', 1, 25000, 0, 25000, 4),
(5, 'pr2', 'Kemeja Merah', 1, 150000, 0, 150000, 4),
(6, 'aks1', 'Gelang Batik', 1, 25000, 0, 25000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `permalink`, `title`, `body`, `status`, `created`, `modified`) VALUES
(6, 'tentang', 'Tentang', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>', 1, '2012-05-15 19:53:52', '2018-11-29 06:15:01'),
(7, 'cara-berbelanja', 'Cara Berbelanja', '<p>Ini adalah cara berbelanja di toko kita</p>', 1, '2012-05-15 19:54:41', '2018-11-29 06:14:52'),
(8, 'kontak', 'Kontak', '<p>Alamat Offline Store<span style=\"white-space: pre;\"> </span>: Jl. Soekarno Hatta</p>\r\n<p>Email<span style=\"white-space: pre;\"> </span>: admin@batikorner.com</p>\r\n<p>Telp<span style=\"white-space: pre;\"> </span>: 0928265331</p>', 1, '2012-05-16 22:52:06', '2018-12-09 00:33:51'),
(9, 'contact', 'Contact', '<p>Alamat Offline Store<span style=\"white-space: pre;\"> </span>: Jl. Soekarno Hatta</p>\r\n<p>Email<span style=\"white-space: pre;\"> </span>: admin@batikorner.com</p>\r\n<p>Telp<span style=\"white-space: pre;\"> </span>: 0928265331</p>', 1, '2018-12-09 00:34:23', '0000-00-00 00:00:00'),
(10, 'how-to-shop', 'How To SHop', '<p>1. klik kategori</p>\r\n<p>2. pilih kategori apa yang anda iginkan</p>\r\n<p>3. pilih item</p>\r\n<p>4. klik item</p>\r\n<p>5. klik add to chart</p>\r\n<p>6. pilih shoping chart pada menu atas</p>\r\n<p>7. pilih checkout untuk memproses pembelian anda</p>\r\n<p>8. klik proses</p>\r\n<p>9. selesai</p>', 1, '2018-12-09 00:36:59', '0000-00-00 00:00:00'),
(11, 'about', 'About', '<p>Batik Korner ini berdiri pada tanggal 24 november 2018.</p>\r\n<p>batik korner ini adalah website yang berisi tentang produk batik, mulai dari aksesoris, pakaian pria dan pakaian wanitaa..</p>', 1, '2018-12-09 00:40:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_percent` double NOT NULL,
  `net_price` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `permalink`, `price`, `discount_percent`, `net_price`, `description`, `stock`, `status`, `category_id`) VALUES
(7, 'aks1', 'Gelang Batik', 'gelang-batik', 25000, 0, 25000, '<p>gelang acrilyc dengan motif batik</p>', 150, 1, 7),
(8, 'aks2', 'Kalung', 'kalung', 30000, 0, 30000, '<p>kalung bermotif batik dengan bahan acrilic menambah gaya fashionmu</p>', 80, 1, 7),
(9, 'aks3', 'Butturfly Bandana', 'butturfly-bandana', 15000, 0, 15000, '<p>bandana bermotif batik dipadukan dengan pakaian kasual akan menambah gaya unik di outfitmu</p>', 110, 1, 7),
(10, 'aks4', 'Flatshoes Batik', 'flatshoes-batik', 80000, 0, 80000, '<p>flatshoes dengan bahan kain dan motif batik akan menampilkan kaki yang indah</p>', 50, 1, 7),
(11, 'aks5', 'Dompet', 'dompet', 45000, 0, 45000, '<p>dompet yang didesain khusus untu pecinta batik</p>', 25, 1, 7),
(12, 'aks6', 'Bross Unik', 'bross-unik', 7000, 0, 7000, '<p>bros yang lucu ini sangat cocok menghiasi hijabmu</p>', 67, 1, 7),
(14, 'pr1', 'Kemeja', 'kemeja', 110000, 0, 110000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 43, 1, 6),
(15, 'pr2', 'Kemeja Merah', 'kemeja-merah', 150000, 0, 150000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun Halus</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 38, 1, 6),
(16, 'pr3', 'Kemeja Maroon', 'kemeja-maroon', 210000, 0, 210000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun Halus</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 17, 1, 6),
(17, 'pr4', 'Kemeja Kondangan', 'kemeja-kondangan', 215000, 0, 215000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun Halus</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 27, 1, 6),
(18, 'pr5', 'Kemeja', 'kemeja', 200000, 0, 200000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun Halus</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 21, 1, 6),
(19, 'wn1', 'Blus green', 'blus-green', 175000, 0, 175000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun Halus</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 52, 1, 8),
(20, 'wn2', 'Red Blus', 'red-blus', 210000, 0, 210000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun Halus</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 67, 1, 8),
(21, 'wn3', 'Grape Blus', 'grape-blus', 350000, 0, 350000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun Halus</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 17, 1, 8),
(22, 'wn4', 'Orange Blus', 'orange-blus', 310000, 0, 310000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun Halus</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 23, 1, 8),
(23, 'wn5', 'Blus Larisa', 'blus-larisa', 285000, 0, 285000, '<p>Bahan<span style=\"white-space: pre;\"> </span>: Katun Halus</p>\r\n<p>Ukuran<span style=\"white-space: pre;\"> </span>: Xl, L, M, S</p>', 30, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `description`) VALUES
(1, 'paginationLimit', '30', 'Global pagination limit'),
(2, 'imageAllowed', 'gif|jpg|png|jpeg', ''),
(3, 'maxImageSize', '200000', ''),
(4, 'Order.DueDate', '7', 'Days payment due'),
(5, 'Bank.Name', 'BCA,Mandiri,BNI', 'Bank name that receive transfer from customer'),
(6, 'Email.Admin', 'admin@batikorner.com', 'Email Admin');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `description_en` text NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `title_en`, `description_en`, `position`, `status`) VALUES
(33, 'Shoping Now!!', 'Berbelanjalah sekarang juga!', '', '', 33, 1),
(34, 'New Collection', 'barang berkulitas dan harga dijamin murah', '', '', 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `reset_token`, `full_name`, `address`, `phone`, `zip`, `level`, `status`, `last_login`, `created`, `modified`) VALUES
(1, 'admin@batikorner.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'mafruroh', 'malang', '54674573', 234234, 1, 1, '2019-01-06 14:46:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'agie0925@gmail.com', '900150983cd24fb0d6963f7d28e17f72', NULL, 'Agie', 'Yogyakarta', '356363', 0, 0, 1, '2018-11-29 08:35:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'ika@gmail.com', '7965c82127bd8517d2495e8efb12702c', NULL, 'Ika', 'malang', '087512314234', 0, 0, 1, '2018-11-27 07:21:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'pangestunurmirzha@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'mirzha', 'Malang', '0987544678', 65118, 0, 1, '2019-01-06 14:44:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'abc@gmail.com', '900150983cd24fb0d6963f7d28e17f72', NULL, 'abc', 'aa', '086', 765, 0, 1, '2018-12-09 12:43:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmations`
--
ALTER TABLE `confirmations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `confirmations`
--
ALTER TABLE `confirmations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
