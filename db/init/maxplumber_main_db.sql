-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 09, 2025 at 11:28 PM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maxplumber_main_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(191) NOT NULL,
  `customer_email` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `created_at`, `updated_at`) VALUES
(1, 'Machi Gulinski', 'machigulinski@gmail.com', '2022-01-14 17:02:11', '2023-08-22 18:43:02'),
(12, 'Rick Rodgers', 'rickrod23@hotmail.com', '2022-01-17 16:54:31', '2022-01-17 16:54:33'),
(2, 'Alex Baru', 'alexbaru33@gmail.com', '2022-01-15 15:37:19', '2022-01-15 15:37:20'),
(3, 'Atul Anand', 'atuls_anand@hotmail.com', '2022-01-15 16:00:39', '2022-01-15 16:00:48'),
(4, 'Kevin Collins', 'kcollins@gmail.com', '2022-01-15 16:07:50', '2022-01-15 16:08:03'),
(5, 'Scott Mason', 'scott_mason88@htomail.com', '2022-01-17 15:24:23', '2022-01-17 15:24:49'),
(6, 'Mathew Joseph', 'matjoseph@gmail.com', '2022-01-17 15:29:23', '2022-01-17 15:29:26'),
(8, 'Steven Soszko', 'stevesoszko@yahoo.com', '2022-01-17 15:37:02', '2022-01-17 15:37:06'),
(7, 'Paul Plo', 'paul_plo75@gmail.com', '2022-01-17 15:40:06', '2022-01-17 15:40:11'),
(9, 'Kelly', 'kellychicago@hotmail.com', '2022-01-17 15:44:28', '2022-01-17 15:44:43'),
(13, 'Matthew Dragon', 'matt_drago@yahoo.com', '2022-01-17 16:57:40', '2022-01-17 16:57:42'),
(14, 'V Gatdula', 'vgatdula11@hotmail.com', '2022-01-17 17:00:26', '2022-01-17 17:00:28'),
(15, 'Becky Kosh', 'rebeckosh@yahoo.com', '2022-01-17 17:01:50', '2022-01-17 17:01:52'),
(16, 'Carrie Bernstein', 'carrie_bernstein@gmail.com', '2022-01-17 17:02:50', '2022-01-17 17:02:52'),
(18, 'Chris Bybee', 'christopherbybee13@gmail.com', '2023-04-14 23:04:58', '2023-04-14 23:32:46'),
(19, 'Gail McPherson', 'mcphersonmaynard@sbcglobal.net', '2023-06-20 18:59:37', '2023-06-20 19:00:08'),
(20, 'Kevin Makey', 'amcmakey55@gmail.com', '2023-07-18 22:17:09', '2023-07-18 22:17:09'),
(21, 'Susan Yoo', 'yosusan@gmail.com', '2023-08-22 09:19:55', '2023-08-22 09:19:58'),
(22, 'Vladimir', 'alejvla21@gmail.com', '2023-08-22 21:40:14', '2023-08-22 21:40:22'),
(23, 'ELIZABETH GOLDBERG', 'edsmag@comcast.net', '2024-10-16 00:21:34', '2024-10-16 00:21:59'),
(24, 'Machi Gulinski', 'eastwaywebdesign@gmail.com', '2024-12-12 10:49:57', '2024-12-12 10:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_24_205541_create_reviews_table', 1),
(6, '2021_08_25_211220_create_customers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_content` text NOT NULL,
  `service_type` varchar(191) NOT NULL,
  `location` varchar(191) NOT NULL,
  `rating` varchar(191) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review_content`, `service_type`, `location`, `rating`, `customer_id`, `approved`, `created_at`, `updated_at`) VALUES
(12, 'I used Maximum\'s service today for the first time. Max was prompt and courteous. He completed the repair in a timely fashion at a very fair price. Max comes across as an honest man. I highly recommend.', 'Plumbing Services', 'Lake Zurich, IL', '5', 12, 1, '2022-01-17 16:54:33', '2022-01-17 16:58:11'),
(13, 'Had 3 issues appear late one night, so I browsed for a local plumber. Maxim responded right away and was at my home the next morning. My leaking toilets had bad hardware, my leaking shower had a bad hose, and my upstairs bathroom wasn\'t getting hot water. In a brief 20 minute visit, Maxim identified the issues as minor (outdated hardware, temp setting was wrong, broken hose) and was back (and literally right on the time he said he\'d be there) the next morning with all the exact replacement parts. Fair pricing and well done work. Maximum plumbing is now my only plumber, period.', 'Plumbing Services', 'Lake Zurich, IL', '5', 13, 1, '2022-01-17 16:57:42', '2022-01-17 16:58:10'),
(2, 'My old water heater developed a leak and needed replacement. Maxim walked me through the replacement options and made a recommendation for the size and brand for a new unit. His pricing was the best out of the quotes I got and he was at my house with a new water heater within a couple hours. The installation was flawless and I could tell the quality of workmanship was top notch (I\'m a \"handy man\" and can tell if someone is doing his job properly). After the installation was completed he even neatly cleaned up the area. Maxim is my go to plumber going forward!', 'Water Heater Service', 'Lake Zurich, IL', '5', 2, 1, '2022-01-15 15:37:20', '2022-01-15 15:37:27'),
(3, 'He is a gem. No nonsense to the point approach to get stuff done, whatever it takes. Helped us with fixing a leak that has been bothering us for a while. Its very rare to find someone match exactly how the google reviews describe him.. A keeper for sure.', 'Water Leak Repair', 'Lake Zurich, IL', '5', 3, 1, '2022-01-15 16:00:48', '2022-01-15 16:02:48'),
(4, 'Max has helped us with several plumbing issues. He\'s quick and very honest. He was able to save me thousands because he was honest and not trying to up sell. I had several companies come out to look at my water heater and they all tried to sell me a new one. He came out and replaced the gas valve for a fraction of the price. He\'s also fixed our sump pump and was again way below market. He\'s quick to respond and always willing to work around your schedule! It\'s refreshing to have someone you can trust for an honest opinion and I can finally say \"I got a guy\" when it comes to a plumber! I would recommend him hands down!!', 'Plumbing Services', 'Lake Zurich, IL', '5', 4, 1, '2022-01-15 16:08:03', '2022-01-15 16:08:14'),
(5, 'Had a leak in the toilet above our garage, max came out and replaced the seal very quickly and efficiently.', 'Water Leak Repair', 'Lake Zurich, IL', '5', 5, 1, '2022-01-17 15:24:26', '2022-01-17 16:21:46'),
(6, 'Had an emergency water leak at my mom\'s house the day after an intense polar vortex. A pipe burst inside a wall on her first level and was quickly flooding her home. I managed to turn off the water and isolate the leak. I called 10 different plumbers and the earliest I could get was 4 days away. I got in contact with Max and he was able to squeeze me into his busy schedule for the day. I sent him pictures of the repair and he was able to stop by and get the repair done quickly. He could\'ve done a quick fix to get her by but chose to \"fix it right\". He also added a valve to the line so that we can shut off the water every winter (for an outdoor spigot). Thank you Max for your hard and honest work!', 'Water Leak Repair', 'Lake Zurich, IL', '5', 6, 1, '2022-01-17 15:29:26', '2022-01-19 02:42:11'),
(8, 'Wow! Max was so wonderful and completely saved us from an even bigger issue! He is nothing but kind, professional, honest, and hard working. We WILL be calling Max for ALL of our plumbing needs in the future! We HIGHLY recommend him.', 'Plumbing Services', 'Lake Zurich, IL', '5', 8, 1, '2022-01-17 15:37:06', '2022-01-17 16:21:41'),
(7, 'We recently remodeled our kitchen and bathrooms. Fairly large scale project with multiple challenges. First I have to say a big thank you to Max. He is professional, reliable, and provides excellent communication (something that is extremely important in any construction project) throughout the project. It has been a great pleasure working with Max, because I knew he always did an extra mile for me. I am a military veteran and my expectation in regards to time management, thinking outside the box, and reliability are very high. Max didn’t just meet my expectation, but exceeded them.', 'Plumbing Services', 'Lake Zurich, IL', '5', 7, 1, '2022-01-17 15:40:11', '2022-01-17 16:21:38'),
(9, 'Excellent work. Was going to leave a positive review even if we ended up not hiring Max - he gave me advice over the phone and directed me to look into something else first to make sure it was a plumbing issue.\r\nOnce hired, he was extremely efficient and quick. Thanks Max!', 'Plumbing Services', 'Lake Zurich, IL', '5', 9, 1, '2022-01-17 15:44:43', '2022-01-17 16:21:35'),
(14, 'Honest, friendly, reliable. Installed two toilets, fixed my leaking shower, and came to the rescue when I needed a new water heater. OVERALL OUTSTANDING SERVICE. THANK YOU MAX !', 'Kitchen/ Bathroom Plumbing', 'Lake Zurich, IL', '5', 14, 1, '2022-01-17 17:00:28', '2022-01-17 17:03:04'),
(15, 'Very professional. Always responds quickly, does excellent work . Would highly recommend Maximum Plumbing.', 'Plumbing Services', 'Lake Zurich, IL', '5', 15, 1, '2022-01-17 17:01:52', '2022-01-17 17:03:02'),
(16, 'Great experience today - I texted Maxim the night before and he came over the next day (on a Saturday) and showed up even earlier than expected, and he texted when he was on the way over. We were desperately in need of a replacement spigot for front patio that had been leaking for many months. He fixed it in 20 minutes. Cost came in even less than what he had roughly quoted over text. Will definitely be using again in the future and referring to friends and family!', 'Plumbing Services', 'Lake Zurich, IL', '5', 16, 1, '2022-01-17 17:02:52', '2022-01-17 17:03:01'),
(21, 'Found this company through my neighborhood FB group. So many people recommended Maximum and no wonder why! Our kitchen sink was clogged and water was backing up through the sink and dishwasher so I needed someone to come ASAP. They picked up the phone and laid out what will/might be done and the price. They didn’t try to “add” any extra procedure. The person that came went above and beyond.. after he unclogged everything, he checked other places just to make sure and gave us tips and advice. Truly appreciate their service from customer service to the actual person who came over! Highly highly recommend!!!!', 'Drain Cleaning Service', 'Lake Zurich, IL', '5', 21, 1, '2023-08-22 09:19:58', '2023-08-22 09:20:21'),
(23, 'Excellent job and very friendly.', 'Kitchen/ Bathroom Plumbing', 'Lake Zurich, IL', '5', 22, 1, '2023-08-22 21:40:22', '2023-08-22 21:48:34'),
(24, 'Lucas come out today and was able to fix some our plumbing issues in the basement and install a new faucet for one of the bathrooms. He was quick, efficient and very nice even to our cat!!! Would highly recommend him!!!', 'Kitchen/ Bathroom Plumbing', 'Buffalo Grove, IL', '5', 23, 1, '2024-10-16 00:21:59', '2024-10-16 00:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(2, 'Maxim', 'getmaximumplumbing@gmail.com', NULL, '$2y$10$ulvOLBSLkS/3Ofg1pjIJ3OHf4LxWR/.UNuSiQuF1ABlEQZdcm.RiO', 'psp0QXVVQu4hrqELAw61MPXEftlooaRc22OjsvWKKe5S9qKMzgESx1PZVNn7', '2022-01-14 06:44:50', '2022-01-14 06:44:50', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
