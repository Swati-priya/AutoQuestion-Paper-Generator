-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 02:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbq1word`
--

CREATE TABLE `tbq1word` (
  `wordid` int(11) NOT NULL,
  `wquestion` varchar(500) DEFAULT NULL,
  `wanswer` varchar(25) DEFAULT NULL,
  `uemail` varchar(25) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbq1word`
--

INSERT INTO `tbq1word` (`wordid`, `wquestion`, `wanswer`, `uemail`, `subid`) VALUES
(1, 'The process of inserting element is called?', 'Push', 'admin@exam.com', 1),
(2, 'The method of removing element from stack is called?', 'POP', 'admin@exam.com', 1),
(3, ' What is the term for inserting into a full queue known as?', 'Overflow', 'admin@exam.com', 1),
(4, 'What is the time complexity of enqueue operation?', 'O(1)', 'admin@exam.com', 1),
(5, ' What is the worst case time complexity of insertion sort?', 'O(n2)', 'admin@exam.com', 1),
(6, 'How do you calculate the pointer difference in a memory efficient double linked list?', 'pointer to previous node ', 'admin@exam.com', 1),
(7, 'How many diagrams are here in Unified Modelling Language?', '9', 'admin@exam.com', 2),
(8, ' RAD stands for?', 'Rapid Application Develop', 'admin@exam.com', 2),
(9, 'What is the major drawback of using RAD Model?', 'Increases reusability of ', 'admin@exam.com', 2),
(10, 'Which model can be selected if user is involved in all the phases of SDLC?', 'RAD model', 'admin@exam.com', 2),
(11, 'Which two models doesn\'t allow defining requirements early in the cycle?', 'Prototyping & Spiral', 'admin@exam.com', 2),
(12, 'The Incremental Model is a result of combination of elements of which two models?', ' Linear Model & Prototypi', 'admin@exam.com', 2),
(13, 'The spiral model has two dimensions namely?', 'radial, angular', 'admin@exam.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbqbrief`
--

CREATE TABLE `tbqbrief` (
  `bid` int(11) NOT NULL,
  `bquestion` varchar(500) DEFAULT NULL,
  `banswer` varchar(1000) DEFAULT NULL,
  `uemail` varchar(25) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbqbrief`
--

INSERT INTO `tbqbrief` (`bid`, `bquestion`, `banswer`, `uemail`, `subid`) VALUES
(1, 'What is Stack?', '.', 'admin@exam.com', 1),
(2, 'Difference between stack and queue?', '.', 'admin@exam.com', 1),
(3, 'What is a memory efficient double linked list?', '.', 'admin@exam.com', 1),
(4, 'Convert the infix expressions into its equivalent postfix expressions.(A + B ?D)/(E – F)+G', '.', 'admin@exam.com', 1),
(5, 'With what data structure can a priority queue be implemented?', '.', 'admin@exam.com', 1),
(6, ' What is a dequeue?', '.', 'admin@exam.com', 1),
(7, 'what is SDLC model?', '.', 'admin@exam.com', 2),
(8, 'What are the different types of SDLC models?', '.', 'admin@exam.com', 2),
(9, 'What is a major advantage of using a 4GT Model for producing small scale products, applications or programs ?', '.', 'admin@exam.com', 2),
(10, 'what are the disadvantages of Waterfall model?', '.', 'admin@exam.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbqmcq`
--

CREATE TABLE `tbqmcq` (
  `mcqid` int(11) NOT NULL,
  `mcqquestion` varchar(500) DEFAULT NULL,
  `mcqanswer1` varchar(20) DEFAULT NULL,
  `mcqanswer2` varchar(20) DEFAULT NULL,
  `mcqanswer3` varchar(20) DEFAULT NULL,
  `mcqanswer4` varchar(20) DEFAULT NULL,
  `uemail` varchar(25) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbqmcq`
--

INSERT INTO `tbqmcq` (`mcqid`, `mcqquestion`, `mcqanswer1`, `mcqanswer2`, `mcqanswer3`, `mcqanswer4`, `uemail`, `subid`) VALUES
(1, 'Which of the following is not a stable sorting algorithm in its typical implementation.', 'Insertion Sort', 'Heap Sort', 'Quick sort', 'Merge sort', 'admin@exam.com', 1),
(2, 'In the worst case, the number of comparisons needed to search a singly linked list of length n for a given element is?', 'log2n', 'n/2', 'log2n-1', 'n', 'admin@exam.com', 1),
(3, 'Pushing an element into stack already having five elements and stack size of 5 , then stack becomes?', 'Overflow ', 'Crash', 'Underflow', 'User flow', 'admin@exam.com', 1),
(4, 'In a stack, if a user tries to remove element from the empty stack then it is called?', ' Underflow', ' Empty collection ', 'Overflow', 'Garbage Collection', 'admin@exam.com', 1),
(5, ' Which of the following properties is associated with a queue?', 'FIFO', 'LIFO', 'LILO', 'FILO', 'admin@exam.com', 1),
(6, 'Which of the following 4GLs invented at IBM and subsequently adopted by ANSI and ISO as the standard language for managing structured data?', 'SQL', 'PROLOG', 'C', 'JAVA', 'admin@exam.com', 2),
(7, 'Which of the following model has a major disadvantage in terms of the coding phase of a software life cycle model ?', 'Spiral Model  ', 'Waterfall Model', 'Rad Model', '4GT Model', 'admin@exam.com', 2),
(8, ' Selection of a model is based on', 'Requirements', 'Development team & U', 'Project type and ass', 'All of the mentioned', 'admin@exam.com', 2),
(9, 'Which of these does not account for software failure?', 'Increasing Demand', 'Low expectation', 'Increasing Supply', ' Less reliable and e', 'admin@exam.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbsub`
--

CREATE TABLE `tbsub` (
  `subid` int(11) NOT NULL,
  `subname` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbsub`
--

INSERT INTO `tbsub` (`subid`, `subname`) VALUES
(1, 'Data Structure'),
(2, 'Software Engine');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `ufname` char(15) DEFAULT NULL,
  `ulname` char(15) DEFAULT NULL,
  `ucontact` int(10) DEFAULT NULL,
  `ucollg` varchar(50) DEFAULT NULL,
  `uboard` char(10) DEFAULT NULL,
  `uemail` varchar(50) NOT NULL,
  `upasswd` varchar(25) DEFAULT NULL,
  `uaddress` varchar(100) DEFAULT NULL,
  `ucountry` char(20) DEFAULT NULL,
  `udesc` varchar(50) DEFAULT NULL,
  `utype` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`ufname`, `ulname`, `ucontact`, `ucollg`, `uboard`, `uemail`, `upasswd`, `uaddress`, `ucountry`, `udesc`, `utype`) VALUES
('admin', 'admin', 1234, 'sicsr', 'siu', 'admin@exam.com', 'admin123', 'pune', 'india', 'admin', 'admin'),
('Swati', 'Priya', 1234532324, 'MNNIT', 'MNNIT', 'asd@gmail.com', 'asd123', 'zxvcv', 'India', 'zxzczx', 'teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbq1word`
--
ALTER TABLE `tbq1word`
  ADD PRIMARY KEY (`wordid`),
  ADD KEY `subid` (`subid`),
  ADD KEY `uemail` (`uemail`);

--
-- Indexes for table `tbqbrief`
--
ALTER TABLE `tbqbrief`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `subid` (`subid`),
  ADD KEY `uemail` (`uemail`);

--
-- Indexes for table `tbqmcq`
--
ALTER TABLE `tbqmcq`
  ADD PRIMARY KEY (`mcqid`),
  ADD KEY `subid` (`subid`),
  ADD KEY `uemail` (`uemail`);

--
-- Indexes for table `tbsub`
--
ALTER TABLE `tbsub`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`uemail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbq1word`
--
ALTER TABLE `tbq1word`
  MODIFY `wordid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbqmcq`
--
ALTER TABLE `tbqmcq`
  MODIFY `mcqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbsub`
--
ALTER TABLE `tbsub`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbq1word`
--
ALTER TABLE `tbq1word`
  ADD CONSTRAINT `tbq1word_ibfk_1` FOREIGN KEY (`subid`) REFERENCES `tbsub` (`subid`),
  ADD CONSTRAINT `tbq1word_ibfk_2` FOREIGN KEY (`uemail`) REFERENCES `tbuser` (`uemail`);

--
-- Constraints for table `tbqbrief`
--
ALTER TABLE `tbqbrief`
  ADD CONSTRAINT `tbqbrief_ibfk_1` FOREIGN KEY (`subid`) REFERENCES `tbsub` (`subid`),
  ADD CONSTRAINT `tbqbrief_ibfk_2` FOREIGN KEY (`uemail`) REFERENCES `tbuser` (`uemail`);

--
-- Constraints for table `tbqmcq`
--
ALTER TABLE `tbqmcq`
  ADD CONSTRAINT `tbqmcq_ibfk_1` FOREIGN KEY (`subid`) REFERENCES `tbsub` (`subid`),
  ADD CONSTRAINT `tbqmcq_ibfk_2` FOREIGN KEY (`uemail`) REFERENCES `tbuser` (`uemail`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
