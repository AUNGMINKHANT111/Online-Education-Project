-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 01:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`user_id`, `playlist_id`) VALUES
('yGbLGjCfFXTIsJbatPBY', 'L7a1eDBJD4EfxWuIhSEY');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('6S4afh5G6GaC0PONh0H9', '5CrcarrwOlFiJZJBljbW', 'FokNnvjzPP6bx0Lr8VVf', 'rjgT5XLcCZ8Y1nnvkK34', 'Nice.....', '2023-12-02'),
('aQQVdms0UGrYONnRt3ws', '5CrcarrwOlFiJZJBljbW', 'yGbLGjCfFXTIsJbatPBY', 'rjgT5XLcCZ8Y1nnvkK34', 'Thanks for sharing..', '2023-12-02'),
('czOjmxOa159cSz5NT7I0', 'W3GyoyP50hi2ib3Bifbc', 'yGbLGjCfFXTIsJbatPBY', 'rjgT5XLcCZ8Y1nnvkK34', 'Thank for sharing..', '2023-12-02'),
('smeS7TrFyE08HYyLOhVr', 'C5TwWG9bOLxCYlm7iVbN', 'yGbLGjCfFXTIsJbatPBY', 'LTUnJiYE41jeM8kiVvUN', 'Thank for sharing..', '2023-12-02'),
('OZoUXOYAi0wO4iV5HUUQ', 'FTDovthinHWRUs7nPvCe', 'yGbLGjCfFXTIsJbatPBY', 'LTUnJiYE41jeM8kiVvUN', 'Thank for sharing..', '2023-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `number`, `message`) VALUES
('kay', 'kaykyi@gmail.com', 912321312, 'fdsafsdafasdfdasf');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('5CrcarrwOlFiJZJBljbW', 'rjgT5XLcCZ8Y1nnvkK34', 'QYmEsR8WEeip95YYH5Dp', 'how to take a good picture', 'This is a bout photography', 'B884zMy6WLpY3fasBRgn.mp4', 't4toXVkUQVCvXkhWf3MX.jpg', '2023-12-02', 'active'),
('W3GyoyP50hi2ib3Bifbc', 'rjgT5XLcCZ8Y1nnvkK34', 'L7a1eDBJD4EfxWuIhSEY', 'Disney land photography', 'Disney land photography', 'bZ6iCmBIw6Wi6ThJNigx.mp4', 'OjeeLUuSqe6n5TPw3Ujt.jpg', '2023-12-02', 'active'),
('FTDovthinHWRUs7nPvCe', 'LTUnJiYE41jeM8kiVvUN', '93bgrZ5qi17J2mY058dE', 'Version Control', 'This is about version Control', 'uMUj9T1sWepeCJaQ69ZB.mp4', 'EPxkoytuIbsU4TNP9dKB.jpg', '2023-12-02', 'active'),
('C5TwWG9bOLxCYlm7iVbN', 'LTUnJiYE41jeM8kiVvUN', 'nQvguzRfaPfik1MO2wrt', 'PHP Difference between Echo and Print', 'please watch the video and practice.', 'ifUZ3GvSAnZiHewIZiOK.mp4', 'KCY6eEzXjU08jW2Nv0bY.jpg', '2023-12-02', 'active'),
('8zWD1m3WMkwxtISEBjtz', 'Y2jy4DOmycQo5m9PUIjI', 'BVzb9JaUXfs6aDaqCHSM', 'late pyar - blush', 'album one', 'CaNXbPxoO2MN25fNKyHM.mp4', 'igXYma70kZ4Baea7E2KU.jpg', '2023-12-02', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('FokNnvjzPP6bx0Lr8VVf', 'rjgT5XLcCZ8Y1nnvkK34', '5CrcarrwOlFiJZJBljbW'),
('yGbLGjCfFXTIsJbatPBY', 'rjgT5XLcCZ8Y1nnvkK34', 'W3GyoyP50hi2ib3Bifbc'),
('yGbLGjCfFXTIsJbatPBY', 'LTUnJiYE41jeM8kiVvUN', 'FTDovthinHWRUs7nPvCe');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('QYmEsR8WEeip95YYH5Dp', 'rjgT5XLcCZ8Y1nnvkK34', 'MoMo Land', 'enjoyer', 'hBq1s732OVe8N5WdpiFf.jpg', '2023-12-02', 'active'),
('L7a1eDBJD4EfxWuIhSEY', 'rjgT5XLcCZ8Y1nnvkK34', 'disneyland', 'enjoyer', '3BsJZ6gIrdBJD7VMAHvF.jpg', '2023-12-02', 'active'),
('nQvguzRfaPfik1MO2wrt', 'LTUnJiYE41jeM8kiVvUN', 'PHP', 'PHP is a general-purpose scripting language geared towards web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995. The PHP reference implementation is now produced by the PHP Group. PHP was originally an abbreviation of Personal Home Page, but it now stands for the recursive initialism PHP: Hypertext Preprocessor', 'ajMXbb7gXDPb7Sx8aY6X.jpg', '2023-12-02', 'active'),
('rl8tgFhPWl3v2M2BHPJ1', 'LTUnJiYE41jeM8kiVvUN', 'Laravel', 'Laravel is a web application framework with expressive, elegant syntax. A web framework provides a structure and starting point for creating your application, allowing you to focus on creating something amazing while we sweat the details.', 'IKiVqcXtbFClpdePQd9q.svg', '2023-12-02', 'active'),
('52CtOtcfOWKGlGRDme4Z', 'LTUnJiYE41jeM8kiVvUN', 'C#', 'C# (pronounced See sharp) is a general-purpose high-level programming language supporting multiple paradigms. C# encompasses static typing, strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming disciplines.', 'IiDzK4SJvXhpPyruMmLI.jpg', '2023-12-02', 'active'),
('93bgrZ5qi17J2mY058dE', 'LTUnJiYE41jeM8kiVvUN', 'Version Control Git/ Github', 'GitHub, Inc. is a platform and cloud-based service for software development and version control, allowing developers to store and manage their code', 'KEvFOks72D28iZ1oyRJ1.jpg', '2023-12-02', 'active'),
('wUv02Yoybi3BEMmefQIf', 'LTUnJiYE41jeM8kiVvUN', 'Codeigniter', 'CodeIgniter is a PHP MVC framework used for developing web applications rapidly. CodeIgniter provides out of the box libraries for connecting to the database and performing various operations like sending emails, uploading files, managing sessions, etc.', 'nXzglq6CABler5hBN84i.jpg', '2023-12-02', 'active'),
('DSmMQRvvElBhkjRXAR0N', 'LTUnJiYE41jeM8kiVvUN', 'JavaScript', 'JavaScript (/ ˈ dʒ ɑː v ə s k r ɪ p t /), often abbreviated as JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS', 'VSAfkHpH6YTH3z1IKOMs.jpg', '2023-12-02', 'active'),
('BVzb9JaUXfs6aDaqCHSM', 'Y2jy4DOmycQo5m9PUIjI', 'BLUSH', 'album- no1', '77NTzN96uJjGIgr3X7Cv.jpg', '2023-12-02', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('2hdNyCIIRHCOq58K3EIZ', 'mgmg', 'developer', 'a@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'daID5A3uh8e8CzrECUEP.jpg'),
('rjgT5XLcCZ8Y1nnvkK34', 'koko', 'photographer', 'koko@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'EbjdXemZcwg6PfeR9sfr.jpg'),
('LTUnJiYE41jeM8kiVvUN', 'Aung Min Khant', 'developer', 'aungmin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ADvL7qouCiLOHwjAt8u5.jpg'),
('Y2jy4DOmycQo5m9PUIjI', 'Kay Kyi Htet', 'musician', 'kaykyi@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'qjNwIxXM6wkdijQjOkKq.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('FokNnvjzPP6bx0Lr8VVf', 'Aung Min Khant', 'aungmin@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'esLeVWIknFxX3YP1FykX.jpg'),
('yGbLGjCfFXTIsJbatPBY', 'kay kyi', 'student1@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'rokvUWQHE8k2vjCfEWhj.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
