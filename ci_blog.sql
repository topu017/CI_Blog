-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2018 at 08:32 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 1, 'Business', '2018-12-15 13:41:01'),
(2, 1, 'Technology', '2018-12-15 13:41:01'),
(3, 1, 'Art', '2018-12-18 11:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(2, 13, 'John', 'john@example.com', 'Great post', '2018-12-19 10:13:21'),
(3, 13, 'Jenny Sparkle', 'jenny@example.com', 'Thank you for this awesome post ', '2018-12-19 10:33:20'),
(4, 1, 'John Doe', 'john@example.com', 'Very nice', '2018-12-19 10:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 2, 1, 'Post One', 'Post-One', '<p>Pellentesque at nibh lorem. Suspendisse euismod, justo ac dictum faucibus, risus eros feugiat purus, ac feugiat velit odio nec justo. Etiam dictum metus eget fermentum sollicitudin. Donec rhoncus vitae purus ac dignissim. Sed pretium turpis id nibh dignissim tincidunt. Nunc scelerisque augue leo, eu tristique tellus fringilla id. Aenean aliquet nunc sed leo fringilla, a sagittis erat dictum. Phasellus eget viverra urna. Praesent sodales dapibus felis, nec sagittis augue sollicitudin accumsan. Aliquam et nisl dolor. Morbi purus ex, pharetra sed interdum at, dignissim et nulla. Morbi consequat suscipit est dapibus ullamcorper. Praesent vitae tincidunt tortor. Etiam eget posuere lorem. Suspendisse eget purus augue.</p>', 'imagesavatar.png', '2018-12-22 13:49:32'),
(2, 1, 1, 'Post two', 'Post-two', '<p>Donec rhoncus auctor eros. Nulla facilisi. Nulla vel dapibus est, ut fringilla leo. In hac habitasse platea dictumst. Nullam lacinia, nisl sit amet vehicula accumsan, turpis massa mattis augue, et tempor neque nisi vel augue. Mauris ornare nibh non mollis pharetra. Sed eget neque neque. Duis consectetur pellentesque accumsan. Cras nisl justo, blandit vel felis ac, sollicitudin finibus nibh.</p>', 'imagesenvelop.png', '2018-12-22 13:49:38'),
(5, 2, 1, 'Post Three', 'Post-Three', '<h4>This is heading 1</h4><p>This is heading 3</p>', 'imagesworld.png', '2018-12-22 13:49:42'),
(11, 1, 1, 'Testing Image Post', 'Testing-Image-Post', '<p>dfadfasdf</p>', 'imageorange.png', '2018-12-22 13:49:46'),
(14, 3, 1, 'Testing Image Post without image', 'Testing-Image-Post-without-image', '<h3><i><strong>Testing Image Post without image</strong></i></h3>', 'noimage.jpg', '2018-12-22 14:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'John Doe', '36465', 'john@example.com', 'john', 'e10adc3949ba59abbe56e057f20f883e', '2018-12-21 07:38:17'),
(2, 'Brad Lee', '35453', 'brad@example.com', 'brad', 'e10adc3949ba59abbe56e057f20f883e', '2018-12-22 14:02:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
