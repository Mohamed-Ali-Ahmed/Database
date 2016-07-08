-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2016 at 01:11 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `findmedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `agendaID` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `lastUpdate` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `slotID` int(11) NOT NULL,
  `content` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bookv`
--

CREATE TABLE `bookv` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkdeletepost`
--

CREATE TABLE `checkdeletepost` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkfollow`
--

CREATE TABLE `checkfollow` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checklogin`
--

CREATE TABLE `checklogin` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checksignup`
--

CREATE TABLE `checksignup` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkunfollow`
--

CREATE TABLE `checkunfollow` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkupdatepost`
--

CREATE TABLE `checkupdatepost` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkwritepost`
--

CREATE TABLE `checkwritepost` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('KO', 'Koria', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `createagenda`
--

CREATE TABLE `createagenda` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `createpost`
--

CREATE TABLE `createpost` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `dayID` int(11) NOT NULL,
  `agendaID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `followID` int(11) NOT NULL,
  `staffID` varchar(100) NOT NULL,
  `studentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`followID`, `staffID`, `studentID`) VALUES
(6, 'bg', 20120245);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notificationID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `notified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `postID` int(11) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`postID`, `owner`, `content`, `time`) VALUES
(1, 'staff1', 'no meeting today', '1'),
(2, 'staff1', 'i will late', '1'),
(4, 'mohamed', 'i will come', 'April 21, 2016, 12:10 am'),
(5, 'mohamed', 'no meeting today', 'April 21, 2016, 12:10 am'),
(6, 'nasef@fci.com', 'i will give bones today', 'April 21, 2016, 12:11 am'),
(7, 'staff2', 'y wlaaaaaaaaa', 'April 25, 2016, 5:37 pm'),
(8, 'fatma.omara@fci-cu.edu.eg', 'my office is now', 'April 26, 2016, 1:50 am'),
(9, 'fatma.omara@fci-cu.edu.eg', 'okkkkkkkkkk', 'April 26, 2016, 1:50 am'),
(10, 'fatma.omara@fci-cu.edu.eg', 'doneeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 'April 26, 2016, 11:39 am'),
(11, 'fatma.omara@fci-cu.edu.eg', 'lec del', 'April 26, 2016, 2:49 pm'),
(12, 'fatma.omara@fci-cu.edu.eg', 'welcommmmmm', 'April 27, 2016, 6:18 am'),
(13, 'fatma.omara@fci-cu.edu.eg', 'yesssssssssssssssssssssss', 'April 27, 2016, 6:28 am'),
(15, 'fatma.omara@fci-cu.edu.eg', 'whatttttt!!!!', 'April 27, 2016, 7:32 am'),
(16, 'fatma.omara@fci-cu.edu.eg', 'ORM bonus project [10 grades]', 'April 27, 2016, 7:38 am'),
(17, 'f.omara@fci-cu.edu.eg', 'hhhhhhhhhhh', 'April 27, 2016, 3:14 pm'),
(20, 'bg', 'good', 'June 10, 2016, 4:35 pm'),
(21, 'bg', 'i can do itttttt', 'June 10, 2016, 5:04 pm'),
(24, 'bg', 'are there', 'June 10, 2016, 5:43 pm'),
(26, 'bg', 'doneee b2aaaa', 'June 10, 2016, 5:51 pm'),
(27, 'bg', 'okk', 'June 10, 2016, 5:52 pm'),
(28, 'bg', 'new post now', 'June 10, 2016, 8:20 pm'),
(30, 'f.omara@fci-cu.edu.eg', 'yalaaaaaaaaaaaaaaa', 'June 21, 2016, 11:01 am');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `second`
--

CREATE TABLE `second` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `showfollowersposts`
--

CREATE TABLE `showfollowersposts` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `slotID` int(11) NOT NULL,
  `agendaID` int(11) NOT NULL,
  `content` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `slotnum` int(11) NOT NULL,
  `numberOfBookers` int(11) NOT NULL,
  `bookCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `formalemail` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`formalemail`, `name`, `password`) VALUES
('a', 'a', 'a'),
('akram.salah@fci-cu.edu.eg', 'Akram Ibrahim', '123'),
('amr.badr@fci-cu.edu.eg', 'Amr Ahmed Badr', '1'),
('bg', 'bg', '1'),
('f.omara@fci-cu.edu.eg', 'Fatma Omara', '123'),
('last', 'last', '1'),
('mohamed@fci-cu.edu.eg', 'mohamed', '123'),
('new@fci', 'new', '123'),
('s.elgamal@fci-cu.edu.eg', ' Salwa Elgamal', '123'),
('staff2', 'staff2', '2'),
('try@gmail.com', 'trrrrrrry', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `password`) VALUES
(254, 'dd', 't@r.com', '85'),
(20120, 'student1', 'student1', '1'),
(2012000, 'student2', 'student2', '2'),
(20120245, 'mohamed', 'nourhan@hh', '1552'),
(20120329, 'Mohamed', 'medo.ali376@gmail.com', '123'),
(20120437, 'Nourhan', 'nourhanabdo6@gmail.com', '123'),
(20120555, 'ahmed', 'ahmed@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `studenthome`
--

CREATE TABLE `studenthome` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `updatepost`
--

CREATE TABLE `updatepost` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`agendaID`),
  ADD KEY `owner` (`owner`),
  ADD KEY `agendaID` (`agendaID`),
  ADD KEY `agendaID_2` (`agendaID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`),
  ADD KEY `studentID` (`studentID`),
  ADD KEY `slotID` (`slotID`);

--
-- Indexes for table `bookv`
--
ALTER TABLE `bookv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkdeletepost`
--
ALTER TABLE `checkdeletepost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkfollow`
--
ALTER TABLE `checkfollow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checklogin`
--
ALTER TABLE `checklogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checksignup`
--
ALTER TABLE `checksignup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkunfollow`
--
ALTER TABLE `checkunfollow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkupdatepost`
--
ALTER TABLE `checkupdatepost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkwritepost`
--
ALTER TABLE `checkwritepost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `createagenda`
--
ALTER TABLE `createagenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createpost`
--
ALTER TABLE `createpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`dayID`),
  ADD KEY `agendaID` (`agendaID`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`followID`),
  ADD KEY `staffID` (`staffID`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notificationID`),
  ADD KEY `postID` (`postID`),
  ADD KEY `notified` (`notified`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `owner` (`owner`),
  ADD KEY `owner_2` (`owner`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second`
--
ALTER TABLE `second`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `showfollowersposts`
--
ALTER TABLE `showfollowersposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`slotID`),
  ADD KEY `agendaID` (`agendaID`),
  ADD KEY `slotID` (`slotID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`formalemail`),
  ADD UNIQUE KEY `formalemail` (`formalemail`),
  ADD KEY `formalemail_2` (`formalemail`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `studenthome`
--
ALTER TABLE `studenthome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updatepost`
--
ALTER TABLE `updatepost`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `agendaID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bookv`
--
ALTER TABLE `bookv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checkdeletepost`
--
ALTER TABLE `checkdeletepost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checkfollow`
--
ALTER TABLE `checkfollow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checklogin`
--
ALTER TABLE `checklogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checksignup`
--
ALTER TABLE `checksignup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checkunfollow`
--
ALTER TABLE `checkunfollow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checkupdatepost`
--
ALTER TABLE `checkupdatepost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checkwritepost`
--
ALTER TABLE `checkwritepost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `createagenda`
--
ALTER TABLE `createagenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `createpost`
--
ALTER TABLE `createpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `dayID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `followID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `second`
--
ALTER TABLE `second`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `showfollowersposts`
--
ALTER TABLE `showfollowersposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `slotID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studenthome`
--
ALTER TABLE `studenthome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `updatepost`
--
ALTER TABLE `updatepost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`studentID`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`slotID`) REFERENCES `slot` (`slotID`);

--
-- Constraints for table `day`
--
ALTER TABLE `day`
  ADD CONSTRAINT `day_ibfk_1` FOREIGN KEY (`agendaID`) REFERENCES `agenda` (`agendaID`);

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`staffID`) REFERENCES `staff` (`formalemail`),
  ADD CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`postID`) REFERENCES `post` (`postID`),
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`notified`) REFERENCES `student` (`id`);

--
-- Constraints for table `slot`
--
ALTER TABLE `slot`
  ADD CONSTRAINT `slot_ibfk_2` FOREIGN KEY (`agendaID`) REFERENCES `agenda` (`agendaID`),
  ADD CONSTRAINT `slot_ibfk_3` FOREIGN KEY (`slotID`) REFERENCES `book` (`slotID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
