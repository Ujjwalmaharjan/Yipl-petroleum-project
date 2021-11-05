-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 10:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_petrol`
--
CREATE DATABASE IF NOT EXISTS `db_petrol` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_petrol`;

-- --------------------------------------------------------

--
-- Table structure for table `table_petrol`
--

CREATE TABLE `table_petrol` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `petroleum_product` varchar(24) NOT NULL,
  `sale` int(11) NOT NULL,
  `country` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_petrol`
--

INSERT INTO `table_petrol` (`id`, `year`, `petroleum_product`, `sale`, `country`) VALUES
(1, 2014, 'Petrol', 283567, 'Saudi Arabia'),
(2, 2014, 'Diesel', 901393, 'Saudi Arabia'),
(3, 2014, 'Kerosene', 18628, 'Saudi Arabia'),
(4, 2014, 'Aviation Turbine Fuel', 139404, 'Saudi Arabia'),
(5, 2014, 'Light Diesel Oil', 0, 'Saudi Arabia'),
(6, 2014, 'Furnace Oil', 0, 'Saudi Arabia'),
(7, 2014, 'LPG in MT', 258299, 'Saudi Arabia'),
(8, 2014, 'Mineral Turpentine Oil', 0, 'Saudi Arabia'),
(9, 2014, 'Petrol', 183567, 'Isereal'),
(10, 2014, 'Diesel', 201393, 'Isereal'),
(11, 2014, 'Kerosene', 38628, 'Isereal'),
(12, 2014, 'Aviation Turbine Fuel', 0, 'Isereal'),
(13, 2014, 'Light Diesel Oil', 144677, 'Isereal'),
(14, 2014, 'Furnace Oil', 443673, 'Isereal'),
(15, 2014, 'LPG in MT', 0, 'Isereal'),
(16, 2014, 'Mineral Turpentine Oil', 0, 'Isereal'),
(17, 2014, 'Petrol', 483567, 'USA'),
(18, 2014, 'Diesel', 101393, 'USA'),
(19, 2014, 'Kerosene', 0, 'USA'),
(20, 2014, 'Aviation Turbine Fuel', 12628, 'USA'),
(21, 2014, 'Light Diesel Oil', 144657, 'USA'),
(22, 2014, 'Furnace Oil', 0, 'USA'),
(23, 2014, 'LPG in MT', 143273, 'USA'),
(24, 2014, 'Mineral Turpentine Oil', 0, 'USA'),
(25, 2014, 'Petrol', 0, 'Russia'),
(26, 2014, 'Diesel', 151393, 'Russia'),
(27, 2014, 'Kerosene', 454393, 'Russia'),
(28, 2014, 'Aviation Turbine Fuel', 32628, 'Russia'),
(29, 2014, 'Light Diesel Oil', 0, 'Russia'),
(30, 2014, 'Furnace Oil', 0, 'Russia'),
(31, 2014, 'LPG in MT', 0, 'Russia'),
(32, 2014, 'Mineral Turpentine Oil', 401394, 'Russia'),
(33, 2013, 'Petrol', 123562, 'Saudi Arabia'),
(34, 2013, 'Diesel', 701393, 'Saudi Arabia'),
(35, 2013, 'Kerosene', 28628, 'Saudi Arabia'),
(36, 2013, 'Aviation Turbine Fuel', 239404, 'Saudi Arabia'),
(37, 2013, 'Light Diesel Oil', 1000, 'Saudi Arabia'),
(38, 2013, 'Furnace Oil', 0, 'Saudi Arabia'),
(39, 2013, 'LPG in MT', 158299, 'Saudi Arabia'),
(40, 2013, 'Mineral Turpentine Oil', 0, 'Saudi Arabia'),
(41, 2013, 'Petrol', 0, 'Isereal'),
(42, 2013, 'Diesel', 401493, 'Isereal'),
(43, 2013, 'Kerosene', 0, 'Isereal'),
(44, 2013, 'Aviation Turbine Fuel', 28614, 'Isereal'),
(45, 2013, 'Light Diesel Oil', 184677, 'Isereal'),
(46, 2013, 'Furnace Oil', 243673, 'Isereal'),
(47, 2013, 'LPG in MT', 0, 'Isereal'),
(48, 2013, 'Mineral Turpentine Oil', 12347, 'Isereal'),
(49, 2013, 'Petrol', 0, 'USA'),
(50, 2013, 'Diesel', 201493, 'USA'),
(51, 2013, 'Kerosene', 0, 'USA'),
(52, 2013, 'Aviation Turbine Fuel', 12658, 'USA'),
(53, 2013, 'Light Diesel Oil', 0, 'USA'),
(54, 2013, 'Furnace Oil', 45623, 'USA'),
(55, 2013, 'LPG in MT', 243273, 'USA'),
(56, 2013, 'Mineral Turpentine Oil', 0, 'USA'),
(57, 2013, 'Petrol', 65321, 'Russia'),
(58, 2013, 'Diesel', 251393, 'Russia'),
(59, 2013, 'Kerosene', 354393, 'Russia'),
(60, 2013, 'Aviation Turbine Fuel', 52628, 'Russia'),
(61, 2013, 'Light Diesel Oil', 23415, 'Russia'),
(62, 2013, 'Furnace Oil', 0, 'Russia'),
(63, 2013, 'LPG in MT', 0, 'Russia'),
(64, 2013, 'Mineral Turpentine Oil', 101394, 'Russia'),
(65, 2012, 'Petrol', 13562, 'Saudi Arabia'),
(66, 2012, 'Diesel', 201393, 'Saudi Arabia'),
(67, 2012, 'Kerosene', 128628, 'Saudi Arabia'),
(68, 2012, 'Aviation Turbine Fuel', 439404, 'Saudi Arabia'),
(69, 2012, 'Light Diesel Oil', 101230, 'Saudi Arabia'),
(70, 2012, 'Furnace Oil', 0, 'Saudi Arabia'),
(71, 2012, 'LPG in MT', 0, 'Saudi Arabia'),
(72, 2012, 'Mineral Turpentine Oil', 41244, 'Saudi Arabia'),
(73, 2012, 'Petrol', 53214, 'Isereal'),
(74, 2012, 'Diesel', 101493, 'Isereal'),
(75, 2012, 'Kerosene', 76523, 'Isereal'),
(76, 2012, 'Aviation Turbine Fuel', 0, 'Isereal'),
(77, 2012, 'Light Diesel Oil', 384677, 'Isereal'),
(78, 2012, 'Furnace Oil', 143673, 'Isereal'),
(79, 2012, 'LPG in MT', 0, 'Isereal'),
(80, 2012, 'Mineral Turpentine Oil', 132347, 'Isereal'),
(81, 2012, 'Petrol', 13478, 'USA'),
(82, 2012, 'Diesel', 10873, 'USA'),
(83, 2012, 'Kerosene', 0, 'USA'),
(84, 2012, 'Aviation Turbine Fuel', 0, 'USA'),
(85, 2012, 'Light Diesel Oil', 53134, 'USA'),
(86, 2012, 'Furnace Oil', 45627, 'USA'),
(87, 2012, 'LPG in MT', 0, 'USA'),
(88, 2012, 'Mineral Turpentine Oil', 23273, 'USA'),
(89, 2012, 'Petrol', 35321, 'Russia'),
(90, 2012, 'Diesel', 151393, 'Russia'),
(91, 2012, 'Kerosene', 454393, 'Russia'),
(92, 2012, 'Aviation Turbine Fuel', 0, 'Russia'),
(93, 2012, 'Light Diesel Oil', 13415, 'Russia'),
(94, 2012, 'Furnace Oil', 44312, 'Russia'),
(95, 2012, 'LPG in MT', 0, 'Russia'),
(96, 2012, 'Mineral Turpentine Oil', 0, 'Russia'),
(97, 2011, 'Petrol', 13782, 'Saudi Arabia'),
(98, 2011, 'Diesel', 207823, 'Saudi Arabia'),
(99, 2011, 'Kerosene', 127828, 'Saudi Arabia'),
(100, 2011, 'Aviation Turbine Fuel', 437824, 'Saudi Arabia'),
(101, 2011, 'Light Diesel Oil', 107820, 'Saudi Arabia'),
(102, 2011, 'Furnace Oil', 0, 'Saudi Arabia'),
(103, 2011, 'LPG in MT', 18233, 'Saudi Arabia'),
(104, 2011, 'Mineral Turpentine Oil', 41782, 'Saudi Arabia'),
(105, 2011, 'Petrol', 53782, 'Isereal'),
(106, 2011, 'Diesel', 107823, 'Isereal'),
(107, 2011, 'Kerosene', 0, 'Isereal'),
(108, 2011, 'Aviation Turbine Fuel', 36782, 'Isereal'),
(109, 2011, 'Light Diesel Oil', 187827, 'Isereal'),
(110, 2011, 'Furnace Oil', 147823, 'Isereal'),
(111, 2011, 'LPG in MT', 0, 'Isereal'),
(112, 2011, 'Mineral Turpentine Oil', 137827, 'Isereal'),
(113, 2011, 'Petrol', 13782, 'USA'),
(114, 2011, 'Diesel', 10782, 'USA'),
(115, 2011, 'Kerosene', 0, 'USA'),
(116, 2011, 'Aviation Turbine Fuel', 78233, 'USA'),
(117, 2011, 'Light Diesel Oil', 53782, 'USA'),
(118, 2011, 'Furnace Oil', 45782, 'USA'),
(119, 2011, 'LPG in MT', 0, 'USA'),
(120, 2011, 'Mineral Turpentine Oil', 23782, 'USA'),
(121, 2011, 'Petrol', 35782, 'Russia'),
(122, 2011, 'Diesel', 157823, 'Russia'),
(123, 2011, 'Kerosene', 457823, 'Russia'),
(124, 2011, 'Aviation Turbine Fuel', 0, 'Russia'),
(125, 2011, 'Light Diesel Oil', 13782, 'Russia'),
(126, 2011, 'Furnace Oil', 44782, 'Russia'),
(127, 2011, 'LPG in MT', 18245, 'Russia'),
(128, 2011, 'Mineral Turpentine Oil', 0, 'Russia'),
(129, 2010, 'Petrol', 32642, 'Saudi Arabia'),
(130, 2010, 'Diesel', 23642, 'Saudi Arabia'),
(131, 2010, 'Kerosene', 128642, 'Saudi Arabia'),
(132, 2010, 'Aviation Turbine Fuel', 478242, 'Saudi Arabia'),
(133, 2010, 'Light Diesel Oil', 178264, 'Saudi Arabia'),
(134, 2010, 'Furnace Oil', 49876, 'Saudi Arabia'),
(135, 2010, 'LPG in MT', 823642, 'Saudi Arabia'),
(136, 2010, 'Mineral Turpentine Oil', 0, 'Saudi Arabia'),
(137, 2010, 'Petrol', 537826, 'Isereal'),
(138, 2010, 'Diesel', 0, 'Isereal'),
(139, 2010, 'Kerosene', 32642, 'Isereal'),
(140, 2010, 'Aviation Turbine Fuel', 656422, 'Isereal'),
(141, 2010, 'Light Diesel Oil', 72764, 'Isereal'),
(142, 2010, 'Furnace Oil', 0, 'Isereal'),
(143, 2010, 'LPG in MT', 82423, 'Isereal'),
(144, 2010, 'Mineral Turpentine Oil', 137852, 'Isereal'),
(145, 2010, 'Petrol', 444123, 'USA'),
(146, 2010, 'Diesel', 0, 'USA'),
(147, 2010, 'Kerosene', 23673, 'USA'),
(148, 2010, 'Aviation Turbine Fuel', 0, 'USA'),
(149, 2010, 'Light Diesel Oil', 782642, 'USA'),
(150, 2010, 'Furnace Oil', 452642, 'USA'),
(151, 2010, 'LPG in MT', 12354, 'USA'),
(152, 2010, 'Mineral Turpentine Oil', 232642, 'USA'),
(153, 2010, 'Petrol', 178242, 'Russia'),
(154, 2010, 'Diesel', 33642, 'Russia'),
(155, 2010, 'Kerosene', 823642, 'Russia'),
(156, 2010, 'Aviation Turbine Fuel', 76523, 'Russia'),
(157, 2010, 'Light Diesel Oil', 132642, 'Russia'),
(158, 2010, 'Furnace Oil', 782642, 'Russia'),
(159, 2010, 'LPG in MT', 246424, 'Russia'),
(160, 2010, 'Mineral Turpentine Oil', 123127, 'Russia'),
(161, 2009, 'Petrol', 132424, 'Saudi Arabia'),
(162, 2009, 'Diesel', 223424, 'Saudi Arabia'),
(163, 2009, 'Kerosene', 128424, 'Saudi Arabia'),
(164, 2009, 'Aviation Turbine Fuel', 43724, 'Saudi Arabia'),
(165, 2009, 'Light Diesel Oil', 53123, 'Saudi Arabia'),
(166, 2009, 'Furnace Oil', 455524, 'Saudi Arabia'),
(167, 2009, 'LPG in MT', 20024, 'Saudi Arabia'),
(168, 2009, 'Mineral Turpentine Oil', 71424, 'Saudi Arabia'),
(169, 2009, 'Petrol', 57424, 'Isereal'),
(170, 2009, 'Diesel', 61424, 'Isereal'),
(171, 2009, 'Kerosene', 32424, 'Isereal'),
(172, 2009, 'Aviation Turbine Fuel', 654242, 'Isereal'),
(173, 2009, 'Light Diesel Oil', 727427, 'Isereal'),
(174, 2009, 'Furnace Oil', 237812, 'Isereal'),
(175, 2009, 'LPG in MT', 84243, 'Isereal'),
(176, 2009, 'Mineral Turpentine Oil', 137024, 'Isereal'),
(177, 2009, 'Petrol', 76123, 'USA'),
(178, 2009, 'Diesel', 51008, 'USA'),
(179, 2009, 'Kerosene', 32424, 'USA'),
(180, 2009, 'Aviation Turbine Fuel', 214249, 'USA'),
(181, 2009, 'Light Diesel Oil', 782424, 'USA'),
(182, 2009, 'Furnace Oil', 465424, 'USA'),
(183, 2009, 'LPG in MT', 237865, 'USA'),
(184, 2009, 'Mineral Turpentine Oil', 232424, 'USA'),
(185, 2009, 'Petrol', 57844, 'Russia'),
(186, 2009, 'Diesel', 33424, 'Russia'),
(187, 2009, 'Kerosene', 823424, 'Russia'),
(188, 2009, 'Aviation Turbine Fuel', 314246, 'Russia'),
(189, 2009, 'Light Diesel Oil', 402024, 'Russia'),
(190, 2009, 'Furnace Oil', 282424, 'Russia'),
(191, 2009, 'LPG in MT', 98123, 'Russia'),
(192, 2009, 'Mineral Turpentine Oil', 63424, 'Russia'),
(193, 2008, 'Petrol', 169474, 'Saudi Arabia'),
(194, 2008, 'Diesel', 103724, 'Saudi Arabia'),
(195, 2008, 'Kerosene', 298724, 'Saudi Arabia'),
(196, 2008, 'Aviation Turbine Fuel', 871234, 'Saudi Arabia'),
(197, 2008, 'Light Diesel Oil', 42356, 'Saudi Arabia'),
(198, 2008, 'Furnace Oil', 129574, 'Saudi Arabia'),
(199, 2008, 'LPG in MT', 19474, 'Saudi Arabia'),
(200, 2008, 'Mineral Turpentine Oil', 121927, 'Saudi Arabia'),
(201, 2008, 'Petrol', 31145, 'Isereal'),
(202, 2008, 'Diesel', 33213, 'Isereal'),
(203, 2008, 'Kerosene', 51209, 'Isereal'),
(204, 2008, 'Aviation Turbine Fuel', 15922, 'Isereal'),
(205, 2008, 'Light Diesel Oil', 329474, 'Isereal'),
(206, 2008, 'Furnace Oil', 12355, 'Isereal'),
(207, 2008, 'LPG in MT', 139872, 'Isereal'),
(208, 2008, 'Mineral Turpentine Oil', 76123, 'Isereal'),
(209, 2008, 'Petrol', 600189, 'USA'),
(210, 2008, 'Diesel', 213927, 'USA'),
(211, 2008, 'Kerosene', 119273, 'USA'),
(212, 2008, 'Aviation Turbine Fuel', 123673, 'USA'),
(213, 2008, 'Light Diesel Oil', 159474, 'USA'),
(214, 2008, 'Furnace Oil', 342927, 'USA'),
(215, 2008, 'LPG in MT', 125270, 'USA'),
(216, 2008, 'Mineral Turpentine Oil', 130474, 'USA'),
(217, 2008, 'Petrol', 12375, 'Russia'),
(218, 2008, 'Diesel', 243927, 'Russia'),
(219, 2008, 'Kerosene', 332944, 'Russia'),
(220, 2008, 'Aviation Turbine Fuel', 49087, 'Russia'),
(221, 2008, 'Light Diesel Oil', 139474, 'Russia'),
(222, 2008, 'Furnace Oil', 189474, 'Russia'),
(223, 2008, 'LPG in MT', 17809, 'Russia'),
(224, 2008, 'Mineral Turpentine Oil', 129474, 'Russia'),
(225, 2007, 'Petrol', 94732, 'Saudi Arabia'),
(226, 2007, 'Diesel', 27232, 'Saudi Arabia'),
(227, 2007, 'Kerosene', 987232, 'Saudi Arabia'),
(228, 2007, 'Aviation Turbine Fuel', 123356, 'Saudi Arabia'),
(229, 2007, 'Light Diesel Oil', 0, 'Saudi Arabia'),
(230, 2007, 'Furnace Oil', 95732, 'Saudi Arabia'),
(231, 2007, 'LPG in MT', 84732, 'Saudi Arabia'),
(232, 2007, 'Mineral Turpentine Oil', 0, 'Saudi Arabia'),
(233, 2007, 'Petrol', 43122, 'Isereal'),
(234, 2007, 'Diesel', 12132, 'Isereal'),
(235, 2007, 'Kerosene', 0, 'Isereal'),
(236, 2007, 'Aviation Turbine Fuel', 59232, 'Isereal'),
(237, 2007, 'Light Diesel Oil', 29472, 'Isereal'),
(238, 2007, 'Furnace Oil', 43187, 'Isereal'),
(239, 2007, 'LPG in MT', 0, 'Isereal'),
(240, 2007, 'Mineral Turpentine Oil', 3612, 'Isereal'),
(241, 2007, 'Petrol', 0, 'USA'),
(242, 2007, 'Diesel', 13922, 'USA'),
(243, 2007, 'Kerosene', 92701, 'USA'),
(244, 2007, 'Aviation Turbine Fuel', 0, 'USA'),
(245, 2007, 'Light Diesel Oil', 294732, 'USA'),
(246, 2007, 'Furnace Oil', 129232, 'USA'),
(247, 2007, 'LPG in MT', 527032, 'USA'),
(248, 2007, 'Mineral Turpentine Oil', 0, 'USA'),
(249, 2007, 'Petrol', 22232, 'Russia'),
(250, 2007, 'Diesel', 9232, 'Russia'),
(251, 2007, 'Kerosene', 9432, 'Russia'),
(252, 2007, 'Aviation Turbine Fuel', 0, 'Russia'),
(253, 2007, 'Light Diesel Oil', 294732, 'Russia'),
(254, 2007, 'Furnace Oil', 194732, 'Russia'),
(255, 2007, 'LPG in MT', 29473, 'Russia'),
(256, 2007, 'Mineral Turpentine Oil', 0, 'Russia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_petrol`
--
ALTER TABLE `table_petrol`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_petrol`
--
ALTER TABLE `table_petrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
