-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2018 at 03:35 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapotonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `c_admin` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`c_admin`, `nama`, `username`, `password`) VALUES
('rino', 'Administrator', 'rino2018', '14VV3K6uv0Bc.'),
('veno', 'Administrator', 'admin', '14/iKXDMbEvfw');

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(2) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kepsek` varchar(30) NOT NULL,
  `nipkepsek` varchar(30) NOT NULL,
  `namasek` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `alamat`, `kepsek`, `nipkepsek`, `namasek`) VALUES
(1, 'Bogor', 'Mujianto, S.Pd. MM.', '19650418 198603 1 012', 'NAMA SEKOLAH ANDA');

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `c_backup` int(11) NOT NULL,
  `at` datetime NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`c_backup`, `at`, `file`) VALUES
(3, '2018-01-11 09:34:31', 'backup_db_eraport-11-01-2018-09-34-31-.sql');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `c_extra` varchar(10) NOT NULL,
  `extra` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`c_extra`, `extra`) VALUES
('27b8uRW3a', 'Bola Volly'),
('4u9uxDxsi', 'Kesenian Hadroh'),
('7y1X9UuX6', 'English Club'),
('brkvsQhLy', 'Bimbingan Konseling'),
('ELvSju4yI', 'Pramuka'),
('HratPgIl4', 'Kelas Programmer'),
('KXXkni6CS', 'Sepak Bola (FC)'),
('UU2yFnGcy', 'Pengurus OSIS');

-- --------------------------------------------------------

--
-- Table structure for table `extrasiswa`
--

CREATE TABLE `extrasiswa` (
  `c_extrasiswa` int(11) NOT NULL,
  `c_ta` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `c_extra` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extrasiswa`
--

INSERT INTO `extrasiswa` (`c_extrasiswa`, `c_ta`, `c_siswa`, `c_extra`) VALUES
(7, '6ARym1eC6', 'bptbJt4Q', 'brkvsQhLy'),
(8, '6ARym1eC6', 'bptbJt4Q', '27b8uRW3a'),
(9, '6ARym1eC6', 'bptbJt4Q', '7y1X9UuX6'),
(10, '6ARym1eC6', 'bptbJt4Q', 'HratPgIl4'),
(11, '6ARym1eC6', 'bptbJt4Q', '4u9uxDxsi'),
(12, '6ARym1eC6', 'bptbJt4Q', 'UU2yFnGcy'),
(13, '6ARym1eC6', 'bptbJt4Q', 'ELvSju4yI'),
(14, '6ARym1eC6', 'bptbJt4Q', 'KXXkni6CS'),
(15, '6ARym1eC6', 'Of9806Ui', '27b8uRW3a'),
(16, '6ARym1eC6', 'Of9806Ui', 'UU2yFnGcy'),
(17, '6ARym1eC6', 'Of9806Ui', 'ELvSju4yI'),
(18, '6ARym1eC6', 'v7cJC6tO', '27b8uRW3a'),
(19, '6ARym1eC6', 'v7cJC6tO', 'HratPgIl4'),
(20, '6ARym1eC6', 'v7cJC6tO', 'UU2yFnGcy'),
(21, '6ARym1eC6', 'v7cJC6tO', 'ELvSju4yI'),
(22, '6ARym1eC6', 'v7cJC6tO', 'KXXkni6CS');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `c_guru` varchar(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `temlahir` varchar(20) NOT NULL,
  `tanglahir` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`c_guru`, `nip`, `nama`, `temlahir`, `tanglahir`, `username`, `password`) VALUES
('0dXMrmmaH', '435435235', 'Guru Bahasa Inggris', 'Nganjuk', '1998-10-14', 'gurubing', 'gurubing'),
('3bw5L7jDW', '3532553266', 'Guru Produktif Pemrograman', 'Bogor', '1998-10-07', 'gurupro', 'gurupro'),
('40IHKMCbC', '543252353553', 'Guru Matematika', 'Bogor', '1998-10-21', 'gurumtk', 'gurumtk'),
('4uvwoxuy1', '53245325235', 'Guru PKN', 'Bogor', '1998-10-06', 'gurupkn', 'gurupkn'),
('aH0Bgcfn0', '353253255235', 'Guru Pendidikan Agama', 'Bogor', '1998-10-27', 'gurupa', 'gurupa'),
('J8lguSxy2', '532554646', 'Guru Ilmu Pengetahuan Alam', 'Bogor', '1998-10-14', 'guruipa', 'guruipa'),
('pJpxaJamf', '3532535632465', 'Guru Pendidikan JOK', 'Bogor', '1998-10-21', 'gurupjok', 'gurupjok'),
('RO6bCsujD', '353553545', 'Guru Ilmu Pengetahuan Sosial', 'Bogor', '1998-10-14', 'guruips', 'guruips'),
('VVh7sKOff', '12421424', 'Guru Fisika', 'Bogor', '1998-10-14', 'gurufis', 'gurufis'),
('wkCsuwypY', '35245214534', 'Guru Bahasa Indonesia', 'Nganjuk', '1998-10-14', 'gurubi', 'gurubi'),
('xJqLGkzC1', '53535263626', 'Guru Kimia', 'Bogor', '1998-10-06', 'gurukim', 'gurukim'),
('zoh0WUQsz', '34325325', 'Guru Bimbingan Konseling', 'Bogor', '1998-10-06', 'gurubk', 'gurubk');

-- --------------------------------------------------------

--
-- Table structure for table `gurumapel`
--

