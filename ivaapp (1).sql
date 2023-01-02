-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2023 pada 10.08
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ivaapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id_barang`, `nama_barang`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'umpan', 450000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawans`
--

CREATE TABLE `karyawans` (
  `id_karyawan` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `karyawans`
--

INSERT INTO `karyawans` (`id_karyawan`, `nama`, `alamat`, `umur`, `created_at`, `updated_at`) VALUES
(1, 'Jennifer Treutel', 'East Lavernabury', 36, '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(2, 'Cyril O\'Kon', 'Cartwrightview', 28, '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(3, 'Mr. Remington Keebler IV', 'Millerton', 36, '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(4, 'Jody Deckow', 'North Jarretthaven', 29, '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(5, 'Milton Schimmel', 'Port Javonte', 28, '2022-12-31 08:26:04', '2022-12-31 08:26:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kolams`
--

CREATE TABLE `kolams` (
  `id_kolam` bigint(20) UNSIGNED NOT NULL,
  `nama_kolam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_tebar` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kolams`
--

INSERT INTO `kolams` (`id_kolam`, `nama_kolam`, `jumlah_tebar`, `created_at`, `updated_at`) VALUES
(1, 'kolam baihaqi', 50000, NULL, NULL),
(2, 'kolam ikan', 500000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_kolams`
--

CREATE TABLE `log_kolams` (
  `id_log` bigint(20) UNSIGNED NOT NULL,
  `nama_kolam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_tebar` int(11) NOT NULL,
  `totalKeluar` int(11) NOT NULL,
  `totalMasuk` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log_kolams`
--

INSERT INTO `log_kolams` (`id_log`, `nama_kolam`, `jumlah_tebar`, `totalKeluar`, `totalMasuk`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'kolam baihaqi', 50000, 0, 38500000, 'Pemasukan panen 1', '2022-12-31 15:40:34', NULL),
(2, 'kolam baihaqi', 50000, 4500000, 0, 'pengeluaran umpan', '2022-12-31 15:42:26', NULL),
(3, 'kolam baihaqi', 50000, 4500000, 0, 'pengeluaran umpan', '2023-01-02 09:02:09', NULL),
(4, 'kolam ikan', 500000, 4500000, 0, 'pengeluaran umpan', '2023-01-02 09:08:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_25_141831_create_sessions_table', 1),
(6, '2022_06_28_170853_create_karyawans_table', 1),
(7, '2022_06_28_171114_create_peminjamans_table', 1),
(8, '2022_06_29_133020_create_barangs_table', 1),
(9, '2022_06_29_133256_create_kolams_table', 1),
(10, '2022_06_29_133312_create_pemasukans_table', 1),
(11, '2022_06_29_133327_create_pengeluarans_table', 1),
(12, '2022_07_03_101610_create_tagihans_tables', 1),
(13, '2022_07_03_134954_create_log_kolams_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukans`
--

CREATE TABLE `pemasukans` (
  `id_pemasukan` bigint(20) UNSIGNED NOT NULL,
  `id_kolam` bigint(20) UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_kg` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `nama_kolam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_tebar` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemasukans`
--

INSERT INTO `pemasukans` (`id_pemasukan`, `id_kolam`, `keterangan`, `jumlah_kg`, `harga`, `nama_kolam`, `jumlah_tebar`, `created_at`, `updated_at`) VALUES
(2, 1, 'panen 1', 500, 77000, 'kolam baihaqi', 50000, '2022-12-31 08:40:33', NULL);

--
-- Trigger `pemasukans`
--
DELIMITER $$
CREATE TRIGGER `masuk` AFTER INSERT ON `pemasukans` FOR EACH ROW insert into log_kolams
values (id_log,NEW.nama_kolam,NEW.jumlah_tebar,0,(SELECT SUM(harga*jumlah_kg)FROM pemasukans WHERE`id_pemasukan`IN (SELECT MAX(id_pemasukan)FROM pemasukans) ORDER BY id_pemasukan DESC LIMIT 1),CONCAT("Pemasukan ",NEW.keterangan),now(),NULL)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamans`
--

CREATE TABLE `peminjamans` (
  `id_peminjaman` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `karyawan_id` bigint(20) UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peminjamans`
--

INSERT INTO `peminjamans` (`id_peminjaman`, `tanggal`, `jumlah`, `karyawan_id`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '2022-12-31', 231207, 1, 'Ut enim.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(2, '2022-12-31', 144160, 1, 'Ut enim.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(3, '2022-12-31', 136015, 1, 'Magni.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(4, '2022-12-31', 233314, 1, 'Quia est.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(5, '2022-12-31', 50137, 1, 'Et.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(6, '2022-12-31', 172706, 1, 'Delectus.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(7, '2022-12-31', 183764, 1, 'Eos modi.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(8, '2022-12-31', 102829, 2, 'Porro.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(9, '2022-12-31', 148135, 2, 'Qui nulla.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(10, '2022-12-31', 293108, 2, 'Qui eaque.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(11, '2022-12-31', 107832, 2, 'Culpa.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(12, '2022-12-31', 167878, 2, 'Ipsam.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(13, '2022-12-31', 295813, 2, 'Est sed.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(14, '2022-12-31', 250990, 2, 'Esse et.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(15, '2022-12-31', 154255, 3, 'Ut qui.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(16, '2022-12-31', 110389, 3, 'Dolor.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(17, '2022-12-31', 98316, 3, 'Quia.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(18, '2022-12-31', 287873, 3, 'Eum et.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(19, '2022-12-31', 198216, 3, 'Adipisci.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(20, '2022-12-31', 71854, 3, 'Dolore.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(21, '2022-12-31', 67608, 3, 'Et qui.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(22, '2022-12-31', 284525, 4, 'Quia.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(23, '2022-12-31', 85594, 4, 'Fugiat.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(24, '2022-12-31', 198078, 4, 'Amet quo.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(25, '2022-12-31', 99299, 4, 'Adipisci.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(26, '2022-12-31', 254997, 4, 'Omnis ad.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(27, '2022-12-31', 140449, 4, 'Enim.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(28, '2022-12-31', 250563, 4, 'Dolore ut.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(29, '2022-12-31', 191584, 5, 'Neque.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(30, '2022-12-31', 297024, 5, 'Similique.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(31, '2022-12-31', 128602, 5, 'Impedit.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(32, '2022-12-31', 51686, 5, 'Et.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(33, '2022-12-31', 116768, 5, 'Qui.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(34, '2022-12-31', 161873, 5, 'Aliquam.', '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(35, '2022-12-31', 268049, 5, 'Rem.', '2022-12-31 08:26:04', '2022-12-31 08:26:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluarans`
--

CREATE TABLE `pengeluarans` (
  `id_pengeluaran` bigint(20) UNSIGNED NOT NULL,
  `id_kolam` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama_kolam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_tebar` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengeluarans`
--

INSERT INTO `pengeluarans` (`id_pengeluaran`, `id_kolam`, `id_barang`, `nama_barang`, `jumlah`, `nama_kolam`, `jumlah_tebar`, `harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'umpan', 10, 'kolam baihaqi', 50000, 450000, '2022-12-31 08:28:53', NULL),
(2, 1, 1, 'umpan', 10, 'kolam baihaqi', 50000, 450000, '2022-12-31 08:42:26', NULL),
(3, 1, 1, 'umpan', 10, 'kolam baihaqi', 50000, 450000, '2023-01-02 02:02:08', NULL),
(4, 2, 1, 'umpan', 10, 'kolam ikan', 500000, 450000, '2023-01-02 02:08:25', NULL);

--
-- Trigger `pengeluarans`
--
DELIMITER $$
CREATE TRIGGER `keluar` AFTER INSERT ON `pengeluarans` FOR EACH ROW insert into log_kolams
values (id_log,NEW.nama_kolam,NEW.jumlah_tebar,(SELECT SUM(harga*jumlah)FROM pengeluarans WHERE`id_pengeluaran`IN (SELECT MAX(id_pengeluaran)FROM pengeluarans) ORDER BY id_pengeluaran DESC LIMIT 1),0,CONCAT("pengeluaran ",NEW.nama_barang),now(),NULL)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihans`
--

CREATE TABLE `tagihans` (
  `id_tagihan` bigint(20) UNSIGNED NOT NULL,
  `rek_tagihan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tagihans`
--

INSERT INTO `tagihans` (`id_tagihan`, `rek_tagihan`, `tanggal`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'baihaqi', '2022-12-31', 500000, '2022-12-31 08:42:46', '2022-12-31 08:43:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2022-12-31 08:26:04', '$2y$10$vWpt3SWQkFKyE44dmUf/3uZQLnzV3ZKr01.afo5AyNYWlKU3RzL9a', NULL, '2022-12-31 08:26:04', '2022-12-31 08:26:04'),
(2, 'Baihaqi', 'baihaqi@gmail.com', NULL, '$2y$10$fK70pjE63uFaGaBWoo/UyuAdXxNF8MlIjpF9M3x9LI0LuyZAroKSW', NULL, '2022-12-31 08:27:18', '2022-12-31 08:27:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD KEY `id_barang` (`id_barang`) USING BTREE;

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `kolams`
--
ALTER TABLE `kolams`
  ADD KEY `id_kolam` (`id_kolam`) USING BTREE;

--
-- Indeks untuk tabel `log_kolams`
--
ALTER TABLE `log_kolams`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pemasukans`
--
ALTER TABLE `pemasukans`
  ADD PRIMARY KEY (`id_pemasukan`),
  ADD KEY `pemasukans_id_kolam_foreign` (`id_kolam`);

--
-- Indeks untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `peminjamans_karyawan_id_foreign` (`karyawan_id`);

--
-- Indeks untuk tabel `pengeluarans`
--
ALTER TABLE `pengeluarans`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `pengeluarans_id_kolam_foreign` (`id_kolam`),
  ADD KEY `pengeluarans_id_barang_foreign` (`id_barang`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tagihans`
--
ALTER TABLE `tagihans`
  ADD PRIMARY KEY (`id_tagihan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id_barang` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `karyawans`
--
ALTER TABLE `karyawans`
  MODIFY `id_karyawan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kolams`
--
ALTER TABLE `kolams`
  MODIFY `id_kolam` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `log_kolams`
--
ALTER TABLE `log_kolams`
  MODIFY `id_log` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pemasukans`
--
ALTER TABLE `pemasukans`
  MODIFY `id_pemasukan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans`
  MODIFY `id_peminjaman` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `pengeluarans`
--
ALTER TABLE `pengeluarans`
  MODIFY `id_pengeluaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tagihans`
--
ALTER TABLE `tagihans`
  MODIFY `id_tagihan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemasukans`
--
ALTER TABLE `pemasukans`
  ADD CONSTRAINT `pemasukans_id_kolam_foreign` FOREIGN KEY (`id_kolam`) REFERENCES `kolams` (`id_kolam`);

--
-- Ketidakleluasaan untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans`
  ADD CONSTRAINT `peminjamans_karyawan_id_foreign` FOREIGN KEY (`karyawan_id`) REFERENCES `karyawans` (`id_karyawan`);

--
-- Ketidakleluasaan untuk tabel `pengeluarans`
--
ALTER TABLE `pengeluarans`
  ADD CONSTRAINT `pengeluarans_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barangs` (`id_barang`),
  ADD CONSTRAINT `pengeluarans_id_kolam_foreign` FOREIGN KEY (`id_kolam`) REFERENCES `kolams` (`id_kolam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
