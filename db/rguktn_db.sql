-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2023 at 12:04 PM
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
-- Database: `rguktn_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `a_name` varchar(64) NOT NULL,
  `sub_name` varchar(64) NOT NULL,
  `tea_name` varchar(64) NOT NULL,
  `branch` varchar(64) NOT NULL,
  `file` varchar(64) NOT NULL,
  `download` varchar(64) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `a_name`, `sub_name`, `tea_name`, `branch`, `file`, `download`, `date`) VALUES
(3, 'unit1', 'TEF', 'Manish Mukhija', 'Computer science', 'Aj101090.pdf', 'Download', '2017-10-07'),
(4, 'unit2', 'dbms', 'vinod', 'Computer science', 'Aj977643.pdf', 'Download', '2017-10-08'),
(5, 'web', 'cse', 'ramana', 'Electrical', '', 'Download', '2023-06-18'),
(6, 'web', '1234567890', 'mnr', 'Computer science', '', 'Download', '2023-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `branch` varchar(128) NOT NULL,
  `uname` varchar(128) NOT NULL,
  `pass` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch`, `uname`, `pass`) VALUES
(8, 'Computer science', 'csadmin', 'Y3NhZG1pbg=='),
(9, 'Electronics', 'ecadmin', 'ZWNhZG1pbg=='),
(10, 'Electrical', 'eeadmin', 'ZWVhZG1pbg=='),
(11, 'Civil', 'cadmin', 'Y2FkbWlu'),
(12, 'Mechanical', 'meadmin', 'bWVhZG1pbg==');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`) VALUES
(1, '', '', '', '', '', '2023-06-19 08:35:08'),
(2, 'venkatramana', 'mnr@gmail.com', '9346939273', 'hi', 'bye', '2023-06-19 08:39:44'),
(3, '', '', '', '', '', '2023-06-19 08:52:52'),
(4, '', '', '', '', '', '2023-06-19 08:53:56'),
(5, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi', 'asdfgbhgfdsgh', '2023-06-19 08:55:07'),
(6, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'scdfghm', 'awdertygjhghfg', '2023-06-19 10:12:30'),
(7, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi', 'bye', '2023-06-19 10:38:39'),
(8, 'venkatramana', 'n190893@rguktn.ac.in', '9346939273', 'scdfghm', 'asdfghjk', '2023-06-19 10:49:27'),
(9, 'hi weshly', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-19 10:52:12'),
(10, '123', 'n190983@rguktn.ac.in', '9346939273', 'scdfghm', 'davdsfbgnhmj', '2023-06-19 10:56:05'),
(11, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'csadfghjkl.hjyhtgrewthyjkh', '2023-06-19 10:58:25'),
(12, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'sadfgmhj,hmgnfdsfgh,kmnb', '2023-06-19 11:03:37'),
(13, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'scdfghm', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '2023-06-19 11:06:33'),
(14, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi', 'hi bro ', '2023-06-19 11:11:13'),
(15, '12345', 'n190983@rguktn.ac.in', '9346939273', 'scdfghm', 'sdfgh', '2023-06-19 11:16:20'),
(16, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-19 16:45:58'),
(17, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-19 16:48:32'),
(18, '123', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-19 16:49:02'),
(19, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-19 16:52:11'),
(20, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-19 16:58:08'),
(21, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-19 17:08:38'),
(22, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'raavatledu bayya', 'raavatledu bayya', '2023-06-19 17:12:42'),
(23, '123', 'basha@gmail.com', '9346939273', 'raavatledu bayya', 'raavatledu bayya', '2023-06-19 17:20:14'),
(24, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'raavatledu bayya', 'bayya', '2023-06-19 17:37:02'),
(25, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'qswergthjkyr', '2023-06-19 17:58:51'),
(26, 'venkatramana', 'mnr@gmail.com', '9346939273', 'hi it from venkat web', 'scdvbcnm,h.m,jhgfdhfbjgnkhm', '2023-06-20 01:21:51'),
(27, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'dsfghjkl;lgf', '2023-06-20 01:24:22'),
(28, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'raavatledu bayya', 'raavatledu bayya', '2023-06-20 01:32:27'),
(29, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'raavatledu bayya', 'hi', '2023-06-20 01:39:13'),
(30, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'sadfghjklh', '2023-06-20 01:41:23'),
(31, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-20 01:45:01'),
(32, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi', 'hi it from venkat web', '2023-06-20 01:46:27'),
(33, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'scdfghm', 'WDERTYU', '2023-06-20 01:53:30'),
(34, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'raavatledu bayya', '<?php\r\nerror_reporting(E_ALL);\r\nini_set(\'display_errors\', 1);\r\n\r\nrequire \'/opt/lampp/htdocs/collage_website-master/PHPMailer-master/src/PHPMailer.php\';\r\nrequire \'/opt/lampp/htdocs/collage_website-master/PHPMailer-master/src/SMTP.php\';\r\nrequire \'/opt/lampp/htdocs/collage_website-master/PHPMailer-master/src/Exception.php\';\r\n\r\nuse PHPMailer\\PHPMailer\\PHPMailer;\r\nuse PHPMailer\\PHPMailer\\SMTP;\r\nuse PHPMailer\\PHPMailer\\Exception;\r\n\r\n// Create the messages table if it doesn\'t exist\r\n$servername = \"localhost\";\r\n$username = \"root\";\r\n$password = \"\";\r\n$dbname = \"mitrc_db\";\r\n\r\n// Create a connection\r\n$conn = new mysqli($servername, $username, $password, $dbname);\r\nif ($conn->connect_error) {\r\n    die(\"Connection failed: \" . $conn->connect_error);\r\n}\r\n\r\n// SQL query to create the messages table\r\n$sql = \"CREATE TABLE IF NOT EXISTS messages (\r\n    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,\r\n    name VARCHAR(255) NOT NULL,\r\n    email VARCHAR(255) NOT NULL,\r\n    phone VARCHAR(20) NOT NULL,\r\n    subject VARCHAR(255) NOT NULL,\r\n    message TEXT NOT NULL,\r\n    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP\r\n)\";\r\n\r\nif ($conn->query($sql) === TRUE) {\r\n    echo \"Table \'messages\' created or already exists.\";\r\n} else {\r\n    echo \"Error creating table: \" . $conn->error;\r\n}\r\n\r\n$conn->close();\r\n\r\n// Handle form submission\r\nif ($_SERVER[\'REQUEST_METHOD\'] === \'POST\') {\r\n    // Retrieve form data\r\n    $name = $_POST[\'name\'];\r\n    $email = $_POST[\'email\'];\r\n    $phone = $_POST[\'phone\'];\r\n    $subject = $_POST[\'subject\'];\r\n    $message = $_POST[\'message\'];\r\n\r\n    // Insert all inputs into the database (replace with your database configuration)\r\n    $conn = new mysqli($servername, $username, $password, $dbname);\r\n    if ($conn->connect_error) {\r\n        die(\"Connection failed: \" . $conn->connect_error);\r\n    }\r\n\r\n    // Prepare the SQL statement with placeholders\r\n    $sql = \"INSERT INTO messages (name, email, phone, subject, message) VALUES (?, ?, ?, ?, ?)\";\r\n    \r\n    // Prepare the statement\r\n    $stmt = $conn->prepare($sql);\r\n    \r\n    // Bind the parameters to the statement\r\n    $stmt->bind_param(\"sssss\", $name, $email, $phone, $subject, $message);\r\n\r\n    if ($stmt->execute() === TRUE) {\r\n        echo \"Data inserted successfully\";\r\n    } else {\r\n        echo \"Error inserting data: \" . $stmt->error;\r\n    }\r\n\r\n    $stmt->close();\r\n    $conn->close();\r\n\r\n    // Send email to admin using PHPMailer\r\n    $adminEmail = \"n190983@rguktn.ac.in\";\r\n    $adminSubject = \"New Message: $subject\";\r\n    $adminMessage = \"A new message has been received from the contact form:\\n\\nName: $name\\nEmail: $email\\nPhone: $phone\\nSubject: $subject\\nMessage: $message\";\r\n\r\n    $mail = new PHPMailer(true);\r\n    try {\r\n        // Enable verbose debug output\r\n        //$mail->SMTPDebug = SMTP::DEBUG_SERVER;\r\n\r\n        // Set SMTP configuration\r\n        $mail->isSMTP();\r\n        $mail->Host = \'smtp.gmail.com\';\r\n        $mail->SMTPAuth = true;\r\n        $mail->Username = \'n190983@rguktn.ac.in\';\r\n        $mail->Password = \'gmnjvpatyhzvhnvz\';\r\n        $mail->SMTPSecure = \'ssl\';\r\n        $mail->Port = 465;\r\n\r\n        // Set sender and recipient\r\n        $mail->setFrom($email, $name);\r\n        $mail->addAddress($adminEmail);\r\n\r\n        // Set email content\r\n        $mail->Subject = $adminSubject;\r\n        $mail->Body = $adminMessage;\r\n\r\n        // Send the email\r\n        $mail->send();\r\n        echo \"<script>alert(\'Email sent successfully\');</script>\";\r\n    } catch (Exception $e) {\r\n        echo \"Error sending email: \" . $mail->ErrorInfo;\r\n    }\r\n\r\n    // Redirect to a thank you page or back to the contact form\r\n    echo \"<script>alert(\'Thank you for your message. We will get back to you soon.\');window.location.href=\'index.html\';</script>\";\r\n}\r\n?>\r\n', '2023-06-20 02:00:40'),
(35, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi', 'hi', '2023-06-20 03:17:23'),
(36, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi', 'hi', '2023-06-20 03:19:38'),
(37, 'venkatramana', 'basha@gmail.com', '9346939273', 'raavatledu bayya', 'raavatledu bayya', '2023-06-20 03:24:24'),
(38, 'venkatramana', 'mnr@gmail.com', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-20 04:22:37'),
(39, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'asdfghjk', '2023-06-20 08:02:47'),
(40, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'raavatledu bayya', 'raavatledu bayya', '2023-06-20 12:21:27'),
(41, 'venkat', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi it from venkat web', '2023-06-21 01:46:56'),
(42, 'venkatramana', 'n190983@rguktn.ac.in', '7993174045', 'dsfhgjk.', 'asdfgjk', '2023-06-21 04:28:52'),
(43, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'hi it from venkat web', 'hi', '2023-06-21 10:44:50'),
(44, 'venkat', 'n190983@rguktn.ac.in', '9346939273', 'dsfhgjk.', 'adefwgerb wf ere g', '2023-06-22 11:32:13'),
(45, '123', 'n190983@rguktn.ac.in', '9346939273', 'raavatledu bayya', 'sdfwrgqergqergergfqerggg', '2023-06-22 11:41:17'),
(46, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'raavatledu bayya', 'efregrhheh', '2023-06-22 14:48:07'),
(47, 'venkatramana', 'n190983@rguktn.ac.in', '9346939273', 'riya it\'s working', 'riya it\'s working', '2023-06-22 14:52:01'),
(48, 'om,kae', 'u@123', '123', 'g', 'h', '2023-06-22 15:37:02'),
(49, 'venkatramana', 'mnr@gmail.com', '7993174045', 'riya it\'s working', 'riya it\'s working', '2023-06-22 16:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `mocktest`
--

CREATE TABLE `mocktest` (
  `id` int(11) NOT NULL,
  `m_name` varchar(64) NOT NULL,
  `sub_name` varchar(64) NOT NULL,
  `tea_name` varchar(64) NOT NULL,
  `branch` varchar(64) NOT NULL,
  `file` varchar(64) NOT NULL,
  `download` varchar(64) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mocktest`
