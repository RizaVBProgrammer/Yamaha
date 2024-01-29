-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2024 pada 17.19
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yamaha`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carousel_images`
--

CREATE TABLE `carousel_images` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `decoding` varchar(50) NOT NULL,
  `fetch_priority` varchar(50) NOT NULL,
  `srcset` varchar(1000) NOT NULL,
  `sizes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `carousel_images`
--

INSERT INTO `carousel_images` (`id`, `image_url`, `link_url`, `alt_text`, `decoding`, `fetch_priority`, `srcset`, `sizes`) VALUES
(1, '../../wp-content/uploads/2023/04/Gear-S-1.png', 'your_link_url', 'Alt Text 1', 'async', 'high', 'https://yamaha-motor.id/wp-content/uploads/2023/04/Gear-S-1.png 600w, https://yamaha-motor.id/wp-content/uploads/2023/04/Gear-S-1-300x300.png 300w, https://yamaha-motor.id/wp-content/uploads/2023/04/Gear-S-1-150x150.png 150w, https://yamaha-motor.id/wp-content/uploads/2023/04/Gear-S-1-450x450.png 450w', '(max-width: 600px) 100vw, 600px');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carousel_images2`
--

CREATE TABLE `carousel_images2` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `decoding` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `carousel_images2`
--

INSERT INTO `carousel_images2` (`id`, `image_url`, `link_url`, `alt_text`, `decoding`) VALUES
(1, '../../wp-content/uploads/2023/04/Gear-S-2.png', 'your_link_url_1', 'Alt Text 1', 'async'),
(2, '../../wp-content/uploads/2023/04/Gear-S-1.png', 'your_link_url_2', 'Alt Text 2', 'async');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(15) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `website_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `phone`, `fax`, `email`, `whatsapp`, `facebook`, `twitter`, `instagram`, `website_description`) VALUES
(1, '085777987758', '085777987758', '#', '6285777987758', 'www.facebook.com/Riza', '#', 'rizatarigan', 'Your website description goes here');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `name`, `url`, `image_url`) VALUES
(1, 1, 'BERANDA', 'index.php', 'wp-content/uploads/2023/04/Faz-Neo-4-200x150.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `parent_id`, `title`, `url`, `image_url`, `image_alt`) VALUES
(12910, NULL, 'MATIC', '#', NULL, NULL),
(12914, 12910, 'Gear 125 S-Version', 'tampil_motor.php', 'wp-content/uploads/2023/04/Gear-S-1-200x150.png', NULL),
(12915, 12910, 'Gear 125 Standar', 'tampil_motor.php', 'wp-content/uploads/2023/04/Gear-std-1-200x150.png', NULL),
(12916, 12910, 'FreeGo S', 'index7309.html?post_type=model&amp;p=3893', NULL, NULL),
(12917, 12910, 'FreeGo Standar', 'model/kredit-motor-yamaha-freego-standar/index.html', 'wp-content/uploads/2023/04/FreeGo-std-4-200x150.png', NULL),
(12918, 12910, 'Fino Premium', 'model/kredit-motor-yamaha-fino-premium/index.html', 'wp-content/uploads/2023/04/Fino-premi-2-200x150.png', NULL),
(12919, 12910, 'Fino Grande', 'model/kredit-motor-yamaha-fino-grande/index.html', 'wp-content/uploads/2023/04/Fino-Gran-1-200x150.png', NULL),
(12920, 12910, 'Fino Sporty', 'model/kredit-motor-yamaha-fino-sporty/index.html', 'wp-content/uploads/2023/04/Fino-sport-1-200x150.png', NULL),
(12921, 12910, 'Xride 125', 'model/kredit-motor-yamaha-xride-125/index.html', 'wp-content/uploads/2023/04/Xride-3-200x150.png', NULL),
(12922, 12910, 'Mio M3 Aks Sss', 'indexc6c3.html?post_type=model&amp;p=3886', NULL, NULL),
(12923, 12910, 'Mio M3', 'model/kredit-motor-yamaha-mio-m3/index.html', 'wp-content/uploads/2023/04/Mio-m3-4-200x150.png', NULL),
(13076, NULL, 'Spare Part', 'https://www.tokopedia.com/anugerahcuan', NULL, NULL),
(13134, 12910, 'Fazzio Neo', 'model/yamaha-fazzio-neo/index.html', 'wp-content/uploads/2023/04/Faz-Neo-4-200x150.png', NULL),
(13135, 12910, 'Fazzio Lux', 'model/yamaha-fazzio-lux/index.html', 'wp-content/uploads/2023/04/Faz-Lux-3-200x150.png', NULL),
(13213, 12910, 'Grand Filano', 'model/grand-filano/index.html', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `motorcycles`
--

CREATE TABLE `motorcycles` (
  `id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `transmisi` varchar(50) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `detail_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `motorcycles`
--

INSERT INTO `motorcycles` (`id`, `model`, `transmisi`, `harga`, `image_path`, `detail_link`) VALUES
(1, 'Grand Filano', 'Matic', '27500000.00', 'wp-content/uploads/2023/04/Grand-filanno-6-600x400.png', 'model/grand-filano/index.html'),
(2, 'Fazzio Neo', 'Matic', '22650000.00', 'wp-content/uploads/2023/04/Faz-Neo-4-600x400.png', 'model/yamaha-fazzio-neo/index.html'),
(3, 'Fazzio Lux', 'Matic', '23050000.00', 'wp-content/uploads/2023/04/Faz-Lux-3-600x400.png', 'model/yamaha-fazzio-lux/index.html');

-- --------------------------------------------------------

--
-- Struktur dari tabel `motorcycle_info`
--

CREATE TABLE `motorcycle_info` (
  `id` int(11) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `motorcycle_info`
--

INSERT INTO `motorcycle_info` (`id`, `model_name`, `type`, `harga`, `image_url`) VALUES
(1, 'Gear 125 S-Version', '1 Type', 'Your Price Here', '../../wp-content/uploads/2023/04/Gear-S-1-600x400.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `motorcycle_models`
--

CREATE TABLE `motorcycle_models` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `transmission_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `motorcycle_models`
--

