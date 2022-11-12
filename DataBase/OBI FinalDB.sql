-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 02:12 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obi`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phoneNr` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `creditCard` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `firstName`, `lastName`, `phoneNr`, `address`, `email`, `creditCard`) VALUES
(1, 'Barbara', 'Kowalczyk', '+48 149 320 038', 'Gdansk', 'barbara22@gmail.com', '6721 5862 9062 8531'),
(2, 'Krystyna', 'Kaminska', '+48 593 423 529', 'Warsaw', 'krystyna1992@gmail.com', '3248 2175 592 5932'),
(3, 'Maria', 'Zielinska', '+48 703 542 214', 'Krakow', 'maria005@gmail.com', '1543 2438 4359 1864'),
(4, 'Piotr', 'Wojcik', '+48 329 112 493', 'Gdynia', 'piotr422@gmail.com', '5489 5862 2059 2953'),
(5, 'Tomasz ', 'Wisniewski', '+48 294 105 682', 'Sopot', 'tomasz522@gmail.com', '4359 5912 5067 4301');

-- --------------------------------------------------------

--
-- Table structure for table `employeedetails`
--

CREATE TABLE `employeedetails` (
  `employeeDetailID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `dateOfHiring` datetime NOT NULL,
  `vacations` int(11) NOT NULL,
  `salary` double NOT NULL,
  `workingHoursPerMonth` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeedetails`
--

INSERT INTO `employeedetails` (`employeeDetailID`, `employeeID`, `dateOfHiring`, `vacations`, `salary`, `workingHoursPerMonth`) VALUES
(1, 1, '2010-03-17 00:00:00', 25, 4000, 160),
(2, 2, '2010-09-01 00:00:00', 18, 2800, 170),
(3, 3, '2011-11-04 00:00:00', 23, 8000, 120),
(4, 4, '2009-05-08 00:00:00', 26, 3500, 140),
(5, 5, '2012-06-10 00:00:00', 12, 6400, 155),
(6, 6, '2013-06-20 00:00:00', 32, 9500, 185);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `privilege` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeID`, `lastName`, `firstName`, `email`, `jobTitle`, `username`, `password`, `privilege`) VALUES
(1, 'Fernandez', 'Leon', 'lfernandez@obi.org', 'Accountant', 'lfernandez', '12345', 'user'),
(2, 'Olek', 'Anna', 'aolek@obi.org', 'HR Analyst', 'aolek', '12345', 'user'),
(3, 'Kaminski', 'Jakub', 'jkaminski@obi.org', 'Manager', 'jkaminski', '12345', 'user'),
(4, 'Lewandowski', 'Robert', 'rlewandowski@obi.org', 'Assistant', 'rlewandowski', '12345', 'user'),
(5, 'Rodolfo', 'Christian', 'crodolfo@obi.org', 'Supervisor', 'crodolfo', '12345', 'user'),
(6, 'Matteus', 'Muller', 'mmuller@obi.org', 'CEO', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantityOrdered` int(11) NOT NULL,
  `orderPrice` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `customerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `productID`, `quantityOrdered`, `orderPrice`, `orderDate`, `customerID`) VALUES
(1, 1001, 5, 2450, '2020-05-03 00:00:00', 3),
(2, 1002, 1, 70, '2021-10-15 00:00:00', 1),
(3, 1003, 1, 80, '2019-07-04 00:00:00', 2),
(4, 1004, 2, 300, '2021-02-27 00:00:00', 2),
(5, 1005, 1, 340, '2022-01-09 00:00:00', 5),
(6, 1006, 3, 270, '2022-07-05 00:00:00', 3),
(7, 1007, 2, 1780, '2021-05-19 00:00:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `customerID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `paymentDate` datetime NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`customerID`, `paymentID`, `paymentDate`, `amount`) VALUES
(1, 1, '2021-10-13 00:00:00', 70),
(2, 2, '2019-07-01 00:00:00', 80),
(3, 3, '2020-05-01 00:00:00', 2450),
(2, 4, '2021-02-25 00:00:00', 300),
(5, 5, '2022-01-05 00:00:00', 340),
(3, 6, '2022-07-01 00:00:00', 270),
(4, 7, '2021-05-15 00:00:00', 1780);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productVendor` varchar(50) NOT NULL,
  `productDescription` varchar(50) NOT NULL,
  `quantityInStock` int(11) NOT NULL,
  `sellingPrice` int(11) NOT NULL,
  `receivedProductDetailID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productName`, `productVendor`, `productDescription`, `quantityInStock`, `sellingPrice`, `receivedProductDetailID`) VALUES
(1001, 'Cordless Drill', 'Craftsman', 'Battery Powered 20 Volts', 388, 490, 1001),
(1002, 'Blackout Curtain', 'Sanson', 'Tape 140x260 cm navy blue', 642, 70, 1002),
(1003, 'Kitchen Faucet', 'WEWE', '‎Heavy-Duty Metal and High Temperature', 821, 80, 1003),
(1004, 'Ironing Board', 'Happhom', 'Alloy Steel', 1029, 150, 1004),
(1005, 'Quilt Set', 'Permafresh', 'Queen Size 86 x 86 x 1 inches', 277, 340, 1005),
(1006, 'Box Fan', 'SONBION', '120V to 5V AC adapter and DC brushless motor', 431, 90, 1006),
(1007, 'Arm Chair', 'Christopher', 'Alisa Mid Century Modern Fabric', 144, 890, 1007),
(1008, 'Table Wood Light', 'Safavieh', '13\"D x 17\"W x 23.5\"H', 724, 640, 1008),
(1009, 'Thick Area Rug', 'Safavieh', 'Pro Luxe Collection 9 x 12 Blue/Cream Moroccan', 643, 230, 1009),
(1010, 'Bath Towels Set', 'Utopia', 'Premium 600 GSM 100% Ring Spun Cotton', 149, 1120, 1010);

-- --------------------------------------------------------

--
-- Table structure for table `receivedproductdetails`
--

CREATE TABLE `receivedproductdetails` (
  `receivedProductDetailID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `dateOfReceiving` datetime NOT NULL,
  `buyingPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receivedproductdetails`
--

INSERT INTO `receivedproductdetails` (`receivedProductDetailID`, `employeeID`, `dateOfReceiving`, `buyingPrice`) VALUES
(1001, 1, '2019-05-02 00:00:00', 289),
(1002, 2, '2020-07-10 00:00:00', 39),
(1003, 3, '2018-06-05 00:00:00', 60),
(1004, 4, '2021-02-08 00:00:00', 100),
(1005, 5, '2020-11-12 00:00:00', 270),
(1006, 6, '2021-07-04 00:00:00', 30),
(1007, 1, '2018-12-01 00:00:00', 560),
(1008, 2, '2021-06-04 00:00:00', 250),
(1009, 3, '2019-08-15 00:00:00', 80),
(1010, 4, '2021-07-12 00:00:00', 480);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `employeedetails`
--
ALTER TABLE `employeedetails`
  ADD PRIMARY KEY (`employeeDetailID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `receivedproductdetails`
--
ALTER TABLE `receivedproductdetails`
  ADD PRIMARY KEY (`receivedProductDetailID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT for table `receivedproductdetails`
--
ALTER TABLE `receivedproductdetails`
  MODIFY `receivedProductDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
