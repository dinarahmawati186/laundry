-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2023 pada 06.45
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbapelin`
--

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
-- Struktur dari tabel `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log_activities`
--

INSERT INTO `log_activities` (`id`, `user_id`, `ip`, `subject`, `method`, `url`, `agent`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'berhasil membuat transaksi', 'POST', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 04:56:03', '2023-02-10 04:56:03'),
(2, 1, '127.0.0.1', 'berhasil menambahkan outlet', 'POST', 'http://localhost:8000/outlet', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 06:52:58', '2023-02-10 06:52:58'),
(3, 1, '127.0.0.1', 'berhasil menambahkan user', 'POST', 'http://localhost:8000/user', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 06:56:06', '2023-02-10 06:56:06'),
(4, 1, '127.0.0.1', 'berhasil menambahkan outlet', 'POST', 'http://localhost:8000/outlet', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 06:58:34', '2023-02-10 06:58:34'),
(5, 1, '127.0.0.1', 'berhasil menambahkan user', 'POST', 'http://localhost:8000/user', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:04:52', '2023-02-10 07:04:52'),
(6, 1, '127.0.0.1', 'berhasil menambahkan user', 'POST', 'http://localhost:8000/user', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:05:21', '2023-02-10 07:05:21'),
(7, 1, '127.0.0.1', 'berhasil mengubah outlet', 'PUT', 'http://localhost:8000/outlet/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:10:50', '2023-02-10 07:10:50'),
(8, 1, '127.0.0.1', 'berhasil mengubah user', 'PUT', 'http://localhost:8000/user/6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:11:37', '2023-02-10 07:11:37'),
(9, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:15:17', '2023-02-10 07:15:17'),
(10, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:32:05', '2023-02-10 07:32:05'),
(11, 1, '127.0.0.1', 'berhasil mengubah outlet', 'PUT', 'http://localhost:8000/outlet/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:32:54', '2023-02-10 07:32:54'),
(12, 1, '127.0.0.1', 'berhasil menambahkan paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:34:36', '2023-02-10 07:34:36'),
(13, 1, '127.0.0.1', 'berhasil menambahkan paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:35:19', '2023-02-10 07:35:19'),
(14, 1, '127.0.0.1', 'berhasil menambahkan paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:35:53', '2023-02-10 07:35:53'),
(15, 1, '127.0.0.1', 'berhasil menambahkan member', 'POST', 'http://localhost:8000/member', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:36:53', '2023-02-10 07:36:53'),
(16, 1, '127.0.0.1', 'berhasil menambahkan member', 'POST', 'http://localhost:8000/member', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 07:37:47', '2023-02-10 07:37:47'),
(17, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 09:55:55', '2023-02-10 09:55:55'),
(18, 1, '127.0.0.1', 'berhasil mengubah Transaksi', 'PUT', 'http://localhost:8000/transaksi/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 09:56:59', '2023-02-10 09:56:59'),
(19, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 09:57:09', '2023-02-10 09:57:09'),
(20, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 10:20:33', '2023-02-10 10:20:33'),
(21, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 10:21:14', '2023-02-10 10:21:14'),
(22, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 10:38:07', '2023-02-10 10:38:07'),
(23, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-10 11:17:25', '2023-02-10 11:17:25'),
(24, 5, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 02:48:01', '2023-02-13 02:48:01'),
(25, 5, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 02:49:41', '2023-02-13 02:49:41'),
(26, 5, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 02:54:01', '2023-02-13 02:54:01'),
(27, 5, '127.0.0.1', 'berhasil mengubah Transaksi', 'PUT', 'http://localhost:8000/transaksi/5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 02:55:09', '2023-02-13 02:55:09'),
(28, 5, '127.0.0.1', 'berhasil mengubah Transaksi', 'PUT', 'http://localhost:8000/transaksi/5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 02:55:41', '2023-02-13 02:55:41'),
(29, 5, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/5/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 02:56:05', '2023-02-13 02:56:05'),
(30, 5, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 03:24:09', '2023-02-13 03:24:09'),
(31, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 03:24:13', '2023-02-13 03:24:13'),
(32, 1, '127.0.0.1', 'berhasil membuat Laporan Harian', 'GET', 'http://localhost:8000/laporan/harian?_token=B1IGXavetBZEfHbaQaJdWvq7oQt68fkPdzFFVm2W&outlet_id=4&tanggal=2023-02-13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 03:24:44', '2023-02-13 03:24:44'),
(33, 1, '127.0.0.1', 'berhasil membuat Laporan Bulanan', 'GET', 'http://localhost:8000/laporan/perbulan?_token=B1IGXavetBZEfHbaQaJdWvq7oQt68fkPdzFFVm2W&bulan=2&outlet_id=4&tahun=2023', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 03:25:51', '2023-02-13 03:25:51'),
(34, 2, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 03:28:54', '2023-02-13 03:28:54'),
(35, 3, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-02-13 03:30:21', '2023-02-13 03:30:21'),
(36, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 01:36:38', '2023-02-21 01:36:38'),
(37, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 01:39:30', '2023-02-21 01:39:30'),
(38, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 02:11:39', '2023-02-21 02:11:39'),
(39, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 02:23:55', '2023-02-21 02:23:55'),
(40, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 02:24:00', '2023-02-21 02:24:00'),
(41, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 02:24:21', '2023-02-21 02:24:21'),
(42, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 02:32:41', '2023-02-21 02:32:41'),
(43, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 02:56:21', '2023-02-21 02:56:21'),
(44, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 03:00:29', '2023-02-21 03:00:29'),
(45, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 03:00:34', '2023-02-21 03:00:34'),
(46, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-21 03:00:39', '2023-02-21 03:00:39'),
(47, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 01:41:21', '2023-02-22 01:41:21'),
(48, 1, '127.0.0.1', 'berhasil mengubah Transaksi', 'PUT', 'http://localhost:8000/transaksi/6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 01:53:14', '2023-02-22 01:53:14'),
(49, 1, '127.0.0.1', 'berhasil mengubah Transaksi', 'PUT', 'http://localhost:8000/transaksi/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 01:54:12', '2023-02-22 01:54:12'),
(50, 1, '127.0.0.1', 'berhasil menambahkan User', 'POST', 'http://localhost:8000/user', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:06:34', '2023-02-22 02:06:34'),
(51, 1, '127.0.0.1', 'berhasil mengubah member', 'PUT', 'http://localhost:8000/member/5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:20:57', '2023-02-22 02:20:57'),
(52, 1, '127.0.0.1', 'berhasil mengubah member', 'PUT', 'http://localhost:8000/member/5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:21:14', '2023-02-22 02:21:14'),
(53, 1, '127.0.0.1', 'berhasil menambahkan Member', 'POST', 'http://localhost:8000/member', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:24:54', '2023-02-22 02:24:54'),
(54, 1, '127.0.0.1', 'berhasil mengubah member', 'PUT', 'http://localhost:8000/member/6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:25:20', '2023-02-22 02:25:20'),
(55, 1, '127.0.0.1', 'berhasil menghapus Member', 'DELETE', 'http://localhost:8000/member/6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:25:30', '2023-02-22 02:25:30'),
(56, 1, '127.0.0.1', 'berhasil menambahkan User', 'POST', 'http://localhost:8000/user', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:26:44', '2023-02-22 02:26:44'),
(57, 1, '127.0.0.1', 'berhasil mengubah User', 'PUT', 'http://localhost:8000/user/8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:27:17', '2023-02-22 02:27:17'),
(58, 1, '127.0.0.1', 'berhasil menghapus User', 'DELETE', 'http://localhost:8000/user/8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:27:27', '2023-02-22 02:27:27'),
(59, 1, '127.0.0.1', 'berhasil menambahkan Outlet', 'POST', 'http://localhost:8000/outlet', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:28:14', '2023-02-22 02:28:14'),
(60, 1, '127.0.0.1', 'berhasil mengubah Outlet', 'PUT', 'http://localhost:8000/outlet/5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:28:31', '2023-02-22 02:28:31'),
(61, 1, '127.0.0.1', 'berhasil menghapus Outlet', 'DELETE', 'http://localhost:8000/outlet/5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:28:41', '2023-02-22 02:28:41'),
(62, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:29:29', '2023-02-22 02:29:29'),
(63, 1, '127.0.0.1', 'berhasil mengubah paket', 'PUT', 'http://localhost:8000/paket/6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:29:50', '2023-02-22 02:29:50'),
(64, 1, '127.0.0.1', 'berhasil menghapus Paket', 'DELETE', 'http://localhost:8000/paket/6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:30:03', '2023-02-22 02:30:03'),
(65, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:31:19', '2023-02-22 02:31:19'),
(66, 1, '127.0.0.1', 'berhasil mengubah Transaksi', 'PUT', 'http://localhost:8000/transaksi/8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:31:45', '2023-02-22 02:31:45'),
(67, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/8/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:32:18', '2023-02-22 02:32:18'),
(68, 1, '127.0.0.1', 'berhasil membuat Laporan Harian', 'GET', 'http://localhost:8000/laporan/harian?_token=qqhVT2cez96r2zMzI1gPAKJfZuIEFhb9Mnia1dt9&outlet_id=1&tanggal=2023-02-22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:32:46', '2023-02-22 02:32:46'),
(69, 1, '127.0.0.1', 'berhasil membuat Laporan Bulanan', 'GET', 'http://localhost:8000/laporan/perbulan?_token=qqhVT2cez96r2zMzI1gPAKJfZuIEFhb9Mnia1dt9&bulan=2&outlet_id=1&tahun=2023', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-02-22 02:33:04', '2023-02-22 02:33:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `nama`, `jenis_kelamin`, `alamat`, `tlp`) VALUES
(1, 'Dina Rahmawati', 'P', 'Sindangrasa', '087712370378'),
(2, 'Kim Namjoon', 'L', 'Sukanagara', '087712370986'),
(3, 'Yuni Herlino', 'P', 'Padaherang', '087712378756'),
(4, 'Melisa Putri', 'P', 'Cangkring', '888000222333'),
(5, 'Roger Danuarta', 'L', 'Banjarsari', '888444555666');

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
(5, '2023_02_04_145142_create_outlets_table', 1),
(6, '2023_02_04_145550_add_outlet_id_to_users_table', 1),
(7, '2023_02_06_092407_create_pakets_table', 1),
(8, '2023_02_06_110449_create_members_table', 1),
(9, '2023_02_06_194150_create_transaksis_table', 1),
(10, '2023_02_06_194750_create_transaksi_details_table', 1),
(11, '2023_02_08_140245_create_log_activities_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlets`
--

