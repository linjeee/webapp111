-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2023 at 01:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
(1, 'mathawee', 'admin', 'mathawee201@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 'szZLQUM2TuYtmAyuFboI.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `id` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `playlist_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`id`, `user_id`, `playlist_id`) VALUES
(4, 117, 10);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(200) NOT NULL,
  `content_id` int(200) NOT NULL,
  `post_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `comment` varchar(10000) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `post_id`, `user_id`, `comment`, `date`) VALUES
(1, 3, 0, 117, 'สวยครับ', '2023-02-08 11:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `commentss`
--

CREATE TABLE `commentss` (
  `id` int(200) NOT NULL,
  `post_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `comment` mediumtext NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commentss`
--

INSERT INTO `commentss` (`id`, `post_id`, `user_id`, `comment`, `date`) VALUES
(3, 7, 117, 'HTML เป็นภาษาคอมพิวเตอร์ที่มีบทบาทอย่างมากในยุคปัจจุบัน โครงสร้างของ HTML จะเป็นในรูปแบบของ Tag ต่างๆ และ Web Browser จะแปลความของ Tag แต่ละ Tag ออกมาเป็นหน้าตาเว็บไซต์ เพราะจากรูปแบบของภาษาสำหรับการสร้างหน้าเว็บ ที่มีลักษณะเป็นเอกสารแบบไฮเปอร์เท็กซ์ซึ่งมีคุณสมบัติที่สามารถ เชื่อมโยงข้อมูลต่างๆ ไปยัง หน้าเว็บอื่นๆ ตามต้องการได้ทำ ให้ การเชื่อมโยงข้อมูลในหน้าเว็บต่างๆ ในอินเทอร์เน็ตเป็นไปอย่าง สะดวก และรวดเร็ว ในปัจจุบัน แม้ว่าจะมีโปรแกรมประยุกต์สำ หรับหน้าเว็บ ต่างๆ ออกมามากมาย เพื่อสร้างความสะดวกในการสร้างหน้าเว็บ ให้กับผู้ใช้ด้วยการแปลงสิ่งที่ผู้ใช้ออกแบบหน้าเว็บ ให้เป็นไฟล์ HTML โดยที่ผู้สร้างหน้าเว็บ ไม่จำ เป็นต้องมีความรู้เกี่ยวกับ HTML การเรียนรู้ HTML ยังเป็นสิ่งที่จำ เป็น นอกจากจะ ใช้สร้างหน้าเว็บแล้ว ยังสามารถใช้ในการแก้ไขเนื้อหาหน้าเว็บที่มี อยู่แล้ว โดยไม่ต้องติดตั้งโปรแกรมประยุกต์ใดรวมทั้งสามารถเพิ่ม สีสัน และความน่าสนใจให้กับหน้าเว็บ', '2023-02-08 11:51:32'),
(19, 7, 123, 'ความรู้ดีมาก', '2023-02-08 19:34:14'),
(20, 7, 117, 'ขอบคุณมากครับ', '2023-02-08 19:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `number`, `message`) VALUES
(1, 'mathawee linjee', 'mathawee.li@rmuti.ac.th', '0965616808', 'สนใจอยากสมัครเป็นแอดมิน'),
(2, 'mathawee', 'mathawee202@gmail.com', '0965616808', 'สวัสดีครับ ผู้ดูแลระบบ'),
(3, 'linjee', 'mathawee204@gmail.com', '0965616808', 'สวัสดีครับบบบบบ !!!');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `playlist_id` int(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `user_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
(3, 117, 10, 'HTML', 'HTML', 'qhpOC8Aw9wwQbM8wmgtp.mp4', '4tpZ99FqXyQuFW1P8q4h.png', '2023-02-08 11:52:09', 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `content_id` int(200) NOT NULL,
  `post_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `content_id`, `post_id`) VALUES
(12, 117, 0, 7),
(16, 123, 0, 7),
(17, 124, 0, 7),
(19, 117, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `user_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
(10, 117, 'การบ้าน HTML', 'HTML', 'QE90KC3xkYrqkBch7OYH.png', '2023-02-08 11:49:37', 'active'),
(13, 117, 'การบ้าน CSS', ' CSS', 'Yf7bsETmRG9vu9nqlcfG.png', '2023-02-08 12:03:39', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `playlist_id` int(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `user_id`, `playlist_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
(7, 117, 10, 'การบ้าน HTML', 'HTML คืออะไร ????', 'paZSRDZc6HXfbhDHchk5.png', '2023-02-08 11:49:56', 'deactive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `verifiedEmail` int(11) NOT NULL DEFAULT 0,
  `token` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `verifiedEmail`, `token`, `name`, `image`) VALUES
(117, 'mathawee.li@rmuti.ac.th', 'Mathawee', 'Linjee', 1, '105220383653932690764', 'mathawee', 0x68747470733a2f2f6c68332e676f6f676c6575736572636f6e74656e742e636f6d2f612f41456446547034355833656354753237483862744b476e52616273646b65393172696d2d6e7449576d55756f3d7339362d63),
(123, 'linjee8456@gmail.com', 'mathaeiei', 'linsee', 1, '110444159131055044369', 'mathaeiei linsee', 0x68747470733a2f2f6c68332e676f6f676c6575736572636f6e74656e742e636f6d2f612f4145644654703539576d692d634d547341375454762d47496f636c5f654f37397670765f4e777a6f446f6d643d7339362d63),
(125, 'mathaweelinjee0001@gmail.com', 'mathawee', 'linjee', 1, '102800762418029743299', 'mathawee linjee', 0x68747470733a2f2f6c68332e676f6f676c6575736572636f6e74656e742e636f6d2f612f41456446547036424d65496f5f5f634f4562584b7033395a426749483668343248794f546c77334e707666383d7339362d63);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentss`
--
ALTER TABLE `commentss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `commentss`
--
ALTER TABLE `commentss`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
