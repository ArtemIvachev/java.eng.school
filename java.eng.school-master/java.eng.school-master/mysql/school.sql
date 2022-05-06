-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Апр 25 2022 г., 20:43
-- Версия сервера: 5.7.24
-- Версия PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `school`
--

-- --------------------------------------------------------

--
-- Структура таблицы `teaching_program`
--

CREATE TABLE `teaching_program` (
  `id` bigint(20) NOT NULL,
  `complexity` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hours` int(11) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `teachings` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teaching_program`
--

INSERT INTO `teaching_program` (`id`, `complexity`, `description`, `hours`, `thumbnail`, `title`, `teachings`) VALUES
(1, 0, 'Английский язык (C1)', 90, 'http://www.baltic-course.com/eng/education/files/multi/2018-08/180828_enhlishc1.png', 'Английский язык (C1)', 30),
(2, 0, 'Немецкий язык', 40, 'https://avatars.mds.yandex.net/get-zen_doc/1879615/pub_5fb10486b3216339371177c6_5fb107f6b321633937172d78/scale_1200', 'Немецкий язык ', 20),
(3, 0, 'Английский язык (A1)', 20, 'https://www.fondofwork.ru/wp-content/uploads/2019/04/english1.jpg', 'Английский язык (A1) ', 10),
(4, 0, 'Русский язык', 96, 'https://ds05.infourok.ru/uploads/ex/0d8c/0012e5c3-d7cbc964/hello_html_m76d9929d.jpg', 'Русский язык', 48),
(5, 0, 'Китайский язык', 100, 'https://slovami.net/wp-content/uploads/2018/04/27-1.jpg', 'Китайский язык', 50),
(6, 0, 'Испанский язык', 40, 'http://i.mycdn.me/i?r=AzFIxPtkV78jcmdRfpoIOyaJpnPjoXufhaFTBv-TN2g_yjO7EuABt8t6j6ROsg0SwU4', 'Испанский язык', 10),
(7, 0, 'Английский язык (ЕГЭ)', 100, 'https://www.kleo.ru/img/articles/-08-10-2020-203937.png', 'Английский язык (ЕГЭ)', 40),
(8, 0, 'Французский язык', 40, 'https://avatars.mds.yandex.net/get-zen_doc/3956291/pub_6037bba8bfc70d5f472b4cd6_6040dc74151e6928775e1b0e/scale_1200', 'Французский язык', 20),
(9, 0, 'Казахский язык', 30, 'https://ru.aikyn.kz/wp-content/uploads/2021/11/a5ed9cfc526a54769518af5635f16471.jpg', 'Казахский язык', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `hours` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `second_name` varchar(255) DEFAULT NULL,
  `subscription_end` varchar(255) DEFAULT NULL,
  `subscription_start` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `visits` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `age`, `avatar_url`, `days`, `enabled`, `first_name`, `height`, `hours`, `password`, `plan`, `price`, `role`, `second_name`, `subscription_end`, `subscription_start`, `username`, `visits`, `weight`) VALUES
(1, '0', 'https://i.imgur.com/4DINNqs.png', '0', b'1', 'Admin', '0', '0', '$2a$10$1yT08KxX6ptU68u.8/v1Q.OIze6DzTu4sgZcjygBRRv2t/GvX0gyC', '...', '0', 'ROLE_ADMIN', 'Admin', '23.04.2022', '10.04.2022', 'admin', '0', '0'),
(3, '30', 'https://i.imgur.com/3Ksd4OR.png', '180', b'1', 'Сергей', '181', '71', '$2a$10$dJrGXi/mKFUNvJCFediDOOCoNRGiQ9y1XgE3sg23aaav4vuIE12D6', 'VIP', '17820 руб', 'ROLE_USER', 'Колегин', '25.04.2022', '10.04.2022', 'seryozha', '63', '80'),
(4, '22', 'https://i.imgur.com/AzEe4qP.png', '30', b'1', 'Влад', '177', '112', '$2a$10$8nM46tCz1e5HFJHCmr8S3eIYh4Ij311mjJMypEcTAzuZPrAmvf15C', '...', '2970 руб', 'ROLE_USER', 'Гребиневич', '30.04.2022', '15.04.2022', 'vlad', '34', '76'),
(5, '0', 'https://i.imgur.com/ECsO4cY.png', '0', b'1', 'Савелий', '0', '0', '$2a$10$AtkwtgD2WwCYnIKUSU9rg.LxsdjV98c1U4tWsPaQvdIXbZJqRdfJC', '...', '0', 'ROLE_USER', 'Вракин', '30.05.2022', '01.05.2022', 'user', '0', '0'),
(6, '0', 'https://i.imgur.com/4DINNqs.png', '0', b'1', 'Даниил', '0', '0', '$2a$10$jdoqpnBJuXGzn8j4eGk8eOYsOeoe3NpwhTy/gmyDXW5V2vcfLQL5.', '...', '0', 'ROLE_USER', 'Диденко', '30.05.2022', '01.05.2022', '123', '0', '0'),
(7, '0', 'https://sun9-17.userapi.com/s/v1/if2/ygtniB3u5KhJMVkxuUyrwz-Og-ucKdIxRYDUis5e-iWWTjc_Csk_rx5aTRGUtCmStvR6EmaAYcktMl-IS0NvbP-g.jpg?size=1920x1440&quality=96&type=album', '0', b'1', 'Алексей', '0', '0', '$2a$10$jdoqpnBJuXGzn8j4eGk8eOYsOeoe3NpwhTy/gmyDXW5V2vcfLQL5.', '...', '0', 'ROLE_USER', 'Ивачев', '23.06.2022', '02.05.2022', 'lol', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `users_teaching_programs`
--

CREATE TABLE `users_teaching_programs` (
  `users_user_id` bigint(20) NOT NULL,
  `teaching_programs_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_teaching_programs`
--

INSERT INTO `users_teaching_programs` (`users_user_id`, `teaching_programs_id`) VALUES
(4, 2),
(4, 3),
(4, 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `teaching_program`
--
ALTER TABLE `teaching_program`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `users_teaching_programs`
--
ALTER TABLE `users_teaching_programs`
  ADD PRIMARY KEY (`users_user_id`,`teaching_programs_id`),
  ADD KEY `FKh2i7j8ugk4in29j9k3230xlo0` (`teaching_programs_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `teaching_program`
--
ALTER TABLE `teaching_program`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users_teaching_programs`
--
ALTER TABLE `users_teaching_programs`
  ADD CONSTRAINT `FKh2i7j8ugk4in29j9k3230xlo0` FOREIGN KEY (`teaching_programs_id`) REFERENCES `teaching_program` (`id`),
  ADD CONSTRAINT `FKpdwqilnm0d0goh6twib63c8fj` FOREIGN KEY (`users_user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
