-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2016 at 07:01 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `diseasediag`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `ansID` int(5) unsigned zerofill NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bodypart`
--

CREATE TABLE IF NOT EXISTS `bodypart` (
  `partID` int(5) unsigned zerofill NOT NULL,
  `partName` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20001 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cure`
--

CREATE TABLE IF NOT EXISTS `cure` (
  `cureID` int(5) unsigned zerofill NOT NULL,
  `cureDesc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40001 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE IF NOT EXISTS `disease` (
  `disID` int(5) unsigned zerofill NOT NULL,
  `disName` text NOT NULL,
  `disDesc` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30001 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `listcure`
--

CREATE TABLE IF NOT EXISTS `listcure` (
  `disID` int(5) unsigned zerofill NOT NULL,
  `cureID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `listdis`
--

CREATE TABLE IF NOT EXISTS `listdis` (
  `disID` int(5) unsigned zerofill NOT NULL,
  `qID` int(5) unsigned zerofill NOT NULL,
  `ansID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `qID` int(5) unsigned zerofill NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `sesID` int(5) unsigned zerofill NOT NULL,
  `sesTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `partID` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50001 DEFAULT CHARSET=utf8;

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
  ADD PRIMARY KEY (`disID`,`cureID`), ADD KEY `listCure_FK2` (`cureID`);

--
-- Indexes for table `listdis`
--
ALTER TABLE `listdis`
  ADD PRIMARY KEY (`disID`,`qID`,`ansID`), ADD KEY `listDis_FK2` (`qID`), ADD KEY `listDis_FK3` (`ansID`);

--
-- Indexes for table `listqa`
--
ALTER TABLE `listqa`
  ADD PRIMARY KEY (`qID`,`ansID`), ADD KEY `listQA_FK2` (`ansID`);

--
-- Indexes for table `listquestion`
--
ALTER TABLE `listquestion`
  ADD PRIMARY KEY (`partID`,`qID`), ADD KEY `listQuestion_FK2` (`qID`);

--
-- Indexes for table `listses`
--
ALTER TABLE `listses`
  ADD PRIMARY KEY (`sesID`,`qID`,`ansID`), ADD KEY `listSes_FK2` (`qID`), ADD KEY `listSes_FK3` (`ansID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`qID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sesID`), ADD KEY `session_FK1` (`partID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `ansID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10001;
--
-- AUTO_INCREMENT for table `bodypart`
--
ALTER TABLE `bodypart`
  MODIFY `partID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20001;
--
-- AUTO_INCREMENT for table `cure`
--
ALTER TABLE `cure`
  MODIFY `cureID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40001;
--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `disID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30001;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `qID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `sesID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50001;
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
