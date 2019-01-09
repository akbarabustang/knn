-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 04:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tahu_kuning`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_latih`
--

CREATE TABLE `data_latih` (
  `id` int(11) NOT NULL,
  `Nama` varchar(13) DEFAULT NULL,
  `Mean_Hue` decimal(4,2) DEFAULT NULL,
  `Mean_Saturation` decimal(4,2) DEFAULT NULL,
  `Mean_Value` decimal(4,2) DEFAULT NULL,
  `Kategori` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_latih`
--

INSERT INTO `data_latih` (`id`, `Nama`, `Mean_Hue`, `Mean_Saturation`, `Mean_Value`, `Kategori`) VALUES
(1, 'Data_Latih_1', '34.23', '69.62', '64.69', 'Pewarna Kunyit'),
(2, 'Data_Latih_2', '38.40', '80.54', '65.49', 'Pewarna Kunyit'),
(3, 'Data_Latih_3', '32.53', '68.74', '71.84', 'Pewarna Kunyit'),
(4, 'Data_Latih_4', '31.66', '76.91', '70.73', 'Pewarna Kunyit'),
(5, 'Data_Latih_5', '33.25', '81.26', '56.55', 'Pewarna Kunyit'),
(6, 'Data_Latih_6', '37.22', '86.12', '58.66', 'Pewarna Kunyit'),
(7, 'Data_Latih_7', '32.69', '68.31', '67.70', 'Pewarna Kunyit'),
(8, 'Data_Latih_8', '31.46', '69.57', '73.26', 'Pewarna Kunyit'),
(9, 'Data_Latih_9', '31.75', '77.36', '60.17', 'Pewarna Kunyit'),
(10, 'Data_Latih_10', '36.49', '81.55', '65.03', 'Pewarna Kunyit'),
(11, 'Data_Latih_11', '30.68', '68.66', '69.21', 'Pewarna Kunyit'),
(12, 'Data_Latih_12', '28.88', '81.70', '71.07', 'Pewarna Kunyit'),
(13, 'Data_Latih_13', '31.07', '88.23', '58.05', 'Pewarna Kunyit'),
(14, 'Data_Latih_14', '36.10', '90.04', '65.62', 'Pewarna Kunyit'),
(15, 'Data_Latih_15', '30.73', '73.86', '71.90', 'Pewarna Kunyit'),
(16, 'Data_Latih_16', '28.75', '79.02', '75.75', 'Pewarna Kunyit'),
(17, 'Data_Latih_17', '32.23', '84.21', '60.42', 'Pewarna Kunyit'),
(18, 'Data_Latih_18', '35.65', '88.40', '65.50', 'Pewarna Kunyit'),
(19, 'Data_Latih_19', '30.45', '79.43', '68.49', 'Pewarna Kunyit'),
(20, 'Data_Latih_20', '27.17', '85.59', '66.49', 'Pewarna Kunyit'),
(21, 'Data_Latih_21', '32.05', '81.29', '63.68', 'Pewarna Kunyit'),
(22, 'Data_Latih_22', '35.66', '93.38', '64.22', 'Pewarna Kunyit'),
(23, 'Data_Latih_23', '30.90', '79.95', '69.71', 'Pewarna Kunyit'),
(24, 'Data_Latih_24', '28.11', '89.46', '71.06', 'Pewarna Kunyit'),
(25, 'Data_Latih_25', '29.50', '82.19', '55.68', 'Pewarna Kunyit'),
(26, 'Data_Latih_26', '34.79', '84.62', '63.17', 'Pewarna Kunyit'),
(27, 'Data_Latih_27', '30.16', '77.62', '71.24', 'Pewarna Kunyit'),
(28, 'Data_Latih_28', '29.00', '83.03', '73.33', 'Pewarna Kunyit'),
(29, 'Data_Latih_29', '30.24', '62.62', '36.77', 'Pewarna Makanan'),
(30, 'Data_Latih_30', '39.42', '59.84', '60.34', 'Pewarna Makanan'),
(31, 'Data_Latih_31', '33.07', '46.26', '57.62', 'Pewarna Makanan'),
(32, 'Data_Latih_32', '31.49', '56.84', '72.74', 'Pewarna Makanan'),
(33, 'Data_Latih_33', '30.14', '56.12', '37.04', 'Pewarna Makanan'),
(34, 'Data_Latih_34', '40.23', '57.83', '63.18', 'Pewarna Makanan'),
(35, 'Data_Latih_35', '32.15', '40.85', '68.59', 'Pewarna Makanan'),
(36, 'Data_Latih_36', '31.48', '65.55', '71.34', 'Pewarna Makanan'),
(37, 'Data_Latih_37', '32.38', '58.84', '36.79', 'Pewarna Makanan'),
(38, 'Data_Latih_38', '40.00', '49.46', '63.47', 'Pewarna Makanan'),
(39, 'Data_Latih_39', '34.01', '41.94', '64.64', 'Pewarna Makanan'),
(40, 'Data_Latih_40', '31.13', '60.21', '75.30', 'Pewarna Makanan'),
(41, 'Data_Latih_41', '32.44', '52.48', '35.27', 'Pewarna Makanan'),
(42, 'Data_Latih_42', '38.82', '49.64', '62.24', 'Pewarna Makanan'),
(43, 'Data_Latih_43', '33.38', '31.98', '64.86', 'Pewarna Makanan'),
(44, 'Data_Latih_44', '29.54', '48.22', '78.46', 'Pewarna Makanan'),
(45, 'Data_Latih_45', '34.42', '66.92', '48.01', 'Pewarna Makanan'),
(46, 'Data_Latih_46', '38.70', '62.93', '64.72', 'Pewarna Makanan'),
(47, 'Data_Latih_47', '32.75', '49.70', '66.99', 'Pewarna Makanan'),
(48, 'Data_Latih_48', '32.23', '66.10', '77.50', 'Pewarna Makanan'),
(49, 'Data_Latih_49', '33.49', '65.88', '48.11', 'Pewarna Makanan'),
(50, 'Data_Latih_50', '38.37', '67.66', '66.33', 'Pewarna Makanan'),
(51, 'Data_Latih_51', '34.31', '56.70', '65.59', 'Pewarna Makanan'),
(52, 'Data_Latih_52', '32.09', '66.23', '77.05', 'Pewarna Makanan'),
(53, 'Data_Latih_53', '33.13', '71.62', '50.43', 'Pewarna Makanan'),
(54, 'Data_Latih_54', '40.35', '68.22', '70.02', 'Pewarna Makanan'),
(55, 'Data_Latih_55', '33.16', '55.95', '62.50', 'Pewarna Makanan'),
(56, 'Data_Latih_56', '32.83', '79.43', '76.31', 'Pewarna Makanan'),
(57, 'Data_Latih_57', '34.30', '65.56', '55.76', 'Pewarna Makanan'),
(58, 'Data_Latih_58', '38.99', '71.00', '62.53', 'Pewarna Makanan'),
(59, 'Data_Latih_59', '32.46', '57.99', '62.62', 'Pewarna Makanan'),
(60, 'Data_Latih_60', '32.40', '74.10', '75.92', 'Pewarna Makanan'),
(61, 'Data_Latih_61', '34.79', '71.04', '54.71', 'Pewarna Makanan'),
(62, 'Data_Latih_62', '39.83', '64.12', '70.97', 'Pewarna Makanan'),
(63, 'Data_Latih_63', '33.90', '62.14', '71.04', 'Pewarna Makanan'),
(64, 'Data_Latih_64', '32.79', '73.77', '76.56', 'Pewarna Makanan'),
(65, 'Data_Latih_65', '30.29', '99.41', '66.77', 'Pewarna Tekstil'),
(66, 'Data_Latih_66', '33.19', '94.83', '78.69', 'Pewarna Tekstil'),
(67, 'Data_Latih_67', '28.44', '97.64', '79.69', 'Pewarna Tekstil'),
(68, 'Data_Latih_68', '27.53', '96.62', '87.76', 'Pewarna Tekstil'),
(69, 'Data_Latih_69', '25.57', '97.38', '64.70', 'Pewarna Tekstil'),
(70, 'Data_Latih_70', '29.91', '99.20', '77.81', 'Pewarna Tekstil'),
(71, 'Data_Latih_71', '25.50', '98.17', '71.25', 'Pewarna Tekstil'),
(72, 'Data_Latih_72', '25.70', '96.80', '86.22', 'Pewarna Tekstil'),
(73, 'Data_Latih_73', '25.63', '94.27', '55.04', 'Pewarna Tekstil'),
(74, 'Data_Latih_74', '30.25', '97.98', '84.36', 'Pewarna Tekstil'),
(75, 'Data_Latih_75', '27.96', '94.73', '78.32', 'Pewarna Tekstil'),
(76, 'Data_Latih_76', '25.08', '96.51', '89.79', 'Pewarna Tekstil'),
(77, 'Data_Latih_77', '17.71', '96.48', '63.44', 'Pewarna Tekstil'),
(78, 'Data_Latih_78', '23.45', '94.80', '89.33', 'Pewarna Tekstil'),
(79, 'Data_Latih_79', '19.04', '97.37', '80.28', 'Pewarna Tekstil'),
(80, 'Data_Latih_80', '19.98', '98.00', '89.60', 'Pewarna Tekstil'),
(81, 'Data_Latih_81', '19.95', '98.43', '90.16', 'Pewarna Tekstil'),
(82, 'Data_Latih_82', '20.93', '97.29', '85.44', 'Pewarna Tekstil'),
(83, 'Data_Latih_83', '14.74', '97.62', '60.24', 'Pewarna Tekstil'),
(84, 'Data_Latih_84', '24.47', '90.18', '85.88', 'Pewarna Tekstil'),
(85, 'Data_Latih_85', '18.63', '97.98', '91.94', 'Pewarna Tekstil'),
(86, 'Data_Latih_86', '17.79', '96.87', '86.43', 'Pewarna Tekstil'),
(87, 'Data_Latih_87', '13.68', '97.76', '66.43', 'Pewarna Tekstil'),
(88, 'Data_Latih_88', '22.26', '98.06', '91.70', 'Pewarna Tekstil'),
(89, 'Data_Latih_89', '20.69', '98.00', '80.30', 'Pewarna Tekstil'),
(90, 'Data_Latih_90', '16.19', '97.76', '59.16', 'Pewarna Tekstil'),
(91, 'Data_Latih_91', '22.76', '97.17', '84.89', 'Pewarna Tekstil'),
(92, 'Data_Latih_92', '22.83', '96.59', '91.12', 'Pewarna Tekstil');

-- --------------------------------------------------------

--
-- Table structure for table `data_uji`
--

CREATE TABLE `data_uji` (
  `Nama` int(11) NOT NULL,
  `Mean_Hue` int(11) NOT NULL,
  `Mean_Saturation` int(11) NOT NULL,
  `Mean_Value` int(11) NOT NULL,
  `Kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `euclidean_distance`
--

CREATE TABLE `euclidean_distance` (
  `Nama` int(11) NOT NULL,
  `Euclidean_Distance` int(11) NOT NULL,
  `Kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_latih`
--
ALTER TABLE `data_latih`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_latih`
--
ALTER TABLE `data_latih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
