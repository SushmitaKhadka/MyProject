-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 12:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(4, 'sushmita', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(11, 'Himalayan Multivitamin Gummies - 30 Gummies ', 'Himalayan Multivitamin Gummies offer a convenient and delicious way to support overall health. Packed with essential vitamins and minerals, each bottle contains 30 gummies, providing a daily dose of vital nutrients. Made with natural ingredients, they promote wellness and vitality, making them an ideal addition to any wellness routine.', 50, '22.jpeg', '22.jpeg', '22.jpeg'),
(12, 'Mamaearth Natural Mosquito Repellent Gel 50ml', 'Mamaearth Natural Mosquito Repellent Gel, in a 50ml package, is a safe and effective solution to protect your family from pesky mosquito bites. Formulated with natural ingredients, it offers long-lasting protection without harmful chemicals. Easy to apply and non-sticky, it&#39;s a must-have for outdoor adventures and peaceful nights.', 100, '23.jpeg', '23.jpeg', '23.jpeg'),
(13, 'First Aid Box With Medicine #PKG2', '\r\nThe First Aid Box with Medicine #PKG2 is a comprehensive and essential healthcare kit. It contains a curated selection of medications and supplies to address common health concerns. From wound care to pain relief, it ensures prompt and effective first aid response, providing peace of mind in emergencies.', 35, '24.png', '24.png', '24.png'),
(14, 'Xtranex 500 mg', 'Xtranex 500 mg is likely a medication, possibly a brand name for a drug containing 500 milligrams of a certain active ingredient. However, without more context or specific knowledge about this particular medication (as of my last training data in September 2021), I cannot provide detailed information. If it&#39;s a prescription drug, please consult a healthcare professional or refer to the package insert for instructions and indications.', 30, '25.jpg', '25.jpg', '25.jpg'),
(15, 'LEVERA 1000mg', ' Levera 1000mg is likely a brand name for a medication. It may contain 1000 milligrams of a specific active ingredient. However, without more context or specific knowledge about this particular medication, I cannot provide detailed information. If it&#39;s a prescription drug, it&#39;s crucial to consult a healthcare professional or refer to the package insert for accurate instructions and indications. Please consult a healthcare professional or a reliable medical source for the most current and', 80, '261.jpg', '262.jpg', '263.jpg'),
(16, 'Presin-5mg', 'Presin-5mg is a medication, likely containing 5 milligrams of an active ingredient. As of my last knowledge update in September 2021, I don&#39;t have specific information on Presin-5mg. It&#39;s important to note that medical information may change over time, and for the most current and accurate information, it&#39;s best to consult a healthcare professional or refer to the medication&#39;s packaging and instructions. They will be able to provide you with the latest details on its uses, dosage', 70, '27.jpg', '27.jpg', '27.jpg'),
(17, 'Fempro 2.5 mg', '\r\nFempro 2.5 mg is a medication primarily used in the treatment of breast cancer in postmenopausal women. It contains the active ingredient Letrozole, which belongs to a class of drugs known as aromatase inhibitors. These inhibitors work by reducing the production of estrogen in the body, which can help slow down or stop the growth of certain types of breast cancer cells that rely on estrogen to grow.', 90, '28.jpg', '281.jpg', '281.jpg'),
(18, 'Encorate 500 Tablet', 'Encorate 500 Tablet belongs to a class of medications known as anti-epileptics. It&#39;s used to treat disorders like epilepsy and bipolar disorder. It prevents seizures (fits) by reducing excessive mood swings and aberrant brain signals. It is also beneficial in the prevention of migraines.', 100, '30.jpg', '30.jpg', '30.jpg'),
(19, 'LACOSAM 100MG', 'Lacosam 100mg is a medication that contains the active ingredient lacosamide. It belongs to the class of antiepileptic drugs and is primarily used for the treatment of partial-onset seizures in adults and adolescents aged 16 years and older with epilepsy.\r\n\r\nPartial-onset seizures, also known as focal seizures, are a type of seizure that originate in a specific area of the brain. These seizures can cause a variety of symptoms depending on the region of the brain affected, such as muscle spasms, ', 200, '31.jpg', '31.jpg', '31.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(8, 'krishna', 'krishna@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(9, 'shyam', 'shya@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(2, 8, 11, 'Himalayan Multivitamin Gummies - 30 Gummies ', 50, '22.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
