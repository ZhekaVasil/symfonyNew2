-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 28 2016 г., 00:24
-- Версия сервера: 5.7.11
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alt_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `alt_name`) VALUES
(1, 'phones', 'Телефоны'),
(5, 'cars', 'Машины'),
(6, 'notebooks', 'Ноутбуки');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(50) NOT NULL,
  `cat_id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '-',
  `text` varchar(5000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `cat_id`, `name`, `text`) VALUES
(6, 6, 'asus', '<p>sadasf asf asd</p>'),
(7, 5, 'BMW', '<p>i love <strong>BMW</strong></p>'),
(9, 1, 'dsfsdf', '<img src="2.jpg"><br><p>sdfsdfdsf</p>'),
(10, 1, '123', '<img src="1.jpg"><br><p>321</p>'),
(11, 1, '69', '<p>ds</p>\r\n<p>69</p>'),
(12, 1, 'test', '<img src="3.jpg"><br><p>test</p>');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