--

INSERT INTO `mocktest` (`id`, `m_name`, `sub_name`, `tea_name`, `branch`, `file`, `download`, `date`) VALUES
(4, 'TEf test', 'TEF', 'Manish Mukhija', 'Computer science', 'arpit_offer_letter254176.pdf', 'Download', '2017-10-07'),
(5, 'hi', 'chem', 'sivaji', 'Electronics', '', 'Download', '2023-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `notice` varchar(64) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice`, `date`) VALUES
(1, 'Computer Science 5th sem project presentaion at 7 oct 2017', '2017-10-07'),
(2, 'newsletter is finally made', '2017-10-07'),
(3, 'all are wellcome', '2023-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `name`, `email`, `otp`, `is_verified`, `expires_at`) VALUES
(1, 'hai', 'n190983@rguktn.ac.in', '249459', 0, '2023-06-24 01:59:22'),
(2, 'hai', 'n190983@rguktn.ac.in', '826989', 0, '2023-06-24 05:33:21'),
(3, '143', 'n190983@rguktn.ac.in', '296354', 0, '2023-06-24 08:04:15'),
(4, 'jananasri', 'n190983@rguktn.ac.in', '692862', 0, '2023-06-24 08:15:53'),
(5, 'jananasri', 'n190983@rguktn.ac.in', '952962', 0, '2023-06-24 10:01:50'),
(6, 'jananasri', 'n190983@rguktn.ac.in', '550012', 0, '2023-06-24 06:32:25');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `dob` varchar(64) NOT NULL,
  `branch` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL,
  `status` varchar(64) NOT NULL,
  `uname` varchar(64) NOT NULL,
  `pass` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `phone`, `dob`, `branch`, `image`, `status`, `uname`, `pass`) VALUES
(10, 'Arpit Jain', 'jarpit1298@gmail.com', '07877743167', '2017-10-10', 'Computer science', 'arpit653706.jpg', 'success', 'jarpit1298@gmail.com', 'stu366265'),
(11, 'divyank', 'div@gmail.com', '1234567890', '2017-10-13', 'Computer science', 'Ashok Sir 1.jpg', 'success', 'div@gmail.com', 'stu48520'),
(12, 'manish', 'naman12@gmail.com', '7976411430', '2017-10-10', 'Computer science', 'arpit925617.jpg', 'success', 'naman12@gmail.com', 'stu739781'),
(13, '1234567890', 'n190983@rguktn.ac.in', '9346939273', '2023-06-20', 'Electrical', 'images188960.jpg', 'pending', 'ramana', 'venkatramana'),
(14, '1234567890', 'n190983@rguktn.ac.in', '9346939273', '2023-06-02', 'Computer science', 'images764735.jpg', 'pending', 'ramana', 'venkatramana'),
(15, '1234567890', 'n190983@rguktn.ac.in', '1234567890', '2023-07-01', 'Computer science', '273343.', 'pending', 'ramana', 'venkatramana'),
(16, '1234567890', 'n190983@rguktn.ac.in', '9346939273', '2023-06-14', 'Electrical', 'images138728.jpg', 'pending', 'ramana', 'venkatramana'),
(17, '1234567890', 'n190983@rguktn.ac.in', '9346939273', '2023-06-16', 'Electrical', 'images921086.jpg', 'pending', 'mnr', 'mnr'),
(18, 'venkat', 'n190983@rguktn.ac.in', '9346939273', '2023-06-08', 'Electrical', 'images12561.jpg', 'pending', 'venkat', 'venkat'),
(19, '', '', '', '', '', '913895.', 'pending', '', ''),
(20, 'ramu', 'n190983@rguktn.ac.in', '9346939273', '2023-06-30', 'Computer science', 'images974645.jpg', 'pending', 'ramu', 'ramu'),
(21, 'venkat', 'n190983@rguktn.ac.in', '9346939273', '2023-06-08', 'Electronics', '160886.', 'pending', 'venkat', 'venkat'),
(22, 'basha', 'mnr@gmail.com', '9346939273', '2023-06-10', 'Electronics', '617183.', 'pending', 'basha', 'basha'),
(23, 'kojja vishly', 'vishly@gmail.com', '7993174045', '2023-06-10', 'Electronics', 'images355191.jpg', 'pending', 'vishly', 'vishly'),
(24, 'hi kojja vishly', 'n190983@rguktn.ac.in', '9346939273', '2023-06-02', 'branch', 'images443842.jpg', 'pending', 'vishly', 'vishly'),
(25, 'ramanakrishna', 'mnr@gmail.com', '9346939273', '2023-06-17', 'Electronics', 'images79782702106.jpg', 'pending', 'ramakrishna', 'ramakrishna'),
(26, 'venkat', 'mnr@gmail.com', '', '', '', '907000.', 'pending', '', ''),
(27, '1234567890', 'n190983@rguktn.ac.in', '9346939273', '2023-06-19', 'Computer science', 'images79782804286.jpg', 'pending', 'weshly', 'weshly'),
(28, 'naresh', 'n190667@rguktn.ac.in', '1234567', '0299-02-20', 'Computer science', 'arpit17580.jpg', 'pending', 'nmm', 'nnnn');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `dob` varchar(64) NOT NULL,
  `branch` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL,
  `status` varchar(64) NOT NULL,
  `uname` varchar(64) NOT NULL,
  `pass` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `email`, `phone`, `dob`, `branch`, `image`, `status`, `uname`, `pass`) VALUES
