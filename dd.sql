-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2016 at 09:15 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`ansID`, `answer`) VALUES
(10001, 'Yes'),
(10002, 'No'),
(10003, 'Yes'),
(10004, 'No'),
(10005, 'Mild'),
(10006, 'Heavy'),
(10007, 'Severe');

-- --------------------------------------------------------

--
-- Table structure for table `bodypart`
--

CREATE TABLE IF NOT EXISTS `bodypart` (
  `partID` int(5) unsigned zerofill NOT NULL,
  `partName` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20003 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bodypart`
--

INSERT INTO `bodypart` (`partID`, `partName`) VALUES
(20001, 'Head'),
(20002, 'Body');

-- --------------------------------------------------------

--
-- Table structure for table `cure`
--

CREATE TABLE IF NOT EXISTS `cure` (
  `cureID` int(5) unsigned zerofill NOT NULL,
  `cureDesc` text NOT NULL,
  `suggest` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40023 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cure`
--

INSERT INTO `cure` (`cureID`, `cureDesc`, `suggest`) VALUES
(40001, 'Sleep 8 hrs/day', ''),
(40002, 'Taking Paracetamol', ''),
(40003, 'Eat and drink well', ''),
(40004, 'Contact the doctor for more information', ''),
(40005, 'Calling Emergency Service Now!!! 1669', ''),
(40006, 'Sleep 8 hrs/day', ''),
(40007, 'Taking Paracetamol', ''),
(40008, 'Eat and drink well', ''),
(40009, 'Contact the doctor for more information', ''),
(40010, 'Calling Emergency Service Now!!! 1669', ''),
(40011, 'Sleep 8 hrs/day', ''),
(40012, 'Taking Paracetamol', ''),
(40013, 'Eat and drink well', ''),
(40014, 'Contact the doctor for more information', ''),
(40015, 'Calling Emergency Service Now!!! 1669', ''),
(40016, 'Sleep 8 hrs/day', ''),
(40017, 'Taking Paracetamol', ''),
(40018, 'Eat and drink well', ''),
(40019, 'Contact the doctor for more information', ''),
(40020, 'Calling Emergency Service Now!!! 1669', '');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE IF NOT EXISTS `disease` (
  `disID` int(5) unsigned zerofill NOT NULL,
  `disName` text NOT NULL,
  `disDesc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30013 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`disID`, `disName`, `disDesc`) VALUES
(30001, 'Influenza', 'eiei'),
(30002, 'Fever', 'haha'),
(30003, 'Die', 'eieiei'),
(30004, 'Common Cold', 'It commonly happen. The effect is really mild - fever, headache, etc.'),
(30005, 'Influenza', 'It may be hard to distingushed from common cold.Symtom can range from mild to severe. Including high fever, sore throat, muscle pain, headache, sudden and extreme fatigue'),
(30006, 'Stroke', 'This happened due to lack of blood flow or bleeding. They result in part of the brain not function properly. Signs of it include an inability to move or feel on one side of body, poblems understanding or speaking, feeling like the world is spinning or loss of vision to one side.'),
(30007, 'Common Cold', 'It commonly happen. The effect is really mild - fever, headache, etc.'),
(30008, 'Influenza', 'It may be hard to distingushed from common cold.Symtom can range from mild to severe. Including high fever, sore throat, muscle pain, headache, sudden and extreme fatigue'),
(30009, 'Stroke', 'This happened due to lack of blood flow or bleeding. They result in part of the brain not function properly. Signs of it include an inability to move or feel on one side of body, poblems understanding or speaking, feeling like the world is spinning or loss of vision to one side.'),
(30010, 'Common Cold', 'It commonly happen. The effect is really mild - fever, headache, etc.'),
(30011, 'Influenza', 'It may be hard to distingushed from common cold.Symtom can range from mild to severe. Including high fever, sore throat, muscle pain, headache, sudden and extreme fatigue'),
(30012, 'Stroke', 'This happened due to lack of blood flow or bleeding. They result in part of the brain not function properly. Signs of it include an inability to move or feel on one side of body, poblems understanding or speaking, feeling like the world is spinning or loss of vision to one side.');

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
(30002, 40002),
(30001, 40004),
(30001, 40005);

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
(30001, 00001, 10001),
(30002, 00001, 10002),
(30003, 00001, 10001),
(30001, 00002, 10001),
(30002, 00002, 10002),
(30003, 00002, 10002),
(30001, 00003, 10001),
(30002, 00003, 10002),
(30003, 00003, 10001),
(30001, 00004, 10001),
(30002, 00004, 10002),
(30003, 00004, 10002),
(30001, 00005, 10001),
(30002, 00005, 10002),
(30003, 00005, 10001);

-- --------------------------------------------------------

--
-- Table structure for table `listqa`
--

CREATE TABLE IF NOT EXISTS `listqa` (
  `qID` int(5) unsigned zerofill NOT NULL,
  `ansID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `listquestion`
--

CREATE TABLE IF NOT EXISTS `listquestion` (
  `partID` int(5) unsigned zerofill NOT NULL,
  `qID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `listses`
--

CREATE TABLE IF NOT EXISTS `listses` (
  `sesID` int(5) unsigned zerofill NOT NULL,
  `qID` int(5) unsigned zerofill NOT NULL,
  `ansID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listses`
--

INSERT INTO `listses` (`sesID`, `qID`, `ansID`) VALUES
(00001, 00001, 10001),
(00002, 00001, 10002),
(00003, 00001, 10001),
(00004, 00001, 10001),
(00007, 00001, 10001),
(00008, 00001, 10002),
(00009, 00001, 10002),
(00011, 00001, 10001),
(00012, 00001, 10001),
(00013, 00001, 10001),
(00014, 00001, 10002),
(00015, 00001, 10001),
(00016, 00001, 10001),
(00017, 00001, 10001),
(00019, 00001, 10001),
(00020, 00001, 10001),
(00022, 00001, 10001),
(00023, 00001, 10001),
(00024, 00001, 10001),
(00025, 00001, 10001),
(00026, 00001, 10002),
(00027, 00001, 10001),
(00001, 00002, 10001),
(00002, 00002, 10002),
(00003, 00002, 10002),
(00004, 00002, 10001),
(00007, 00002, 10001),
(00008, 00002, 10002),
(00009, 00002, 10002),
(00011, 00002, 10002),
(00012, 00002, 10001),
(00013, 00002, 10002),
(00014, 00002, 10002),
(00015, 00002, 10002),
(00016, 00002, 10001),
(00017, 00002, 10001),
(00019, 00002, 10001),
(00020, 00002, 10001),
(00022, 00002, 10001),
(00023, 00002, 10001),
(00024, 00002, 10001),
(00025, 00002, 10001),
(00026, 00002, 10002),
(00027, 00002, 10001),
(00001, 00003, 10001),
(00002, 00003, 10002),
(00003, 00003, 10001),
(00004, 00003, 10001),
(00007, 00003, 10001),
(00008, 00003, 10002),
(00009, 00003, 10002),
(00011, 00003, 10002),
(00012, 00003, 10001),
(00013, 00003, 10001),
(00014, 00003, 10002),
(00015, 00003, 10001),
(00016, 00003, 10001),
(00017, 00003, 10001),
(00019, 00003, 10001),
(00020, 00003, 10001),
(00022, 00003, 10001),
(00023, 00003, 10001),
(00024, 00003, 10001),
(00025, 00003, 10001),
(00026, 00003, 10002),
(00027, 00003, 10001),
(00001, 00004, 10001),
(00002, 00004, 10002),
(00003, 00004, 10002),
(00004, 00004, 10001),
(00007, 00004, 10001),
(00008, 00004, 10002),
(00009, 00004, 10002),
(00011, 00004, 10002),
(00012, 00004, 10001),
(00013, 00004, 10002),
(00014, 00004, 10002),
(00015, 00004, 10002),
(00016, 00004, 10001),
(00017, 00004, 10001),
(00019, 00004, 10001),
(00020, 00004, 10001),
(00022, 00004, 10001),
(00023, 00004, 10001),
(00024, 00004, 10001),
(00025, 00004, 10001),
(00026, 00004, 10002),
(00027, 00004, 10001),
(00001, 00005, 10001),
(00002, 00005, 10002),
(00003, 00005, 10001),
(00004, 00005, 10001),
(00007, 00005, 10001),
(00008, 00005, 10002),
(00009, 00005, 10002),
(00011, 00005, 10001),
(00012, 00005, 10001),
(00013, 00005, 10001),
(00014, 00005, 10002),
(00015, 00005, 10001),
(00016, 00005, 10001),
(00017, 00005, 10001),
(00019, 00005, 10001),
(00020, 00005, 10001),
(00022, 00005, 10001),
(00023, 00005, 10001),
(00024, 00005, 10001),
(00025, 00005, 10001),
(00026, 00005, 10002),
(00027, 00005, 10001);

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
(00001, 'Fever ?'),
(00002, 'Cough ?'),
(00003, 'Headache ?'),
(00004, 'Dizzy ?'),
(00005, 'Sore throat ?'),
(00006, 'Do you have any fever ?'),
(00007, 'How severe is the headache ?'),
(00008, 'Do you have any fever ?'),
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sesID`, `sesTime`, `partID`) VALUES
(00001, '2016-05-18 00:42:43', 20001),
(00002, '2016-05-19 14:12:27', 20002),
(00003, '2016-05-19 14:12:50', 20001),
(00004, '2016-05-19 15:56:30', 20001),
(00005, '2016-05-19 18:36:42', 20002),
(00006, '2016-05-19 18:39:10', 20002),
(00007, '2016-05-19 18:40:05', 20002),
(00008, '2016-05-19 18:41:45', 20002),
(00009, '2016-05-19 18:43:05', 20002),
(00010, '2016-05-19 20:50:24', 20002),
(00011, '2016-05-19 20:58:27', 20002),
(00012, '2016-05-19 20:58:40', 20002),
(00013, '2016-05-19 21:34:13', 20002),
(00014, '2016-05-19 21:39:31', 20002),
(00015, '2016-05-19 21:59:00', 20002),
(00016, '2016-05-19 22:14:01', 20002),
(00017, '2016-05-19 22:23:38', 20002),
(00018, '2016-05-19 22:34:26', 20002),
(00019, '2016-05-19 22:39:49', 20002),
(00020, '2016-05-19 22:39:55', 20002),
(00021, '2016-05-19 22:51:23', 20002),
(00022, '2016-05-19 22:54:58', 20002),
(00023, '2016-05-19 22:55:06', 20002),
(00024, '2016-05-19 23:03:23', 20002),
(00025, '2016-05-19 23:04:54', 20002),
(00026, '2016-05-19 23:09:51', 20002),
(00027, '2016-05-19 23:10:37', 20002),
(00028, '2016-05-19 23:14:40', 20002);

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
  MODIFY `ansID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10008;
--
-- AUTO_INCREMENT for table `bodypart`
--
ALTER TABLE `bodypart`
  MODIFY `partID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20003;
--
-- AUTO_INCREMENT for table `cure`
--
ALTER TABLE `cure`
  MODIFY `cureID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40023;
--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `disID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30013;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `qID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `sesID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
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
