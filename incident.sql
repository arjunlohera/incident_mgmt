-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 06:42 AM
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
  `description` varchar(1002) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_details`
--

INSERT INTO `incident_details` (`ID`, `type`, `date`, `description`) VALUES
(19, 'Accident', '0000-00-00', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(20, 'Others', '0000-00-00', 'Integer ante magna, lacinia a elit ut, pulvinar elementum magna. Mauris id orci sem. Fusce tempus leo eu ultricies pretium. Suspendisse non est eget enim facilisis pharetra. Aenean sem lorem, venenatis at finibus ut, condimentum ac velit. Praesent feugiat sit amet dui ut euismod. Nulla tincidunt feugiat velit aliquet ultrices.'),
(21, 'Accident', '0000-00-00', 'dfdfhdfdfhdfh'),
(22, 'Traffic Violation', '0000-00-00', 'klklklklklk'),
(23, 'Accident', '0000-00-00', 'aadsasas'),
(24, 'Accident', '0000-00-00', 'aadsasas'),
(25, 'Traffic Violation', '0000-00-00', 'adasda'),
(26, 'Accident', '0000-00-00', 'jzsfbjsbfjsbs'),
(27, 'Traffic Violation', '0000-00-00', 'asasasasas'),
(28, 'Others', '0000-00-00', 'adadadadad'),
(29, 'Accident', '0000-00-00', 'afafafaf'),
(30, 'Accident', '0000-00-00', 'agagagag'),
(38, 'Accident', '2019-03-07', 'kakakakakakka'),
(39, 'Accident', '2019-03-07', 'assssssssssssssssssss'),
(40, 'Traffic Violation', '2019-03-08', 'allalalalala'),
(41, 'Others', '2019-03-08', 'qwertyuiop'),
(42, 'Traffic Violation', '2019-03-08', 'ababababababababab'),
(43, 'Accident', '2019-03-08', 'window.location.origin'),
(44, 'Others', '2019-03-07', 'njnjnjnjnjnjnjnjnjnjnjnjnjnj'),
(45, 'Others', '2019-03-07', 'njnjnjnjnjnjnjnjnjnjnjnjnjnj'),
(46, 'Others', '2019-03-07', 'njnjnjnjnjnjnjnjnjnjnjnjnjnj'),
(47, 'Accident', '2019-03-08', 'aaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbb'),
(48, 'Accident', '2019-03-08', 'aqaqaqaq'),
(49, 'Traffic Violation', '2019-03-08', 'aaaaaaaaqqqwwwwwwww'),
(50, 'Accident', '2019-03-08', 'deteg'),
(51, 'Traffic Violation', '2019-03-01', 'mnnmnmnmnmnmnmnm'),
(52, 'Accident', '2019-03-08', 'qqqqqqqqqqqqqqqqqqq'),
(53, 'Others', '2019-03-08', 'eeeeeeeeeeeeeeeeeeeeeeee'),
(54, 'Accident', '2019-03-08', 'hhhhhhhhhhhhhhhhhhhhhhh'),
(55, 'Traffic Violation', '2019-03-08', 'kkkkkkkkkkk'),
(56, 'Others', '2019-03-08', 'hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii'),
(57, 'Accident', '2019-03-08', 'heeeeeeeeeeeeeeeee'),
(58, 'Accident', '2019-03-08', 'heeeeeeeeeeeeeeeee'),
(59, 'Traffic Violation', '2019-03-07', 'helooooooooo'),
(60, 'Others', '2019-03-01', 'qwqwqwqw'),
(62, 'Traffic Violation', '2019-03-11', 'afaafafafaf'),
(63, 'Others', '2019-03-11', 'qaqaqaqaaq'),
(64, 'Others', '2019-03-11', 'qaqaqaqaaq'),
(65, 'Accident', '2019-03-11', 'dddddddddddddd'),
(66, 'Accident', '2019-03-11', 'dddddddddddddd'),
(67, 'Traffic Violation', '2019-03-11', 'qfqfqffqqfqf'),
(68, 'Traffic Violation', '2019-03-11', 'qfqfqffqqfqf'),
(69, 'Accident', '2019-03-11', 'gggggggggg'),
(70, 'Traffic Violation', '2019-03-11', 'aaaa'),
(71, 'Others', '2019-03-11', 'qfqfqfq'),
(72, 'Accident', '2019-03-11', 'qwqwqwqw'),
(73, 'Accident', '2019-03-11', 'qwqwqwqw'),
(74, 'Traffic Violation', '2019-03-11', 'llllllllllllllll'),
(75, 'Accident', '2019-03-11', 'aaa'),
(76, 'Traffic Violation', '2019-03-11', 'fffffffffff'),
(77, 'Others', '2019-03-11', 'vvvvvvvvvvvv'),
(78, 'Traffic Violation', '2019-03-11', 'tttttttttttttttttttt'),
(79, 'Accident', '2019-03-11', 'fffffffffffffffffff'),
(80, 'Traffic Violation', '2019-03-11', 'qqqqqqqqqqqqqqq'),
(81, 'Accident', '2019-03-11', 'hhhhhhhhhhhhh'),
(82, 'Others', '2019-03-11', 'nnnnnnnnnnnnn'),
(83, 'Accident', '2019-03-11', 'aas'),
(97, 'Others', '2019-03-11', 'alalalal alalal alala alalla alal alal.'),
(99, 'Accident', '2019-03-11', 'asa'),
(100, 'Accident', '2019-03-11', 'asas'),
(101, 'Accident', '2019-03-11', 'asa'),
(102, 'Accident', '2019-03-11', 'asas'),
(103, 'Accident', '2019-03-11', 'aas'),
(104, 'Traffic Violation', '2019-03-11', 'asas'),
(105, 'Accident', '2019-03-11', 'adadad'),
(106, 'Accident', '2019-03-11', 'asasas'),
(107, 'Accident', '2019-03-11', 'asa'),
(108, 'Accident', '2019-03-11', 'aaa'),
(109, 'Accident', '2019-03-07', 'dfdf'),
(110, 'Accident', '2019-03-11', 'jhjh'),
(111, 'Accident', '2019-03-11', 'asa'),
(112, 'Traffic Violation', '2019-03-11', 'aas'),
(113, 'Accident', '2019-03-07', 'as'),
(114, 'Accident', '2019-03-11', 'as'),
(115, 'Others', '2019-03-11', 'as'),
(116, 'Accident', '2019-03-11', 'asa'),
(117, 'Accident', '2019-03-11', 'as'),
(118, 'Accident', '2019-03-11', 'asas'),
(119, 'Accident', '2019-03-11', 'adadad'),
(120, 'Traffic Violation', '2019-03-07', 'asd'),
(121, 'Traffic Violation', '2019-03-11', 'as'),
(122, 'Traffic Violation', '2019-03-11', 'as'),
(123, 'Traffic Violation', '2019-03-11', 'as'),
(124, 'Traffic Violation', '2019-03-11', 'as'),
(125, 'Traffic Violation', '2019-03-11', 'as'),
(126, 'Traffic Violation', '2019-03-11', 'as'),
(127, 'Traffic Violation', '2019-03-11', 'as'),
(128, 'Traffic Violation', '2019-03-11', 'as'),
(129, 'Traffic Violation', '2019-03-11', 'ahgagha'),
(130, 'Traffic Violation', '2019-03-11', 'ahgagha'),
(131, 'Traffic Violation', '2019-03-11', 'ahgagha'),
(132, 'Traffic Violation', '2019-03-11', 'ahgagha'),
(133, 'Traffic Violation', '2019-03-11', 'ahgagha'),
(134, 'Traffic Violation', '2019-03-11', 'ahgagha'),
(135, 'Accident', '2019-03-11', 'asa'),
(136, 'Accident', '2019-03-11', 'as'),
(137, 'Traffic Violation', '2019-03-07', 'as'),
(138, 'Traffic Violation', '2019-03-07', 'as'),
(140, 'Accident', '2019-03-11', 'aaad'),
(141, 'Accident', '2019-03-11', 'as'),
(142, 'Accident', '2019-03-11', 'asasadfaf'),
(143, 'Traffic Violation', '2019-03-11', 'frfrfrfrfrfr'),
(144, 'Accident', '2019-03-11', 'asasasas'),
(145, 'Accident', '2019-03-11', 'asas');

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