(2, 'Manish Mukhija', 'mukija1298@gmail.com', '7976411430', '2017-10-02', 'Computer science', 'IMG_7045.JPG', 'success', 'mukija1298@gmail.com', 'tea358319'),
(3, 'mnr', 'mnr123@gmail.com', '123456', '2023-06-02', 'Electronics', 'Front.jpg', 'pending', '', ''),
(4, 'mnr', 'n190983@rguktn.ac.in', '9346939273', '2023-06-03', 'Electrical', 'images417514.jpg', 'pending', 'mnr', 'mnr'),
(5, 'basha', 'basha@gmail.com', '1234567890', '2023-06-23', 'Mechanical', 'images654318.jpg', 'pending', 'basha', 'basha'),
(6, 'basha', 'basha@gmail.com', '9346939273', '2023-06-28', 'Mechanical', 'images79782.jpg', 'pending', 'basha', 'basha'),
(7, 'mnr', 'n190983@rguktn.ac.in', '9346939273', '2023-06-19', 'Civil', 'images884960.jpg', 'pending', 'naresh', 'naresh'),
(8, 'mnr', 'n190983@rguktn.ac.in', '9346939273', '2023-06-02', 'Electronics', 'images355191607984.jpg', 'pending', 'mnr', 'mnr'),
(9, 'picchi pooku Naresh', 'n190667@rguktn.ac.in', '9346939273', '2023-06-10', 'branch', 'arpit222348.jpg', 'pending', 'naresh', 'naresh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mocktest`
--
ALTER TABLE `mocktest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `mocktest`
--
ALTER TABLE `mocktest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
