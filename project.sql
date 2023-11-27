-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2023 at 07:31 PM
-- Server version: 8.0.35-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(2, 'Pizza', 1),
(3, 'beer', 1),
(4, 'Lemon', 1),
(5, 'Chicken', 1),
(6, 'Tandoori', 1),
(7, 'Rooti', 1),
(8, 'Veg Pizza', 1),
(9, 'Non-Veg Pizza', 1),
(10, 'Burger', 1),
(11, 'Ice Cream', 1),
(12, 'Mango', 1),
(13, 'banana', 1),
(14, 'Carrot', 1),
(15, 'sweets', 1),
(16, 'Web Development', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Mahi', 'mahiraj123@gmail.com', '1234567890', 'This is test comment fdghretdhfdhyftgyhtryhtryrteytreyretytryetryrteytryrtyretyreyertyrteyrteyherty regfg rtg srtdsd ysrettsfdygsret sretter sertgsre str stfdgsdt sret rets gtrgtfdhtfdh rfht hh dtfyhdtfh yrtdrhtdyh rt fygh', '2022-09-24 19:39:30'),
(2, 'Mahi', 'mahi123@gmail.com', '0123456789', 'Testing', '2022-10-22 05:10:11'),
(3, 'Mahi', 'mahiraj12@gmail.com', '9113112416', 'Hello This is test message.', '2022-10-28 11:37:24'),
(4, 'Mahi', 'mahiraj12@gmail.com', '9113112416', 'Hello This is test message.', '2022-10-28 11:37:29'),
(5, 'Debasis', 'debvasis123@gmail.com', '3126549870', 'rtfyrtut6yurty', '2022-11-10 04:14:50'),
(6, 'Debasis', 'debvasis123@gmail.com', '3126549870', 'rtfyrtut6yurty', '2022-11-10 04:16:34'),
(7, 'Debasis', 'debvasis123@gmail.com', '3126549870', 'rtfyrtut6yurty', '2022-11-10 04:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1, 15, 'Product 3', 1000, 949, 100, '920060135_s2.png', 'short desc', 'desc', '', '', '', 1),
(2, 15, 'Laddu Thali', 1000, 999, 100, '756157399_s1.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta tenetur expedita amet eaque quod fugit! Eligendi voluptatem maxime quidem! Possimus.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti alias veniam ipsum quibusdam! Corporis quibusdam, enim cum eos fuga dolorem voluptas provident cumque distinctio omnis voluptatum officia, sit nulla, vero quisquam. Quos dignissimos ullam cumque expedita numquam rem ipsa dolorem omnis, quaerat ea quas hic fugiat eveniet totam corrupti provident laudantium alias eaque nesciunt quod. Quam nesciunt officiis perferendis dolor, sapiente delectus! Pariatur magni, quia quo neque laboriosam earum itaque dicta obcaecati incidunt dolorum repellendus eos voluptatum ducimus totam, natus consequatur numquam molestiae nesciunt id! Alias cumque vel eveniet ducimus dolore quisquam commodi quidem ullam, nam quo, incidunt aliquid molestias excepturi voluptatem, ipsam mollitia iusto corrupti beatae architecto inventore earum itaque velit. Et, qui reprehenderit enim explicabo rerum veniam quos! Delectus fugiat atque nam. Nam deserunt in dolore esse, perferendis maxime quasi illo delectus saepe odit ducimus hic odio, quisquam soluta atque architecto repellat dolorem? Aspernatur, soluta atque deserunt libero maxime aut doloremque. Nam quod officia odio obcaecati velit qui? Quasi nam expedita odio temporibus possimus dignissimos maxime vero accusantium repellat modi ducimus ut voluptas veritatis harum animi eligendi cumque culpa nisi tempora magnam vel, qui perspiciatis hic! Quis magni culpa fugiat nihil sed saepe voluptate esse eaque ipsam soluta!', 'consectetur adipisicing elit.', '', 'yture', 1),
(3, 2, 'Product 1', 2000, 1600, 100, '848193058_p1.png', 'Pizza Short Des', 'Pizza Desc', 'Pizza Meta Title', 'Pizza Meta Desc', 'Pizza Meta Key', 1),
(4, 13, 'Salads', 50, 40, 12, '373841233_vegetables.png', 'salads', 'salads', 'salads', 'salads', 'salads', 1),
(5, 3, 'Beer', 199, 119, 100, '330864097_994029994_beer.png', 'bEER', 'bEER', 'bEER', '', 'bEER', 1),
(6, 16, 'hujtrju', 25, 74, 10, '309654092_WhatsApp Image 2023-10-29 at 2.20.01 AM.jpeg', 'gtgdhtrdh', 'yuhtrhyt', 'huhdjh', 'gfd', 'dfhjd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(13, 'mahi', '1234', 'mahi@gmail.com', '3214659870', '2022-10-30 15:44:05'),
(14, 'mahi', '312654', 'mahi1@gmail.com', '3216549870', '2022-10-30 03:55:43'),
(15, 'mahi', '321654', 'mahi12@gmail.com', '3126547890', '2022-10-30 03:56:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
