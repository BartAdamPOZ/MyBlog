-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 04:56 PM
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
-- Database: `cms_www`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `published_at` varchar(30) DEFAULT NULL,
  `image_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `published_at`, `image_file`) VALUES
(1, 'My new post.', 'This is the Kit is both the name of the band and the stage name of British musician Kate Stables. Originally from Bristol, they (and the membership of the band is always evolving) were initially discovered by Guy Garvey, the singer of Elbow.', '2023-10-19 19:02:08', NULL),
(2, 'Second post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse et mattis erat. Nam condimentum ligula odio, vitae congue est pulvinar vitae. Curabitur et elementum ex. Duis ligula ante, efficitur ac ex non, consectetur interdum nisl. Suspendisse ac magna consequat, laoreet arcu eget, venenatis turpis. Ut viverra commodo mauris, pulvinar blandit ipsum faucibus sit amet. Pellentesque tempor neque sed faucibus vestibulum. Donec pellentesque dignissim ipsum ut fermentum.\r\n\r\nPhasellus eget leo id ligula egestas faucibus ac eu magna. Integer quis lacus nisi. Cras eget semper nunc, id interdum sem. Duis suscipit diam arcu. Fusce mollis hendrerit augue, non congue nunc aliquam ut. Ut et porta lorem, sit amet sagittis sapien. Suspendisse scelerisque dictum dui vitae blandit. Donec auctor erat sed augue tincidunt bibendum. Quisque ultrices lacus vitae diam dapibus, et maximus enim porttitor. Donec a porttitor purus. Ut mauris eros, lacinia eu turpis eget, efficitur dignissim libero. Mauris congue euismod enim, consequat aliquam arcu facilisis tempor. Donec enim dolor, ullamcorper a magna et, tempor aliquam felis. Sed rhoncus, est a scelerisque hendrerit, augue augue bibendum elit, nec gravida metus erat quis diam. Suspendisse potenti.\r\n\r\nQuisque neque urna, tempus cursus ante in, luctus vulputate diam. Nunc vitae porta sem. Duis nec lorem a sem euismod imperdiet a non lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in convallis turpis. Phasellus ut elit laoreet, dapibus nisl ut, tincidunt libero. Phasellus volutpat interdum magna, eu feugiat libero tempor in. Curabitur malesuada tellus ac convallis cursus. Donec ullamcorper felis id aliquet faucibus. Nullam in lorem pellentesque, ultricies turpis eu, cursus ante.\r\n\r\nQuisque auctor ac ex a rhoncus. Morbi nec urna id libero molestie luctus. Ut vel dolor lorem. Morbi ultrices felis ac dolor dignissim feugiat. Nullam commodo mauris orci. Donec aliquam mattis lacus vel lobortis. Vivamus lacinia nunc vel mi tincidunt fringilla. Praesent at sollicitudin ex. Curabitur semper enim a dolor hendrerit, vel dapibus risus feugiat. Donec fringilla dictum auctor. Donec vel vehicula lectus. Fusce quis dui ac lectus interdum elementum fermentum sit amet mi. In placerat mauris odio, a facilisis metus hendrerit eget.\r\n\r\n', '2023-10-07 23:47:49', 'handshake-2.png'),
(3, 'News from today!', 'Phasellus eget leo id ligula egestas faucibus ac eu magna. Integer quis lacus nisi. Cras eget semper nunc, id interdum sem. Duis suscipit diam arcu. Fusce mollis hendrerit augue, non congue nunc aliquam ut. Ut et porta lorem, sit amet sagittis sapien. Suspendisse scelerisque dictum dui vitae blandit. Donec auctor erat sed augue tincidunt bibendum. Quisque ultrices lacus vitae diam dapibus, et maximus enim porttitor. Donec a porttitor purus. Ut mauris eros, lacinia eu turpis eget, efficitur dignissim libero. Mauris congue euismod enim, consequat aliquam arcu facilisis tempor. Donec enim dolor, ullamcorper a magna et, tempor aliquam felis. Sed rhoncus, est a scelerisque hendrerit, augue augue bibendum elit, nec gravida metus erat quis diam. Suspendisse potenti.\r\n\r\nQuisque neque urna, tempus cursus ante in, luctus vulputate diam. Nunc vitae porta sem. Duis nec lorem a sem euismod imperdiet a non lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in convallis turpis. Phasellus ut elit laoreet, dapibus nisl ut, tincidunt libero. Phasellus volutpat interdum magna, eu feugiat libero tempor in. Curabitur malesuada tellus ac convallis cursus. Donec ullamcorper felis id aliquet faucibus. Nullam in lorem pellentesque, ultricies turpis eu, cursus ante.\r\n\r\nQuisque auctor ac ex a rhoncus. Morbi nec urna id libero molestie luctus. Ut vel dolor lorem. Morbi ultrices felis ac dolor dignissim feugiat. Nullam commodo mauris orci. Donec aliquam mattis lacus vel lobortis. Vivamus lacinia nunc vel mi tincidunt fringilla. Praesent at sollicitudin ex. Curabitur semper enim a dolor hendrerit, vel dapibus risus feugiat. Donec fringilla dictum auctor. Donec vel vehicula lectus. Fusce quis dui ac lectus interdum elementum fermentum sit amet mi. In placerat mauris odio, a facilisis metus hendrerit eget.\r\n\r\nPraesent porttitor enim maximus odio porta euismod vitae at ante. Aenean at nunc vel erat scelerisque aliquet. Vestibulum lorem dui, pharetra quis tempor eu, lacinia vel nulla. In fermentum, turpis at sollicitudin facilisis, magna lorem consectetur tortor, ac molestie sapien elit vitae lacus. Nunc odio est, ornare a condimentum ut, tempus nec ante. Sed fermentum bibendum tincidunt. Pellentesque quam lectus, finibus ac elit interdum, euismod imperdiet quam. Quisque id risus sollicitudin, mattis mi sit amet, finibus purus. Donec dictum quam leo, laoreet porttitor turpis malesuada id. Vivamus convallis pulvinar nulla. Curabitur ornare leo eros, et', '2023-10-19 19:02:09', 'django-logo-2.png'),
(4, 'Few days ago...', 'Phasellus eget leo id ligula egestas faucibus ac eu magna. Integer quis lacus nisi. Cras eget semper nunc, id interdum sem. Duis suscipit diam arcu. Fusce mollis hendrerit augue, non congue nunc aliquam ut. Ut et porta lorem, sit amet sagittis sapien. Suspendisse scelerisque dictum dui vitae blandit. Donec auctor erat sed augue tincidunt bibendum. Quisque ultrices lacus vitae diam dapibus, et maximus enim porttitor. Donec a porttitor purus. Ut mauris eros, lacinia eu turpis eget, efficitur dignissim libero. Mauris congue euismod enim, consequat aliquam arcu facilisis tempor. Donec enim dolor, ullamcorper a magna et, tempor aliquam felis. Sed rhoncus, est a scelerisque hendrerit, augue augue bibendum elit, nec gravida metus erat quis diam. Suspendisse potenti.\r\n\r\nQuisque neque urna, tempus cursus ante in, luctus vulputate diam. Nunc vitae porta sem. Duis nec lorem a sem euismod imperdiet a non lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam in convallis turpis. Phasellus ut elit laoreet, dapibus nisl ut, tincidunt libero. Phasellus volutpat interdum magna, eu feugiat libero tempor in. Curabitur malesuada tellus ac convallis cursus. Donec ullamcorper felis id aliquet faucibus. Nullam in lorem pellentesque, ultricies turpis eu, cursus ante.\r\n', '2021-09-08 14:13:12', 'pngwing_com.png'),
(5, 'Unagi Scooters', 'Probably the cheapest electric scooters in America!', '2023-10-19 19:02:17', NULL),
(6, 'YouTube mix 2024 ', 'Check it out on the official YT site. ', '2022-01-19 14:55:41', NULL),
(7, 'Article made online.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse et mattis erat. Nam condimentum ligula odio, vitae congue est pulvinar vitae. Curabitur et elementum ex. Duis ligula ante, efficitur ac ex non, consectetur interdum nisl. Suspendisse ac magna consequat, laoreet arcu eget, venenatis turpis. Ut viverra commodo mauris, pulvinar blandit ipsum faucibus sit amet. Pellentesque tempor neque sed faucibus vestibulum. Donec pellentesque dignissim ipsum ut fermentum.', NULL, 'bar-chart.png'),
(8, 'Something old but good', 'Phasellus eget leo id ligula egestas faucibus ac eu magna. Integer quis lacus nisi. Cras eget semper nunc, id interdum sem. Duis suscipit diam arcu. Fusce mollis hendrerit augue, non congue nunc aliquam ut. Ut et porta lorem, sit amet sagittis sapien. Suspendisse scelerisque dictum dui vitae blandit. Donec auctor erat sed augue tincidunt bibendum. Quisque ultrices lacus vitae diam dapibus, et maximus enim porttitor. Donec a porttitor purus. Ut mauris eros, lacinia eu turpis eget, efficitur dignissim libero. Mauris congue euismod enim, consequat aliquam arcu facilisis tempor. Donec enim dolor, ullamcorper a magna et, tempor aliquam felis. Sed rhoncus, est a scelerisque hendrerit, augue augue bibendum elit, nec gravida metus erat quis diam. Suspendisse potenti.', '2023-11-20 21:00:47', 'jira.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
