-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 24 2024 г., 12:31
-- Версия сервера: 5.6.51-log
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shadb3` login:root  password:root   for asstp
--
-- login - password - role
-- admin - admin - admin
-- razumovsky_ag - r1234 - user
-- bezborodko_aa - b1234 - user
-- panin_ni - p1234 - user
-- dashkova_ag - d1234 - user
-- ivanov_as - i1234 - specialist

CREATE DATABASE IF NOT EXISTS `shadb3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `shadb3`;

-- --------------------------------------------------------

--
-- Структура таблицы `CatalogService`
--

CREATE TABLE `CatalogService` (
  `id_catalog` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `CatalogService`
--

INSERT INTO `CatalogService` (`id_catalog`, `name`, `description`) VALUES
(1, 'Информационные системы', 'Подать заявку, связанную с информационными системами'),
(2, 'ПК и оргтехника', 'Подать заявку в отдел технического сопровождения'),
(3, 'Сеть, видеонаблюдение, телефония', 'Подать заявку в отдел планирования и сопровождения сети'),
(4, 'Средства защиты информации, Интернет, электронная подпись', 'Подать заявку в отдел защиты информации'),
(5, 'Техническое состояние помещений', 'Подать заявку в МКУ «Управление зданиями»'),
(6, 'Общая заявка', 'Если ни одна из категорий Вам не подходит');

-- --------------------------------------------------------

--
-- Структура таблицы `Employees`
--

CREATE TABLE `Employees` (
  `id_employee` int(10) UNSIGNED NOT NULL,
  `surname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mob_phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_role` int(10) UNSIGNED NOT NULL,
  `id_org` int(10) UNSIGNED NOT NULL,
  `department` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Employees`
--

INSERT INTO `Employees` (`id_employee`, `surname`, `name`, `patronymic`, `login`, `password`, `email`, `work_phone`, `ext_phone`, `mob_phone`, `id_role`, `id_org`, `department`, `office`, `position`, `created`, `updated`, `active`) VALUES
(1, 'Администратор', '-', '-', 'admin', '$2y$10$gi.1J9QayEXWDvECl6xZT.67rSx.NLh9/83BcAZM8ilPrIx5GesIi', 'admin@ekadm.ru', '734330404101', '40102', '-', 1, 3, 'ит отдел', '150', 'администратор', '2007-10-23 10:37:22', '2007-10-23 10:37:22', 1),
(2, 'Разумовский', 'Алексей', 'Григорьевич', 'razumovsky_ag', '$2y$10$ERksLen3BPjKg8UfegtSWeFMjn6qH6TKZzExxKMmaTKAVF7jZc5DS', 'razumovsky_ag@ekadm.ru', '734330400201', '20101', '-', 3, 1, 'юридический отдел', '257', 'ведущий специалист', '2008-10-23 10:37:22', '2008-10-23 10:37:22', 1),
(3, 'Безбородко', 'Александр', 'Андреевич', 'bezborodko_aa', '$2y$10$.7UvFStOfVEdXajHwPhMG.zbrgg9Ns81ZRv4JTHd2AsV58BfjswOK', 'bezborodko_aa@ekadm.ru', '734330400302', '30102', '-', 3, 2, 'финансовый отдел', '333', 'главный специалист', '2010-11-23 11:34:26', '2010-11-23 11:34:26', 1),
(4, 'Панин', 'Никита', 'Иванович', 'panin_ni', '$2y$10$V7.azmRsH4IB8Ggjt7R/0.xbzMIDu.1JEFwmYlFi6k9StmsJr4XA6', 'panin_ni@ekadm.ru', '734330401204', '10201', '-', 3, 2, 'технический отдел', '408', 'ведущий специалист', '2020-05-04 11:37:22', '2020-05-04 11:37:22', 1),
(5, 'Дашкова', 'Екатерина', 'Романовна', 'dashkova_ag', '$2y$10$Mk3CGT0LJr59aW1oFYaKwOnDE/dxUX/nu9UDg.Ksp2ouy4eDgwZX6', 'dashkova_er@ekadm.ru', '734330401101', '10101', '-', 3, 3, 'бухгалтерский отдел', '253', 'ведущий бухгалтер', '2016-07-23 10:37:22', '2016-07-23 10:37:22', 1),
(6, 'Иванов', 'Александр', 'Сергеевич', 'ivanov_as', '$2y$10$p.L7dpugG5tnoQ5fYZaT..G61jNU01POYrJWh4svuPhKu7LVi7etu', 'ivanov_ag@ekadm.ru', '734330404101', '40101', '-', 2, 3, 'ит отдел', '155', 'ведущий специалист', '2021-05-23 10:37:22', '2021-05-23 10:37:22', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Ihistory`
--

CREATE TABLE `Ihistory` (
  `id_history` int(10) UNSIGNED NOT NULL,
  `id_incident` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `time_action` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Ihistory`
--

INSERT INTO `Ihistory` (`id_history`, `id_incident`, `id_employee`, `time_action`, `action`) VALUES
(1, 1, 2, '2023-11-18 10:37:22', 'Заявка создана пользователем'),
(2, 2, 2, '2024-01-24 11:41:59', 'Заявка создана пользователем'),
(3, 2, 2, '2024-01-24 13:41:59', 'Принято в исполнение');

-- --------------------------------------------------------

--
-- Структура таблицы `Incident`
--

CREATE TABLE `Incident` (
  `id_incident` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `id_priority` int(10) UNSIGNED NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `id_service` int(10) UNSIGNED NOT NULL,
  `id_specialist` int(10) UNSIGNED DEFAULT NULL,
  `id_urgency` int(10) UNSIGNED NOT NULL,
  `id_influence` int(10) UNSIGNED NOT NULL,
  `id_sourse` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Incident`
--

INSERT INTO `Incident` (`id_incident`, `id_employee`, `id_priority`, `id_status`, `id_service`, `id_specialist`, `id_urgency`, `id_influence`, `id_sourse`, `name`, `description`, `created`, `updated`) VALUES
(1, 2, 2, 1, 10, NULL, 2, 2, 1, 'Не работает IP-телефон', 'Не работает IP-телефон. При звонке на внешние номера тишина в трубке, при звонке на внутренние номера работает нормально', '2023-11-18 10:37:22', '2023-11-18 10:37:22'),
(2, 2, 2, 3, 8, 6, 2, 2, 1, 'Не печатает сетевой принтер', 'Не печатает принтер, при отправке документа горят красные индикаторе на устройстве', '2024-01-24 11:41:59', '2024-01-24 13:41:59');

-- --------------------------------------------------------

--
-- Структура таблицы `Influence`
--

CREATE TABLE `Influence` (
  `id_influence` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Influence`
--

INSERT INTO `Influence` (`id_influence`, `name`) VALUES
(1, 'Низкое'),
(2, 'Среднее'),
(3, 'Высокое');

-- --------------------------------------------------------

--
-- Структура таблицы `InfoBase`
--

CREATE TABLE `InfoBase` (
  `id_infobase` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `InfoBase`
--

INSERT INTO `InfoBase` (`id_infobase`, `id_employee`, `name`, `description`, `created`, `updated`) VALUES
(1, 1, 'Зависание рабочей станции пользователя', 'При зависании компьютера пользователя сделать перезагрузку', '2023-11-18 12:37:22', '2023-11-18 12:37:22');

-- --------------------------------------------------------

--
-- Структура таблицы `Organization`
--

CREATE TABLE `Organization` (
  `id_org` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Organization`
--

INSERT INTO `Organization` (`id_org`, `name`, `address`, `phone`, `email`) VALUES
(1, 'Департамент Архитектуры', 'Екатеринбург, 8 Марта, 8б', '734330400100', 'darkh@ekadm.ru'),
(2, 'МКУ Управление зданиями', 'Екатеринбург, Ленина, 24а', '734330400200', 'uzadge@ekadm.ru'),
(3, 'МБУ Электронный город', 'Екатеринбург, Банковский, 1', '734330400300', 'EE@ekadm.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `Permits`
--

CREATE TABLE `Permits` (
  `id_permit` int(10) UNSIGNED NOT NULL,
  `id_role` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Permits`
--

INSERT INTO `Permits` (`id_permit`, `id_role`, `name`, `description`, `value`) VALUES
(1, 1, 'create account', 'Создание учетной записи', 1),
(2, 1, 'read account', 'Просмотр учетной записи', 1),
(3, 1, 'update account', 'Редактирование учетной записи', 1),
(4, 1, 'delete account', 'Удаление учетной записи', 1),
(5, 2, 'create account', 'Создание учетной записи', 0),
(6, 2, 'read account', 'Просмотр учетной записи', 1),
(7, 2, 'update account', 'Редактирование учетной записи', 0),
(8, 2, 'delete account', 'Удаление учетной записи', 0),
(9, 3, 'create account', 'Создание учетной записи', 0),
(10, 3, 'read account', 'Просмотр учетной записи', 1),
(11, 3, 'update account', 'Редактирование учетной записи', 0),
(12, 3, 'delete account', 'Удаление учетной записи', 0),
(13, 1, 'create incident', 'Создание инцидента', 1),
(14, 1, 'read incident', 'Просмотр инцидента', 1),
(15, 1, 'update incident', 'Редактирование инцидента', 1),
(16, 1, 'delete incident', 'Удаление инцидента', 1),
(17, 2, 'create incident', 'Создание инцидента', 1),
(18, 2, 'read incident', 'Просмотр инцидента', 1),
(19, 2, 'update incident', 'Редактирование инцидента', 1),
(20, 2, 'delete incident', 'Удаление инцидента', 0),
(21, 3, 'create incident', 'Создание инцидента', 1),
(22, 3, 'read incident', 'Просмотр инцидента', 1),
(23, 3, 'update incident', 'Редактирование инцидента', 0),
(24, 3, 'delete incident', 'Удаление инцидента', 0),
(25, 1, 'create problem', 'Создание проблемы', 1),
(26, 1, 'read problem', 'Просмотр проблемы', 1),
(27, 1, 'update problem', 'Редактирование проблемы', 1),
(28, 1, 'delete problem', 'Удаление проблемы', 1),
(29, 2, 'create problem', 'Создание проблемы', 1),
(30, 2, 'read problem', 'Просмотр проблемы', 1),
(31, 2, 'update problem', 'Редактирование проблемы', 1),
(32, 2, 'delete problem', 'Удаление проблемы', 0),
(33, 3, 'create problem', 'Создание проблемы', 0),
(34, 3, 'read problem', 'Просмотр проблемы', 0),
(35, 3, 'update problem', 'Редактирование проблемы', 0),
(36, 3, 'delete problem', 'Удаление проблемы', 0),
(37, 1, 'create service', 'Создание сервиса', 1),
(38, 1, 'read service', 'Просмотр сервиса', 1),
(39, 1, 'update service', 'Редактирование сервиса', 1),
(40, 1, 'delete service', 'Удаление сервиса', 1),
(41, 2, 'create service', 'Создание сервиса', 0),
(42, 2, 'read service', 'Просмотр сервиса', 1),
(43, 2, 'update service', 'Редактирование сервиса', 0),
(44, 2, 'delete service', 'Удаление сервиса', 0),
(45, 3, 'create service', 'Создание сервиса', 0),
(46, 3, 'read service', 'Просмотр сервиса', 1),
(47, 3, 'update service', 'Редактирование сервиса', 0),
(48, 3, 'delete service', 'Удаление сервиса', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Phistory`
--

CREATE TABLE `Phistory` (
  `id_history` int(10) UNSIGNED NOT NULL,
  `id_problem` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `time_action` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Phistory`
--

INSERT INTO `Phistory` (`id_history`, `id_problem`, `id_employee`, `time_action`, `action`) VALUES
(1, 1, 6, '2023-11-18 12:37:22', 'Проблема создана пользователем');

-- --------------------------------------------------------

--
-- Структура таблицы `Priority`
--

CREATE TABLE `Priority` (
  `id_priority` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Priority`
--

INSERT INTO `Priority` (`id_priority`, `name`) VALUES
(1, 'Высокий'),
(2, 'Средний'),
(3, 'Низкий'),
(4, 'Критический');

-- --------------------------------------------------------

--
-- Структура таблицы `Problem`
--

CREATE TABLE `Problem` (
  `id_problem` int(10) UNSIGNED NOT NULL,
  `id_employee` int(10) UNSIGNED NOT NULL,
  `id_priority` int(10) UNSIGNED NOT NULL,
  `id_status` int(10) UNSIGNED NOT NULL,
  `id_service` int(10) UNSIGNED NOT NULL,
  `id_specialist` int(10) UNSIGNED DEFAULT NULL,
  `id_urgency` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `id_influence` int(10) UNSIGNED NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Problem`
--

INSERT INTO `Problem` (`id_problem`, `id_employee`, `id_priority`, `id_status`, `id_service`, `id_specialist`, `id_urgency`, `name`, `description`, `id_influence`, `created`, `updated`) VALUES
(1, 6, 2, 1, 4, NULL, 2, 'Сбой в работе АИС АЦК-Финансы', 'Раз в неделю зависает сервер АЦК-Финансы под управлением Windows Server 2003', 2, '2023-11-18 12:37:22', '2023-11-18 12:37:22');

-- --------------------------------------------------------

--
-- Структура таблицы `Roles`
--

CREATE TABLE `Roles` (
  `id_role` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Roles`
--

INSERT INTO `Roles` (`id_role`, `name`, `value`) VALUES
(1, 'Администратор', 'administrator'),
(2, 'Специалист', 'specialist'),
(3, 'Пользователь', 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `Service`
--

CREATE TABLE `Service` (
  `id_service` int(10) UNSIGNED NOT NULL,
  `id_catalog` int(10) UNSIGNED NOT NULL,
  `id_sla` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Service`
--

INSERT INTO `Service` (`id_service`, `id_catalog`, `id_sla`, `name`, `description`) VALUES
(1, 1, 1, 'DocsVision', 'Подать заявку, связанную с DocsVision'),
(2, 1, 1, 'АИС КЖП', 'Подать заявку, связанную с АИС КЖП'),
(3, 1, 1, 'АЦК - Муниципальный заказ', 'Подать заявку, связанную с АЦК - Муниципальный заказ'),
(4, 1, 1, 'АИС - Финансы', 'Подать заявку, связанную с АЦК - Финансы'),
(5, 1, 1, 'Мониторинг', 'Подать заявку, связанную с мониторингом'),
(6, 1, 1, 'РГИС', 'Подать заявку, связанную с ГрадИНФО, ГИС Ингео, Геопорталом'),
(7, 1, 1, 'Улично-дорожная сеть', 'Подать заявку, связанную с улично-дорожной сетью'),
(8, 2, 1, 'Оргтехника', 'Подать заявку, связанную с оргтехникой'),
(9, 2, 1, 'ПК', 'Подать заявку, связанную с работой ПК'),
(10, 3, 2, 'IP-телефония', 'Подать заявку, связанную с IP-телефонией'),
(11, 3, 2, 'Видеонаблюдение', 'Подать заявку, связанную с видеонаблюдением'),
(12, 3, 2, 'Не подключается Wi-Fi', 'Подать заявку, связанную с беспроводным подключением'),
(13, 3, 2, 'Нет сети', 'Подать заявку, связанную с сетевым подключением'),
(14, 4, 2, 'Интернет', 'Подать заявку, связанную с доступом в Интернет'),
(15, 4, 2, 'Средства защиты информации', 'Подать заявку, связанную со средствами защиты информации'),
(16, 4, 2, 'Электронная подпись', 'Подать заявку, связанную с электронной подписью'),
(17, 5, 3, 'Охранная сигнализация', 'Подать заявку о неисправности при постановке, снятии с охранной сигнализации'),
(18, 5, 3, 'Ремонт мебели, замков, дверей', 'Подать заявку на плотника (осуществление мелкого ремонта мебели, замков, дверей)'),
(19, 5, 3, 'Уборка помещения', 'Подать заявку на уборку помещения'),
(20, 5, 3, 'Элементы энергоснабжения, сантехнические узлы', 'Подать заявку о неисправности элементов энергоснабжения, сантехнических узлов'),
(21, 6, 3, 'Общая заявка в службу тeхнической поддержки', 'Если ни одна из категорий Вам не подходит, создайте общую заявку в службу тeхнической поддержки');

-- --------------------------------------------------------

--
-- Структура таблицы `SLA`
--

CREATE TABLE `SLA` (
  `id_sla` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_provision` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `downtime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_elimination` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `SLA`
--

INSERT INTO `SLA` (`id_sla`, `name`, `time_provision`, `downtime`, `time_elimination`) VALUES
(1, 'Золотой уровень', 'С 8:00 до 20:00', '1:00', '01:00'),
(2, 'Серебряный уровень', 'С 9:00 до 19:00', '4:00', '02:00'),
(3, 'Бронзовый уровень', 'С 9:30 до 18:30', '12:00', '08:00');

-- --------------------------------------------------------

--
-- Структура таблицы `Sourse`
--

CREATE TABLE `Sourse` (
  `id_sourse` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Sourse`
--

INSERT INTO `Sourse` (`id_sourse`, `name`) VALUES
(1, 'Портал'),
(2, 'Телефон'),
(3, 'Почта'),
(4, 'Skype4B'),
(5, 'DocV');

-- --------------------------------------------------------

--
-- Структура таблицы `Status`
--

CREATE TABLE `Status` (
  `id_status` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Status`
--

INSERT INTO `Status` (`id_status`, `name`) VALUES
(1, 'Открыта'),
(2, 'Открыта повторно'),
(3, 'Принята в исполнение'),
(4, 'Отменена'),
(5, 'Требует уточнения'),
(6, 'Согласовано'),
(7, 'Выполнена'),
(8, 'Закрыта'),
(9, 'Приостановлена');

-- --------------------------------------------------------

--
-- Структура таблицы `Urgency`
--

CREATE TABLE `Urgency` (
  `id_urgency` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Urgency`
--

INSERT INTO `Urgency` (`id_urgency`, `name`) VALUES
(1, 'Низкая'),
(2, 'Средняя'),
(3, 'Высокая');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `CatalogService`
--
ALTER TABLE `CatalogService`
  ADD PRIMARY KEY (`id_catalog`);

--
-- Индексы таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `Employees_id_org` (`id_org`),
  ADD KEY `Employees_id_role` (`id_role`);

--
-- Индексы таблицы `Ihistory`
--
ALTER TABLE `Ihistory`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `Ihistory_id_incident` (`id_incident`),
  ADD KEY `Ihistory_id_employee` (`id_employee`);

--
-- Индексы таблицы `Incident`
--
ALTER TABLE `Incident`
  ADD PRIMARY KEY (`id_incident`),
  ADD KEY `Incident_id_employee` (`id_employee`),
  ADD KEY `Incident_id_priority` (`id_priority`),
  ADD KEY `Incident_id_status` (`id_status`),
  ADD KEY `Incident_id_influence` (`id_influence`),
  ADD KEY `Incident_id_Service` (`id_service`),
  ADD KEY `Incident_id_urgency` (`id_urgency`),
  ADD KEY `Incident_id_sourse` (`id_sourse`);

--
-- Индексы таблицы `Influence`
--
ALTER TABLE `Influence`
  ADD PRIMARY KEY (`id_influence`);

--
-- Индексы таблицы `InfoBase`
--
ALTER TABLE `InfoBase`
  ADD PRIMARY KEY (`id_infobase`),
  ADD KEY `InfoBase_id_employee` (`id_employee`);

--
-- Индексы таблицы `Organization`
--
ALTER TABLE `Organization`
  ADD PRIMARY KEY (`id_org`);

--
-- Индексы таблицы `Permits`
--
ALTER TABLE `Permits`
  ADD PRIMARY KEY (`id_permit`),
  ADD KEY `Permits_id_role` (`id_role`);

--
-- Индексы таблицы `Phistory`
--
ALTER TABLE `Phistory`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `Phistory_id_problem` (`id_problem`),
  ADD KEY `Phistory_id_employee` (`id_employee`);

--
-- Индексы таблицы `Priority`
--
ALTER TABLE `Priority`
  ADD PRIMARY KEY (`id_priority`);

--
-- Индексы таблицы `Problem`
--
ALTER TABLE `Problem`
  ADD PRIMARY KEY (`id_problem`),
  ADD KEY `Problem_id_employee` (`id_employee`),
  ADD KEY `Problem_id_priority` (`id_priority`),
  ADD KEY `Problem_id_status` (`id_status`),
  ADD KEY `Problem_id_Service` (`id_service`),
  ADD KEY `Problem_id_urgency` (`id_urgency`),
  ADD KEY `Problem_id_influence` (`id_influence`);

--
-- Индексы таблицы `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Индексы таблицы `Service`
--
ALTER TABLE `Service`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `Service_id_catalog` (`id_catalog`),
  ADD KEY `Service_id_sla` (`id_sla`);

--
-- Индексы таблицы `SLA`
--
ALTER TABLE `SLA`
  ADD PRIMARY KEY (`id_sla`);

--
-- Индексы таблицы `Sourse`
--
ALTER TABLE `Sourse`
  ADD PRIMARY KEY (`id_sourse`);

--
-- Индексы таблицы `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`id_status`);

--
-- Индексы таблицы `Urgency`
--
ALTER TABLE `Urgency`
  ADD PRIMARY KEY (`id_urgency`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `CatalogService`
--
ALTER TABLE `CatalogService`
  MODIFY `id_catalog` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id_employee` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Ihistory`
--
ALTER TABLE `Ihistory`
  MODIFY `id_history` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Incident`
--
ALTER TABLE `Incident`
  MODIFY `id_incident` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Influence`
--
ALTER TABLE `Influence`
  MODIFY `id_influence` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `InfoBase`
--
ALTER TABLE `InfoBase`
  MODIFY `id_infobase` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Organization`
--
ALTER TABLE `Organization`
  MODIFY `id_org` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Permits`
--
ALTER TABLE `Permits`
  MODIFY `id_permit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `Phistory`
--
ALTER TABLE `Phistory`
  MODIFY `id_history` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Priority`
--
ALTER TABLE `Priority`
  MODIFY `id_priority` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Problem`
--
ALTER TABLE `Problem`
  MODIFY `id_problem` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `Roles`
--
ALTER TABLE `Roles`
  MODIFY `id_role` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Service`
--
ALTER TABLE `Service`
  MODIFY `id_service` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `SLA`
--
ALTER TABLE `SLA`
  MODIFY `id_sla` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Sourse`
--
ALTER TABLE `Sourse`
  MODIFY `id_sourse` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Status`
--
ALTER TABLE `Status`
  MODIFY `id_status` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `Urgency`
--
ALTER TABLE `Urgency`
  MODIFY `id_urgency` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD CONSTRAINT `Employees_id_org` FOREIGN KEY (`id_org`) REFERENCES `Organization` (`id_org`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Employees_id_role` FOREIGN KEY (`id_role`) REFERENCES `Roles` (`id_role`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Ihistory`
--
ALTER TABLE `Ihistory`
  ADD CONSTRAINT `Ihistory_id_employee` FOREIGN KEY (`id_employee`) REFERENCES `Employees` (`id_employee`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Ihistory_id_incident` FOREIGN KEY (`id_incident`) REFERENCES `Incident` (`id_incident`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Incident`
--
ALTER TABLE `Incident`
  ADD CONSTRAINT `Incident_id_Service` FOREIGN KEY (`id_service`) REFERENCES `Service` (`id_service`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Incident_id_employee` FOREIGN KEY (`id_employee`) REFERENCES `Employees` (`id_employee`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Incident_id_influence` FOREIGN KEY (`id_influence`) REFERENCES `Influence` (`id_influence`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Incident_id_priority` FOREIGN KEY (`id_priority`) REFERENCES `Priority` (`id_priority`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Incident_id_sourse` FOREIGN KEY (`id_sourse`) REFERENCES `Sourse` (`id_sourse`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Incident_id_status` FOREIGN KEY (`id_status`) REFERENCES `Status` (`id_status`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Incident_id_urgency` FOREIGN KEY (`id_urgency`) REFERENCES `Urgency` (`id_urgency`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `InfoBase`
--
ALTER TABLE `InfoBase`
  ADD CONSTRAINT `InfoBase_id_employee` FOREIGN KEY (`id_employee`) REFERENCES `Employees` (`id_employee`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Permits`
--
ALTER TABLE `Permits`
  ADD CONSTRAINT `Permits_id_role` FOREIGN KEY (`id_role`) REFERENCES `Roles` (`id_role`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Phistory`
--
ALTER TABLE `Phistory`
  ADD CONSTRAINT `Phistory_id_employee` FOREIGN KEY (`id_employee`) REFERENCES `Employees` (`id_employee`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Phistory_id_problem` FOREIGN KEY (`id_problem`) REFERENCES `Problem` (`id_problem`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Problem`
--
ALTER TABLE `Problem`
  ADD CONSTRAINT `Problem_id_Service` FOREIGN KEY (`id_service`) REFERENCES `Service` (`id_service`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Problem_id_employee` FOREIGN KEY (`id_employee`) REFERENCES `Employees` (`id_employee`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Problem_id_influence` FOREIGN KEY (`id_influence`) REFERENCES `Influence` (`id_influence`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Problem_id_priority` FOREIGN KEY (`id_priority`) REFERENCES `Priority` (`id_priority`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Problem_id_status` FOREIGN KEY (`id_status`) REFERENCES `Status` (`id_status`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Problem_id_urgency` FOREIGN KEY (`id_urgency`) REFERENCES `Urgency` (`id_urgency`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Service`
--
ALTER TABLE `Service`
  ADD CONSTRAINT `Service_id_catalog` FOREIGN KEY (`id_catalog`) REFERENCES `CatalogService` (`id_catalog`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Service_id_sla` FOREIGN KEY (`id_sla`) REFERENCES `SLA` (`id_sla`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
