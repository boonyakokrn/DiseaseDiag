-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2016 at 06:04 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dd`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `ansID` int(5) unsigned zerofill NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10006 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`ansID`, `answer`) VALUES
(10001, 'Yes'),
(10002, 'No'),
(10003, 'Mild'),
(10004, 'Heavy'),
(10005, 'Severe');

-- --------------------------------------------------------

--
-- Table structure for table `bodypart`
--

CREATE TABLE IF NOT EXISTS `bodypart` (
  `partID` int(5) unsigned zerofill NOT NULL,
  `partName` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20002 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bodypart`
--

INSERT INTO `bodypart` (`partID`, `partName`) VALUES
(20001, 'Head');

-- --------------------------------------------------------

--
-- Table structure for table `cure`
--

CREATE TABLE IF NOT EXISTS `cure` (
  `cureID` int(5) unsigned zerofill NOT NULL,
  `cureDesc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40006 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cure`
--

INSERT INTO `cure` (`cureID`, `cureDesc`) VALUES
(40001, 'Sleep 8 hrs/day'),
(40002, 'Taking Paracetamol'),
(40003, 'Eat and drink well'),
(40004, 'Contact the doctor for more information'),
(40005, 'Calling Emergency Service Now!!! 1669');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE IF NOT EXISTS `disease` (
  `disID` int(5) unsigned zerofill NOT NULL,
  `disName` text NOT NULL,
  `disDesc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30004 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`disID`, `disName`, `disDesc`) VALUES
(30001, 'Common Cold', 'It commonly happen. The effect is really mild - fever, headache, etc.'),
(30002, 'Influenza', 'It may be hard to distingushed from common cold.Symtom can range from mild to severe. Including high fever, sore throat, muscle pain, headache, sudden and extreme fatigue'),
(30003, 'Stroke', 'This happened due to lack of blood flow or bleeding. They result in part of the brain not function properly. Signs of it include an inability to move or feel on one side of body, poblems understanding or speaking, feeling like the world is spinning or loss of vision to one side.');

-- --------------------------------------------------------

--
-- Table structure for table `listcure`
--

CREATE TABLE IF NOT EXISTS `listcure` (
  `disID` int(5) unsigned zerofill NOT NULL,
  `cureID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listcure`
--

INSERT INTO `listcure` (`disID`, `cureID`) VALUES
(30001, 40001),
(30002, 40001),
(30001, 40002),
(30002, 40002),
(30001, 40003),
(30002, 40003),
(30002, 40004),
(30003, 40005);

-- --------------------------------------------------------

--
-- Table structure for table `listdis`
--

CREATE TABLE IF NOT EXISTS `listdis` (
  `disID` int(5) unsigned zerofill NOT NULL,
  `qID` int(5) unsigned zerofill NOT NULL,
  `ansID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listdis`
--

INSERT INTO `listdis` (`disID`, `qID`, `ansID`) VALUES
(30001, 00006, 10001),
(30002, 00006, 10001),
(30003, 00006, 10001),
(30001, 00007, 10003),
(30002, 00007, 10004),
(30003, 00007, 10005),
(30001, 00008, 10001),
(30002, 00008, 10001),
(30003, 00008, 10001),
(30001, 00009, 10001),
(30002, 00009, 10001),
(30003, 00009, 10002),
(30001, 00010, 10001),
(30002, 00010, 10001),
(30003, 00010, 10001);

-- --------------------------------------------------------

--
-- Table structure for table `listqa`
--

CREATE TABLE IF NOT EXISTS `listqa` (
  `qID` int(5) unsigned zerofill NOT NULL,
  `ansID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listqa`
--

INSERT INTO `listqa` (`qID`, `ansID`) VALUES
(00006, 10001),
(00008, 10001),
(00009, 10001),
(00010, 10001),
(00006, 10002),
(00008, 10002),
(00009, 10002),
(00010, 10002),
(00007, 10003),
(00007, 10004),
(00007, 10005);

-- --------------------------------------------------------

--
-- Table structure for table `listquestion`
--

CREATE TABLE IF NOT EXISTS `listquestion` (
  `partID` int(5) unsigned zerofill NOT NULL,
  `qID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listquestion`
--

INSERT INTO `listquestion` (`partID`, `qID`) VALUES
(20001, 00006),
(20001, 00007),
(20001, 00008),
(20001, 00009),
(20001, 00010);

-- --------------------------------------------------------

--
-- Table structure for table `listses`
--

CREATE TABLE IF NOT EXISTS `listses` (
  `sesID` int(5) unsigned zerofill NOT NULL,
  `qID` int(5) unsigned zerofill NOT NULL,
  `ansID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listses`
--

INSERT INTO `listses` (`sesID`, `qID`, `ansID`) VALUES
(50001, 00006, 10001),
(50002, 00006, 10001),
(50011, 00006, 10001),
(50012, 00006, 10001),
(50013, 00006, 10001),
(50014, 00006, 10001),
(50015, 00006, 10001),
(50016, 00006, 10001),
(50017, 00006, 10002),
(50001, 00007, 10003),
(50002, 00007, 10005),
(50011, 00007, 10003),
(50012, 00007, 10003),
(50013, 00007, 10003),
(50014, 00007, 10005),
(50015, 00007, 10004),
(50016, 00007, 10004),
(50017, 00007, 10003),
(50001, 00008, 10001),
(50002, 00008, 10001),
(50011, 00008, 10001),
(50012, 00008, 10001),
(50013, 00008, 10001),
(50014, 00008, 10001),
(50015, 00008, 10001),
(50016, 00008, 10001),
(50017, 00008, 10002),
(50001, 00009, 10001),
(50002, 00009, 10002),
(50011, 00009, 10001),
(50012, 00009, 10001),
(50013, 00009, 10001),
(50014, 00009, 10002),
(50015, 00009, 10001),
(50016, 00009, 10001),
(50017, 00009, 10002),
(50001, 00010, 10001),
(50002, 00010, 10001),
(50011, 00010, 10001),
(50012, 00010, 10001),
(50013, 00010, 10001),
(50014, 00010, 10001),
(50015, 00010, 10001),
(50016, 00010, 10001),
(50017, 00010, 10002);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `qID` int(5) unsigned zerofill NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qID`, `question`) VALUES
(00006, 'Do you have any fever ?'),
(00007, 'How severe is the headache ?'),
(00008, 'Do you feel tire ?'),
(00009, 'Can you speak or understand clearly ?'),
(00010, 'Are you cough ?');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `sesID` int(5) unsigned zerofill NOT NULL,
  `sesTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `partID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50018 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sesID`, `sesTime`, `partID`) VALUES
(50001, '2016-05-20 19:20:23', 20001),
(50002, '2016-05-20 19:20:50', 20001),
(50003, '2016-05-20 20:30:07', 20001),
(50004, '2016-05-20 20:48:01', 20001),
(50005, '2016-05-20 20:53:48', 20001),
(50006, '2016-05-20 21:27:39', 20001),
(50007, '2016-05-20 21:32:02', 20001),
(50008, '2016-05-20 21:32:59', 20001),
(50009, '2016-05-20 21:33:39', 20001),
(50010, '2016-05-20 21:37:43', 20001),
(50011, '2016-05-20 21:38:14', 20001),
(50012, '2016-05-20 21:41:44', 20001),
(50013, '2016-05-20 21:45:29', 20001),
(50014, '2016-05-20 21:47:57', 20001),
(50015, '2016-05-20 21:49:12', 20001),
(50016, '2016-05-20 21:56:49', 20001),
(50017, '2016-05-20 21:58:04', 20001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`ansID`);

--
-- Indexes for table `bodypart`
--
ALTER TABLE `bodypart`
  ADD PRIMARY KEY (`partID`);

--
-- Indexes for table `cure`
--
ALTER TABLE `cure`
  ADD PRIMARY KEY (`cureID`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`disID`);

--
-- Indexes for table `listcure`
--
ALTER TABLE `listcure`
  ADD PRIMARY KEY (`disID`,`cureID`),
  ADD KEY `listCure_FK2` (`cureID`);

--
-- Indexes for table `listdis`
--
ALTER TABLE `listdis`
  ADD PRIMARY KEY (`disID`,`qID`,`ansID`),
  ADD KEY `listDis_FK2` (`qID`),
  ADD KEY `listDis_FK3` (`ansID`);

--
-- Indexes for table `listqa`
--
ALTER TABLE `listqa`
  ADD PRIMARY KEY (`qID`,`ansID`),
  ADD KEY `listQA_FK2` (`ansID`);

--
-- Indexes for table `listquestion`
--
ALTER TABLE `listquestion`
  ADD PRIMARY KEY (`partID`,`qID`),
  ADD KEY `listQuestion_FK2` (`qID`);

--
-- Indexes for table `listses`
--
ALTER TABLE `listses`
  ADD PRIMARY KEY (`sesID`,`qID`,`ansID`),
  ADD KEY `listSes_FK2` (`qID`),
  ADD KEY `listSes_FK3` (`ansID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`qID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sesID`),
  ADD KEY `session_FK1` (`partID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `ansID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10006;
--
-- AUTO_INCREMENT for table `bodypart`
--
ALTER TABLE `bodypart`
  MODIFY `partID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20002;
--
-- AUTO_INCREMENT for table `cure`
--
ALTER TABLE `cure`
  MODIFY `cureID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40006;
--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `disID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30004;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `qID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `sesID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50018;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `listcure`
--
ALTER TABLE `listcure`
  ADD CONSTRAINT `listCure_FK1` FOREIGN KEY (`disID`) REFERENCES `disease` (`disID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listCure_FK2` FOREIGN KEY (`cureID`) REFERENCES `cure` (`cureID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listdis`
--
ALTER TABLE `listdis`
  ADD CONSTRAINT `listDis_FK1` FOREIGN KEY (`disID`) REFERENCES `disease` (`disID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listDis_FK2` FOREIGN KEY (`qID`) REFERENCES `question` (`qID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listDis_FK3` FOREIGN KEY (`ansID`) REFERENCES `answer` (`ansID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listqa`
--
ALTER TABLE `listqa`
  ADD CONSTRAINT `listQA_FK1` FOREIGN KEY (`qID`) REFERENCES `question` (`qID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listQA_FK2` FOREIGN KEY (`ansID`) REFERENCES `answer` (`ansID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listquestion`
--
ALTER TABLE `listquestion`
  ADD CONSTRAINT `listQuestion_FK1` FOREIGN KEY (`partID`) REFERENCES `bodypart` (`partID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listQuestion_FK2` FOREIGN KEY (`qID`) REFERENCES `question` (`qID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `listses`
--
ALTER TABLE `listses`
  ADD CONSTRAINT `listSes_FK1` FOREIGN KEY (`sesID`) REFERENCES `session` (`sesID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listSes_FK2` FOREIGN KEY (`qID`) REFERENCES `question` (`qID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listSes_FK3` FOREIGN KEY (`ansID`) REFERENCES `answer` (`ansID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_FK1` FOREIGN KEY (`partID`) REFERENCES `bodypart` (`partID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
