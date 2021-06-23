-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 01:08 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp_gangguan_kecemasan`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `konten`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Karena Cemas, Ibu nekat nyusul anak ke Eropa', 'Seorang Ibu asal Jepara nekat menyusul anaknya ke Eropa lantaran cemas', 'default.png', '2021-05-31', '2021-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `certainty`
--

CREATE TABLE `certainty` (
  `id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `skor` float NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certainty`
--

INSERT INTO `certainty` (`id`, `penyakit_id`, `gejala_id`, `skor`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.7, '2021-05-31', '2021-05-31'),
(2, 1, 2, 0.8, '2021-05-31', '2021-05-31'),
(4, 2, 1, 0.8, '2021-06-23', '2021-06-23'),
(5, 2, 3, 0.8, '2021-06-23', '2021-06-23'),
(6, 3, 1, 0.7, '2021-06-23', '2021-06-23'),
(7, 3, 4, 0.8, '2021-06-23', '2021-06-23'),
(8, 3, 5, 0.7, '2021-06-23', '2021-06-23'),
(9, 3, 7, 0.7, '2021-06-23', '2021-06-23'),
(10, 3, 10, 0.8, '2021-06-23', '2021-06-23'),
(11, 4, 1, 0.7, '2021-06-23', '2021-06-23'),
(12, 4, 4, 0.8, '2021-06-23', '2021-06-23'),
(13, 4, 7, 0.7, '2021-06-23', '2021-06-23'),
(14, 4, 10, 0.8, '2021-06-23', '2021-06-23'),
(15, 5, 1, 0.7, '2021-06-23', '2021-06-23'),
(16, 5, 6, 0.8, '2021-06-23', '2021-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'merasa cemas, takut, rasa ingin menghindar', '', '2021-05-31', '2021-05-31'),
(2, 'akibat fisiologik langsung dari penyakit umum', '', '2021-05-31', '2021-05-31'),
(3, 'Akibat fisiologik langsung dari zat (misal penyalahgunaan obat)', '', '2021-06-22', '2021-06-22'),
(4, 'Serangan panik berulang tak terduga dengan 1 bulan merasa khawatir, prihatin tentang serangan atau perubahan perilaku', '', '2021-06-22', '2021-06-22'),
(5, 'Takut ruangan terbuka, takut meninggalkan rumah, takut pergi belanja, takut tempat ramai, takut ke tempat-tempat umum', '', '2021-06-22', '2021-06-22'),
(6, 'Merasa cemas akibat perpisahan dengan seseorang yang begitu dekat', '', '2021-06-22', '2021-06-22'),
(7, 'Gejala otonomik (tremor, palpitasi, mulut kering, sakit perut)', '', '2021-06-22', '2021-06-22'),
(8, 'Rasa takut di perhatikan oleh orang lain, dipermalukan, diperhina dalam situasi sosial', '', '2021-06-22', '2021-06-22'),
(9, 'takut akan objek/keadaan tertentu', '', '2021-06-22', '2021-06-22'),
(10, 'Perasaan tercekik, rasa takut mati, rasa takut menjadi gila, perasaan tidak riil ', '', '2021-06-22', '2021-06-22'),
(11, 'Gejala berlangsung selama 6 bulan ', '', '2021-06-22', '2021-06-22'),
(12, 'Suasana perasaan yang depresif, kehilangan minat dan kesenangan ', '', '2021-06-22', '2021-06-22'),
(13, 'Ketegangan psikis tanpa gejala otonomik', '', '2021-06-22', '2021-06-22'),
(14, 'Pikiran jelek yang berulang, memalukan bersifat mengganggu', '', '2021-06-22', '2021-06-22'),
(15, 'Ketidakmampuan mengambil keputusan ', '', '2021-06-22', '2021-06-22'),
(16, 'Pengalaman traumatik yang luar biasa', '', '2021-06-22', '2021-06-22'),
(17, 'Menarik diri dari situasi lingkungan ', '', '2021-06-22', '2021-06-22'),
(18, 'Gejala berlangsung dalam hitungan hari', '', '2021-06-22', '2021-06-22'),
(19, 'Gejala berlangsung lebih dari 1 bulan', '', '2021-06-22', '2021-06-22'),
(20, 'kecenderungan berperilaku dramatik dan melakukan kekerasan', '', '2021-06-22', '2021-06-22'),
(21, 'terdapat peristiwa/perubahan penting dalam kehidupan', '', '2021-06-22', '2021-06-22'),
(22, 'tindakan ritual berulang-ulang melebihi kenormalan (misal mencuci tangan berulang dll)', '', '2021-06-22', '2021-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `solusi` text NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`, `keterangan`, `solusi`, `created_at`, `updated_at`) VALUES
(1, 'Gangguan cemas akibat penyakit umum', '', '', '2021-05-31', '2021-05-31'),
(2, 'Gangguan cemas akibat zat', '', '', '2021-06-22', '2021-06-22'),
(3, 'Gangguan panik dengan agorafobia ', '', '', '2021-06-22', '2021-06-22'),
(4, 'Gangguan panik tanpa agorafobia ', '', '', '2021-06-22', '2021-06-22'),
(5, 'Gangguan cemas perpisahan ', '', '', '2021-06-22', '2021-06-22'),
(6, 'Agorafobia', '', '', '2021-06-22', '2021-06-22'),
(7, 'Fobia sosial', '', '', '2021-06-22', '2021-06-22'),
(8, 'Fobia khas/spesifik', '', '', '2021-06-22', '2021-06-22'),
(9, 'Gangguan anxietas menyeluruh', '', '', '2021-06-22', '2021-06-22'),
(10, 'Gangguan anxietas dan depresif', '', '', '2021-06-22', '2021-06-22'),
(11, 'Predominan pikiran obsesional', '', '', '2021-06-22', '2021-06-22'),
(12, 'Predominan tindakan kompulsif', '', '', '2021-06-22', '2021-06-22'),
(13, 'Campuran tindakan dan pikiran obsesional', '', '', '2021-06-22', '2021-06-22'),
(14, 'Gangguan stres akut', '', '', '2021-06-22', '2021-06-22'),
(15, 'Gangguan pasca trauma', '', '', '2021-06-22', '2021-06-22'),
(16, 'Gangguan penyesuaian ', '', '', '2021-06-22', '2021-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tanggal_konsultasi` date NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `solusi` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `user_id`, `nama`, `umur`, `jenis_kelamin`, `tanggal_konsultasi`, `diagnosis`, `solusi`, `created_at`, `updated_at`) VALUES
(1, 1, 'Keren', 23, 'Laki-laki', '2021-06-22', 'Cemas Lebay', '', '2021-06-22 04:23:25', '2021-06-22 04:23:25'),
(2, 1, 'linafiin', 20, 'Perempuan', '2021-06-23', 'Gangguan cemas akibat penyakit umum', '', '2021-06-23 09:16:35', '2021-06-23 09:16:35'),
(3, 1, 'lin', 22, 'Perempuan', '2021-06-23', 'Gangguan panik dengan agorafobia ', '', '2021-06-23 10:29:30', '2021-06-23 10:29:30'),
(4, 1, 'lin', 20, 'Perempuan', '2021-06-23', 'Gangguan panik dengan agorafobia ', '', '2021-06-23 10:42:19', '2021-06-23 10:42:19'),
(5, 1, 'mar', 21, 'Perempuan', '2021-06-23', 'Gangguan panik dengan agorafobia ', '', '2021-06-23 10:43:58', '2021-06-23 10:43:58'),
(6, 1, 'a21', 0, 'Laki-laki', '2021-06-23', 'Gangguan panik dengan agorafobia ', '', '2021-06-23 10:59:20', '2021-06-23 10:59:20'),
(7, 1, 'k', 21, 'Laki-laki', '2021-06-23', 'Gangguan cemas akibat penyakit umum', '', '2021-06-23 11:01:28', '2021-06-23 11:01:28'),
(8, 1, 'kk', 21, 'Laki-laki', '2021-06-23', 'Gangguan cemas akibat penyakit umum', '', '2021-06-23 11:42:15', '2021-06-23 11:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-05-26', '2021-05-26'),
(2, 'member', '2021-05-26', '2021-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$O9MjxWje6GNrSuk1cD2i6.6bnPnpcv9oSLhZHTpmmJByK03Up39BG', 'Admin Pusat', 1, '2021-05-26', '2021-05-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certainty`
--
ALTER TABLE `certainty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certainty`
--
ALTER TABLE `certainty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
