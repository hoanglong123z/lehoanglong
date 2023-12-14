-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 04:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csdl_lehoanglong`
--

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `Ma_KH` int(11) NOT NULL,
  `Ho_Ten` varchar(100) NOT NULL,
  `Tai_Khoan` varchar(50) NOT NULL,
  `Mat_Khau` varchar(50) NOT NULL,
  `Dia_Chi` varchar(100) NOT NULL,
  `Dien_Thoai` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Ngay_Sinh` datetime NOT NULL,
  `Gioi_Tinh` tinyint(4) NOT NULL,
  `Trang_Thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`Ma_KH`, `Ho_Ten`, `Tai_Khoan`, `Mat_Khau`, `Dia_Chi`, `Dien_Thoai`, `Email`, `Ngay_Sinh`, `Gioi_Tinh`, `Trang_Thai`) VALUES
(1, 'Lữ Bố', 'lubovsluubi', 'taothao', 'Hồ Chí Minh', '0123456789', 'jjjjnhsbc@gmail.com', '2002-12-14 16:32:54', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quan_tri`
--

CREATE TABLE `quan_tri` (
  `Tai_Khoan` varchar(50) NOT NULL,
  `Mat_Khau` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quan_tri`
--

INSERT INTO `quan_tri` (`Tai_Khoan`, `Mat_Khau`, `Trang_thai`) VALUES
('admin', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `MaSP` int(11) NOT NULL,
  `Ten_Sp` varchar(200) NOT NULL,
  `Mo_Ta` varchar(250) NOT NULL,
  `Thong_Tin` text NOT NULL,
  `Gia_Nhap` float NOT NULL,
  `Gia_Cu` float NOT NULL,
  `Gia_Moi` float NOT NULL,
  `Ngay_Cap_Nhat` datetime NOT NULL DEFAULT current_timestamp(),
  `Trang_Thai` tinyint(4) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaNH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`MaSP`, `Ten_Sp`, `Mo_Ta`, `Thong_Tin`, `Gia_Nhap`, `Gia_Cu`, `Gia_Moi`, `Ngay_Cap_Nhat`, `Trang_Thai`, `MaLSP`, `MaNH`) VALUES
(1, 'Bàn Gamming', 'Đẹp , Không mua thì phí cả đời', 'Mặt bàn hình tam giác chân hình vuông', 100000, 120000, 150000, '2022-12-14 22:33:58', 1, 100, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`Ma_KH`);

--
-- Indexes for table `quan_tri`
--
ALTER TABLE `quan_tri`
  ADD PRIMARY KEY (`Tai_Khoan`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`MaSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