INSERT INTO `motorcycle_models` (`id`, `name`, `brand`, `image_url`, `price`, `transmission_type`) VALUES
(2, 'Grand Filano', 'Yamaha', 'wp-content/uploads/2023/04/Grand-filanno-6-600x400.png', 27500000, 'Matic'),
(3, 'Fazzio Neo', 'Yamaha', 'wp-content/uploads/2023/04/Faz-Neo-4-600x400.png', 22650000, 'Matic'),
(4, 'Fazzio Lux', 'Yamaha', 'wp-content/uploads/2023/04/Faz-Lux-3-600x400.png', 23050000, 'Matic'),
(5, 'All New R15 Connected', 'Yamaha', 'wp-content/uploads/2023/04/R15-CON-3-600x400.png', 39875000, 'Manual'),
(6, 'All New R15M ABS', 'Yamaha', 'wp-content/uploads/2023/04/R15-ABS-600x400.png', 44525000, 'Manual'),
(7, 'Gear 125 S-Version', 'Yamaha', 'wp-content/uploads/2023/04/Gear-S-1-600x400.png', 18920000, 'Matic'),
(8, 'Gear 125 Standar', 'Yamaha', 'wp-content/uploads/2023/04/Gear-std-1-600x400.png', 18205000, 'Matic'),
(9, 'New Aerox 155 Connected', 'Yamaha', 'wp-content/uploads/2023/04/Aerox-std-1-600x400.png', 27425000, 'Matic'),
(10, 'New Aerox 155 ABS Connected', 'Yamaha', 'wp-content/uploads/2023/04/Aerox-abs-2-600x400.png', 30960000, 'Matic'),
(11, 'WR 155 R', 'Yamaha', 'wp-content/uploads/2023/04/WR-2-600x400.png', 38600000, 'Manual'),
(12, 'New Nmax 155 Abs Connected', 'Yamaha', 'wp-content/uploads/2023/04/Nmax-ABS-1-600x400.png', 35750000, 'Matic'),
(13, 'New Nmax Non Abs Standar', 'Yamaha', 'wp-content/uploads/2023/04/Nmax-std-1-600x400.png', 31615000, 'Matic');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `special_features` text,
  `descriptions` text,
  `image_url` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_details`
--

INSERT INTO `product_details` (`id`, `special_features`, `descriptions`, `image_url`, `youtube_link`) VALUES
(1, 'Special Features Text', 'Descriptions Text', 'path/to/image.jpg', 'https://www.youtube.com/embed/i6bsSEE5aEA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider_images`
--

