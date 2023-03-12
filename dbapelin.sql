-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2023 pada 08.00
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
(1, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 04:39:16', '2023-03-06 04:39:16'),
(2, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 04:39:20', '2023-03-06 04:39:20'),
(3, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 04:52:04', '2023-03-06 04:52:04'),
(4, 1, '127.0.0.1', 'berhasil mengubah paket', 'PUT', 'http://localhost:8000/paket/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 04:55:48', '2023-03-06 04:55:48'),
(5, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 05:10:58', '2023-03-06 05:10:58'),
(6, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 06:48:55', '2023-03-06 06:48:55'),
(7, 1, '127.0.0.1', 'berhasil mengubah Transaksi', 'PUT', 'http://localhost:8000/transaksi/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 06:49:19', '2023-03-06 06:49:19'),
(8, 1, '127.0.0.1', 'berhasil mengubah paket', 'PUT', 'http://localhost:8000/paket/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 06:57:41', '2023-03-06 06:57:41'),
(9, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 06:58:59', '2023-03-06 06:58:59'),
(10, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:02:56', '2023-03-06 07:02:56'),
(11, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:04:34', '2023-03-06 07:04:34'),
(12, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:05:14', '2023-03-06 07:05:14'),
(13, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:10:57', '2023-03-06 07:10:57'),
(14, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:11:22', '2023-03-06 07:11:22'),
(15, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/2/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:13:40', '2023-03-06 07:13:40'),
(16, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:16:25', '2023-03-06 07:16:25'),
(17, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/4/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:17:51', '2023-03-06 07:17:51'),
(18, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/4/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:22:52', '2023-03-06 07:22:52'),
(19, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/2/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:24:03', '2023-03-06 07:24:03'),
(20, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/2/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:27:00', '2023-03-06 07:27:00'),
(21, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:28:58', '2023-03-06 07:28:58'),
(22, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/5/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:29:04', '2023-03-06 07:29:04'),
(23, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/5/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:31:57', '2023-03-06 07:31:57'),
(24, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:36:47', '2023-03-06 07:36:47'),
(25, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/6/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:37:32', '2023-03-06 07:37:32'),
(26, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/6/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:39:23', '2023-03-06 07:39:23'),
(27, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/6/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:39:48', '2023-03-06 07:39:48'),
(28, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/6/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:41:37', '2023-03-06 07:41:37'),
(29, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/6/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 07:42:10', '2023-03-06 07:42:10'),
(30, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:03:25', '2023-03-06 08:03:25'),
(31, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:04:55', '2023-03-06 08:04:55'),
(32, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/1/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:05:39', '2023-03-06 08:05:39'),
(33, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:31:42', '2023-03-06 08:31:42'),
(34, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/7/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:31:46', '2023-03-06 08:31:46'),
(35, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:34:29', '2023-03-06 08:34:29'),
(36, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:39:14', '2023-03-06 08:39:14'),
(37, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/9/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:39:23', '2023-03-06 08:39:23'),
(38, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:40:37', '2023-03-06 08:40:37'),
(39, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/10/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:40:43', '2023-03-06 08:40:43'),
(40, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/10/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:42:05', '2023-03-06 08:42:05'),
(41, 1, '127.0.0.1', 'berhasil menghapus Paket', 'DELETE', 'http://localhost:8000/paket/2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:47:03', '2023-03-06 08:47:03'),
(42, 1, '127.0.0.1', 'berhasil menghapus Paket', 'DELETE', 'http://localhost:8000/paket/1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:47:19', '2023-03-06 08:47:19'),
(43, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 08:47:42', '2023-03-06 08:47:42'),
(44, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:19:12', '2023-03-06 12:19:12'),
(45, 1, '127.0.0.1', 'berhasil menambahkan Member', 'POST', 'http://localhost:8000/member', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:20:14', '2023-03-06 12:20:14'),
(46, 1, '127.0.0.1', 'berhasil menambahkan Member', 'POST', 'http://localhost:8000/member', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:20:39', '2023-03-06 12:20:39'),
(47, 1, '127.0.0.1', 'berhasil menambahkan User', 'POST', 'http://localhost:8000/user', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:21:41', '2023-03-06 12:21:41'),
(48, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:22:37', '2023-03-06 12:22:37'),
(49, 1, '127.0.0.1', 'berhasil mengubah paket', 'PUT', 'http://localhost:8000/paket/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:23:09', '2023-03-06 12:23:09'),
(50, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:24:19', '2023-03-06 12:24:19'),
(51, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:25:53', '2023-03-06 12:25:53'),
(52, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/11/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:26:04', '2023-03-06 12:26:04'),
(53, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-06 12:26:50', '2023-03-06 12:26:50'),
(54, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 01:10:30', '2023-03-07 01:10:30'),
(55, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 01:12:29', '2023-03-07 01:12:29'),
(56, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/12/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-07 01:12:37', '2023-03-07 01:12:37'),
(57, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 03:17:01', '2023-03-12 03:17:01'),
(58, 1, '127.0.0.1', 'berhasil menambahkan Member', 'POST', 'http://localhost:8000/member', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 03:18:47', '2023-03-12 03:18:47'),
(59, 1, '127.0.0.1', 'berhasil menghapus Member', 'DELETE', 'http://localhost:8000/member/5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 03:19:09', '2023-03-12 03:19:09'),
(60, 1, '127.0.0.1', 'berhasil menghapus Paket', 'DELETE', 'http://localhost:8000/paket/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 03:19:54', '2023-03-12 03:19:54'),
(61, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 03:21:24', '2023-03-12 03:21:24'),
(62, 1, '127.0.0.1', 'berhasil menambahkan Paket', 'POST', 'http://localhost:8000/paket', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 03:22:14', '2023-03-12 03:22:14'),
(63, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 03:25:12', '2023-03-12 03:25:12'),
(64, 1, '127.0.0.1', 'berhasil mencetak struk Transaksi', 'GET', 'http://localhost:8000/transaksi/13/invoice', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 03:25:27', '2023-03-12 03:25:27'),
(65, 1, '127.0.0.1', 'berhasil membuat Laporan Bulanan', 'GET', 'http://localhost:8000/laporan/perbulan?_token=HIHBIkODyHUzs75L0qJBCFfmxktbkJEngPzpBa36&bulan=3&outlet_id=1&tahun=2023', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 03:27:49', '2023-03-12 03:27:49'),
(66, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 04:42:44', '2023-03-12 04:42:44'),
(67, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 04:44:19', '2023-03-12 04:44:19'),
(68, 1, '127.0.0.1', 'berhasil membuat Transaksi', 'POST', 'http://localhost:8000/transaksi/member/4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 04:49:44', '2023-03-12 04:49:44'),
(69, 1, '127.0.0.1', 'berhasil mengubah Transaksi', 'PUT', 'http://localhost:8000/transaksi/9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 04:50:37', '2023-03-12 04:50:37'),
(70, 1, '127.0.0.1', 'berhasil Logout', 'POST', 'http://localhost:8000/logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 06:42:07', '2023-03-12 06:42:07'),
(71, 1, '127.0.0.1', 'berhasil Login', 'POST', 'http://localhost:8000/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-12 06:42:25', '2023-03-12 06:42:25');

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
(1, 'Kim Namjoon', 'L', 'Sukanagara', '087712370986'),
(2, 'Yuni Herlino', 'P', 'Padaherang', '087712378756'),
(3, 'Dina Rahmawati', 'P', 'Sindangrasa', '00988877'),
(4, 'Jungkook', 'L', 'Padaherang', '808080');

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
(11, '2023_02_08_140245_create_log_activities_table', 1),
(12, '2023_03_06_105745_add_diskon_and_harga_akhir_to_paket', 1),
(13, '2023_03_06_113622_add_diskon_paket_to_transaksi_details_table', 1);

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
(2, 'Toko Jisoo Laundry', 'Padaherang', '011223344556');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `outlet_id` bigint(20) UNSIGNED NOT NULL,
  `nama_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('kiloan','selimut','bed_cover','kaos','lain') COLLATE utf8mb4_unicode_ci NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `harga_akhir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pakets`
--

INSERT INTO `pakets` (`id`, `outlet_id`, `nama_paket`, `jenis`, `diskon`, `harga`, `harga_akhir`) VALUES
(4, 1, 'Cuci Fast Hour (6 Jam)', 'kiloan', 1500, 35000, 33500),
(5, 1, 'Cuci Cepat (1 Hari)', 'bed_cover', 2000, 35000, 33000),
(6, 2, 'Expres', 'kiloan', 1000, 15000, 14000),
(7, 1, 'Cuci Cepat', 'kaos', 5000, 40000, 35000),
(8, 1, 'Cuci Expres 1 hari', 'kaos', NULL, 50000, 50000);

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
(1, 1, 1, 1, '202303060001', '2023-03-06 12:10:57', '2023-03-07 12:10:00', '2023-03-06 12:10:57', NULL, NULL, 3500, 35000, 1, 38500, 50000, 11500, 'diambil', 'dibayar'),
(2, 1, 2, 1, '202303060002', '2023-03-06 13:48:55', '2023-03-07 13:48:00', '2023-03-06 13:49:19', NULL, NULL, 3500, 35000, 1, 38500, 50000, 11500, 'diambil', 'dibayar'),
(3, 1, 1, 1, '202303060003', '2023-03-06 13:58:58', '2023-03-07 13:58:00', '2023-03-06 13:58:58', 3000, 2000, 1500, 14000, 2, 16500, 50000, 33500, 'baru', 'dibayar'),
(4, 1, 1, 1, '202303060004', '2023-03-06 14:16:25', '2023-03-07 14:16:00', '2023-03-06 14:16:25', 3000, 2000, 600, 5000, 1, 6600, 50000, 43400, 'baru', 'dibayar'),
(5, 1, 1, 1, '202303060005', '2023-03-06 14:28:58', '2023-03-07 14:28:00', '2023-03-06 14:28:58', 3000, 2000, 3600, 35000, 1, 39600, 50000, 10400, 'baru', 'dibayar'),
(6, 1, 1, 1, '202303060006', '2023-03-06 14:36:46', '2023-03-07 14:36:00', '2023-03-06 14:36:46', NULL, NULL, 700, 7000, 1, 7700, 50000, 42300, 'baru', 'dibayar'),
(7, 1, 2, 1, '202303060007', '2023-03-06 15:31:42', '2023-03-07 15:31:00', '2023-03-06 15:31:42', NULL, NULL, 2700, 27000, 1, 29700, 50000, 20300, 'baru', 'dibayar'),
(8, 1, 2, 1, '202303060008', '2023-03-06 15:34:29', '2023-03-07 15:34:00', '2023-03-06 15:34:29', NULL, NULL, 2700, 27000, 1, 29700, 50000, 20300, 'baru', 'dibayar'),
(9, 1, 2, 1, '202303060009', '2023-03-06 15:39:14', '2023-03-07 15:39:00', '2023-03-12 11:50:36', NULL, NULL, 2700, 27000, 1, 29700, 50000, 20300, 'baru', 'dibayar'),
(10, 1, 2, 1, '202303060010', '2023-03-06 15:40:37', '2023-03-10 15:40:00', '2023-03-06 15:40:37', NULL, NULL, 5400, 54000, 2, 59400, 60000, 600, 'baru', 'dibayar'),
(11, 1, 3, 1, '202303060011', '2023-03-06 19:25:52', '2023-03-07 19:25:00', '2023-03-06 19:25:52', NULL, 2000, 9700, 99000, 3, 106700, 110000, 3300, 'selesai', 'dibayar'),
(12, 1, 3, 1, '202303070012', '2023-03-07 08:12:29', '2023-03-08 08:12:00', '2023-03-07 08:12:29', 3000, 2000, 3400, 33000, 1, 37400, 50000, 12600, 'baru', 'dibayar'),
(13, 1, 4, 1, '202303120013', '2023-03-12 10:25:12', '2023-03-13 10:23:00', '2023-03-12 10:25:12', NULL, 4000, 9600, 100000, 2, 105600, 110000, 4400, 'diambil', 'dibayar'),
(14, 1, 3, 1, '202303120014', '2023-03-12 11:44:19', '2023-03-13 11:44:00', NULL, 3000, 2000, 3450, 33500, 1, 37950, NULL, NULL, 'baru', 'belum_bayar'),
(15, 1, 4, 1, '202303120015', '2023-03-12 11:49:43', '2023-03-13 11:49:00', NULL, NULL, 2000, 3300, 35000, 1, 36300, NULL, NULL, 'proses', 'belum_bayar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_details`
--

CREATE TABLE `transaksi_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `paket_id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon_paket` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi_details`
--

INSERT INTO `transaksi_details` (`id`, `transaksi_id`, `paket_id`, `harga`, `diskon_paket`, `qty`, `sub_total`, `keterangan`) VALUES
(11, 11, 5, 35000, 2000, 3, 99000, 'baju 2, celana 3'),
(12, 12, 5, 35000, 2000, 1, 33000, 'baju'),
(13, 13, 8, 50000, NULL, 2, 100000, 'celana bahan 1, baju 5 setel'),
(14, 14, 4, 35000, 1500, 1, 33500, 'baju, baju'),
(15, 15, 7, 40000, 5000, 1, 35000, 'celana 1');

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
(1, 'Administrator', 'admin', '$2y$10$ZXMiTDOnhDToJHXXu4LrseskFhmwskCSOETynWUD4O5Hs2X81LQ2S', 'admin', NULL, NULL, NULL, 1),
(2, 'Kasir', 'kasir', '$2y$10$Ac0L/TobSOogn8W1wWjTi.N4jIFfKlTaQ/runCAIQi.huCZEqfj0.', 'kasir', NULL, NULL, NULL, 1),
(3, 'Pemilik', 'owner', '$2y$10$pdTJ8XHtBilSyufBwahHBuc94xr.AEK.ikNydrHBI30qQbFUSfiKW', 'owner', NULL, NULL, NULL, 1),
(4, 'Rahmawati', 'dina', '$2y$10$QFdQ9jSu5KPUexaAWwoNSuWAAwm6GhMl7bj1C0Uq1MIzB.HrbeSVm', 'kasir', NULL, '2023-03-06 12:21:41', '2023-03-06 12:21:41', 2);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `outlets`
--
ALTER TABLE `outlets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `transaksi_details`
--
ALTER TABLE `transaksi_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
