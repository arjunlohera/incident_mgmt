-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 08:43 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `incident`
--

-- --------------------------------------------------------

--
-- Table structure for table `incident_details`
--

CREATE TABLE `incident_details` (
  `ID` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_details`
--

INSERT INTO `incident_details` (`ID`, `type`, `date`, `description`) VALUES
(1, 'Accident', '2019-03-04', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(2, 'Traffic Violation', '2019-03-02', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(3, 'Others', '2019-03-01', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(4, 'Accident', '2019-02-28', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(5, 'Traffic Violation', '2019-01-28', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(6, 'Others', '2019-01-25', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(7, 'Others', '2019-01-25', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(8, 'Others', '2019-01-25', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(9, 'Others', '2019-01-25', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(10, 'Others', '2019-01-25', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `incident_details`
--
ALTER TABLE `incident_details`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident_details`
--
ALTER TABLE `incident_details`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
