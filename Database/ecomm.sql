-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ecomm
CREATE DATABASE IF NOT EXISTS `ecomm` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ecomm`;

-- Dumping structure for table ecomm.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.cart: ~3 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
REPLACE INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
	(1, 9, 1, 4),
	(3, 9, 4, 6),
	(4, 9, 12, 2),
	(12, 13, 28, 1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table ecomm.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.category: ~4 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
REPLACE INTO `category` (`id`, `name`, `cat_slug`) VALUES
	(1, 'Makanan Beku', ''),
	(3, 'Makanan Kering', ''),
	(5, 'Beras', ''),
	(6, 'Sambal', ''),
	(7, 'sembako', '');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table ecomm.details
CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.details: ~9 rows (approximately)
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
REPLACE INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
	(14, 9, 11, 2),
	(15, 9, 13, 5),
	(16, 9, 3, 2),
	(17, 9, 1, 3),
	(18, 10, 13, 3),
	(19, 10, 2, 4),
	(20, 10, 19, 5),
	(21, 12, 27, 5),
	(22, 12, 28, 5),
	(23, 13, 28, 3);
/*!40000 ALTER TABLE `details` ENABLE KEYS */;

-- Dumping structure for table ecomm.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `name` text CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `slug` varchar(200) CHARACTER SET latin1 NOT NULL,
  `photo` varchar(200) CHARACTER SET latin1 NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ecomm.news: ~5 rows (approximately)
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
REPLACE INTO `news` (`id`, `news_id`, `name`, `description`, `slug`, `photo`, `date_view`, `counter`) VALUES
	(2, 2, 'Berita Terbaru', '<p>berita terpopuler</p>\r\n', 'berita-terbaru', 'berita-terbaru.png', '0000-00-00', 0),
	(3, 3, 'berita terburuk', '<p>contoh berita buruk hari ini</p>\r\n', 'berita-terburuk', 'berita-terburuk.png', '0000-00-00', 0),
	(4, 4, 'testaja', '<p>testajaddong</p>\r\n', 'testaja', 'testaja.png', '0000-00-00', 0),
	(5, 5, 'Makanan', '<p>asdasdadd</p>\r\n', 'makanan', 'makanan.jpg', '0000-00-00', 0),
	(7, 7, 'TUTORIAL INSTALASI APACHE WEB SERVER DAN PHP DI HP ANDROID MENGGUNAKAN TERMUX', '<p><strong>Tutorial instalasi Apache Web server dan PHP di HP android menggunakan termux</strong>&nbsp;ini adalah salah satu solusi yang saya gunakan ketika berbagi ilmu seputar programming di kampus tempat saya belajar. Salah satu kendala belajar web programming yang sering kali dihadapi ketika saya berbagi ilmu itu adalah tidak semua peserta memiliki laptop ataupun komputer. Pada kondisi normal, mungkin ada beberapa opsi yang bisa digunakan. Salah satu solusinya itu adalah menggunakan komputer yang ada di lab kampus saya. Karena sekarang itu kita sedang menghadapi pandemi, solusi tersebut tidak bisa lagi digunakan.</p>\r\n\r\n<p>Teringat dua tahun lalu, sekitar tahun 2018, salah seorang kawan komunitas saya di PHPID itu sedang eksplorasi aplikasi Termux dan saya juga sempat install aplikasi tersebut. Dan sempat juga&nbsp;<em>ngulik</em>&nbsp;buat program sederhana menggunakan bahasa PHP di termux. Nah setelah ngobrol sama teman-teman yang ikut belajar, hampir semuanya mempunyai HP android. Akhirnya solusi yang saya bisa tawarkan itu adalah memanfaatkan fasilitas yang ada untuk belajar dan berkarya. Tidak mudah memang. Tapi setidaknya masih bisa belajar. Dan setelah semuanya sepakat, mulailah proses instalasi Apache Web server dan PHP di hp android masing-masing dengan memanfaatkan aplikasi termux ini.</p>\r\n\r\n<h2>Prasyarat</h2>\r\n\r\n<p>Untuk mengikuti tutorial instalasi PHP dan Apache Webs server di HP android menggunakan Termux ini, pastikan koneksi internetmu stabil dan ada kuota sekitar 170MB. Dan tentu saja tutorial ini hanya bisa digunakan di hp Android. (<em>Note: belum sempat coba di hp dengan os yang beda</em>)</p>\r\n\r\n<h2>Step 1 - Install Termux</h2>\r\n\r\n<p>Karena proses instalasi apache2 dan php itu melalui Termux, tentu hal pertama yang harus kita lakukan adalah menginstall Termux itu sendiri. Untuk menginstall Termux, kita bisa download terlebih dahulu di&nbsp;<a href="https://f-droid.org/en/packages/com.termux/">web f-droid</a>. Kita tidak perlu download dulu aplikasi f-droid, kita bisa langsung download dengan menekan link&nbsp;<code>Download APK</code>&nbsp;di masing-masing versi atau bisa klik&nbsp;<a href="https://f-droid.org/repo/com.termux_117.apk">ini</a>&nbsp;untuk download Version 0.117 (117) . Nah&nbsp;<a href="https://github.com/termux/termux-app">Termux</a>&nbsp;karya Om Fredrik Fornwall ini yang akan kita install. Selanjutnya langsung klik apk yang sudah kita download. Apabila ada notifikasi, izinkan instalasi dari source yang berbeda, lalu tunggu sampai proses instalasi selesai.</p>\r\n\r\n<p><strong>Note:</strong>&nbsp;Termux dan pluginnya yang ada di playstore sudah deprecated dan tidak diupdate lagi. Tidak direkomendasikan lagi untuk menginstall dari play store (berdasar statement di repositori resmi termux). Dan sebagai catatan, download dari web F-Droid ini berdasarkan keterangan dari repositori resmi termux juga.</p>\r\n\r\n<h2>Step 2 - Install PHP dan Apache</h2>\r\n\r\n<p>Setelah Termux selesai kita install, selanjutnya buka aplikasi termux. Kita bisa melihat tampilan yang mirip terminal di linux ketika Termux dibuka.</p>\r\n\r\n<p>Langkah selanjutnya adalah instalasi PHP dan Apache2. Untuk instalasi php dan apache2. Ketik command ini:</p>\r\n', 'tutorial-instalasi-apache-web-server-dan-php-di-hp-android-menggunakan-termux', 'tutorial-instalasi-apache-web-server-dan-php-di-hp-android-menggunakan-termux.png', '0000-00-00', 0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

-- Dumping structure for table ecomm.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `stock_barang` int(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.products: ~3 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
REPLACE INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `stock_barang`, `photo`, `date_view`, `counter`) VALUES
	(27, 1, 'Mydibel Kentang Shoestring 1kg - 1 Pack', '<p>Kentang Mydibel Shoestring adalah salah satu kentang Favorite keluarga Indonesia&nbsp; terbuat dari Kentang asli dari belgia, kentang dengan kualitas premium&nbsp; kentang yang disukai di daratan dunia maupun di Indonesia. Produk yang memiliki sertifikasi halal, sehingga aman dan baik dikonsumsi Hanya Melayani Area Jabodetabek Free Ongkir</p>\r\n', 'mydibel-kentang-shoestring-1kg-1-pack', 29000, 5, 'mydibel-kentang-shoestring-1kg-1-pack.jpeg', '2022-05-18', 4),
	(28, 1, 'Mydibel Kentang Shoestring 2.5kg - 1 Pack', '<p>Kentang Mydibel Shoestring adalah salah satu kentang Favorite keluarga Indonesiaterbuat dari Kentang asli dari belgia, kentang dengan kualitas premiumkentang yang disukai di daratan dunia maupun di Indonesia.Produk yang memiliki sertifikasi halal, sehingga aman dan baik dikonsumsiHanya Melayani Area JabodetabekFree Ongkir Cooking directions : Fryer 3-4 menit pada suhu 175&deg;C Oven 10-15 menit pada suhu 210&deg;C Hari Operasional Pengiriman : Senin s/d Sabtu (diluar hari libur Nasional) Hanya Melayani Area JABODETABEK FREE ONGKIR Estimasi pengiriman 1-3 hari</p>\r\n', 'mydibel-kentang-shoestring-2-5kg-1-pack', 68000, 19, 'mydibel-kentang-shoestring-2-5kg-1-pack.jpeg', '2022-05-19', 3),
	(29, 1, 'Mydibel Premium Crunch 2.5kg - 1 Pack', '<p>Kentang Mydibel Shoestring adalah salah satu kentang Favorite keluarga Indonesia terbuat dari Kentang asli dari belgia, kentang dengan kualitas premium kentang yang disukai di daratan dunia maupun di Indonesia. Produk yang memiliki sertifikasi halal, sehingga aman dan baik dikonsumsi Hanya Melayani Area Jabodetabek Cooking directions : Fryer 3-4 menit pada suhu 175&deg;C Oven 10-15 menit pada suhu 210&deg;C Hari Operasional Pengiriman : Senin s/d Sabtu Hanya Melayani Area JABODETABEK FREE ONGKIR Pengiriman H+1 setelah pesanan masuk ke kami Estimasi pengiriman 1-3 hari</p>\r\n', 'mydibel-premium-crunch-2-5kg-1-pack', 80000, 3, 'mydibel-premium-crunch-2-5kg-1-pack.jpeg', '2022-05-18', 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table ecomm.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.sales: ~4 rows (approximately)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
REPLACE INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
	(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2022-05-10'),
	(11, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2022-06-04'),
	(12, 13, 'PAYID-MKCOGWY4XS91518KX942161U', '2022-05-18'),
	(13, 13, 'PAYID-MKCOJ6Y45759748LE303905F', '2022-05-18');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Dumping structure for table ecomm.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table ecomm.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
	(1, 'admin@admin.com', '$2a$12$A8UrBn7ZO1Uy9THKZG1Zguk3UlLf2BW4bv/iQWI0D62wb4kyI/peK', 1, 'mikha', 'mikhu', '', '', '3f29c8b28105899165dc01ac88868c6b.jpg', 1, '', '', '2022-04-01'),
	(13, 'mikhamelvin@gmail.com', '$2y$10$KZFNrMSoVUXurlCvLrq3ke.qwdGjtmk.Pzca4Hn6/Bhd2O7dVMx7S', 0, 'testing', 'akun', 'puri bintaro hijau', '085156031937', '70d63f012a8b8eee42fe0317786bfcd8.jpg', 1, '', 'KQ3tVYkE7NC1Hfv', '2022-04-06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
