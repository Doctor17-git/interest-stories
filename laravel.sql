-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 13 2023 г., 10:51
-- Версия сервера: 10.3.15-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_13_075021_create_story_posts_table', 1),
(6, '2023_11_13_110558_create_new_story_posts_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `story_posts`
--

CREATE TABLE `story_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hashtags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `story_posts`
--

INSERT INTO `story_posts` (`id`, `hashtags`, `story`, `created_at`, `updated_at`) VALUES
(1, 'Eum debitis non aut fugit fugit rerum maiores et.', 'Quasi consectetur qui odio consequatur. Voluptas eius et sint ut dolor. Quia repellendus voluptatem et distinctio quis. Doloremque ipsam voluptas voluptatum earum est. Consequatur quo fuga blanditiis cum corrupti odit et ducimus. Quis eum est id necessitatibus cumque mollitia eius. Aut quis nisi totam qui similique qui. Sit rerum repudiandae aut dolorem. Autem totam aut et deleniti. Quasi in qui similique praesentium cupiditate. Cum odit explicabo molestias nihil. Quia quod accusantium repellendus perferendis velit vel. Officiis culpa maxime perspiciatis recusandae ab. Minus voluptas rerum voluptatem ipsum a. Et eos adipisci sunt quis. Similique omnis placeat molestiae sapiente ratione voluptatum omnis odit. Amet in distinctio aut pariatur optio maxime omnis quis. Molestiae debitis placeat officia et earum sequi qui nihil. Libero odio iste cum necessitatibus qui. Iure eligendi quis voluptatum. Nemo dignissimos accusamus molestias rerum. Tenetur consequatur non omnis aut sed. Odit voluptatem at natus officia voluptatem sit voluptas. Quam nisi qui numquam consequatur adipisci enim dolorem id. Hic excepturi quidem voluptatem possimus assumenda quas eum. Et perferendis sed praesentium. Earum et iure neque libero. Optio vitae omnis modi illo non excepturi et cumque. Atque ut sit optio aut aspernatur. Deleniti repellat omnis maiores modi aut nulla adipisci exercitationem. Eaque in omnis unde aut quia quo. Non doloribus fuga et voluptatem soluta dolor modi dolor. Qui nostrum omnis cupiditate asperiores. Praesentium corporis molestiae corrupti maiores. Cupiditate earum nostrum quas facere at enim nulla. Est eos ab sed et qui nihil. Illo aut soluta vel dolor dolorum et. Maiores quis adipisci qui et blanditiis. Qui quod modi unde necessitatibus.', '2023-11-13 06:01:22', '2023-11-13 06:01:22'),
(2, 'Rem voluptas nulla laudantium numquam facilis vel.', 'Nulla velit veniam optio perferendis est molestiae nihil. Asperiores placeat occaecati tenetur et porro soluta. Sapiente nisi voluptate id. Aut sed aut voluptas quia et ut voluptatem. Et dolor nemo deleniti quia explicabo unde repudiandae. Commodi expedita porro officiis inventore. Qui eius totam molestiae pariatur deserunt. Quasi ipsum est eaque voluptas reprehenderit ea soluta. Illo consequatur dolore voluptate at. Blanditiis dignissimos voluptatem perspiciatis est. Aut hic necessitatibus quisquam qui repudiandae enim. Doloremque aut cumque atque qui nihil quasi sapiente facilis. Inventore ea qui cum. Nam non itaque enim harum. Soluta reprehenderit dolorem et est corporis distinctio quo fugiat. In id optio et consequatur error. Voluptatem et mollitia asperiores corrupti sint ut nostrum. Voluptas praesentium corrupti in cum repellendus et officiis. Eius quod qui architecto qui a aut eaque quibusdam. Minus repellat fuga velit debitis quo consequatur autem. Asperiores tempore et commodi. Enim numquam earum est placeat perspiciatis qui. Odit sunt non aut harum neque enim assumenda itaque. Est eaque quibusdam neque nesciunt eius et. Aut quaerat vel nostrum ut molestiae quia. Consequatur voluptas commodi est quia neque deleniti nostrum. Similique eum adipisci ipsum consectetur iure voluptas in. Neque numquam consequatur qui deleniti ad veniam. Cupiditate odio provident autem quibusdam qui nobis. Dolore at natus consequuntur veritatis velit. Ut modi ipsum nostrum non molestiae illum aut. Cumque non illum sed deserunt qui. Et unde iusto aperiam. Cupiditate cum vel enim doloremque. Eos voluptatibus odio corporis quidem nemo quia incidunt. Similique aut nulla ut laborum voluptas voluptas corporis. Est facilis omnis tenetur magnam aut vel. Tempora possimus repellendus est necessitatibus dolor. Et harum libero qui velit dolorem consequatur reprehenderit ea.', '2023-11-13 06:01:22', '2023-11-13 06:01:22'),
(13, '#АЙНИДМОРЕБУЛЕТС #ХАЙ', 'АЙ НИД МОР БУЛЛЕТС\r\nАЙ НИД МОР БУЛЛЕТС\r\nАЙ НИД МОР БУЛЛЕТС', '2023-11-13 08:01:02', '2023-11-13 08:01:02');

-- --------------------------------------------------------

--
-- Структура таблицы `story_post_admins`
--

CREATE TABLE `story_post_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hashtags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `story_posts`
--
ALTER TABLE `story_posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `story_post_admins`
--
ALTER TABLE `story_post_admins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `story_posts`
--
ALTER TABLE `story_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `story_post_admins`
--
ALTER TABLE `story_post_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
