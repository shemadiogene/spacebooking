-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 10:11 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spaceco`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passwords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `passwords`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification`
--

CREATE TABLE `adminnotification` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `notTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminnotification`
--

INSERT INTO `adminnotification` (`id`, `content`, `notTime`, `status`) VALUES
(1, 'New Message', '2021-02-21 21:28:39', 'read'),
(2, 'New company created account', '2021-02-18 14:19:46', 'unread'),
(3, 'New company created account', '2021-02-21 21:28:30', 'read'),
(4, 'New company created account', '2021-02-22 07:27:58', 'unread'),
(5, 'New company created account', '2021-02-24 10:19:20', 'unread'),
(6, 'New Message', '2021-03-03 12:54:15', 'unread'),
(7, 'New company created account', '2021-03-07 21:48:02', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `comName` varchar(255) DEFAULT NULL,
  `comEmail` varchar(255) DEFAULT NULL,
  `comLocation` varchar(255) DEFAULT NULL,
  `comPhone` int(11) DEFAULT NULL,
  `comUsername` varchar(255) DEFAULT NULL,
  `comPassword` varchar(255) DEFAULT NULL,
  `comTIN` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `coStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `comName`, `comEmail`, `comLocation`, `comPhone`, `comUsername`, `comPassword`, `comTIN`, `thumbnail`, `coStatus`) VALUES
(11, 'Nyamata Rent Ltd', 'nyama@spaceco.com', 'Bugesera, East', 788890071, 'com1', '123', 'TIN-R4333', '60360e84515ee.png', 'Approved'),
(12, 'Muhanga Apartment', 'askigali@gmail.com', 'Muhanga, Gitarama Road', 781992725, 'com2', '123', 'TIN-930245', '60360f9e31bf1.jpg', 'Approved'),
(14, 'B&B fm UMWEZI', 'umwezi@gmail.com', 'Kigali, Gasabo', 788317218, 'com4', '123', 'TB-43234', '602e77826214f.jpg', 'Approved'),
(15, 'Rwanda Rwmpl', 'email', 'Rwampala', 342342342, 'comn', 'fineandfine', '12345', '602f8482503aa.jpg', 'Approve'),
(16, 'Airtel Rwanda', 'airtelworld@gmail.com', 'Kigali, Kakiru', 733333300, 'air', '123', 'AIR-438823', '60335cfe9085d.jpg', 'Approve'),
(18, 'Test Co 100', 'test1@spaceco.com', 'Kigal, Rwanda', 2147483647, 'co1', '123', '483094', '604549d1154a0.jpg', 'Approved'),
(19, 'Test 2', 'admintest@gmail.com', 'butare rwanda', 2147483647, 'admintest@gmail.com', '420384029860454a5b81d4e', '42039420', '60454a5b81d58.jpg', 'Approve');

-- --------------------------------------------------------

--
-- Table structure for table `conotification`
--

CREATE TABLE `conotification` (
  `id` int(11) NOT NULL,
  `content` varchar(100) NOT NULL,
  `notTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL,
  `companyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conotification`
--

INSERT INTO `conotification` (`id`, `content`, `notTime`, `status`, `companyId`) VALUES
(1, 'New customer booked sales space', '2021-02-21 19:45:33', 'read', 11),
(2, 'New customer booked Rent space', '2021-02-21 19:47:13', 'unread', 11),
(3, 'New customer booked sales space', '2021-02-24 07:59:46', 'unread', 11),
(4, 'New customer booked sales space', '2021-02-24 08:02:21', 'unread', 11),
(5, 'New customer booked Rent space', '2021-02-24 08:38:04', 'unread', 11),
(6, 'New customer booked Rent space', '2021-02-26 08:29:25', 'read', 11),
(7, 'New customer booked Rent space', '2021-02-26 08:29:23', 'read', 11),
(8, 'New customer booked Rent space', '2021-02-26 08:29:22', 'read', 11),
(9, 'New customer booked Rent space', '2021-02-26 08:29:21', 'read', 11),
(10, 'New customer booked sales space', '2021-02-26 08:29:19', 'read', 11),
(11, 'New customer booked sales space', '2021-02-26 08:45:55', 'unread', 11),
(12, 'New customer booked Rent space', '2021-02-26 08:59:50', 'unread', 11),
(13, 'New customer booked Rent space', '2021-02-26 09:07:56', 'unread', 11),
(14, 'New customer booked Rent space', '2021-02-26 09:08:30', 'unread', 11),
(15, 'New customer booked sales space', '2021-02-26 09:46:56', 'unread', 11),
(16, 'New customer booked Rent space', '2021-02-26 09:48:34', 'unread', 11),
(17, 'New customer booked sales space', '2021-02-26 09:55:43', 'unread', 11),
(18, 'New customer booked sales space', '2021-03-07 21:51:29', 'unread', 18);

-- --------------------------------------------------------

--
-- Table structure for table `contactco`
--

CREATE TABLE `contactco` (
  `id` int(11) NOT NULL,
  `fullnames` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status1` varchar(11) NOT NULL,
  `companyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactco`
--

INSERT INTO `contactco` (`id`, `fullnames`, `email`, `content`, `status1`, `companyId`) VALUES
(1, 'Hello', 'kigalirwanda@gmail.com', 'Muraho neza???', 'read', 11),
(2, 'Hello Company', 'email@gmail.com', 'Rwanda and rwanda with Rwandan,, we love you, we want to work hard for you, thanks for testing scripts', 'unread', 11);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `fullnames` varchar(255) DEFAULT NULL,
  `emails` varchar(255) DEFAULT NULL,
  `subjects` varchar(100) DEFAULT NULL,
  `messages` varchar(255) DEFAULT NULL,
  `sentAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fullnames`, `emails`, `subjects`, `messages`, `sentAt`, `status1`) VALUES
(1, 'My Names', 'mynames@gmail.com', 'Rwanda with Rwandans', 'Rwanda has great mountains and beautiful', '2021-02-18 13:39:02', 'read'),
(2, 'ubwino', 'ubwino@gmail.com', 'Aisha ecoute moi', 'Hello Aisha,,, it\'s pretty song i\'ve ever listened to', '2021-02-21 21:03:32', 'read'),
(3, 'check', 'no@gmail.com', 'Rwanda and Kigali', 'Kigali Kigali', '2021-02-18 17:31:16', 'read'),
(4, 'vid', 'vid@gmail.com', 'Rwas', 'Hello rwans', '2021-02-19 09:33:27', 'read'),
(5, 'Sheihk', 'hamdan@gmail.com', 'Rwans vis vis', 'Hello Test and great test', '2021-02-21 19:14:23', 'unread'),
(6, 'Diane', 'diane@gmail.com', 'hello Rwanda', 'Helo for testing,', '2021-03-03 12:54:15', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fullnames` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `cusLocation` varchar(100) NOT NULL,
  `checkin` varchar(100) NOT NULL,
  `checkout` varchar(100) NOT NULL,
  `reserveStatus` varchar(100) NOT NULL,
  `offId` int(11) NOT NULL,
  `reserveId` varchar(100) NOT NULL,
  `companyId` int(11) NOT NULL,
  `resTime` date NOT NULL DEFAULT current_timestamp(),
  `approvedAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `fullnames`, `phoneNumber`, `email`, `cusLocation`, `checkin`, `checkout`, `reserveStatus`, `offId`, `reserveId`, `companyId`, `resTime`, `approvedAt`) VALUES
(1, 'Kazungu', '0788324422', 'cleverkazungu@gmail.com', 'Kigali,KG', '', '', 'Approve', 1, '202107883244222610', 11, '2020-05-01', '0000-00-00'),
(2, 'Karenzi Sam', '0788439938', 'samkarenzi@gmail.com', 'Bugesera', '2021-02-26', '2021-02-25', 'Approve', 3, '202107884399382610', 11, '2021-02-26', '0000-00-00'),
(3, 'Maurice MUNYENTWALI', '0788234422', 'munyentwali@gmail.com', 'Musanze', '', '', 'Approve', 2, '202107882344222610', 11, '2020-06-16', '0000-00-00'),
(4, 'Great to test', '433443', 'yes@space.com', 'Kigali', '', '', 'Approved', 4, '20214334430710', 18, '2021-03-07', '2021-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `rooms` varchar(100) NOT NULL,
  `propertyId` varchar(255) NOT NULL,
  `area` varchar(100) NOT NULL,
  `descriptions` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `saleStatus` varchar(100) NOT NULL,
  `thumnail` varchar(255) DEFAULT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `companyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`, `location`, `contact`, `price`, `rooms`, `propertyId`, `area`, `descriptions`, `status`, `saleStatus`, `thumnail`, `photo1`, `photo2`, `photo3`, `companyId`) VALUES
(1, 'New Range Appartments', 'Kigali Gasabo', '0788617724', 260, '43', 'NEW RANGE APPARTMENTS202102112021', '180', 'We\'re proud to be Rwanda, ', 'Sales', 'reserve', '60338aa9bbd31.jpg', '60338aa9bbd35.jpg', '60338aa9bbd36.jpg', '60338aa9bbd37.jpg', 11),
(2, 'Rwanda Academy', 'Kigali, Gacuriro', '0788729234', 550, '150', 'RWANDA ACADEMY FOR GROUP202102112021', '300', 'Lorem epsom with great text for sampling', 'Rent', 'reserve', '6033891f0dec7.jpg', '6033891f0deca.jpg', '6033891f0decb.jpg', '6033891f0decc.jpg', 11),
(3, 'Gacuriro Appartment', 'Gasabo, KG 1', '0788346723', 400, '100', 'GACURIRO APPARTMENT202102112021', '159', 'Rwanda, with Rwanda', 'Sales', 'reserve', '60338bcdf1aed.jpg', '60338bcdf1af4.jpg', '60338bcdf1af7.jpg', '60338bcdf1afb.jpg', 11),
(4, 'Test FIle', 'NYARUTARAMA', '404830840380', 84032, '40932', 'TEST FILE202103182021', '48309', 'Some descriptions', 'Rent', 'reserved', '60454ab351eec.jpg', '60454ab351ef1.jpg', '60454ab351ef2.jpg', '60454ab351ef3.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `names` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `passwords` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `names`, `email`, `phone`, `address`, `dob`, `username`, `passwords`, `profile`) VALUES
(1, 'Fuadi', 'renemucyo@gmail.com', '984237492834', 'Kigali Rwanda', '2021-03-26', 'user1', '123', 'avatar-male.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminnotification`
--
ALTER TABLE `adminnotification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comTIN` (`comTIN`);

--
-- Indexes for table `conotification`
--
ALTER TABLE `conotification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `contactco`
--
ALTER TABLE `contactco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reserveId` (`reserveId`),
  ADD KEY `offId` (`offId`),
  ADD KEY `companyId` (`companyId`) USING BTREE;

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `propertyId` (`propertyId`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminnotification`
--
ALTER TABLE `adminnotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `conotification`
--
ALTER TABLE `conotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contactco`
--
ALTER TABLE `contactco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conotification`
--
ALTER TABLE `conotification`
  ADD CONSTRAINT `conotification_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contactco`
--
ALTER TABLE `contactco`
  ADD CONSTRAINT `contactco_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`offId`) REFERENCES `offices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customers_ibfk_2` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `offices`
--
ALTER TABLE `offices`
  ADD CONSTRAINT `offices_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