CREATE TABLE `outlets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `outlets`
--

INSERT INTO `outlets` (`id`, `nama`, `alamat`, `tlp`) VALUES
(1, 'Toko Dina Laundry', 'Sindangrasa', '087712370378'),
(2, 'Toko Jisoo Laundry', 'Padaherang', '011223344556'),
(3, 'Dika Ame Laundry', 'Anggaraksan, Desa Maruyungsari, Kec. Padaherang.', '999777666222'),
(4, 'Caca Laundry', 'Tegalsari, Desa Cicapar, Kec. Banjarsari', '888222444555');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('kiloan','selimut','bed_cover','kaos','lain') COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pakets`
--

INSERT INTO `pakets` (`id`, `outlet_id`, `nama_paket`, `jenis`, `harga`) VALUES
(1, 1, 'Reguler', 'kiloan', 7000),
(2, 1, 'Bed Cover', 'bed_cover', 5000),
(3, 4, 'Reguler (2 Hari)', 'kiloan', 8000),
(4, 4, 'Expres (1 Hari)', 'kiloan', 15000),
(5, 4, 'Expres (6 Jam)', 'kiloan', 25000);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl` datetime NOT NULL,
  `batas_waktu` datetime NOT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `pajak` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `qty_total` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `cash` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `status` enum('baru','proses','selesai','diambil') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibayar` enum('dibayar','belum_bayar') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`id`, `outlet_id`, `member_id`, `user_id`, `kode_invoice`, `tgl`, `batas_waktu`, `tgl_bayar`, `biaya_tambahan`, `diskon`, `pajak`, `sub_total`, `qty_total`, `total_bayar`, `cash`, `kembalian`, `status`, `dibayar`) VALUES
