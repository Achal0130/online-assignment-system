-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2023 at 04:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocasdb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'SuperAdmin', 'admin', 5689784592, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2020-07-09 11:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblassigment`
--

CREATE TABLE `tblassigment` (
  `ID` int(10) NOT NULL,
  `Tid` int(5) DEFAULT NULL,
  `Cid` int(5) DEFAULT NULL,
  `Sid` int(50) DEFAULT NULL,
  `AssignmentNumber` varchar(200) DEFAULT NULL,
  `AssignmenttTitle` varchar(200) DEFAULT NULL,
  `AssignmentDescription` mediumtext DEFAULT NULL,
  `SubmissionDate` date DEFAULT NULL,
  `AssigmentMarks` int(5) DEFAULT NULL,
  `AssignmentFile` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblassigment`
--

INSERT INTO `tblassigment` (`ID`, `Tid`, `Cid`, `Sid`, `AssignmentNumber`, `AssignmenttTitle`, `AssignmentDescription`, `SubmissionDate`, `AssigmentMarks`, `AssignmentFile`, `CreationDate`) VALUES
(13, 1, 1, 1, 'SE5-55953', 'Crossword', 'crossword', '2023-11-01', 40, '649c75e7a6a673890bd8cccc90ff940a1698517472.pdf', '2023-10-28 18:24:32'),
(14, 1, 1, 1, 'SE5-60932', 'Crossword', 'Solve the crossword and upload in pdf', '2023-11-01', 20, '73b6ae060dc942c4d176fa035591fe1a1698527631.pdf', '2023-10-28 21:13:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `ID` int(10) NOT NULL,
  `BranchName` char(200) DEFAULT NULL,
  `CourseName` char(200) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`ID`, `BranchName`, `CourseName`, `CreationDate`) VALUES