CREATE TABLE `gurumapel` (
  `c_gurumapel` varchar(10) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_mapel` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gurumapel`
--

INSERT INTO `gurumapel` (`c_gurumapel`, `c_guru`, `c_mapel`, `c_kelas`) VALUES
('6PY2iEvhX', 'VVh7sKOff', '6PYh95FR1', 'kmb1PBiD7'),
('Go4ZyNUnO', 'VVh7sKOff', '6PYh95FR1', 'H60hZEPBi'),
('HltRkM11K', 'wkCsuwypY', 'GhSgsu0eo', '30d0'),
('iKCwsylWP', 'wkCsuwypY', 'JELc4Mlws', '56f14'),
('ImA6LWdkP', 'wkCsuwypY', 'JELc4Mlws', '30d0'),
('mgqmBWuDm', 'VVh7sKOff', '6PYh95FR1', '5ecc'),
('oeu5jZSKR', 'VVh7sKOff', '6PYh95FR1', '56f14'),
('QIFVKF7Ob', 'wkCsuwypY', 'GhSgsu0eo', '5ecc'),
('QP3sSvNR9', 'VVh7sKOff', '6PYh95FR1', 'wkv42GPmX'),
('QQJYPVGdZ', 'wkCsuwypY', 'GhSgsu0eo', 'kmb1PBiD7'),
('R05F7RAtc', 'VVh7sKOff', '6PYh95FR1', '30d0'),
('Vo1s4nSSS', 'wkCsuwypY', 'GhSgsu0eo', '56f14'),
('yXjacaByr', 'wkCsuwypY', 'GhSgsu0eo', 'wkv42GPmX'),
('ZuEWXSO61', 'wkCsuwypY', 'GhSgsu0eo', 'H60hZEPBi');

-- --------------------------------------------------------

--
-- Table structure for table `jumlahnilra`
--

CREATE TABLE `jumlahnilra` (
  `c_jumlahnilra` int(11) NOT NULL,
  `c_ta` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `nilaiasli` int(11) NOT NULL,
  `nilaipresen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jumlahnilra`
--

INSERT INTO `jumlahnilra` (`c_jumlahnilra`, `c_ta`, `c_kelas`, `c_siswa`, `nilaiasli`, `nilaipresen`) VALUES
(1, '6ARym1eC6', '56f14', 'JmsmVRJe', 3932, 992),
(2, '6ARym1eC6', '56f14', 'yiymeJnt', 4004, 1011),
(3, '6ARym1eC6', '56f14', 'hmaE7fdx', 3985, 1004),
(4, '6ARym1eC6', '56f14', 'woxBpu2G', 4025, 914),
(5, '6ARym1eC6', '56f14', 'iWoQzXM8', 4030, 1014),
(6, '6ARym1eC6', '56f14', '2XvDCFKx', 4024, 913),
(7, '6ARym1eC6', '56f14', '4ZCyuSBK', 4025, 1016),
(8, '6ARym1eC6', '5ecc', 'v7cJC6tO', 3805, 866),
(9, '6ARym1eC6', '5ecc', 'bptbJt4Q', 3838, 967),
(10, '6ARym1eC6', '5ecc', 'Of9806Ui', 4072, 1020);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `c_kelas` varchar(10) NOT NULL,
  `kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`c_kelas`, `kelas`) VALUES
('30d0', 'X IPA B'),
('56f14', 'X IPA A'),
('5ecc', 'X IPS B'),
('H60hZEPBi', 'XI IPS'),
('kmb1PBiD7', 'XI IPA'),
('wkv42GPmX', 'X IPS A');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `c_mapel` varchar(10) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `sl` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`c_mapel`, `mapel`, `sl`) VALUES
('6PYh95FR1', 'Fisika', 75),
('bVc28SQL5', 'Produktif Pemrograman', 80),
('gdQ2lyu8e', 'Pendidikan JOK', 75),
('GhSgsu0eo', 'Bahasa Indonesia', 80),
('HD0WLFuV4', 'Pendidikan Kewarganegaraan', 75),
('hdYmOHw90', 'Ilmu Pengetahuan Alam', 75),
('JELc4Mlws', 'Bahasa Inggris', 75),
('mo81eMP2V', 'Pendidikan Agama', 70),
('syPvsZsj7', 'Ilmu Pengetahuan Sosial', 75),
('tpN1z5Cp0', 'Bimbingan Konseling', 75),
('uS6Xa9o1s', 'Matematika', 70),
('yVstMrwLi', 'Kimia', 75);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `c_nilai` int(11) NOT NULL,
  `c_ta` varchar(10) NOT NULL,
  `c_tipenilai` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `c_mapel` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `nilai` int(4) NOT NULL,
  `at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`c_nilai`, `c_ta`, `c_tipenilai`, `c_siswa`, `c_mapel`, `c_kelas`, `nilai`, `at`) VALUES
(1, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'GhSgsu0eo', '56f14', 70, '2018-01-09'),
(2, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(3, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(4, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(5, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(6, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(7, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(8, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(9, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(10, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(11, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(12, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(13, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'GhSgsu0eo', '56f14', 95, '2018-01-09'),
(14, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(15, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(16, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(17, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(18, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'GhSgsu0eo', '56f14', 89, '2018-01-09'),
(19, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'GhSgsu0eo', '56f14', 87, '2018-01-09'),
(20, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'GhSgsu0eo', '56f14', 75, '2018-01-09'),
(21, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'GhSgsu0eo', '56f14', 75, '2018-01-09'),
(22, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(23, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'GhSgsu0eo', '56f14', 85, '2018-01-09'),
(24, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'GhSgsu0eo', '56f14', 80, '2018-01-09'),
(25, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'GhSgsu0eo', '56f14', 87, '2018-01-09'),
(26, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(27, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(28, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'GhSgsu0eo', '56f14', 90, '2018-01-09'),
(29, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(30, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(31, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(32, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(33, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(34, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(35, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(36, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'JELc4Mlws', '56f14', 80, '2018-01-09'),
(37, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'JELc4Mlws', '56f14', 80, '2018-01-09'),
(38, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'JELc4Mlws', '56f14', 80, '2018-01-09'),
(39, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'JELc4Mlws', '56f14', 100, '2018-01-09'),
(40, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'JELc4Mlws', '56f14', 100, '2018-01-09'),
(41, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'JELc4Mlws', '56f14', 80, '2018-01-09'),
(42, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'JELc4Mlws', '56f14', 75, '2018-01-09'),
(43, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'JELc4Mlws', '56f14', 90, '2018-01-09'),
(44, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'JELc4Mlws', '56f14', 98, '2018-01-09'),
(45, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'JELc4Mlws', '56f14', 97, '2018-01-09'),
(46, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'JELc4Mlws', '56f14', 90, '2018-01-09'),
(47, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'JELc4Mlws', '56f14', 95, '2018-01-09'),
(48, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'JELc4Mlws', '56f14', 90, '2018-01-09'),
(49, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'JELc4Mlws', '56f14', 90, '2018-01-09'),
(50, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(51, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'JELc4Mlws', '56f14', 88, '2018-01-09'),
(52, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'JELc4Mlws', '56f14', 89, '2018-01-09'),
(53, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'JELc4Mlws', '56f14', 87, '2018-01-09'),
(54, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(55, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'JELc4Mlws', '56f14', 88, '2018-01-09'),
(56, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'JELc4Mlws', '56f14', 85, '2018-01-09'),
(57, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(58, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(59, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(60, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(61, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(62, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(63, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(64, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(65, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(66, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(67, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(68, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(69, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(70, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(71, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(72, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(73, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(74, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(75, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(76, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(77, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'tpN1z5Cp0', '56f14', 80, '2018-01-09'),
(78, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(79, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(80, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(81, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(82, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(83, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(84, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'tpN1z5Cp0', '56f14', 85, '2018-01-09'),
(85, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(86, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', '6PYh95FR1', '56f14', 78, '2018-01-09'),
(87, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(88, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', '6PYh95FR1', '56f14', 78, '2018-01-09'),
(89, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(90, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', '6PYh95FR1', '56f14', 78, '2018-01-09'),
(91, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(92, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', '6PYh95FR1', '56f14', 65, '2018-01-09'),
(93, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', '6PYh95FR1', '56f14', 78, '2018-01-09'),
(94, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(95, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', '6PYh95FR1', '56f14', 70, '2018-01-09'),
(96, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', '6PYh95FR1', '56f14', 60, '2018-01-09'),
(97, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', '6PYh95FR1', '56f14', 65, '2018-01-09'),
(98, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', '6PYh95FR1', '56f14', 70, '2018-01-09'),
(99, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', '6PYh95FR1', '56f14', 80, '2018-01-09'),
(100, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', '6PYh95FR1', '56f14', 87, '2018-01-09'),
(101, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', '6PYh95FR1', '56f14', 80, '2018-01-09'),
(102, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', '6PYh95FR1', '56f14', 85, '2018-01-09'),
(103, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', '6PYh95FR1', '56f14', 85, '2018-01-09'),
(104, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', '6PYh95FR1', '56f14', 85, '2018-01-09'),
(105, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', '6PYh95FR1', '56f14', 70, '2018-01-09'),
(106, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', '6PYh95FR1', '56f14', 76, '2018-01-09'),
(107, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', '6PYh95FR1', '56f14', 75, '2018-01-09'),
(108, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', '6PYh95FR1', '56f14', 74, '2018-01-09'),
(109, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', '6PYh95FR1', '56f14', 73, '2018-01-09'),
(110, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', '6PYh95FR1', '56f14', 72, '2018-01-09'),
(111, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', '6PYh95FR1', '56f14', 71, '2018-01-09'),
(112, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', '6PYh95FR1', '56f14', 80, '2018-01-09'),
(113, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'hdYmOHw90', '56f14', 76, '2018-01-09'),
(114, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'hdYmOHw90', '56f14', 78, '2018-01-09'),
(115, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'hdYmOHw90', '56f14', 78, '2018-01-09'),
(116, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'hdYmOHw90', '56f14', 78, '2018-01-09'),
(117, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'hdYmOHw90', '56f14', 70, '2018-01-09'),
(118, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(119, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'hdYmOHw90', '56f14', 87, '2018-01-09'),
(120, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(121, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(122, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(123, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(124, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(125, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(126, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'hdYmOHw90', '56f14', 80, '2018-01-09'),
(127, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(128, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(129, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(130, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(131, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(132, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(133, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'hdYmOHw90', '56f14', 85, '2018-01-09'),
(134, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'hdYmOHw90', '56f14', 90, '2018-01-09'),
(135, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'hdYmOHw90', '56f14', 95, '2018-01-09'),
(136, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'hdYmOHw90', '56f14', 90, '2018-01-09'),
(137, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'hdYmOHw90', '56f14', 95, '2018-01-09'),
(138, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'hdYmOHw90', '56f14', 90, '2018-01-09'),
(139, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'hdYmOHw90', '56f14', 95, '2018-01-09'),
(140, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'hdYmOHw90', '56f14', 90, '2018-01-09'),
(141, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'syPvsZsj7', '56f14', 87, '2018-01-09'),
(142, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(143, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(144, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(145, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'syPvsZsj7', '56f14', 86, '2018-01-09'),
(146, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'syPvsZsj7', '56f14', 85, '2018-01-09'),
(147, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(148, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'syPvsZsj7', '56f14', 85, '2018-01-09'),
(149, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'syPvsZsj7', '56f14', 87, '2018-01-09'),
(150, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(151, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'syPvsZsj7', '56f14', 85, '2018-01-09'),
(152, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'syPvsZsj7', '56f14', 87, '2018-01-09'),
(153, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(154, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'syPvsZsj7', '56f14', 88, '2018-01-09'),
(155, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'syPvsZsj7', '56f14', 78, '2018-01-09'),
(156, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(157, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'syPvsZsj7', '56f14', 69, '2018-01-09'),
(158, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(159, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(160, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'syPvsZsj7', '56f14', 90, '2018-01-09'),
(161, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'syPvsZsj7', '56f14', 90, '2018-01-09'),
(162, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'syPvsZsj7', '56f14', 75, '2018-01-09'),
(163, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'syPvsZsj7', '56f14', 79, '2018-01-09'),
(164, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'syPvsZsj7', '56f14', 79, '2018-01-09'),
(165, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'syPvsZsj7', '56f14', 76, '2018-01-09'),
(166, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'syPvsZsj7', '56f14', 80, '2018-01-09'),
(167, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'syPvsZsj7', '56f14', 89, '2018-01-09'),
(168, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'syPvsZsj7', '56f14', 87, '2018-01-09'),
(169, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'yVstMrwLi', '56f14', 60, '2018-01-09'),
(170, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'yVstMrwLi', '56f14', 60, '2018-01-09'),
(171, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(172, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'yVstMrwLi', '56f14', 60, '2018-01-09'),
(173, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(174, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'yVstMrwLi', '56f14', 60, '2018-01-09'),
(175, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(176, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'yVstMrwLi', '56f14', 70, '2018-01-09'),
(177, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'yVstMrwLi', '56f14', 70, '2018-01-09'),
(178, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'yVstMrwLi', '56f14', 69, '2018-01-09'),
(179, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'yVstMrwLi', '56f14', 68, '2018-01-09'),
(180, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(181, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(182, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'yVstMrwLi', '56f14', 65, '2018-01-09'),
(183, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'yVstMrwLi', '56f14', 75, '2018-01-09'),
(184, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'yVstMrwLi', '56f14', 76, '2018-01-09'),
(185, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'yVstMrwLi', '56f14', 77, '2018-01-09'),
(186, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'yVstMrwLi', '56f14', 78, '2018-01-09'),
(187, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'yVstMrwLi', '56f14', 79, '2018-01-09'),
(188, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'yVstMrwLi', '56f14', 80, '2018-01-09'),
(189, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'yVstMrwLi', '56f14', 81, '2018-01-09'),
(190, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'yVstMrwLi', '56f14', 76, '2018-01-09'),
(191, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'yVstMrwLi', '56f14', 75, '2018-01-09'),
(192, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'yVstMrwLi', '56f14', 74, '2018-01-09'),
(193, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'yVstMrwLi', '56f14', 73, '2018-01-09'),
(194, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'yVstMrwLi', '56f14', 72, '2018-01-09'),
(195, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'yVstMrwLi', '56f14', 71, '2018-01-09'),
(196, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'yVstMrwLi', '56f14', 70, '2018-01-09'),
(197, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'uS6Xa9o1s', '56f14', 50, '2018-01-09'),
(198, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'uS6Xa9o1s', '56f14', 60, '2018-01-09'),
(199, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'uS6Xa9o1s', '56f14', 45, '2018-01-09'),
(200, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'uS6Xa9o1s', '56f14', 60, '2018-01-09'),
(201, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(202, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'uS6Xa9o1s', '56f14', 68, '2018-01-09'),
(203, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'uS6Xa9o1s', '56f14', 55, '2018-01-09'),
(204, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'uS6Xa9o1s', '56f14', 64, '2018-01-09'),
(205, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(206, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(207, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'uS6Xa9o1s', '56f14', 69, '2018-01-09'),
(208, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(209, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'uS6Xa9o1s', '56f14', 66, '2018-01-09'),
(210, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(211, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(212, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'uS6Xa9o1s', '56f14', 76, '2018-01-09'),
(213, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'uS6Xa9o1s', '56f14', 75, '2018-01-09'),
(214, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'uS6Xa9o1s', '56f14', 74, '2018-01-09'),
(215, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(216, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'uS6Xa9o1s', '56f14', 78, '2018-01-09'),
(217, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'uS6Xa9o1s', '56f14', 70, '2018-01-09'),
(218, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'uS6Xa9o1s', '56f14', 76, '2018-01-09'),
(219, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'uS6Xa9o1s', '56f14', 80, '2018-01-09'),
(220, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'uS6Xa9o1s', '56f14', 82, '2018-01-09'),
(221, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'uS6Xa9o1s', '56f14', 77, '2018-01-09'),
(222, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'uS6Xa9o1s', '56f14', 79, '2018-01-09'),
(223, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(224, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'uS6Xa9o1s', '56f14', 65, '2018-01-09'),
(225, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(226, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(227, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(228, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(229, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'mo81eMP2V', '56f14', 95, '2018-01-09'),
(230, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'mo81eMP2V', '56f14', 97, '2018-01-09'),
(231, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(232, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'mo81eMP2V', '56f14', 95, '2018-01-09'),
(233, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(234, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'mo81eMP2V', '56f14', 92, '2018-01-09'),
(235, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'mo81eMP2V', '56f14', 95, '2018-01-09'),
(236, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(237, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(238, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(239, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'mo81eMP2V', '56f14', 97, '2018-01-09'),
(240, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(241, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'mo81eMP2V', '56f14', 93, '2018-01-09'),
(242, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(243, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(244, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(245, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'mo81eMP2V', '56f14', 90, '2018-01-09'),
(246, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(247, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(248, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(249, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(250, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(251, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(252, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'mo81eMP2V', '56f14', 100, '2018-01-09'),
(253, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'gdQ2lyu8e', '56f14', 85, '2018-01-09'),
(254, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'gdQ2lyu8e', '56f14', 86, '2018-01-09'),
(255, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'gdQ2lyu8e', '56f14', 87, '2018-01-09'),
(256, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'gdQ2lyu8e', '56f14', 88, '2018-01-09'),
(257, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'gdQ2lyu8e', '56f14', 89, '2018-01-09'),
(258, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(259, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'gdQ2lyu8e', '56f14', 91, '2018-01-09'),
(260, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'gdQ2lyu8e', '56f14', 100, '2018-01-09'),
(261, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(262, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(263, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(264, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(265, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(266, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'gdQ2lyu8e', '56f14', 95, '2018-01-09'),
(267, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(268, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(269, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(270, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(271, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(272, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(273, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(274, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'gdQ2lyu8e', '56f14', 85, '2018-01-09'),
(275, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(276, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'gdQ2lyu8e', '56f14', 85, '2018-01-09'),
(277, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(278, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'gdQ2lyu8e', '56f14', 85, '2018-01-09'),
(279, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'gdQ2lyu8e', '56f14', 90, '2018-01-09'),
(280, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'gdQ2lyu8e', '56f14', 88, '2018-01-09'),
(281, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(282, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(283, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(284, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(285, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(286, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(287, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(288, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(289, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'HD0WLFuV4', '56f14', 82, '2018-01-09'),
(290, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'HD0WLFuV4', '56f14', 84, '2018-01-09'),
(291, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'HD0WLFuV4', '56f14', 88, '2018-01-09'),
(292, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'HD0WLFuV4', '56f14', 88, '2018-01-09'),
(293, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(294, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(295, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'HD0WLFuV4', '56f14', 60, '2018-01-09'),
(296, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'HD0WLFuV4', '56f14', 70, '2018-01-09'),
(297, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'HD0WLFuV4', '56f14', 75, '2018-01-09'),
(298, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'HD0WLFuV4', '56f14', 70, '2018-01-09'),
(299, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(300, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'HD0WLFuV4', '56f14', 85, '2018-01-09'),
(301, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'HD0WLFuV4', '56f14', 90, '2018-01-09'),
(302, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'HD0WLFuV4', '56f14', 87, '2018-01-09'),
(303, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'HD0WLFuV4', '56f14', 88, '2018-01-09'),
(304, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'HD0WLFuV4', '56f14', 90, '2018-01-09'),
(305, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'HD0WLFuV4', '56f14', 92, '2018-01-09'),
(306, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'HD0WLFuV4', '56f14', 86, '2018-01-09'),
(307, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'HD0WLFuV4', '56f14', 80, '2018-01-09'),
(308, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'HD0WLFuV4', '56f14', 90, '2018-01-09'),
(309, '6ARym1eC6', 'vcU9NWoZf', 'JmsmVRJe', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(310, '6ARym1eC6', 'vcU9NWoZf', 'yiymeJnt', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(311, '6ARym1eC6', 'vcU9NWoZf', 'hmaE7fdx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(312, '6ARym1eC6', 'vcU9NWoZf', 'woxBpu2G', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(313, '6ARym1eC6', 'vcU9NWoZf', 'iWoQzXM8', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(314, '6ARym1eC6', 'vcU9NWoZf', '2XvDCFKx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(315, '6ARym1eC6', 'vcU9NWoZf', '4ZCyuSBK', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(316, '6ARym1eC6', 'wqrZAn5uc', 'JmsmVRJe', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(317, '6ARym1eC6', 'wqrZAn5uc', 'yiymeJnt', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(318, '6ARym1eC6', 'wqrZAn5uc', 'hmaE7fdx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(319, '6ARym1eC6', 'wqrZAn5uc', 'woxBpu2G', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(320, '6ARym1eC6', 'wqrZAn5uc', 'iWoQzXM8', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(321, '6ARym1eC6', 'wqrZAn5uc', '2XvDCFKx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(322, '6ARym1eC6', 'wqrZAn5uc', '4ZCyuSBK', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(323, '6ARym1eC6', 'uf7H1Ximj', 'JmsmVRJe', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(324, '6ARym1eC6', 'uf7H1Ximj', 'yiymeJnt', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(325, '6ARym1eC6', 'uf7H1Ximj', 'hmaE7fdx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(326, '6ARym1eC6', 'uf7H1Ximj', 'woxBpu2G', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(327, '6ARym1eC6', 'uf7H1Ximj', 'iWoQzXM8', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(328, '6ARym1eC6', 'uf7H1Ximj', '2XvDCFKx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(329, '6ARym1eC6', 'uf7H1Ximj', '4ZCyuSBK', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(330, '6ARym1eC6', 'Jcq5vyZ7V', 'JmsmVRJe', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(331, '6ARym1eC6', 'Jcq5vyZ7V', 'yiymeJnt', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(332, '6ARym1eC6', 'Jcq5vyZ7V', 'hmaE7fdx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(333, '6ARym1eC6', 'Jcq5vyZ7V', 'woxBpu2G', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(334, '6ARym1eC6', 'Jcq5vyZ7V', 'iWoQzXM8', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(335, '6ARym1eC6', 'Jcq5vyZ7V', '2XvDCFKx', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(336, '6ARym1eC6', 'Jcq5vyZ7V', '4ZCyuSBK', 'bVc28SQL5', '56f14', 100, '2018-01-09'),
(337, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'GhSgsu0eo', '5ecc', 80, '2018-01-10'),
(338, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'GhSgsu0eo', '5ecc', 85, '2018-01-10'),
(339, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'GhSgsu0eo', '5ecc', 100, '2018-01-10'),
(340, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'GhSgsu0eo', '5ecc', 90, '2018-01-10'),
(341, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'GhSgsu0eo', '5ecc', 90, '2018-01-10'),
(342, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'GhSgsu0eo', '5ecc', 100, '2018-01-10'),
(343, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'GhSgsu0eo', '5ecc', 85, '2018-01-10'),
(344, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'GhSgsu0eo', '5ecc', 80, '2018-01-10'),
(345, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'GhSgsu0eo', '5ecc', 100, '2018-01-10'),
(346, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'GhSgsu0eo', '5ecc', 92, '2018-01-10'),
(347, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'GhSgsu0eo', '5ecc', 90, '2018-01-10'),
(348, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'GhSgsu0eo', '5ecc', 100, '2018-01-10'),
(349, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'JELc4Mlws', '5ecc', 70, '2018-01-10'),
(350, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'JELc4Mlws', '5ecc', 72, '2018-01-10'),
(351, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'JELc4Mlws', '5ecc', 75, '2018-01-10'),
(352, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'JELc4Mlws', '5ecc', 80, '2018-01-10'),
(353, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'JELc4Mlws', '5ecc', 81, '2018-01-10'),
(354, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'JELc4Mlws', '5ecc', 82, '2018-01-10'),
(355, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'JELc4Mlws', '5ecc', 85, '2018-01-10'),
(356, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'JELc4Mlws', '5ecc', 86, '2018-01-10'),
(357, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'JELc4Mlws', '5ecc', 90, '2018-01-10'),
(358, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'JELc4Mlws', '5ecc', 90, '2018-01-10'),
(359, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'JELc4Mlws', '5ecc', 90, '2018-01-10'),
(360, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'JELc4Mlws', '5ecc', 90, '2018-01-10'),
(361, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'tpN1z5Cp0', '5ecc', 95, '2018-01-10'),
(362, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(363, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'tpN1z5Cp0', '5ecc', 92, '2018-01-10'),
(364, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(365, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(366, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(367, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'tpN1z5Cp0', '5ecc', 90, '2018-01-10'),
(368, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'tpN1z5Cp0', '5ecc', 80, '2018-01-10'),
(369, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'tpN1z5Cp0', '5ecc', 75, '2018-01-10'),
(370, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'tpN1z5Cp0', '5ecc', 85, '2018-01-10'),
(371, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'tpN1z5Cp0', '5ecc', 80, '2018-01-10'),
(372, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'tpN1z5Cp0', '5ecc', 70, '2018-01-10'),
(373, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', '6PYh95FR1', '5ecc', 50, '2018-01-10'),
(374, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', '6PYh95FR1', '5ecc', 40, '2018-01-10'),
(375, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', '6PYh95FR1', '5ecc', 60, '2018-01-10'),
(376, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', '6PYh95FR1', '5ecc', 65, '2018-01-10'),
(377, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', '6PYh95FR1', '5ecc', 60, '2018-01-10'),
(378, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', '6PYh95FR1', '5ecc', 60, '2018-01-10'),
(379, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', '6PYh95FR1', '5ecc', 70, '2018-01-10'),
(380, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', '6PYh95FR1', '5ecc', 65, '2018-01-10'),
(381, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', '6PYh95FR1', '5ecc', 60, '2018-01-10'),
(382, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', '6PYh95FR1', '5ecc', 75, '2018-01-10'),
(383, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', '6PYh95FR1', '5ecc', 70, '2018-01-10'),
(384, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', '6PYh95FR1', '5ecc', 65, '2018-01-10'),
(385, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'hdYmOHw90', '5ecc', 80, '2018-01-10'),
(386, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'hdYmOHw90', '5ecc', 75, '2018-01-10'),
(387, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(388, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'hdYmOHw90', '5ecc', 70, '2018-01-10'),
(389, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'hdYmOHw90', '5ecc', 80, '2018-01-10'),
(390, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(391, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(392, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'hdYmOHw90', '5ecc', 80, '2018-01-10'),
(393, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(394, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'hdYmOHw90', '5ecc', 90, '2018-01-10'),
(395, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'hdYmOHw90', '5ecc', 95, '2018-01-10'),
(396, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'hdYmOHw90', '5ecc', 100, '2018-01-10'),
(397, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'syPvsZsj7', '5ecc', 85, '2018-01-10'),
(398, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'syPvsZsj7', '5ecc', 80, '2018-01-10'),
(399, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'syPvsZsj7', '5ecc', 90, '2018-01-10'),
(400, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'syPvsZsj7', '5ecc', 90, '2018-01-10'),
(401, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'syPvsZsj7', '5ecc', 95, '2018-01-10'),
(402, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'syPvsZsj7', '5ecc', 85, '2018-01-10'),
(403, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'syPvsZsj7', '5ecc', 80, '2018-01-10'),
(404, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'syPvsZsj7', '5ecc', 80, '2018-01-10'),
(405, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'syPvsZsj7', '5ecc', 80, '2018-01-10'),
(406, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'syPvsZsj7', '5ecc', 86, '2018-01-10'),
(407, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'syPvsZsj7', '5ecc', 70, '2018-01-10'),
(408, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'syPvsZsj7', '5ecc', 75, '2018-01-10'),
(409, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'yVstMrwLi', '5ecc', 58, '2018-01-10'),
(410, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(411, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'yVstMrwLi', '5ecc', 65, '2018-01-10'),
(412, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'yVstMrwLi', '5ecc', 45, '2018-01-10'),
(413, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'yVstMrwLi', '5ecc', 80, '2018-01-10'),
(414, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(415, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(416, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'yVstMrwLi', '5ecc', 70, '2018-01-10'),
(417, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(418, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'yVstMrwLi', '5ecc', 50, '2018-01-10'),
(419, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'yVstMrwLi', '5ecc', 70, '2018-01-10'),
(420, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'yVstMrwLi', '5ecc', 60, '2018-01-10'),
(421, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'uS6Xa9o1s', '5ecc', 40, '2018-01-10'),
(422, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(423, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'uS6Xa9o1s', '5ecc', 65, '2018-01-10'),
(424, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'uS6Xa9o1s', '5ecc', 60, '2018-01-10'),
(425, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'uS6Xa9o1s', '5ecc', 65, '2018-01-10'),
(426, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(427, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(428, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'uS6Xa9o1s', '5ecc', 74, '2018-01-10'),
(429, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(430, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'uS6Xa9o1s', '5ecc', 78, '2018-01-10'),
(431, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'uS6Xa9o1s', '5ecc', 70, '2018-01-10'),
(432, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'uS6Xa9o1s', '5ecc', 65, '2018-01-10'),
(433, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(434, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(435, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(436, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'mo81eMP2V', '5ecc', 70, '2018-01-10'),
(437, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(438, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'mo81eMP2V', '5ecc', 95, '2018-01-10'),
(439, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(440, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'mo81eMP2V', '5ecc', 80, '2018-01-10'),
(441, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'mo81eMP2V', '5ecc', 90, '2018-01-10'),
(442, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'mo81eMP2V', '5ecc', 70, '2018-01-10'),
(443, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'mo81eMP2V', '5ecc', 75, '2018-01-10'),
(444, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'mo81eMP2V', '5ecc', 90, '2018-01-10'),
(445, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(446, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(447, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(448, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(449, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'gdQ2lyu8e', '5ecc', 95, '2018-01-10'),
(450, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'gdQ2lyu8e', '5ecc', 100, '2018-01-10'),
(451, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'gdQ2lyu8e', '5ecc', 100, '2018-01-10'),
(452, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'gdQ2lyu8e', '5ecc', 100, '2018-01-10'),
(453, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'gdQ2lyu8e', '5ecc', 100, '2018-01-10'),
(454, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'gdQ2lyu8e', '5ecc', 98, '2018-01-10'),
(455, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'gdQ2lyu8e', '5ecc', 90, '2018-01-10'),
(456, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'gdQ2lyu8e', '5ecc', 95, '2018-01-10'),
(460, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'HD0WLFuV4', '5ecc', 80, '2018-01-10'),
(461, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'HD0WLFuV4', '5ecc', 90, '2018-01-10'),
(462, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'HD0WLFuV4', '5ecc', 100, '2018-01-10'),
(463, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'HD0WLFuV4', '5ecc', 80, '2018-01-10'),
(464, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'HD0WLFuV4', '5ecc', 80, '2018-01-10'),
(465, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'HD0WLFuV4', '5ecc', 100, '2018-01-10'),
(466, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'HD0WLFuV4', '5ecc', 98, '2018-01-10'),
(467, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'HD0WLFuV4', '5ecc', 90, '2018-01-10'),
(468, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'HD0WLFuV4', '5ecc', 100, '2018-01-10'),
(472, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'HD0WLFuV4', '5ecc', 70, '2018-01-10'),
(473, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'HD0WLFuV4', '5ecc', 70, '2018-01-10'),
(474, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'HD0WLFuV4', '5ecc', 100, '2018-01-10'),
(475, '6ARym1eC6', 'vcU9NWoZf', 'v7cJC6tO', 'bVc28SQL5', '5ecc', 95, '2018-01-10'),
(476, '6ARym1eC6', 'vcU9NWoZf', 'bptbJt4Q', 'bVc28SQL5', '5ecc', 90, '2018-01-10'),
(477, '6ARym1eC6', 'vcU9NWoZf', 'Of9806Ui', 'bVc28SQL5', '5ecc', 98, '2018-01-10'),
(478, '6ARym1eC6', 'wqrZAn5uc', 'v7cJC6tO', 'bVc28SQL5', '5ecc', 100, '2018-01-10'),
(479, '6ARym1eC6', 'wqrZAn5uc', 'bptbJt4Q', 'bVc28SQL5', '5ecc', 90, '2018-01-10'),
(480, '6ARym1eC6', 'wqrZAn5uc', 'Of9806Ui', 'bVc28SQL5', '5ecc', 80, '2018-01-10'),
(481, '6ARym1eC6', 'uf7H1Ximj', 'v7cJC6tO', 'bVc28SQL5', '5ecc', 90, '2018-01-10'),
(482, '6ARym1eC6', 'uf7H1Ximj', 'bptbJt4Q', 'bVc28SQL5', '5ecc', 90, '2018-01-10'),
(483, '6ARym1eC6', 'uf7H1Ximj', 'Of9806Ui', 'bVc28SQL5', '5ecc', 100, '2018-01-10'),
(484, '6ARym1eC6', 'Jcq5vyZ7V', 'v7cJC6tO', 'bVc28SQL5', '5ecc', 80, '2018-01-10'),
(485, '6ARym1eC6', 'Jcq5vyZ7V', 'bptbJt4Q', 'bVc28SQL5', '5ecc', 85, '2018-01-10'),
(486, '6ARym1eC6', 'Jcq5vyZ7V', 'Of9806Ui', 'bVc28SQL5', '5ecc', 100, '2018-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `rapotsiswa`
--

CREATE TABLE `rapotsiswa` (
  `c_rapotsiswa` int(11) NOT NULL,
  `c_ta` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `s` int(3) NOT NULL,
  `i` int(3) NOT NULL,
  `a` int(3) NOT NULL,
  `catatan` text NOT NULL,
  `kelakuan` varchar(10) NOT NULL,
  `kerajinan` varchar(10) NOT NULL,
  `kerapian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rapotsiswa`
--

INSERT INTO `rapotsiswa` (`c_rapotsiswa`, `c_ta`, `c_kelas`, `c_siswa`, `s`, `i`, `a`, `catatan`, `kelakuan`, `kerajinan`, `kerapian`) VALUES
(1, '6ARym1eC6', '56f14', 'JmsmVRJe', 1, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Baik', 'Baik', 'Baik'),
(2, '6ARym1eC6', '56f14', 'yiymeJnt', 2, 2, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Cukup', 'Baik', 'Kurang'),
(3, '6ARym1eC6', '56f14', 'hmaE7fdx', 0, 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Baik', 'Baik', 'Baik'),
(4, '6ARym1eC6', '56f14', 'woxBpu2G', 3, 0, 4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Baik', 'Baik', 'Baik'),
(5, '6ARym1eC6', '56f14', 'iWoQzXM8', 0, 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Baik', 'Baik', 'Baik'),
(6, '6ARym1eC6', '56f14', '2XvDCFKx', 0, 0, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod', 'Cukup', 'Cukup', 'Cukup'),
(7, '6ARym1eC6', '56f14', '4ZCyuSBK', 0, 0, 0, 'Anak Yang Keren', 'Baik', 'Baik', 'Baik'),
(8, '6ARym1eC6', '5ecc', 'v7cJC6tO', 3, 0, 4, 'Tingkatkan Lagi Belajarmu', 'Baik', 'Baik', 'Baik'),
(9, '6ARym1eC6', '5ecc', 'bptbJt4Q', 0, 0, 2, 'Jangan terpengaruh dengan teman yang tidak baik', 'Cukup', 'Cukup', 'Baik'),
(10, '6ARym1eC6', '5ecc', 'Of9806Ui', 1, 3, 0, 'Tingkatkan Belajarmu', 'Baik', 'Baik', 'Baik');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `c_siswa` varchar(10) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `temlahir` varchar(20) NOT NULL,
  `tanglahir` date NOT NULL,
  `jk` varchar(2) NOT NULL,
  `c_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`c_siswa`, `nisn`, `nama`, `temlahir`, `tanglahir`, `jk`, `c_kelas`) VALUES
('2XvDCFKx', '121313313', 'Muhammad Nur Hidayat', 'Nganjuk', '2017-11-01', 'L', '56f14'),
('4ZCyuSBK', '463263464', 'Muhammad Rizky Ridho', 'Nganjuk', '2017-11-09', 'L', '56f14'),
('bkzlyBebZ', '58886886896', 'Muhammad Messi', 'Madura', '1998-09-29', 'L', 'kmb1PBiD7'),
('bptbJt4Q', '6984912515', 'Evan Dimas Darmono', 'Surabaya', '2017-11-09', 'L', '5ecc'),
('cG76jGVyZ', '2424242452', 'Febri Hariyadi', 'Nganjuk', '1998-10-02', 'L', 'wkv42GPmX'),
('DSZsqqwyY', '324902490', 'Amalia Utami', 'Nganjuk', '1998-10-17', 'P', 'kmb1PBiD7'),
('ejeey9OnA', '808080808080', 'Siti Verida', 'Nganjuk', '1998-09-29', 'P', 'wkv42GPmX'),
('GXBYXH33d', '42141244453', 'Mohammad Abit', 'Nganjuk', '1998-10-07', 'L', 'wkv42GPmX'),
('hmaE7fdx', '792070952', 'M. Ronaldo', 'Nganjuk', '2017-11-02', 'L', '56f14'),
('I9j2KkRHz', '53563466644', 'Ela Sukmasari', 'Nganjuk', '1998-10-06', 'P', 'kmb1PBiD7'),
('iWoQzXM8', '7097409214', 'Michael Essien Woi', 'Nganjuk', '2017-11-03', 'L', '56f14'),
('jiQOFOmi', '12345', 'Amalia Utami', 'Nganjuk', '2017-11-01', 'L', '30d0'),
('JmsmVRJe', '6234643634', 'Alvaro Morata', 'Nganjuk', '2017-11-06', 'L', '56f14'),
('kf1P76JsM', '424244443', 'Hani Eka Mega Putri', 'Nganjuk', '1998-10-01', 'P', 'wkv42GPmX'),
('Of9806Ui', '79857023', 'Febri Hariyadi', 'Bandung', '2017-11-01', 'L', '5ecc'),
('RFVKrUHR', '6966831', 'Rino Oktavianto', 'Nganjuk', '2017-11-02', 'L', '30d0'),
('SjUpcPlu8', '5223255435', 'Sopia Putri', 'Nganjuk', '1998-10-05', 'P', 'kmb1PBiD7'),
('uK5u9Bn3H', '9980802501', 'Rino Oktavianto', 'Nganjuk', '1998-10-06', 'L', 'wkv42GPmX'),
('v7cJC6tO', '6892904204', 'Egy Maulana Vikry', 'Medan', '2017-11-02', 'L', '5ecc'),
('woxBpu2G', '7217343', 'Mesut Ozil Arsenal', 'Nganjuk', '2017-11-04', 'L', '56f14'),
('yiymeJnt', '2532532535', 'Lionel Messi Hahahaha', 'Nganjuk', '2017-11-06', 'L', '56f14'),
('ZM53c607', '7091740', 'Naruto Uzumaki Hinata', 'Nganjuk', '2017-11-03', 'L', '30d0'),
('Ztknli36', '6709325', 'Siti  Verida', 'Nganjuk', '2017-11-04', 'L', '30d0');

-- --------------------------------------------------------

--
-- Table structure for table `tahunakademik`
--

CREATE TABLE `tahunakademik` (
  `c_ta` varchar(10) NOT NULL,
  `tahun` varchar(15) NOT NULL,
  `semester` varchar(12) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahunakademik`
--

INSERT INTO `tahunakademik` (`c_ta`, `tahun`, `semester`, `status`) VALUES
('6ARym1eC6', '2016/2017', '2', 'aktif'),
('FJKbpALlk', '2017/2018', '1', ''),
('jDK0ouMR4', '2016/2017', '1', ''),
('WzpoCjGl1', '2017/2018', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `tipenilai`
--

CREATE TABLE `tipenilai` (
  `c_tipenilai` varchar(10) NOT NULL,
  `tipe` varchar(15) NOT NULL,
  `ket` varchar(40) NOT NULL,
  `bobot` int(3) NOT NULL,
  `p` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipenilai`
--

INSERT INTO `tipenilai` (`c_tipenilai`, `tipe`, `ket`, `bobot`, `p`) VALUES
('Jcq5vyZ7V', 'UAS', 'Ulangan Akhir Semester', 35, 4),
('uf7H1Ximj', 'MID', 'Ulangan Tengah Semester', 25, 3),
('vcU9NWoZf', 'UH', 'Ulangan Harian', 20, 1),
('wqrZAn5uc', 'TUGAS', 'Tugas Sekolah', 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `c_walikelas` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`c_walikelas`, `username`, `password`, `c_guru`, `c_kelas`) VALUES
('d1E27eKO4', 'walixipaa', 'walixipaa', 'wkCsuwypY', '56f14'),
('R9JINZZah', 'walixipsb', 'walixipsb', '3bw5L7jDW', '5ecc');

-- --------------------------------------------------------

--
-- Table structure for table `walimurid`
--

CREATE TABLE `walimurid` (
  `c_walimurid` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walimurid`
--

INSERT INTO `walimurid` (`c_walimurid`, `c_siswa`, `nama`, `username`, `password`) VALUES
('IDlth0NwI', 'DSZsqqwyY', 'Bapaknya Amalia', 'bpkamalia', 'bpkamalia'),
('yLj5uSkUM', 'cG76jGVyZ', 'Bapaknya Febri', 'bpkfebri', 'bpkfebri'),
('cjpWZVSmY', 'JmsmVRJe', 'Soekarno', 'am6234', 'am6234'),
('yNrV7cVyw', 'v7cJC6tO', 'Alkousim', 'alkousim', 'alkousim');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`c_admin`);

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`c_backup`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`c_extra`);

--
-- Indexes for table `extrasiswa`
--
ALTER TABLE `extrasiswa`
  ADD PRIMARY KEY (`c_extrasiswa`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`c_guru`);

--
-- Indexes for table `gurumapel`
--
ALTER TABLE `gurumapel`
  ADD PRIMARY KEY (`c_gurumapel`);

--
-- Indexes for table `jumlahnilra`
--
ALTER TABLE `jumlahnilra`
  ADD PRIMARY KEY (`c_jumlahnilra`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`c_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`c_mapel`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`c_nilai`);

--
-- Indexes for table `rapotsiswa`
--
ALTER TABLE `rapotsiswa`
  ADD PRIMARY KEY (`c_rapotsiswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`c_siswa`);

--
-- Indexes for table `tahunakademik`
--
ALTER TABLE `tahunakademik`
  ADD PRIMARY KEY (`c_ta`);

--
-- Indexes for table `tipenilai`
--
ALTER TABLE `tipenilai`
  ADD PRIMARY KEY (`c_tipenilai`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`c_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `c_backup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `extrasiswa`
--
ALTER TABLE `extrasiswa`
  MODIFY `c_extrasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `jumlahnilra`
--
ALTER TABLE `jumlahnilra`
  MODIFY `c_jumlahnilra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `c_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;
--
-- AUTO_INCREMENT for table `rapotsiswa`
--
ALTER TABLE `rapotsiswa`
  MODIFY `c_rapotsiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;