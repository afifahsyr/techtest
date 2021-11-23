-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 08:05 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `beans`
--

CREATE TABLE `beans` (
  `idBeans` int(11) NOT NULL,
  `bean` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beans`
--

INSERT INTO `beans` (`idBeans`, `bean`, `description`, `price`) VALUES
(1, 'Espresso', 'The espresso, also known as a short black, is approximately 1 oz. of highly concentrated coffee. Although simple in appearance, it can be difficult to master.', '13.00'),
(2, 'Red Eye', 'The red eye\'s purpose is to add a boost of caffeine to your standard cup of coffee.', '14.00'),
(3, 'Macchiato', 'The word macchiato means mark or stain. This is in reference to the mark that steamed milk leaves on the surface of the espresso as it is dashed into the drink. Flavoring syrups are often added to the drink according to customer preference.', '13.00'),
(4, 'Cappucino', 'This creamy coffee drink is usually consumed at breakfast time in Italy and is loved in the United States as well. It is usually associated with indulgence and comfort because of its thick foam layer and additional flavorings that can be added to it.', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `idDistributor` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`idDistributor`, `name`, `city`, `state`, `country`, `phone`, `email`) VALUES
(1, 'Afifah Syahirah', 'pku', 'vdf', 'g', '6756756', 'fbfgtg@df'),
(2, 'ifa', 'Pekanbaru', 'Riau', 'Indonesia', '454a', 'afifahsy@gmail.com'),
(3, 'Perusahaan Kopi', 'Pekanbaru', 'Riau', 'Indonesia', '085272731911', 'afifah@alumni.pcr.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `password`, `nama`) VALUES
('admin', 'coffee123', 'Admin Coffee Valey');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `idUpload` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` varchar(500) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`idUpload`, `title`, `file`, `author`) VALUES
(1, 'dsefrf', '', 'ifa'),
(2, 'sdfs', '1__Nasionalisme2.pdf', 'ifa'),
(3, 'PKN', '4__Pilar_Negara_(Bhinneka_Tunggal_Ika).pdf', 'ifa'),
(4, 'Penerimaan stock kopi', '2__Integritas.pdf', 'Afifah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beans`
--
ALTER TABLE `beans`
  ADD PRIMARY KEY (`idBeans`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`idDistributor`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`idUpload`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beans`
--
ALTER TABLE `beans`
  MODIFY `idBeans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `idDistributor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `idUpload` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