(1, 'Computer Engineering', 'B.E.', '2023-10-28 17:36:36'),
(2, 'Information Technology', 'B.E.', '2023-10-28 17:36:53'),
(3, 'Biomedical', 'B.E.', '2023-10-28 17:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `ID` int(10) NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`ID`, `Title`, `Description`, `CreationDate`) VALUES
(1, 'Announcement of Annual Function', 'Annual Function is held in our college if anyone wants to perform kindly give their name.', '2020-07-12 06:33:01'),
(2, 'News', 'Recently there is a tsunami in andra pradesh ', '2020-07-12 06:34:00'),
(3, 'fdsfse', 'fdsferwa', '2020-07-12 06:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsbyteacher`
--

CREATE TABLE `tblnewsbyteacher` (
  `ID` int(10) NOT NULL,
  `TeacherID` int(5) NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnewsbyteacher`
--

INSERT INTO `tblnewsbyteacher` (`ID`, `TeacherID`, `Title`, `Description`, `CreationDate`) VALUES
(1, 1, 'Practical dates has been Declared', 'Student check the detail of their Pratical', '2020-07-16 14:34:39'),
(2, 1, 'Announcement', 'All students come on the ground tomorrow at 8 a.m', '2020-07-16 07:44:38'),
(3, 4, 'Tesrt', 'Tes purpose', '2020-09-16 15:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `ID` int(5) NOT NULL,
  `CourseID` int(5) DEFAULT NULL,
  `SubjectFullname` char(200) DEFAULT NULL,
  `SubjectShortname` char(200) DEFAULT NULL,
  `SubjectCode` varchar(6) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`ID`, `CourseID`, `SubjectFullname`, `SubjectShortname`, `SubjectCode`, `CreationDate`) VALUES
(1, 1, 'Software Engineering', 'SE', 'SE5', '2023-10-28 17:38:53'),
(2, 1, 'Computer Networking', 'CN', 'CN5', '2023-10-28 17:39:16'),
(3, 1, 'Theory Of Computer Science', 'TCS', 'TCS5', '2023-10-28 17:39:54'),
(4, 1, 'DataWarehouse Mining', 'DWM', 'DWM5', '2023-10-28 17:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(10) NOT NULL,
  `EmpID` varchar(50) DEFAULT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `Dob` varchar(200) DEFAULT NULL,
  `CourseID` int(5) DEFAULT NULL,
  `Religion` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`ID`, `EmpID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Gender`, `Dob`, `CourseID`, `Religion`, `Address`, `Password`, `ProfilePic`, `JoiningDate`) VALUES
(1, 'SBJ', 'Sachin', 'Bojewar', 9876546387, 'sachin.bojewar@vit.edu.in', 'Male', '19-3-1980', 1, 'Hindu', 'Mumbai', 'e7f6580235629f00c4abd524218fea0f', 'NA', '2023-10-28 18:17:41'),
(2, 'AKN', 'Amit', 'Nerurkar', 7798465730, 'amit.nerurkar@vit.edu.in', 'Male', '19-2-1989', 1, 'Hindu', 'Thane', 'AKN1234', 'NA', '2023-10-28 17:46:45'),
(3, 'PV', 'Pankaj', 'Vanwari', 9846736482, 'pankaj.vanwari@vit.edu.in', 'Male', '19-4-1979', 1, 'Hindu', 'Nerul', 'PV1234', 'NA', '2023-10-28 17:46:45'),
(4, 'KS', 'Kavita', 'Shirsat', 7893123475, 'kavita.shirsat@vit.edu.in', 'Female', '19-4-1986', 1, 'Hindu', 'Wadala', 'KS1234', 'NA', '2023-10-28 17:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbluploadass`
--

CREATE TABLE `tbluploadass` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `AssId` int(5) DEFAULT NULL,
  `AssDes` mediumtext DEFAULT NULL,
  `AnswerFile` varchar(200) NOT NULL,
  `SubmitDate` timestamp NULL DEFAULT current_timestamp(),
  `Marks` decimal(10,2) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluploadass`
--

INSERT INTO `tbluploadass` (`ID`, `UserID`, `AssId`, `AssDes`, `AnswerFile`, `SubmitDate`, `Marks`, `Remarks`, `UpdationDate`) VALUES
(1, 1, 3, 'Please the attachment of answer sheet', '49b1034a769848f4b8163174fa05d5a61594812931.pdf', '2020-07-15 11:35:31', 45.00, 'Good', '2020-07-16 07:17:48'),
(2, 1, 4, 'Sample Text', '49b1034a769848f4b8163174fa05d5a61594817244.pdf', '2020-07-15 12:47:24', 48.00, 'good', '2023-10-28 05:48:29'),
(3, 2, 1, 'PFA', '49b1034a769848f4b8163174fa05d5a61594817292.pdf', '2020-07-15 12:48:12', 10.00, 'gdfgdf', '2020-07-15 18:02:54'),
(4, 4, 1, 'PFA', '49b1034a769848f4b8163174fa05d5a61594817353.pdf', '2020-07-15 12:49:13', NULL, NULL, NULL),
(5, 1, 7, 'PFA', '2582eaed284849e828a2e7f250b02e4e1595074317.pdf', '2020-07-18 12:11:57', NULL, NULL, NULL),
(6, 5, 9, 'This for Testing purpose', '2c86e2aa7eb4cb4db70379e28fab9b521599755007.pdf', '2020-09-10 16:23:27', NULL, NULL, NULL),
(7, 6, 10, 'Assignment Complete', '2c86e2aa7eb4cb4db70379e28fab9b521600271784.pdf', '2020-09-16 15:56:24', 46.00, 'Very Good', '2020-09-16 15:57:45'),
(8, 5, 11, 'Assignment', '8c3050970351160d7e9ce3336e296db01698471903.pdf', '2023-10-28 05:45:03', 40.00, 'Need to improve', '2023-10-28 05:46:28'),
(9, 2, 12, 'NA', '65f54b79071a1f79ccf34af38d5195ab1698517181.pdf', '2023-10-28 18:19:41', 40.00, 'NA', '2023-10-28 18:21:16'),
(10, 2, 13, 'NA', '649c75e7a6a673890bd8cccc90ff940a1698521211.pdf', '2023-10-28 19:26:51', 20.00, 'NA', '2023-10-28 19:27:42'),
(11, 2, 14, 'Crossword assignment', '649c75e7a6a673890bd8cccc90ff940a1698527696.pdf', '2023-10-28 21:14:56', 20.00, 'NA', '2023-10-28 21:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Cid` int(5) DEFAULT NULL,
  `RollNumber` varchar(255) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Cid`, `RollNumber`, `Password`, `RegDate`) VALUES
(1, 'Mugdha Sawalpurkar', 9874563217, 'mugdha.sawalpurkar', 1, '21101A0004', 'mugdha.sawalpurkar', '2023-10-28 19:24:58'),
(2, 'Sarvesh Gaonkadkar', 9846736482, 'sarvesh.gaonkadkar@vit.edu.in', 1, '21102B0001', '3586fa3d58f406bb7187482c456e3104', '2023-10-28 18:15:09'),
(3, 'Om Ghag', 9846375847, 'om.ghag@vit.edu.in', 1, '21102B0002', 'om.ghag', '2023-10-28 18:11:44'),
(4, 'Shivam Mahadik', 7848395748, 'shivam.mahadik', 1, '21102B0003', 'shivam.mahadik', '2023-10-28 18:11:44'),
(5, 'Tejas Kumbhar', 8975849385, 'tejas.kumbhar@vit.edu.in', 1, '21102B0004', 'tejas.kumbhare', '2023-10-28 18:11:44'),
(6, 'Anurag Kumbhare', 7877685947, 'anurag.kumbhre@vit.edu.in', 1, '21102B0005', 'anurag.kumbhare', '2023-10-28 18:11:44'),
(7, 'Sairaj Nanche', 9874563217, 'sairaj.nanche@vit.edu.in', 1, '21102B0006', 'sairaj', '2023-10-28 18:47:51'),
(8, 'Siddhant Gawai', 9846736482, 'siddhant.gawai@vit.edu.in', 1, '21102B0007', 'sidd', '2023-10-28 18:47:51'),
(9, 'Manjiri Naik', 9874563217, 'manjiri.naik@vit.edu.in', 1, '21102B0008', 'manjiri', '2023-10-28 19:15:21'),
(10, 'Ayushi Limje', 9846736482, 'ayushi.limje', 1, '21102B0009', 'ayushi', '2023-10-28 19:15:21'),
(11, 'Pradip Garhwal', 9857432245, 'pradip.garhwal@vit.edu.in', 1, '21102B0010', 'pradip', '2023-10-28 19:15:21'),
(12, 'Tanmay Patil', 7748339948, 'tanmay.patil@vit.edu.in', 1, '21102B0011', 'tanmay', '2023-10-28 19:15:21'),
(13, 'Atharva Ingole', 7789869586, 'atharva.ingole@vit.edu.in', 1, '21102B0012', 'atharva', '2023-10-28 19:17:29'),
(14, 'Sachin Gaikwad', 8896958421, 'sachin.gaikwad@vit.edu.in', 1, '21102B0013', 'sachin', '2023-10-28 19:17:29'),
(15, 'Ruhi Ambone', 9986958321, 'ruhi.ambone@vit.edu.in', 1, '21102B0014', 'ruhi', '2023-10-28 19:21:34'),
(16, 'Vidisha More', 8775948321, 'vidisha.more@vit.edu.in', 1, '21102B0015', 'vidi', '2023-10-28 19:21:34'),
(17, 'Abhishek Gadankush', 9857432245, 'abhishek.gadankush@vit.edu.in', 1, '21102B0016', 'abhishek', '2023-10-28 19:21:34'),
(18, 'Shweta Ghadshi', 7748339948, 'shweta.ghadshi@vit.edu.in', 1, '21102B0017', 'shweta', '2023-10-28 19:21:34'),
(19, 'Shivani Mahadik', 7786948392, 'shivani.mahadik@vit.edu.in', 1, '21102B0018', 'shivani', '2023-10-28 19:21:34'),
(20, 'Achal Patil', 9876546387, 'achal.patil@vit.edu.in', 1, '21102B0019', 'achal', '2023-10-28 19:22:46'),
(21, 'Yatin More', 9846736482, 'yatin.more@vit.edu.in', 1, '21102B0020', 'Yatin', '2023-10-28 19:22:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblassigment`
--
ALTER TABLE `tblassigment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnewsbyteacher`
--
ALTER TABLE `tblnewsbyteacher`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluploadass`
--
ALTER TABLE `tbluploadass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblassigment`
--
ALTER TABLE `tblassigment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblnewsbyteacher`
--
ALTER TABLE `tblnewsbyteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluploadass`
--
ALTER TABLE `tbluploadass`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