(1, 1, 2, 1, '202302100001', '2023-02-10 11:56:03', '2023-02-11 11:55:00', '2023-02-10 16:56:59', 1000, 2000, 2100, 22000, 4, 23100, 50000, 26900, 'diambil', 'dibayar'),
(2, 1, 1, 1, '202302100002', '2023-02-10 17:20:32', '2023-02-11 17:20:00', '2023-02-10 17:20:32', 1000, 2000, 2000, 21000, 3, 22000, 50000, 28000, 'selesai', 'dibayar'),
(3, 1, 3, 1, '202302100003', '2023-02-10 17:38:07', '2023-02-11 17:37:00', '2023-02-10 17:38:07', 1000, 1000, 3900, 39000, 7, 42900, 42900, 0, 'diambil', 'dibayar'),
(4, 4, 4, 5, '202302130004', '2023-02-13 09:49:40', '2023-02-14 09:49:00', '2023-02-22 08:54:11', 5000, 1000, 5400, 50000, 2, 59400, 100000, 40600, 'proses', 'dibayar'),
(5, 4, 4, 5, '202302130005', '2023-02-13 09:54:01', '2023-02-14 09:53:00', '2023-02-13 09:55:41', 5000, 1000, 5400, 50000, 2, 59400, 100000, 40600, 'diambil', 'dibayar'),
(6, 1, 1, 1, '202302210006', '2023-02-21 08:39:29', '2023-02-22 08:39:00', '2023-02-22 08:53:14', 1000, 2000, 1400, 15000, 3, 15400, 100000, 84600, 'proses', 'dibayar'),
(7, 1, 3, 1, '202302210007', '2023-02-21 09:56:21', '2023-02-22 09:56:00', '2023-02-21 09:56:21', 1000, 2000, 600, 7000, 1, 6600, 10000, 3400, 'baru', 'dibayar'),
(8, 1, 1, 1, '202302220008', '2023-02-22 09:31:19', '2023-02-24 09:31:00', '2023-02-22 09:31:45', NULL, 2000, 2300, 25000, 5, 25300, 50000, 24700, 'selesai', 'dibayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `paket_id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `paket_id`, `harga`, `qty`, `sub_total`, `keterangan`) VALUES
(1, 1, 2, 5000, 3, 15000, NULL),
(2, 1, 1, 7000, 1, 7000, NULL),
(3, 2, 1, 7000, 3, 21000, NULL),
(4, 3, 2, 5000, 5, 25000, 'Guling 3, Kasur 2'),
(5, 3, 1, 7000, 2, 14000, 'kolor 2'),
(6, 4, 5, 25000, 2, 50000, NULL),
(7, 5, 5, 25000, 2, 50000, NULL),
(8, 6, 2, 5000, 3, 15000, NULL),
(9, 7, 1, 7000, 1, 7000, NULL),
(10, 8, 2, 5000, 5, 25000, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','kasir','owner') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `outlet_id`) VALUES
(1, 'Administrator', 'admin', '$2y$10$JIo7tjiWsX2krH6g6zkNPuH8tG8X1m7BTD9ZwQQqZFPoogqZmTxse', 'admin', NULL, NULL, NULL, 1),
(2, 'Kasir', 'kasir', '$2y$10$wMcKxoAF3w8SDw7d0zz2Qee5CSiPYZk1Ffsc/FfXRlh9eHJGB3Ie2', 'kasir', NULL, NULL, NULL, 1),
(3, 'Pemilik', 'owner', '$2y$10$0AKdE0GnwaDQOA.3obO94eF8PGVzulv9NNsaTNwGVnqwdlIqGSKWy', 'owner', NULL, NULL, NULL, 1),
(4, 'Pevita Pearce', 'pevita', '$2y$10$J.uxY4DmeP7oyKg1WIr/7.K2Xy3YuyrqAsShtFR/6kTd3yuaezExW', 'kasir', NULL, '2023-02-10 06:56:06', '2023-02-10 06:56:06', 3),
(5, 'Unaa', 'unaa', '$2y$10$TtR2pf/YHZOdV/MQo8ZREe/47SV.YViHi0a/2e6Z1QaN1uP7Jg1bO', 'kasir', NULL, '2023-02-10 07:04:52', '2023-02-10 07:04:52', 4),
(6, 'Rini Yulia', 'rini', '$2y$10$vBcxs.lSDX6h6oSxPNusbenvP1BUZK21sUcxC72iuWrYFhmPfx0J.', 'kasir', NULL, '2023-02-10 07:05:21', '2023-02-10 07:11:37', 4),
(7, 'Jungkook', 'jeon', '$2y$10$V2pKrKRE9zIDqqXqfawFV.VLcxnXHRhGTC8gfHPbgMi12aWXhzaf6', 'kasir', NULL, '2023-02-22 02:06:33', '2023-02-22 02:06:33', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_activities_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `outlets`
--
ALTER TABLE `outlets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pakets_outlet_id_foreign` (`outlet_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_kode_invoice_unique` (`kode_invoice`),
  ADD KEY `transaksis_outlet_id_foreign` (`outlet_id`),
  ADD KEY `transaksis_member_id_foreign` (`member_id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_details_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `transaksi_details_paket_id_foreign` (`paket_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_outlet_id_foreign` (`outlet_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pakets`
--
ALTER TABLE `pakets`
  ADD CONSTRAINT `pakets_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  ADD CONSTRAINT `transaksi_details_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `pakets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_details_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_outlet_id_foreign` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