CREATE TABLE `slider_images` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `decoding` varchar(50) NOT NULL,
  `loading` varchar(50) NOT NULL,
  `srcset` varchar(1000) NOT NULL,
  `sizes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slider_images`
--

INSERT INTO `slider_images` (`id`, `image_url`, `alt_text`, `title`, `decoding`, `loading`, `srcset`, `sizes`) VALUES
(1, 'wp-content/uploads/2023/10/wp-new1.png', 'navigate', 'navigate', 'async', 'lazy', 'https://yamaha-motor.id/wp-content/uploads/2023/10/wp-new1.png 1000w, https://yamaha-motor.id/wp-content/uploads/2023/10/wp-new1-300x195.png 300w, https://yamaha-motor.id/wp-content/uploads/2023/10/wp-new1-768x499.png 768w', '(max-width: 1000px) 100vw, 1000px'),
(2, 'wp-content/uploads/2023/10/wp-new2.png', 'gagah', 'gagah', 'async', 'lazy', 'https://yamaha-motor.id/wp-content/uploads/2023/10/wp-new2.png 1000w, https://yamaha-motor.id/wp-content/uploads/2023/10/wp-new2-300x195.png 300w, https://yamaha-motor.id/wp-content/uploads/2023/10/wp-new2-768x499.png 768w', '(max-width: 1000px) 100vw, 1000px'),
(3, 'wp-content/uploads/2023/10/wp-sli.png', 'djisamsoe', 'djisamsoe', 'async', 'lazy', 'https://yamaha-motor.id/wp-content/uploads/2023/10/wp-sli.png 1000w, https://yamaha-motor.id/wp-content/uploads/2023/10/wp-sli-300x195.png 300w, https://yamaha-motor.id/wp-content/uploads/2023/10/wp-sli-768x499.png 768w', '(max-width: 1000px) 100vw, 1000px'),
(4, 'wp-content/uploads/2021/06/Yamaha-No-1.png', 'Yamaha', 'Yamaha', 'async', 'lazy', 'https://yamaha-motor.id/wp-content/uploads/2021/06/Yamaha-No-1.png 1000w, https://yamaha-motor.id/wp-content/uploads/2021/06/Yamaha-No-1-300x195.png 300w, https://yamaha-motor.id/wp-content/uploads/2021/06/Yamaha-No-1-768x499.png 768w', '(max-width: 1000px) 100vw, 1000px'),
(5, 'wp-content/uploads/2021/06/Yamaha-No-1.png', 'kredit motor yamaha', 'kredit motor yamaha', 'async', 'lazy', 'https://yamaha-motor.id/wp-content/uploads/2021/06/Yamaha-No-1.png 1000w, https://yamaha-motor.id/wp-content/uploads/2021/06/Yamaha-No-1-300x195.png 300w, https://yamaha-motor.id/wp-content/uploads/2021/06/Yamaha-No-1-768x499.png 768w', '(max-width: 1000px) 100vw, 1000px');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `transmission_type` varchar(50) NOT NULL,
  `type_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carousel_images`
--
ALTER TABLE `carousel_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `carousel_images2`
--
ALTER TABLE `carousel_images2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_parent_id` (`parent_id`);

--
-- Indeks untuk tabel `motorcycles`
--
ALTER TABLE `motorcycles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `motorcycle_info`
--
ALTER TABLE `motorcycle_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `motorcycle_models`
--
ALTER TABLE `motorcycle_models`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carousel_images`
--
ALTER TABLE `carousel_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `carousel_images2`
--
ALTER TABLE `carousel_images2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `motorcycles`
--
ALTER TABLE `motorcycles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `motorcycle_info`
--
ALTER TABLE `motorcycle_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `motorcycle_models`
--
ALTER TABLE `motorcycle_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `fk_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
