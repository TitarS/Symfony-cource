-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 11 2018 г., 15:03
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Природа'),
(5, 'Города'),
(6, 'Hi tech'),
(7, 'Игры');

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `dimensions` varchar(255) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `title`, `description`, `image`, `dimensions`, `date`, `category_id`, `user_id`) VALUES
(3, 'Красивый текст для города #1', 'Интересное описание, города #1', 'acqgemxnkt.jpg', '1920x1080', 1518360254, 5, 7),
(4, 'Красивое название, города #2', 'Интересное описание, города #2', 'syl4qz71e6.jpg', '1920x1080', 1518360284, 5, 7),
(5, 'Красивое название, города #3', 'Интересное описание, города #3', 'pd67evxpdb.jpg', '1920x1080', 1518360294, 5, 7),
(6, 'Красивое название, города #4', 'Интересное описание, города #4', 'f1u2z2ifno.jpg', '1920x1080', 1518360304, 5, 7),
(7, 'Красивое название, города #5', 'Интересное описание, города #5', 'cjszsrpa3h.jpg', '1920x1080', 1518360315, 5, 7),
(8, 'Красивое название, города #6', 'Интересное описание, города #6', 'i4fxircbpc.jpg', '1920x1080', 1518360330, 5, 7),
(9, 'Красивое название, города #7', 'Интересное описание, города #7', 'yicsx9uxiq.jpg', '1680x1050', 1518360347, 5, 7),
(10, 'Красивое название, города #8', 'Интересное описание, города #8', 'fiulxj3nhv.jpg', '1920x1080', 1518360364, 5, 7),
(12, 'Красивые виды вселенной #2', 'Природа, эх природа #2', '64tipcgcnw.jpg', '1920x1080', 1518360481, 1, 7),
(13, 'Красивые виды вселенной #3', 'Природа, эх природа #3', 'dvc3ns6nwm.jpg', '1920x1080', 1518360491, 1, 7),
(14, 'Красивые виды вселенной #4', 'Природа, эх природа #4', 'autjceb3tz.jpg', '1920x1080', 1518360502, 1, 7),
(15, 'Красивые виды вселенной #5', 'Природа, эх природа #5', '2vtaqknj0q.jpg', '1920x1080', 1518360510, 1, 7),
(16, 'Красивые виды вселенной #6', 'Природа, эх природа #6', 'qywj6vzcwl.jpg', '1920x1080', 1518360521, 1, 7),
(17, 'Красивые виды вселенной #72', 'Природа, эх природа #72', '1yo7hd5j3m.jpg', '1920x1080', 1518360531, 7, 7),
(19, 'Крутая игрушка #1', 'Рассказываю про крутую игрульку #1', 'vetnltsmxd.jpg', '1920x1080', 1518361324, 7, 6),
(20, 'Крутая игрушка #2', 'Рассказываю про крутую игрульку #2', '1b5qsrurhq.jpg', '1920x1080', 1518361337, 7, 6),
(21, 'Крутая игрушка #3', 'Рассказываю про крутую игрульку #', '4vlbovna3f.jpg', '1920x1080', 1518361346, 7, 6),
(22, 'Крутая игрушка #4', 'Рассказываю про крутую игрульку #4', 'rkxxdsvmxv.jpg', '1920x1080', 1518361358, 7, 6),
(23, 'Крутая игрушка #5', 'Рассказываю про крутую игрульку #5', 'kaa5xomvwn.jpg', '1920x1080', 1518361367, 7, 6),
(24, 'Крутая игрушка #6', 'Рассказываю про крутую игрульку #6', 'suoairzvba.jpg', '1920x1080', 1518361380, 7, 6),
(25, 'Крутая игрушка #7', 'Рассказываю про крутую игрульку #7', 'x2h5prhszh.jpg', '1920x1080', 1518361394, 7, 6),
(26, 'Крутая игрушка #8', 'Рассказываю про крутую игрульку #8', 'r7wt0tbetg.jpg', '1920x1080', 1518361405, 7, 6),
(27, 'Суперновые гаджеты #1', 'Недавно купил прикольную штуку #1', 'dyha9zvs6b.jpg', '1920x1080', 1518361508, 6, 6),
(28, 'Суперновые гаджеты #2', 'Недавно купил прикольную штуку #2', 'arkuhklfzl.jpg', '1920x1080', 1518361519, 6, 6),
(29, 'Суперновые гаджеты #3', 'Недавно купил прикольную штуку #3', 'bv6xpmpsjb.jpg', '1920x1080', 1518361530, 6, 6),
(30, 'Суперновые гаджеты #4', 'Недавно купил прикольную штуку #4', 'xxfqiogq9v.jpg', '1920x1080', 1518361546, 6, 6),
(31, 'Суперновые гаджеты #5', 'Недавно купил прикольную штуку #5', '5lom7b9zyw.jpg', '1920x1080', 1518361556, 6, 6),
(32, 'Суперновые гаджеты #6', 'Недавно купил прикольную штуку #6', 'lwjlo0onep.jpg', '1920x1080', 1518361567, 6, 6),
(33, 'Суперновые гаджеты #7', 'Авто #7', 'rcbruzpr7g.jpg', '1600x1200', 1518361582, 6, 22),
(34, 'Суперновые гаджеты #8', 'Недавно купил прикольную штуку #8', 'y0bmq7pc5h.jpg', '1920x1080', 1518361594, 1, 6),
(35, 'Интересное, загадочное фото', 'Описание как описание))', 'ayhzta4z8i.jpg', '1680x1050', 1518362683, 1, 7),
(40, 'Картка', '13123123', 'geu7c1ga8s.jpg', '1920x1440', 1520006051, 6, 22),
(42, '34', '1', 'ogqz2ypvto.jpg', '1920x1080', 1520009550, 1, 19),
(43, 'куку1', 'руру', 'lzbpqf0zuc.jpg', '1280x800', 1520103399, 7, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `verified` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `resettable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `roles_mask` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `registered` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `image`, `status`, `verified`, `resettable`, `roles_mask`, `registered`, `last_login`) VALUES
(20, 'jane@example.com2', '$2y$10$9tt8FKq6vZ9GWRgY.jUlDeKbKllPxLaBCY5qWBKWOK6ftivuUD9pC', 'NewJane2', 'smcasqq5ea.jpg', 2, 1, 1, 2, 1520103265, 1520103829),
(6, 'test@example.com', '$2y$10$fN2Y13yEpYsWMXBaovYDzem34RaaYbdPgKNHFQT7VzftfHK.aMOuG', 'Test', NULL, 0, 1, 1, 2, 1518373483, 1520004473),
(7, 'forbdruid@gmail.com', '$2y$10$7CjRn2xd5VvBIgUS2AJwoeaBGfi.fGoRkzY2yoeDE9z3/kQOuaZky', 'Jane', 'whynd4msao.png', 0, 1, 1, 1, 1518241289, 1520103691),
(18, 'john@example.com', '$2y$10$wwwVsmd/YygvD7Y3Eb68Ae2BPYeraoybPU7tbvvPduMUEHBUBzycW', 'John12', 'heoz6frna5.jpg', 0, 1, 1, 2, 1520005916, 1520009421),
(19, 'john@example.com2', '$2y$10$hFGgZZRBaDf2ePvUVN6qqeztOUQdBBvt/zT4payQN8SnH3BYE2uXG', 'John2', '1iqdzoj2r0.jpg', 0, 1, 1, 2, 1520009522, 1520009601),
(21, 'titar.serge@gmail.com', '$2y$10$IgzlIqpUJRzGkLJt7oQfhOtPCuUcdojZnGdS0LbQ60jsr6S3hMITy', 'Serge', NULL, 0, 0, 1, 2, 1520682861, NULL),
(22, 'serhii.tytar@gmail.com', '$2y$10$442473g2SiI84Eh5F5KtK.1euIEtC61fV5Y/l85PXwWSrUBqkKyLa', 'Serge', '6ohqotmufv.jpg', 0, 1, 1, 1, 1520683416, 1520694552);

-- --------------------------------------------------------

--
-- Структура таблицы `users_confirmations`
--

CREATE TABLE `users_confirmations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selector` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_confirmations`
--

INSERT INTO `users_confirmations` (`id`, `user_id`, `email`, `selector`, `token`, `expires`) VALUES
(4, 6, 'forbdruid@gmail.com2', 'QNA5jCDuBoRudygt', '$2y$10$6hkwkaxp9vrWBD0WrokqgetoP5ADxaKvZoPc7xf5t5qrqZZ8N0g/W', 1518327477),
(7, 8, 'testovik40@yandex.ru', 'j_zJndCmGnS0U0rN', '$2y$10$cUNTaeZbQ4ddFzwfkDD43OdljJ2lJ.77bREViPYPuX4LjrfmM8qaO', 1518453117),
(22, 21, 'titar.serge@gmail.com', 'hVWz2Q_DmfAmdY64', '$2y$10$rmD72WW55TGXPwU44F/vtubqaYHau8OG0J7C0u05u7KypeK0lg3zK', 1520769261),
(23, 22, 'serhii.tytar@gmail.com', 'FpINMCKv51Nw0OzU', '$2y$10$sld3mcFV8IMgMXoAr.XRFuGHlc34CE/Cybgy8RhUHI3dvPnqLxIiS', 1520769816);

-- --------------------------------------------------------

--
-- Структура таблицы `users_remembered`
--

CREATE TABLE `users_remembered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `selector` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_remembered`
--

INSERT INTO `users_remembered` (`id`, `user`, `selector`, `token`, `expires`) VALUES
(2, 22, '791F5RlVFuIaKx_uM96tlt7h', '$2y$10$GsDLgl7x/5dBskJCXzOOmunumD7fSDGZMLBxAwdVJ66hfeXuvlFm2', 1552252152);

-- --------------------------------------------------------

--
-- Структура таблицы `users_resets`
--

CREATE TABLE `users_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `selector` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_throttling`
--

CREATE TABLE `users_throttling` (
  `bucket` varchar(44) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `tokens` float UNSIGNED NOT NULL,
  `replenished_at` int(10) UNSIGNED NOT NULL,
  `expires_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_throttling`
--

INSERT INTO `users_throttling` (`bucket`, `tokens`, `replenished_at`, `expires_at`) VALUES
('QduM75nGblH2CDKFyk0QeukPOwuEVDAUFE54ITnHM38', 66.2476, 1520694552, 1521234552),
('Pcr0NaEnKTlCsnKny_impBFh0DI28AulKsHVrkaPGIM', 0, 1520009446, 1520182246),
('4SIEqVSrUfbHDykIMNzQgj4bibgxQ9QnYLpxlq-85Dk', 2, 1520103469, 1520621869),
('HIJQJPUQ2qyyTt0Q7_AuZA0pXm27czJnqpJsoA5IFec', 48.2639, 1520103508, 1520175508),
('HBXNC6O6LQWDeh9pY6YhFxmoqiMSijPUGu-l-uw4tI0', 29, 1520009451, 1520081451),
('8gd1vZWpOiXClP2Cagd5J2u9UTOsqAR1bt9JOWqX5KI', 29, 1520009451, 1520081451),
('PZ3qJtO_NLbJfRIP-8b4ME4WA3xxc6n9nbCORSffyQ0', 3.01282, 1520683418, 1521115418),
('N_i8hANQ7eGM7kqd_DjigWrCRvEkGdwE0dhjeTkd9PU', 29, 1520009528, 1520081528),
('gMRq4RjI2oAktWFqTeRFUnSPLyYaLhaCiDuyeA4-Xm8', 29, 1520009528, 1520081528),
('pOsq7Jsj2C4zT5khub1sHNnK19z7cg4tujStvXp4uew', 7, 1520009585, 1522428785),
('SicbC42jPWR2Nep6HocOry_kSk120i4f0g6yi0adXR0', 7, 1520009585, 1522428785),
('8Ia-ss9FyJaRptpDDG-5jfY1EGVLysx5SPZDzJoO0Is', 48.0042, 1520009593, 1520081593),
('vuA8W1PySsmWjERznRp1FoCzcIht4C77HWO8hiY56VY', 28.0025, 1520009593, 1520081593),
('63iuB1G1qSLwk-gW7-LZOZNXF2ikKCFgvp2U_W300jo', 28.0025, 1520009593, 1520081593),
('OMhkmdh1HUEdNPRi-Pe4279tbL5SQ-WMYf551VVvH8U', 19, 1520103593, 1520139593),
('avLt4tkOkNp7KtSQV_22i9kFfRniw-I3mxUp3DsPtF8', 499, 1520009598, 1520182398),
('t034-sswob0BW1pYPkWz2DJcYUwmGRGPaKa8dPlpmbE', 29, 1520103318, 1520175318),
('Ds2fbsB_TAXFkVreE3OP6aDHN2sdcmmdGJJHv9Ceqsc', 29, 1520103318, 1520175318),
('ENyJuW7PipGZtxH-T5kMG-5n9qxLIyJAIsAMHI8Ma6s', 0, 1520103469, 1520276269),
('0iXKdpif1D0UG61CB9zqm-inPLBNa_0wHCAE3LFq2Oo', 29, 1520103508, 1520175508),
('PJffquKjvUslhXJWme5puewWCFKnf2mj1r5TAw77iys', 29, 1520103508, 1520175508),
('vEfYRXtt7jnjY2UIZ9pWx8F4Ee5nvBOJLtYIUW-0Z2A', 499, 1520103593, 1520276393);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `users_confirmations`
--
ALTER TABLE `users_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `email_expires` (`email`,`expires`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users_remembered`
--
ALTER TABLE `users_remembered`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user` (`user`);

--
-- Индексы таблицы `users_resets`
--
ALTER TABLE `users_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user_expires` (`user`,`expires`);

--
-- Индексы таблицы `users_throttling`
--
ALTER TABLE `users_throttling`
  ADD PRIMARY KEY (`bucket`),
  ADD KEY `expires_at` (`expires_at`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `users_confirmations`
--
ALTER TABLE `users_confirmations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `users_remembered`
--
ALTER TABLE `users_remembered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `users_resets`
--
ALTER TABLE `users_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
