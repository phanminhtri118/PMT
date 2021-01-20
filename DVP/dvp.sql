-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 20, 2021 lúc 03:01 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dvp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluans`
--

CREATE TABLE `binhluans` (
  `noidung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phim` int(10) UNSIGNED NOT NULL,
  `khachhang` int(10) UNSIGNED NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluans`
--

INSERT INTO `binhluans` (`noidung`, `phim`, `khachhang`, `trangthai`, `created_at`, `updated_at`) VALUES
('gfdg', 1, 1, 1, '2021-01-15 07:39:46', '2021-01-15 07:39:46'),
('fdasfsdf', 1, 1, 1, '2021-01-15 07:39:54', '2021-01-15 07:39:54'),
('Hay', 1, 1, 1, '2021-01-15 09:43:50', '2021-01-15 09:43:50'),
('aa', 1, 3, 1, '2021-01-15 18:10:38', '2021-01-15 18:10:38'),
('a', 2, 3, 1, '2021-01-15 20:54:29', '2021-01-15 20:54:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanhs`
--

CREATE TABLE `chinhanhs` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenchinhanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chinhanhs`
--

INSERT INTO `chinhanhs` (`id`, `tenchinhanh`, `diachi`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Chi Nhánh Rạp Quận 1', 'Quận 1', 1, '2021-01-14 17:23:19', '2021-01-14 17:23:19'),
(2, 'Chi Nhánh Rạp Quận 2', 'Quận 2', 1, '2021-01-14 17:23:24', '2021-01-14 17:23:24'),
(3, 'Chi Nhánh Rạp Quận 3', 'Quận 3', 1, '2021-01-14 17:23:31', '2021-01-14 17:23:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgias`
--

CREATE TABLE `danhgias` (
  `diem` int(11) NOT NULL,
  `phim` int(10) UNSIGNED NOT NULL,
  `khachhang` int(10) UNSIGNED NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daodiens`
--

CREATE TABLE `daodiens` (
  `id` int(10) UNSIGNED NOT NULL,
  `tendaodien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `daodiens`
--

INSERT INTO `daodiens` (`id`, `tendaodien`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Paul W.S. Anderson', 1, '2021-01-14 17:10:59', '2021-01-14 17:10:59'),
(2, 'Tomer Eshed', 1, '2021-01-14 17:11:12', '2021-01-14 17:11:12'),
(3, 'Trần Vũ Thủy', 1, '2021-01-14 17:11:21', '2021-01-14 17:11:21'),
(4, 'Pete Docter', 1, '2021-01-14 17:11:27', '2021-01-14 17:11:27'),
(5, 'Lee Byeong-heon', 1, '2021-01-14 17:11:32', '2021-01-14 17:11:32'),
(6, 'Yûichirô Hirakawa', 1, '2021-01-14 17:11:40', '2021-01-14 17:11:40'),
(7, 'Robert Lorenz', 1, '2021-01-14 17:11:46', '2021-01-14 17:11:46'),
(8, 'Yoo Young-sun', 1, '2021-01-15 09:23:06', '2021-01-15 09:23:06'),
(9, 'Will Gluck', 1, '2021-01-15 09:25:42', '2021-01-15 09:25:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienviens`
--

CREATE TABLE `dienviens` (
  `id` int(10) UNSIGNED NOT NULL,
  `tendienvien` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dienviens`
--

INSERT INTO `dienviens` (`id`, `tendienvien`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Liam Neeson', 1, '2021-01-14 17:11:59', '2021-01-14 17:11:59'),
(2, 'Hamabe Minami', 1, '2021-01-14 17:12:06', '2021-01-14 17:12:06'),
(3, 'Ryu Seung-yong', 1, '2021-01-14 17:12:12', '2021-01-14 17:12:12'),
(4, 'Tina Fey', 1, '2021-01-14 17:12:17', '2021-01-14 17:12:17'),
(5, 'Viết Liên', 1, '2021-01-14 17:12:24', '2021-01-14 17:12:24'),
(6, 'Felicity Jones', 1, '2021-01-14 17:12:34', '2021-01-14 17:12:34'),
(7, 'Milla Jovovich', 1, '2021-01-14 17:12:40', '2021-01-14 17:12:40'),
(8, 'Kim So-hye', 1, '2021-01-15 09:23:25', '2021-01-15 09:23:25'),
(9, 'Margot Robbie', 1, '2021-01-15 09:25:54', '2021-01-15 09:25:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dsves`
--

CREATE TABLE `dsves` (
  `id` int(10) UNSIGNED NOT NULL,
  `khachhang` int(10) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `ngaymua` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dsves`
--

INSERT INTO `dsves` (`id`, `khachhang`, `soluong`, `ngaymua`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2021-01-15 12:58:34', '2021-01-15 05:58:34', '2021-01-15 05:58:34'),
(2, 1, 1, '2021-01-15 13:12:34', '2021-01-15 06:12:34', '2021-01-15 06:12:34'),
(3, 1, 2, '2021-01-15 14:43:26', '2021-01-15 07:43:26', '2021-01-15 07:43:26'),
(4, 1, 1, '2021-01-15 16:44:16', '2021-01-15 09:44:16', '2021-01-15 09:44:16'),
(5, 1, 2, '2021-01-16 01:56:21', '2021-01-15 18:56:21', '2021-01-15 18:56:21'),
(6, 1, 1, '2021-01-16 03:29:02', '2021-01-15 20:29:02', '2021-01-15 20:29:02'),
(7, 1, 1, '2021-01-16 03:47:26', '2021-01-15 20:47:26', '2021-01-15 20:47:26'),
(8, 1, 1, '2021-01-16 03:47:32', '2021-01-15 20:47:32', '2021-01-15 20:47:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghes`
--

CREATE TABLE `ghes` (
  `id` int(10) UNSIGNED NOT NULL,
  `rap` int(10) UNSIGNED NOT NULL,
  `hang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaighe` int(10) UNSIGNED NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ghes`
--

INSERT INTO `ghes` (`id`, `rap`, `hang`, `cot`, `loaighe`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 1, 'A', '1', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(2, 1, 'A', '2', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(3, 1, 'A', '3', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(4, 1, 'A', '4', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(5, 1, 'B', '1', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(6, 1, 'B', '2', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(7, 1, 'B', '3', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(8, 1, 'B', '4', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(9, 1, 'C', '1', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(10, 1, 'C', '2', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(11, 1, 'C', '3', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(12, 1, 'C', '4', 1, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(13, 2, 'A', '1', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(14, 2, 'A', '2', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(15, 2, 'A', '3', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(16, 2, 'A', '4', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(17, 2, 'B', '1', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(18, 2, 'B', '2', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(19, 2, 'B', '3', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(20, 2, 'B', '4', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(21, 2, 'C', '1', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(22, 2, 'C', '2', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(23, 2, 'C', '3', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(24, 2, 'C', '4', 1, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(25, 2, 'D', '1', 2, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(26, 2, 'D', '2', 2, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(27, 2, 'D', '3', 2, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(28, 2, 'D', '4', 2, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(29, 3, 'A', '1', 1, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(30, 3, 'A', '2', 1, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(31, 3, 'A', '3', 1, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(32, 3, 'B', '1', 1, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(33, 3, 'B', '2', 1, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(34, 3, 'B', '3', 1, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(35, 3, 'C', '1', 1, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(36, 3, 'C', '2', 1, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(37, 3, 'C', '3', 1, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(38, 3, 'D', '1', 2, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(39, 3, 'D', '2', 2, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05'),
(40, 3, 'D', '3', 2, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gias`
--

CREATE TABLE `gias` (
  `id` int(10) UNSIGNED NOT NULL,
  `loaighe` int(10) UNSIGNED NOT NULL,
  `phim` int(10) UNSIGNED NOT NULL,
  `gia` double(8,2) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gias`
--

INSERT INTO `gias` (`id`, `loaighe`, `phim`, `gia`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 36000.00, 1, '2021-01-15 05:51:39', '2021-01-15 05:51:39'),
(2, 2, 1, 30000.00, 1, '2021-01-15 05:51:39', '2021-01-15 05:51:39'),
(3, 1, 2, 48000.00, 1, '2021-01-15 05:51:46', '2021-01-15 05:51:46'),
(4, 2, 2, 40000.00, 1, '2021-01-15 05:51:46', '2021-01-15 05:51:46'),
(5, 1, 3, 60000.00, 1, '2021-01-15 05:51:51', '2021-01-15 05:51:51'),
(6, 2, 3, 50000.00, 1, '2021-01-15 05:51:51', '2021-01-15 05:51:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khungtgchieus`
--

CREATE TABLE `khungtgchieus` (
  `id` int(10) UNSIGNED NOT NULL,
  `giochieu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaychieu` date NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khungtgchieus`
--

INSERT INTO `khungtgchieus` (`id`, `giochieu`, `ngaychieu`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, '20:00', '2021-01-15', 0, '2021-01-14 17:35:57', '2021-01-15 18:05:22'),
(3, '11:00', '2021-01-15', 0, '2021-01-14 17:36:28', '2021-01-15 18:05:22'),
(4, '15:00', '2021-01-15', 0, '2021-01-14 17:36:35', '2021-01-15 18:05:22'),
(5, '08:00', '2021-01-15', 0, '2021-01-14 17:36:43', '2021-01-15 18:05:22'),
(6, '20:00', '2021-01-16', 0, '2021-01-15 09:50:50', '2021-01-16 20:02:08'),
(7, '08:00', '2021-01-16', 0, '2021-01-15 09:51:05', '2021-01-16 20:02:08'),
(8, '11:00', '2021-01-16', 0, '2021-01-15 09:51:10', '2021-01-16 20:02:08'),
(9, '15:00', '2021-01-16', 0, '2021-01-15 09:51:23', '2021-01-16 20:02:08'),
(10, '09:00', '2021-01-17', 1, '2021-01-15 09:51:43', '2021-01-15 09:51:43'),
(11, '14:00', '2021-01-17', 1, '2021-01-15 09:51:57', '2021-01-15 09:51:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichchieus`
--

CREATE TABLE `lichchieus` (
  `phim` int(10) UNSIGNED NOT NULL,
  `thoigian` int(10) UNSIGNED NOT NULL,
  `rap` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichchieus`
--

INSERT INTO `lichchieus` (`phim`, `thoigian`, `rap`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(1, 1, 2, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(1, 1, 3, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(1, 5, 1, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(1, 5, 2, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(1, 5, 3, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(1, 6, 1, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(1, 6, 2, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(1, 6, 3, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(1, 10, 1, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(1, 10, 2, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(1, 10, 3, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(2, 3, 1, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(2, 3, 2, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(2, 3, 3, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(2, 7, 1, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(2, 7, 2, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(2, 7, 3, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(2, 11, 1, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(2, 11, 2, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(2, 11, 3, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(3, 4, 1, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(3, 4, 2, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(3, 4, 3, '2021-01-15 05:49:40', '2021-01-15 05:49:40'),
(3, 8, 1, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(3, 8, 2, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(3, 8, 3, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(4, 9, 1, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(4, 9, 2, '2021-01-15 18:05:46', '2021-01-15 18:05:46'),
(4, 9, 3, '2021-01-15 18:05:46', '2021-01-15 18:05:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaighes`
--

CREATE TABLE `loaighes` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaighes`
--

INSERT INTO `loaighes` (`id`, `ten`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Loại 1', 1, NULL, NULL),
(2, 'Loại 2', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_20_022006_create_loaighes_table', 1),
(5, '2020_11_21_044927_create_daodiens_table', 1),
(6, '2020_11_21_045247_create_dienviens_table', 1),
(7, '2020_11_21_045315_create_theloais_table', 1),
(8, '2020_11_21_045341_create_nsxes_table', 1),
(9, '2020_11_21_045412_create_quocgias_table', 1),
(10, '2020_11_21_045738_create_phims_table', 1),
(11, '2020_11_21_054549_create_nhanviens_table', 1),
(12, '2020_11_21_054956_create_dsves_table', 1),
(13, '2020_11_21_055101_create_binhluans_table', 1),
(14, '2020_11_21_055419_create_chinhanhs_table', 1),
(15, '2020_11_21_055541_create_raps_table', 1),
(16, '2020_11_21_055901_create_khungtgchieus_table', 1),
(17, '2020_11_21_060956_create_lichchieus_table', 1),
(18, '2020_11_21_061324_create_ghes_table', 1),
(19, '2020_11_21_062046_create_gias_table', 1),
(20, '2020_11_21_062434_create_ves_table', 1),
(21, '2021_01_02_133516_create_danhgias_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanviens`
--

CREATE TABLE `nhanviens` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanviens`
--

INSERT INTO `nhanviens` (`id`, `hoten`, `email`, `password`, `sdt`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Minh Trí', 'admin@gmail.com', '$2y$10$pB9v4eVuqtlPmPPA620pcu1hDs3BvaP2PcU7kBUEe5Jrnp8A6qy.u', '0334455566', 1, '2021-01-15 05:33:27', '2021-01-15 05:33:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nsxes`
--

CREATE TABLE `nsxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `tennsx` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nsxes`
--

INSERT INTO `nsxes` (`id`, `tennsx`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'NSX Viễn Tưởng', 1, NULL, NULL),
(2, 'NSX Khoa Học', 1, NULL, NULL),
(3, 'NSX Hoạt Hình', 1, NULL, NULL),
(4, 'NSX Hành Động', 1, NULL, NULL),
(5, 'NSX Số 7', 1, NULL, NULL),
(6, 'NSX Số 10', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phims`
--

CREATE TABLE `phims` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenphim` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoiluong` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dotuoi` int(11) NOT NULL,
  `trailer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1,
  `daodien` int(10) UNSIGNED NOT NULL,
  `dienvien` int(10) UNSIGNED NOT NULL,
  `theloai` int(10) UNSIGNED NOT NULL,
  `nsx` int(10) UNSIGNED NOT NULL,
  `quocgia` int(10) UNSIGNED NOT NULL,
  `ngay` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phims`
--

INSERT INTO `phims` (`id`, `tenphim`, `hinhanh`, `thoiluong`, `noidung`, `dotuoi`, `trailer`, `trangthai`, `daodien`, `dienvien`, `theloai`, `nsx`, `quocgia`, `ngay`, `created_at`, `updated_at`) VALUES
(1, 'THỢ SĂN QUÁI VẬT', 'XR70Jthosan.jpg', '104', 'Monster Hunter được chuyển thể từ series game nổi tiếng cùng tên của Capcom. Trong phim, đội trưởng Artemis của nữ diễn viên Milla Jovovich (Resident Evil) và đồng đội đã vô tình bước qua một cánh cửa bí ẩn dẫn tới thế giới khác. Tại đây, họ phải chiến đấu với nhiều loài quái vật khổng lồ trong hành trình trở về thế giới. Đồng hành với họ trong trận chiến là nhân vật “Thợ săn” của nam diễn viên Tony Jaa (Ong Bak). Monster Hunter hứa hẹn sẽ là bom tấn hành động với những màn săn quái vật khổng lồ hoành tráng nhất năm 2020.', 13, 'iCw-LfLw_Zk', 1, 1, 7, 7, 4, 3, '2021-01-15', '2021-01-14 17:14:31', '2021-01-14 17:14:31'),
(2, 'KỴ SĨ CƯỠI RỒNG 1', '1aVV6cuoirong.jpg', '92', 'Được xây dựng dựa trên cuốn truyện cùng tên của nhà văn Cornelia Funke, KỴ SỸ CƯỠI RỒNG xoay quanh câu chuyện về chú rồng bạc trẻ tuổi Firedrake vốn đã liên tục phải ẩn mình tại một thung lũng rậm rạp trong suốt một thời gian dài. Cậu nóng lòng muốn thể hiện cho những thế hệ trước rằng mình là một con rồng thực thụ. Khi loài người chuẩn bị tiêu diệt thành viên duy nhất còn lại của đại gia đình cậu tại nơi ẩn náu cuối cùng trên hành tinh này, Firedrake đã bí mật dấn thân vào một hành trình cùng với Thần rừng Sorrel với mong muốn có thể tìm ra Vành đai Thiên đường – một thánh địa bí ẩn của loài rồng. Và trong chặng đường phiêu lưu đó, cậu và Sorrel đã vô tình gặp được Ben – một đứa trẻ mồ côi đi lạc tự nhận mình là kỵ sỹ cưỡi rồng. Trong lúc Ben và Firedrake nhanh chóng kết thân và trở thành bạn bè, Sorrel ngày càng thêm phần ngờ vực và tìm mọi cơ hội để thoát khỏi cậu ta. Nhưng rồi bộ ba liên minh bất đắc dĩ này đã phải học cách hợp tác cùng nhau vì hiện giờ họ đang bị truy lùng bởi Nettlebrand – ác quỷ ăn thịt do một nhà giả kim tạo ra với mục tiêu săn tìm và tiêu diệt mọi con rồng còn tồn tại trên thế giới này…', 1, 'NhBX0nZduu8', 1, 1, 1, 1, 1, 1, '2021-01-15', '2021-01-14 17:15:58', '2021-01-15 18:24:30'),
(3, 'CẬU VÀNG', 'ceb8hcauvang.jpg', '96', 'Gia đình Lão Hạc (Cò, Cậu Vàng) đang sống an lành trên mảnh vườn do ông cha khai hoang để lại thì bất ngờ tai họa ập đến. Nguyên nhân là địa chủ Bá Kiến muốn chiếm đoạt (ép bán lại) mảnh vườn vì trên đó có cái Giếng nước cổ, được thầy bói cho đó là “ Long Mạch “ của làng.Bằng nhiều thủ đoạn, từ gạ bán đến thuê lưu manh phá phách, đầu độc cậu Vàng đến ép khống thuế… gia đình Bá Kiến quyết đẩy Lão Hạc tới con đường cùng.Nhưng với sự giúp đỡ của những người hàng xóm tử tế chân chất như vợ chồng Giáo Thứ, Binh Tư và đặc biệt là “ Cậu Vàng “ …, Lão Hạc đã giữ được mảnh đất cho con.', 16, 'M4Zn8gumnr8', 1, 3, 5, 6, 6, 1, '2021-01-15', '2021-01-14 17:17:33', '2021-01-14 17:17:33'),
(4, 'CUỘC SỐNG NHIỆM MÀU', 'ApETNcuocsong.jpg', '107', 'Điều gì khiến bạn là chính bạn? Cuối năm nay, hãng phim hoạt hình danh tiếng Pixar sẽ trình làng một tác phẩm mới mang tên SOUL – CUỘC SỐNG NHIỆM MÀU với nhân vật chính là Joe Gardner (Jamie Foxx lồng tiếng) một giáo viên dạy nhạc ở trường trung học. Anh vừa nhận được một cơ hội duy nhất trong đời khi có thể được tham gia chơi Jazz cho một ban nhạc nổi nhất thành phố. Nhưng một bước chân sai lầm đã đưa anh từ thành phố New York hoa lệ đến Cõi Trước – một nơi kỳ diệu mà ở đó các linh hồn được nhận tính cách, sở thích trước khi họ đi đến Trái Đất. Quyết tâm trở về cuộc đời của chính mình, Joe hợp tác với một linh hồn bất hảo mang tên 22 (lồng tiếng bởi Tina Fey) - người chưa bao giờ hiểu được sự hấp dẫn của cuộc sống loài người. Joe cố gắng hết mình để cho 22 thấy cuộc sống này nhiệm màu như thế nào, đồng thời anh ấy cũng khám phá ra câu trả lời quan trọng cho đời người.', 1, 'D6zVlPKn2AI', 1, 4, 4, 6, 5, 5, '2021-01-15', '2021-01-14 17:18:59', '2021-01-14 17:18:59'),
(5, 'NGHỀ SIÊU KHÓ', 'kcEr8sieukho.jpg', '111', 'Nhóm điều tra do đội trưởng Ko (Ryu Seung-yong) lãnh đạo đứng trước nguy cơ giải tán nhờ chuỗi “thành tích” thất bại đáng nể. Cơ hội cuối cùng để cứu vớt sự nghiệp của họ chính là phải triệt phá một băng đảng buôn bán ma tuý tầm cỡ quốc tế. Để làm được điều đó, đội trưởng Ko và các thành viên trong nhóm đã cải trang thành những nhân viên bán gà tại một quán ăn ngay đối diện hang ổ của kẻ địch. Trớ trêu thay, món gà rán của họ quá ngon và nhà hàng bỗng chốc nổi như cồn, căn cứ địa có nguy cơ bại lộ khiến 5 cảnh sát chìm rơi vào những nguy hiểm khó lường.', 18, 'pTlqIQUkYQI', 1, 5, 3, 2, 1, 2, '2021-01-15', '2021-01-14 17:20:00', '2021-01-14 17:20:00'),
(6, 'MIỀN ĐẤT HỨA', 'Jmno0dathua.jpg', '119', 'Bộ phim lấy bối cảnh năm 2045 ở mội trại trẻ mồi côi nọ. Tại đấy, Emma là cô bé 11 tuổi chung sống hạnh phúc cùng 37 đứa trẻ khác với thức ăn ngon, những chiếc giường êm ái, quần áo trắng sạch tinh tươm, cùng người mẹ nuôi Isabella luôn nhẹ nhàng yêu thương và chăm sóc - trừ một việc luôn ngăn cấm lũ trẻ không được đi qua cánh cổng và khu rừng dẫn ra thế giới bên ngoài ... Trong đêm cô bé Conny được đưa đi để nhận nuôi, Emma cùng Norman kinh hoàng phát hiện ra xác của cô bé trong xe. Và một sự thật rùng rợn được hé lộ: lũ trẻ ở viện mồ côi là những món hàng được nuôi dưỡng để làm thức ăn cho bọn quái vật ma quỷ, và mẹ Isabella chỉ là một kẻ tay sai. Quyết tâm rời khỏi địa ngục này, bộ ba Norman - Emma - Ray đã tìm cách trốn thoát. Liệu mọi chuyện sẽ đi về đâu và kế hoạch của bộ ba liệu có thành công?', 16, 'esTm0x10HW4', 1, 6, 2, 4, 3, 2, '2021-01-15', '2021-01-14 17:21:24', '2021-01-14 17:21:24'),
(7, 'TAY XẠ THỦ', 'bFjKfxathu.jpg', '100', 'Jim - một cựu thủy quân lục chiến tại biên giới bang Arizona vô tình bị cuốn theo cuộc truy lùng của băng Vasquez khi cố giúp đưa Miguel thoát khỏi chúng. Nhiệm vụ giờ đây của Jim là \"vận chuyển\" Miguel về Chicago cùng gia đình trước sự truy giết máu lạnh của băng đảng Vasquez.', 18, 'wiFXHfW-ddA', 1, 7, 1, 1, 4, 4, '2021-01-15', '2021-01-14 17:22:22', '2021-01-14 17:22:22'),
(8, 'NAM SINH SỐ 11', '3XGiEnamsinh.jpg', '60', 'Trong một buổi điểm danh trước khi vào lớp học, giáo viên thực tập Su-ah phát hiện một nam sinh không bao giờ đến lớp. Su-ah quyết định tìm đến và thuyết phục nam sinh nhanh chóng trở lại trường nhưng cô không ngờ tai họa từ đó ập tới. Không có học sinh nào trong trường chào đón sự trở lại của cậu ta và tệ hơn là những chuyện kỳ quái liên tục xảy ra đe dọa đến mạng sống của nhiều người.', 18, 'D_pc_xG0IQU', 2, 8, 8, 6, 4, 5, '2021-01-17', '2021-01-15 09:24:54', '2021-01-15 09:24:54'),
(9, 'THỎ PETER 2', '8UGgRtho.jpg', '69', 'Trong phần tiếp theo của Thỏ Peter, những kẻ lừa đảo đáng yêu đã trở lại. Bea, Thomas và những con thỏ đã tạo ra một gia đình tạm thời, nhưng mặc dù đã cố gắng hết sức, Peter dường như không thể làm suy chuyển những \"thành tích\" nghịch ngợm tinh quái của cậu. Quyết định mở rộng cuộc phiêu lưu ra khỏi khu vườn, Peter tìm thấy chính mình ở nơi mà bản chất thật của cậu được trân trọng. Nhưng rồi gia đình cậu nhất quyết đánh đổi bằng mọi giá để tìm cậu về. Peter buộc phải tìm ra lối đi cho riêng mình và trở thành một người mà cậu luôn mong muốn.', 10, 'g3VdWGd7-fw', 2, 9, 9, 4, 3, 2, '2021-01-17', '2021-01-15 09:27:48', '2021-01-15 09:27:48'),
(10, 'VÔ DIỆN SÁT NHÂN', 'gp918vodien.jpg', '100', 'Phuong Anh is a young and talented doctor whose life seems to be perfect. However, she is struggling in a series of nightmares about a faceless killer which is keep hunting for her to the real life. Phuong Anh decides to rescue herself. Who is the“Faceless killer”? What terrify truth is behind the these secrets? Cast: Phương Anh Đào, Oanh Kiều, Hiếu Nguyễn, Quách Ngọc Tuyên, Hoàng Phúc...', 19, 'g3VdWGd7-fw', 2, 1, 1, 1, 1, 1, '2021-01-17', '2021-01-15 09:29:31', '2021-01-15 09:29:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quocgias`
--

CREATE TABLE `quocgias` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenquocgia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quocgias`
--

INSERT INTO `quocgias` (`id`, `tenquocgia`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Việt Nam', 1, NULL, NULL),
(2, 'Lào', 1, NULL, NULL),
(3, 'Mỹ', 1, NULL, NULL),
(4, 'Trung Quốc', 1, NULL, NULL),
(5, 'Anh', 1, NULL, NULL),
(6, 'Campuchia', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `raps`
--

CREATE TABLE `raps` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenrap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` int(10) UNSIGNED NOT NULL,
  `soday` int(11) NOT NULL,
  `socot` int(11) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `raps`
--

INSERT INTO `raps` (`id`, `tenrap`, `chinhanh`, `soday`, `socot`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'RCP Quận 1', 1, 3, 4, 1, '2021-01-15 05:38:46', '2021-01-15 05:38:46'),
(2, 'RCP Quận 2', 2, 4, 4, 1, '2021-01-15 05:38:56', '2021-01-15 05:38:56'),
(3, 'RCP Quận 3', 3, 4, 3, 1, '2021-01-15 05:39:05', '2021-01-15 05:39:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloais`
--

CREATE TABLE `theloais` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentheloai` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloais`
--

INSERT INTO `theloais` (`id`, `tentheloai`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Khoa Học', 1, NULL, NULL),
(2, 'Viễn Tưởng', 1, NULL, NULL),
(3, 'Kinh Dị', 1, NULL, NULL),
(4, 'Hoạt Hình', 1, NULL, NULL),
(5, 'Hài Hước', 1, NULL, NULL),
(6, 'Tình Cảm', 1, NULL, NULL),
(7, 'Hành Động', 1, '2021-01-14 17:13:20', '2021-01-14 17:13:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `anh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `sdt`, `diachi`, `trangthai`, `anh`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tuấn', 'tri@gmail.com', NULL, '$2y$10$jlq.FUtJKGzgACV.YzkoKOzGueqSOslIrpmtaxYSFCETZ0h.0saQW', '0245452545', 'TP Hồ Chí Minh', 1, NULL, NULL, '2021-01-15 05:50:21', '2021-01-15 09:43:02'),
(2, NULL, '1@gmail.com', NULL, '$2y$10$br3vfmgELWLrBrSJTJpxr.KyxdwFFjaG3.ncA5G6MeQk1ZHyD61DG', NULL, NULL, 1, NULL, NULL, '2021-01-15 08:48:08', '2021-01-15 08:48:08'),
(3, NULL, 'a@gmail.com', NULL, '$2y$10$pDuifhYDoFJxkKu422CXg.k2IkDwHM/i5amcTv4t9ZFvE1CxqN1py', NULL, NULL, 1, NULL, NULL, '2021-01-15 18:10:13', '2021-01-15 18:10:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ves`
--

CREATE TABLE `ves` (
  `id` int(10) UNSIGNED NOT NULL,
  `phim` int(10) UNSIGNED NOT NULL,
  `rap` int(10) UNSIGNED NOT NULL,
  `thoigian` int(10) UNSIGNED NOT NULL,
  `ghe` int(10) UNSIGNED NOT NULL,
  `gia` int(10) UNSIGNED NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1,
  `dsve` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ves`
--

INSERT INTO `ves` (`id`, `phim`, `rap`, `thoigian`, `ghe`, `gia`, `trangthai`, `dsve`, `created_at`, `updated_at`) VALUES
(7, 1, 1, 7, 1, 1, 1, 5, '2021-01-15 18:56:21', '2021-01-15 18:56:21'),
(8, 1, 1, 7, 2, 1, 1, 5, '2021-01-15 18:56:21', '2021-01-15 18:56:21'),
(9, 1, 1, 7, 7, 1, 1, 6, '2021-01-15 20:29:02', '2021-01-15 20:29:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluans`
--
ALTER TABLE `binhluans`
  ADD KEY `binhluans_phim_foreign` (`phim`),
  ADD KEY `binhluans_khachhang_foreign` (`khachhang`);

--
-- Chỉ mục cho bảng `chinhanhs`
--
ALTER TABLE `chinhanhs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhgias`
--
ALTER TABLE `danhgias`
  ADD KEY `danhgias_phim_foreign` (`phim`),
  ADD KEY `danhgias_khachhang_foreign` (`khachhang`);

--
-- Chỉ mục cho bảng `daodiens`
--
ALTER TABLE `daodiens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dienviens`
--
ALTER TABLE `dienviens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dsves`
--
ALTER TABLE `dsves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dsves_khachhang_foreign` (`khachhang`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ghes`
--
ALTER TABLE `ghes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ghes_rap_foreign` (`rap`),
  ADD KEY `ghes_loaighe_foreign` (`loaighe`);

--
-- Chỉ mục cho bảng `gias`
--
ALTER TABLE `gias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gias_loaighe_foreign` (`loaighe`),
  ADD KEY `gias_phim_foreign` (`phim`);

--
-- Chỉ mục cho bảng `khungtgchieus`
--
ALTER TABLE `khungtgchieus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lichchieus`
--
ALTER TABLE `lichchieus`
  ADD PRIMARY KEY (`phim`,`thoigian`,`rap`),
  ADD KEY `lichchieus_thoigian_foreign` (`thoigian`),
  ADD KEY `lichchieus_rap_foreign` (`rap`);

--
-- Chỉ mục cho bảng `loaighes`
--
ALTER TABLE `loaighes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanviens`
--
ALTER TABLE `nhanviens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nhanviens_email_unique` (`email`),
  ADD UNIQUE KEY `nhanviens_sdt_unique` (`sdt`);

--
-- Chỉ mục cho bảng `nsxes`
--
ALTER TABLE `nsxes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `phims`
--
ALTER TABLE `phims`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phims_daodien_foreign` (`daodien`),
  ADD KEY `phims_dienvien_foreign` (`dienvien`),
  ADD KEY `phims_theloai_foreign` (`theloai`),
  ADD KEY `phims_quocgia_foreign` (`quocgia`),
  ADD KEY `phims_nsx_foreign` (`nsx`);

--
-- Chỉ mục cho bảng `quocgias`
--
ALTER TABLE `quocgias`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `raps`
--
ALTER TABLE `raps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raps_chinhanh_foreign` (`chinhanh`);

--
-- Chỉ mục cho bảng `theloais`
--
ALTER TABLE `theloais`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_sdt_unique` (`sdt`);

--
-- Chỉ mục cho bảng `ves`
--
ALTER TABLE `ves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ves_phim_foreign` (`phim`),
  ADD KEY `ves_rap_foreign` (`rap`),
  ADD KEY `ves_thoigian_foreign` (`thoigian`),
  ADD KEY `ves_ghe_foreign` (`ghe`),
  ADD KEY `ves_gia_foreign` (`gia`),
  ADD KEY `ves_dsve_foreign` (`dsve`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chinhanhs`
--
ALTER TABLE `chinhanhs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `daodiens`
--
ALTER TABLE `daodiens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `dienviens`
--
ALTER TABLE `dienviens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `dsves`
--
ALTER TABLE `dsves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ghes`
--
ALTER TABLE `ghes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `gias`
--
ALTER TABLE `gias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khungtgchieus`
--
ALTER TABLE `khungtgchieus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `loaighes`
--
ALTER TABLE `loaighes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `nhanviens`
--
ALTER TABLE `nhanviens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nsxes`
--
ALTER TABLE `nsxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phims`
--
ALTER TABLE `phims`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `quocgias`
--
ALTER TABLE `quocgias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `raps`
--
ALTER TABLE `raps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `theloais`
--
ALTER TABLE `theloais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ves`
--
ALTER TABLE `ves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluans`
--
ALTER TABLE `binhluans`
  ADD CONSTRAINT `binhluans_khachhang_foreign` FOREIGN KEY (`khachhang`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `binhluans_phim_foreign` FOREIGN KEY (`phim`) REFERENCES `phims` (`id`);

--
-- Các ràng buộc cho bảng `danhgias`
--
ALTER TABLE `danhgias`
  ADD CONSTRAINT `danhgias_khachhang_foreign` FOREIGN KEY (`khachhang`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `danhgias_phim_foreign` FOREIGN KEY (`phim`) REFERENCES `phims` (`id`);

--
-- Các ràng buộc cho bảng `dsves`
--
ALTER TABLE `dsves`
  ADD CONSTRAINT `dsves_khachhang_foreign` FOREIGN KEY (`khachhang`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `ghes`
--
ALTER TABLE `ghes`
  ADD CONSTRAINT `ghes_loaighe_foreign` FOREIGN KEY (`loaighe`) REFERENCES `loaighes` (`id`),
  ADD CONSTRAINT `ghes_rap_foreign` FOREIGN KEY (`rap`) REFERENCES `raps` (`id`);

--
-- Các ràng buộc cho bảng `gias`
--
ALTER TABLE `gias`
  ADD CONSTRAINT `gias_loaighe_foreign` FOREIGN KEY (`loaighe`) REFERENCES `loaighes` (`id`),
  ADD CONSTRAINT `gias_phim_foreign` FOREIGN KEY (`phim`) REFERENCES `phims` (`id`);

--
-- Các ràng buộc cho bảng `lichchieus`
--
ALTER TABLE `lichchieus`
  ADD CONSTRAINT `lichchieus_phim_foreign` FOREIGN KEY (`phim`) REFERENCES `phims` (`id`),
  ADD CONSTRAINT `lichchieus_rap_foreign` FOREIGN KEY (`rap`) REFERENCES `raps` (`id`),
  ADD CONSTRAINT `lichchieus_thoigian_foreign` FOREIGN KEY (`thoigian`) REFERENCES `khungtgchieus` (`id`);

--
-- Các ràng buộc cho bảng `phims`
--
ALTER TABLE `phims`
  ADD CONSTRAINT `phims_daodien_foreign` FOREIGN KEY (`daodien`) REFERENCES `daodiens` (`id`),
  ADD CONSTRAINT `phims_dienvien_foreign` FOREIGN KEY (`dienvien`) REFERENCES `dienviens` (`id`),
  ADD CONSTRAINT `phims_nsx_foreign` FOREIGN KEY (`nsx`) REFERENCES `nsxes` (`id`),
  ADD CONSTRAINT `phims_quocgia_foreign` FOREIGN KEY (`quocgia`) REFERENCES `quocgias` (`id`),
  ADD CONSTRAINT `phims_theloai_foreign` FOREIGN KEY (`theloai`) REFERENCES `theloais` (`id`);

--
-- Các ràng buộc cho bảng `raps`
--
ALTER TABLE `raps`
  ADD CONSTRAINT `raps_chinhanh_foreign` FOREIGN KEY (`chinhanh`) REFERENCES `chinhanhs` (`id`);

--
-- Các ràng buộc cho bảng `ves`
--
ALTER TABLE `ves`
  ADD CONSTRAINT `ves_dsve_foreign` FOREIGN KEY (`dsve`) REFERENCES `dsves` (`id`),
  ADD CONSTRAINT `ves_ghe_foreign` FOREIGN KEY (`ghe`) REFERENCES `ghes` (`id`),
  ADD CONSTRAINT `ves_gia_foreign` FOREIGN KEY (`gia`) REFERENCES `gias` (`id`),
  ADD CONSTRAINT `ves_phim_foreign` FOREIGN KEY (`phim`) REFERENCES `lichchieus` (`phim`),
  ADD CONSTRAINT `ves_rap_foreign` FOREIGN KEY (`rap`) REFERENCES `lichchieus` (`rap`),
  ADD CONSTRAINT `ves_thoigian_foreign` FOREIGN KEY (`thoigian`) REFERENCES `lichchieus` (`thoigian`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
