-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 24 2015 г., 13:32
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `iit_vt`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_date` date NOT NULL,
  `news_descr` varchar(255) CHARACTER SET utf8 NOT NULL,
  `news_text` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`news_id`, `news_date`, `news_descr`, `news_text`) VALUES
(1, '2015-02-27', 'Новость №1', 'Это самая первая новость, добавленная в этой лабараторной работе'),
(2, '2015-02-27', 'Тут будет очень длинное описание, что бы проверить данный момент.', 'Небольшой текст второй новости.'),
(3, '2015-02-27', 'Третья новостью', 'Небольшой текст новости.'),
(4, '2015-02-28', 'Четвертая новостью', 'Небольшой текст новости.'),
(5, '2015-02-28', 'Пятая новость', 'Небольшой текст новости.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
