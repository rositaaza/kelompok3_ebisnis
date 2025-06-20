-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2025 pada 17.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mangola`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`cart_id`, `product_id`, `user_id`) VALUES
(94, 8, 41),
(91, 2, 33),
(88, 6, 18),
(98, 5, 45),
(89, 3, 18),
(96, 1, 46),
(101, 3, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `quantity` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `details`
--

INSERT INTO `details` (`details_id`, `user_id`, `product_id`, `address`, `quantity`) VALUES
(23, 45, 4, 'Opposite of Remidy Medical, flat no. 5, Garia, Kolkata-700084', 2),
(21, 41, 2, 'Pratapgarh, Garia, Kolkata-700103', 7),
(22, 46, 6, 'Kamalgazi, Kolkata-700135', 5),
(19, 33, 6, '2/3 E Block, Surat, Gujrat-395002', 5),
(20, 40, 3, 'Mahamayatala, Garia, Kolkata-84', 3),
(26, 47, 16, '', 1),
(27, 47, 22, 'Indonesia', 3),
(28, 48, 16, 'Indonesia', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`) VALUES
(59, 45, 4),
(58, 46, 6),
(57, 41, 2),
(55, 33, 6),
(56, 40, 3),
(62, 47, 16),
(63, 47, 22),
(64, 48, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_description`, `product_image`) VALUES
(26, 'Risol Ragout Pedas (Frozen)', 30, 'Risol beku ini dirancang untuk pecinta pedas! Berisi ragout lembut yang diperkaya irisan cabai, lada hitam, dan bumbu spesial yang menggigit. Sensasi pedasnya tetap nendang meskipun dalam kondisi frozen. Cukup goreng langsung dari freezer untuk camilan pedas yang siap memanjakan lidah.', 'Risol Ragout Pedas (Frozzen).jpeg'),
(25, 'Risol Ragout Daging (Frozen)', 30, 'Risol frozen ini menghadirkan ragout creamy berpadu dengan daging sapi cincang pilihan dan bumbu gurih yang kaya rasa. Meskipun disimpan dalam freezer, kualitas kulit tetap terjaga saat digoreng—renyah di luar, juicy dan lembut di dalam. Solusi praktis untuk camilan berbobot yang mengenyangkan.', 'Risol Ragout Daging (Frozzen).jpeg'),
(29, 'Risol Ragout Keju (Frozen)', 30, 'Varian ini memadukan ragout creamy dengan keju lumer yang meleleh sempurna saat digoreng, bahkan setelah disimpan dalam freezer. Kulitnya tetap renyah dan isiannya kaya rasa, memberikan pengalaman gurih dan memanjakan di setiap gigitan. Sangat ideal untuk penggemar keju.', 'Risol Ragout Keju (Frozzen).jpeg'),
(24, 'Risol Ragout Sayur (Frozen)', 30, 'Risol beku berisi ragout lembut dengan kombinasi sayuran segar seperti wortel, kentang, dan buncis. Setelah dibekukan, tekstur kulit tetap renyah saat digoreng, dan isiannya tetap creamy serta gurih. Pilihan sehat dan ringan, cocok untuk camilan atau sarapan praktis—tinggal goreng tanpa perlu dicairkan.', 'Risol Ragout Sayur (Frozzen).jpeg'),
(22, 'Risol Ragout Pedas', 30, 'Varian ini berisi ragout creamy yang dipadukan dengan irisan cabai, lada hitam, dan bumbu spesial yang memberikan sensasi pedas menggigit di setiap gigitan. Kulitnya tetap garing saat digoreng, sementara isian pedasnya bikin nagih.', 'Risol pedas.jpeg'),
(18, 'Risol Ragout Daging', 30, 'Berisi ragout lembut yang diperkaya dengan potongan daging sapi cincang berkualitas, dipadukan dengan bawang bombai dan rempah pilihan yang gurih. Saat digoreng, kulitnya tetap renyah sempurna, sementara isiannya tetap juicy dan creamy.', 'Risol daging.jpeg'),
(16, 'Risol Ragout Sayur', 30, 'Berisi ragout lembut dengan kombinasi sayuran segar seperti wortel, kentang, dan buncis. Setelah dibekukan, tekstur kulit tetap terjaga dan isian tetap creamy saat digoreng. Cocok untuk pilihan sehat dan ringan—tinggal goreng tanpa perlu dicairkan.', 'Risol sayur.jpeg'),
(15, 'Risol Ragout Keju', 30, 'Varian ini punya isian ragout lembut berpadu dengan keju lumer yang meleleh sempurna di setiap gigitan. \r\nRasanya gurih, creamy, dan bikin nyaman di lidah—pas banget buat pecinta keju sejati yang suka rasa rich dan memanjakan.', 'Risol keju.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_heading` varchar(255) NOT NULL,
  `review_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`review_id`, `product_id`, `user_id`, `review_heading`, `review_text`) VALUES
(34, 5, 34, 'This is so sweet!', 'Unique sweet and rich taste. They are moderately juicy and aromatic with a maize-yellow colour. Love it!'),
(33, 1, 34, 'Best of its all', 'Raw mango is a sweet-smelling fruit which is liked by al for its tart flavor. The colour varies in shades of greens and the inner flesh is white in colour. Its potent health benefits makes totapuri mango puree concentrate - an important food item.'),
(28, 8, 33, 'Never tried before', 'I tried it for the first time and oh boi its great! Must try this one'),
(37, 2, 40, 'Takes me back to childhood.', 'Whenever I have this it always reminds me of my childhood. This will always be my favorite.'),
(26, 1, 33, 'A bit expensive!', 'These are the best and a bit costly, but thanks to Mangola for selling me with a discount of 25%. #happy_shopping :D'),
(25, 4, 33, 'I love this variety!', 'One of the best mangoes compared to all its categories. I love this one.'),
(35, 4, 37, 'Great! This is my favourite.', 'I love this one. It tastes so great man!'),
(36, 4, 39, 'Its a bit over priced.', 'Mangola you are selling it a bit over priced. Otherwise its all good.'),
(38, 6, 40, 'No words can describe howmuch I love these.', 'This has always been my favorite. I always reccomend this variety ti others.'),
(39, 5, 41, 'Thanks to Mangola for the discount1', 'I bought like 8Kgs of these and got a discount of 40% on it. Thanks to mangola. Happy Shopping.'),
(40, 7, 43, 'So delicious!', 'Just one look at  the picture brings water to my mouth.'),
(41, 7, 40, 'Over priced.', 'Dude Mangola is selling this over-priced. I\'m not buying it. Sorry!'),
(42, 7, 44, 'This is love', 'My fav and will always be my fav. I love it more than Alponso'),
(43, 1, 36, 'This is the best!', 'Its suites my standards! This is the best!'),
(53, 2, 36, 'I was importing them from Canada', 'I love them so much that I decided to import them from Canada but then I came across Mangola.'),
(54, 8, 39, 'This variety is only for true mango lovers', 'Tastes good, smells good, and the company delivers good.'),
(55, 7, 46, 'Inshallah its great!', 'I am buying it for all my wives and children.'),
(56, 5, 45, 'I don\'t like this variety.', 'I don\'t know why but I kind of don\'t like this variety.'),
(57, 4, 44, 'Superb', 'Just amazing! And mangola delivered before expected time of delivery.'),
(58, 3, 42, 'Loved it!', 'It took a while for mangola to deliver but a wait for mangoes is worth a while.'),
(59, 3, 41, 'I can have this all day', 'I like these soo much that I can have it all day.'),
(60, 3, 40, 'I am returning home this Monday', 'I am returning home this Monday hope it gets delivered by then.'),
(61, 6, 39, 'Very Sweet', 'Its so sweet in test!'),
(62, 1, 39, 'Its so juicy', 'The best variety of mangoes.'),
(63, 6, 33, 'Great!', 'Its very nice!'),
(64, 16, 47, 'Risol sayur', 'rasanya sangat enak dan creamy banget, dan harga nya juga terjangkau bakal beli terus dehh'),
(65, 22, 47, 'Risol pedas', 'rasanya pas dan enak next saya akan orer lagi'),
(66, 16, 48, 'Risol sayur', 'Rasanya enak sekali isisan nya angat melimpah, next saya akan order lagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(42, 'Dhvanil', 'dhvanilpatel@gmail.com', 'dhvanil'),
(41, 'Chayan', 'chayanmaida@hotmail.com', 'chayan'),
(40, 'Bananta', 'banantabala@gmail.com', 'bananta'),
(38, 'Anindo', 'anindodas@yahoo.in', 'anindo'),
(39, 'Vishal', 'vishalrc_1@gmail.com', 'vishal'),
(37, 'Agnish', 'agnishgupta@gmail.com', 'agnish'),
(36, 'Mamta', 'mamtabanarjee@tmc.com', 'mamta'),
(19, 'Admin', 'admin@mangola.com', '1234'),
(35, 'Lalu', 'yadav_lalu@bihar.com', 'bihari'),
(4, 'Alya', 'salsabillaalya848@gmail.com', 'lyak04'),
(34, 'Rahul', 'gandhi.rahul@congress.com', 'abcd'),
(33, 'Modi', 'narendra_modi@bjp.com', 'namo'),
(18, 'Anirban', 'anirban@anirban.com', '1234'),
(43, 'Niloy', 'niloyburdhan@hotmail.com', 'niloy'),
(44, 'Rana Pratap', 'ranapratap@hotmail.com', 'ranapratap'),
(45, 'Sourav', 'souravnaskar@rediffmail.com', 'sourav'),
(46, 'Subhradip', 'subhradiprustyroy@rediffmail.com', 'rusty'),
(47, 'Mey', 'Mey16@gmail.com', '12345'),
(48, 'Ani', 'Ani123@gamil.com', '1223456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `product_id`, `user_id`) VALUES
(54, 5, 36),
(53, 5, 33),
(56, 7, 39),
(55, 8, 40),
(60, 1, 41),
(50, 1, 18),
(52, 3, 33),
(51, 8, 18),
(58, 6, 42),
(59, 4, 42),
(61, 7, 46),
(62, 2, 46),
(63, 1, 45),
(64, 2, 45),
(67, 18, 47),
(68, 15, 47),
(69, 16, 48);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`details_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id_2` (`product_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
