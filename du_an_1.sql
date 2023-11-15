-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 07:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `du_an_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `anh` longblob NOT NULL,
  `mo_ta` varchar(255) NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_dat_phong`
--

CREATE TABLE `chi_tiet_dat_phong` (
  `id_chi_tiet_dat_phong` int(11) NOT NULL,
  `id_khach_hang` int(11) NOT NULL,
  `id_phong` int(11) NOT NULL,
  `ngay_den` date NOT NULL,
  `ngay_di` date NOT NULL,
  `so_luong` int(11) NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dat_phong`
--

CREATE TABLE `dat_phong` (
  `id_dat_phong` int(11) NOT NULL,
  `id_khach_hang` int(11) NOT NULL,
  `id_phong` int(11) NOT NULL,
  `tong_tien` float NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dich_vu`
--

CREATE TABLE `dich_vu` (
  `id_dich_vu` int(11) NOT NULL,
  `ten-dich_vu` varchar(255) NOT NULL,
  `gia_dich_vu` float NOT NULL,
  `mo_ta` varchar(255) NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dich_vu_su_dung`
--

CREATE TABLE `dich_vu_su_dung` (
  `id_dich_vu_su_dung` int(11) NOT NULL,
  `id_hoa_don` int(11) NOT NULL,
  `ten_dich_vu` varchar(255) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `id_dich_vu` int(11) NOT NULL,
  `thanh_tien` float NOT NULL,
  `trnag_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id_hoa_don` int(11) NOT NULL,
  `id_dat_phong` int(11) NOT NULL,
  `tong_hoa_don` float NOT NULL,
  `ngay_gio_den` date NOT NULL,
  `ngay_gio_di` date NOT NULL,
  `id_khach_hang` int(11) NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id_khach_hang` int(11) NOT NULL,
  `id_tai_khoan` int(11) NOT NULL,
  `so_dien_thoai` varchar(15) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai_nguoi_dung`
--

CREATE TABLE `loai_nguoi_dung` (
  `id_loai_nguoi_dung` int(11) NOT NULL,
  `ten_loai_nguoi_dung` varchar(50) NOT NULL,
  `trang_thai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai_phong`
--

CREATE TABLE `loai_phong` (
  `id_loai_phong` int(11) NOT NULL,
  `ten_loai_phong` varchar(100) NOT NULL,
  `gia_loai_phong` float NOT NULL,
  `kieu_giuong` varchar(100) NOT NULL,
  `hut_thuoc` varchar(100) NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id_phong` int(11) NOT NULL,
  `id_loai_phong` int(11) NOT NULL,
  `so_phong` varchar(50) NOT NULL,
  `trang_thai` varchar(100) NOT NULL,
  `anh` longblob NOT NULL,
  `mo_ta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phuong_thuc_thanh_toan`
--

CREATE TABLE `phuong_thuc_thanh_toan` (
  `id_phuong_thuc_thanh_toan` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `mo_ta` varchar(255) NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id_tai_khoan` int(11) NOT NULL,
  `ten_dang_nhap` varchar(50) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `trang_thai` varchar(255) NOT NULL,
  `id_loai_nguoi_dung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_khach_san`
--

CREATE TABLE `thong_tin_khach_san` (
  `id_khach_san` int(11) NOT NULL,
  `ten_khach_san` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logo` longblob NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `chi_tiet_dat_phong`
--
ALTER TABLE `chi_tiet_dat_phong`
  ADD PRIMARY KEY (`id_chi_tiet_dat_phong`);

--
-- Indexes for table `dat_phong`
--
ALTER TABLE `dat_phong`
  ADD PRIMARY KEY (`id_dat_phong`);

--
-- Indexes for table `dich_vu`
--
ALTER TABLE `dich_vu`
  ADD PRIMARY KEY (`id_dich_vu`);

--
-- Indexes for table `dich_vu_su_dung`
--
ALTER TABLE `dich_vu_su_dung`
  ADD PRIMARY KEY (`id_dich_vu_su_dung`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id_hoa_don`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id_khach_hang`);

--
-- Indexes for table `loai_nguoi_dung`
--
ALTER TABLE `loai_nguoi_dung`
  ADD PRIMARY KEY (`id_loai_nguoi_dung`);

--
-- Indexes for table `loai_phong`
--
ALTER TABLE `loai_phong`
  ADD PRIMARY KEY (`id_loai_phong`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id_phong`);

--
-- Indexes for table `phuong_thuc_thanh_toan`
--
ALTER TABLE `phuong_thuc_thanh_toan`
  ADD PRIMARY KEY (`id_phuong_thuc_thanh_toan`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id_tai_khoan`);

--
-- Indexes for table `thong_tin_khach_san`
--
ALTER TABLE `thong_tin_khach_san`
  ADD PRIMARY KEY (`id_khach_san`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chi_tiet_dat_phong`
--
ALTER TABLE `chi_tiet_dat_phong`
  MODIFY `id_chi_tiet_dat_phong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dat_phong`
--
ALTER TABLE `dat_phong`
  MODIFY `id_dat_phong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dich_vu`
--
ALTER TABLE `dich_vu`
  MODIFY `id_dich_vu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dich_vu_su_dung`
--
ALTER TABLE `dich_vu_su_dung`
  MODIFY `id_dich_vu_su_dung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id_hoa_don` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id_khach_hang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loai_nguoi_dung`
--
ALTER TABLE `loai_nguoi_dung`
  MODIFY `id_loai_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loai_phong`
--
ALTER TABLE `loai_phong`
  MODIFY `id_loai_phong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id_phong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phuong_thuc_thanh_toan`
--
ALTER TABLE `phuong_thuc_thanh_toan`
  MODIFY `id_phuong_thuc_thanh_toan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id_tai_khoan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thong_tin_khach_san`
--
ALTER TABLE `thong_tin_khach_san`
  MODIFY `id_khach_san` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
