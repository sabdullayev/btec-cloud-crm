-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 01 2026 г., 09:00
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `espocrm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `account`
--

CREATE TABLE `account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(249) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sic_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `account_contact`
--

CREATE TABLE `account_contact` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_inactive` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `account_document`
--

CREATE TABLE `account_document` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `account_portal_user`
--

CREATE TABLE `account_portal_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `account_target_list`
--

CREATE TABLE `account_target_list` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `action_history_record`
--

CREATE TABLE `action_history_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_log_record_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `address_country`
--

CREATE TABLE `address_country` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_preferred` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `app_log_record`
--

CREATE TABLE `app_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `exception_class` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `request_method` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_resource_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `array_value`
--

CREATE TABLE `array_value` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `attachment`
--

CREATE TABLE `attachment` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_being_uploaded` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `role` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_file_path` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `authentication_provider`
--

CREATE TABLE `authentication_provider` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_token_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwks_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwt_signature_algorithm_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["RS256"]',
  `oidc_scopes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["profile","email","phone"]',
  `oidc_create_user` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_username_claim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'sub',
  `oidc_sync` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_logout_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_prompt` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_log_record`
--

CREATE TABLE `auth_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_denied` tinyint(1) NOT NULL DEFAULT 0,
  `denial_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_time` double DEFAULT NULL,
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_log_record`
--

INSERT INTO `auth_log_record` (`id`, `deleted`, `username`, `ip_address`, `created_at`, `is_denied`, `denial_reason`, `request_time`, `request_url`, `request_method`, `authentication_method`, `portal_id`, `user_id`, `auth_token_id`) VALUES
('6a1d103720e1caee9', 0, 'user', '::1', '2026-06-01 04:53:11', 0, NULL, 1780289590.1258, 'http://localhost/espocrm/espocrm/api/v1/App/user', 'GET', 'Espo', NULL, '6a1d0ee0644f99b6b', '6a1d10371f75a14bf');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_token`
--

CREATE TABLE `auth_token` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_access` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_token`
--

INSERT INTO `auth_token` (`id`, `deleted`, `token`, `hash`, `secret`, `ip_address`, `is_active`, `last_access`, `created_at`, `modified_at`, `user_id`, `portal_id`) VALUES
('6a1d10371f75a14bf', 0, '6d3218c96d1b232e9b7b5dd73e315e3c', '/XB22LXXIebvP6fCkktL7Y0pmUHrZzR287A3yAKss1VJg6LysONKNgHMznu.7YQ1p9tFw/2M3KKE8x3GEwp7k1', '16d61de3d46e8f9488bdff9f7a852ea8', '::1', 1, '2026-06-01 04:55:51', '2026-06-01 04:53:11', '2026-06-01 04:55:51', '6a1d0ee0644f99b6b', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `autofollow`
--

CREATE TABLE `autofollow` (
  `id` int(11) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `call`
--

CREATE TABLE `call` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Outbound',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `call_contact`
--

CREATE TABLE `call_contact` (
  `id` bigint(20) NOT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `call_lead`
--

CREATE TABLE `call_lead` (
  `id` bigint(20) NOT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `call_user`
--

CREATE TABLE `call_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `campaign`
--

CREATE TABLE `campaign` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planning',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Email',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `mail_merge_only_with_address` tinyint(1) NOT NULL DEFAULT 1,
  `budget_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leads_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accounts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `campaign_log_record`
--

CREATE TABLE `campaign_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_additional_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Espo',
  `created_at` datetime DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue_item_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `campaign_target_list`
--

CREATE TABLE `campaign_target_list` (
  `id` bigint(20) NOT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `campaign_target_list_excluding`
--

CREATE TABLE `campaign_target_list_excluding` (
  `id` bigint(20) NOT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `campaign_tracking_url`
--

CREATE TABLE `campaign_tracking_url` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Redirect',
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `case`
--

CREATE TABLE `case` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `case_contact`
--

CREATE TABLE `case_contact` (
  `id` bigint(20) NOT NULL,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `case_knowledge_base_article`
--

CREATE TABLE `case_knowledge_base_article` (
  `id` bigint(20) NOT NULL,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contact_document`
--

CREATE TABLE `contact_document` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contact_meeting`
--

CREATE TABLE `contact_meeting` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contact_opportunity`
--

CREATE TABLE `contact_opportunity` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contact_target_list`
--

CREATE TABLE `contact_target_list` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `currency`
--

CREATE TABLE `currency` (
  `id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `currency`
--

INSERT INTO `currency` (`id`, `rate`) VALUES
('USD', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dashboard_template`
--

CREATE TABLE `dashboard_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `document`
--

CREATE TABLE `document` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `document_folder`
--

CREATE TABLE `document_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `document_folder_path`
--

CREATE TABLE `document_folder_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `document_lead`
--

CREATE TABLE `document_lead` (
  `id` bigint(20) NOT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `document_opportunity`
--

CREATE TABLE `document_opportunity` (
  `id` bigint(20) NOT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email`
--

CREATE TABLE `email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_name_map` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_replied` tinyint(1) NOT NULL DEFAULT 0,
  `message_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id_internal` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_plain` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `has_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `ics_contents` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ics_event_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_account`
--

CREATE TABLE `email_account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["INBOX"]',
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `connected_at` datetime DEFAULT NULL,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_address`
--

CREATE TABLE `email_address` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `lower` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_email_account`
--

CREATE TABLE `email_email_account` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_email_address`
--

CREATE TABLE `email_email_address` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_filter`
--

CREATE TABLE `email_filter` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_contains` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_contains_all` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Skip',
  `mark_as_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_folder`
--

CREATE TABLE `email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `skip_notifications` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_inbound_email`
--

CREATE TABLE `email_inbound_email` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_queue_item`
--

CREATE TABLE `email_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_count` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_template`
--

CREATE TABLE `email_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `one_off` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `email_template`
--

INSERT INTO `email_template` (`id`, `name`, `deleted`, `subject`, `body`, `is_html`, `one_off`, `created_at`, `modified_at`, `category_id`, `assigned_user_id`, `created_by_id`, `modified_by_id`, `version_number`) VALUES
('6a1d100572975c54d', 'Case-to-Email auto-reply', 0, 'Case has been created', '<p>{Person.name},</p><p>Case \'{Case.name}\' has been created with number {Case.number} and assigned to {User.name}.</p>', 1, 0, '2026-06-01 04:52:21', '2026-06-01 04:52:21', NULL, NULL, 'system', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `email_template_category`
--

CREATE TABLE `email_template_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_template_category_path`
--

CREATE TABLE `email_template_category_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `email_user`
--

CREATE TABLE `email_user` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `is_important` tinyint(1) DEFAULT 0,
  `in_trash` tinyint(1) DEFAULT 0,
  `in_archive` tinyint(1) DEFAULT 0,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `entity_email_address`
--

CREATE TABLE `entity_email_address` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `entity_phone_number`
--

CREATE TABLE `entity_phone_number` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `entity_team`
--

CREATE TABLE `entity_team` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `entity_user`
--

CREATE TABLE `entity_user` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `export`
--

CREATE TABLE `export` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `extension`
--

CREATE TABLE `extension` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_installed` tinyint(1) NOT NULL DEFAULT 0,
  `check_version_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `external_account`
--

CREATE TABLE `external_account` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `group_email_folder`
--

CREATE TABLE `group_email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `group_email_folder_team`
--

CREATE TABLE `group_email_folder_team` (
  `id` bigint(20) NOT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `import`
--

CREATE TABLE `import` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_index` int(11) DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `import_entity`
--

CREATE TABLE `import_entity` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_imported` tinyint(1) NOT NULL DEFAULT 0,
  `is_updated` tinyint(1) NOT NULL DEFAULT 0,
  `is_duplicate` tinyint(1) NOT NULL DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `import_error`
--

CREATE TABLE `import_error` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `row_index` int(11) DEFAULT NULL,
  `export_row_index` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_failures` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["INBOX"]',
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_all_team_users` tinyint(1) NOT NULL DEFAULT 1,
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `connected_at` datetime DEFAULT NULL,
  `exclude_from_reply` tinyint(1) NOT NULL DEFAULT 0,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_shared` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_for_mass_email` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `create_case` tinyint(1) NOT NULL DEFAULT 0,
  `case_distribution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Direct-Assignment',
  `target_user_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` tinyint(1) NOT NULL DEFAULT 0,
  `reply_from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assign_to_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `inbound_email_team`
--

CREATE TABLE `inbound_email_team` (
  `id` bigint(20) NOT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `integration`
--

CREATE TABLE `integration` (
  `id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job`
--

CREATE TABLE `job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `execute_time` datetime DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `executed_at` datetime DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `target_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `job`
--

INSERT INTO `job` (`id`, `name`, `deleted`, `status`, `execute_time`, `number`, `class_name`, `service_name`, `method_name`, `job`, `data`, `queue`, `group`, `target_group`, `started_at`, `executed_at`, `pid`, `attempts`, `target_id`, `target_type`, `failed_attempts`, `created_at`, `modified_at`, `scheduled_job_id`) VALUES
('6a1d10059088fa77a', 'Dummy', 0, 'Pending', '2026-06-01 04:52:21', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', '6a1d0ecae072e4d17');

-- --------------------------------------------------------

--
-- Структура таблицы `kanban_order`
--

CREATE TABLE `kanban_order` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` smallint(6) DEFAULT NULL,
  `group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `knowledge_base_article`
--

CREATE TABLE `knowledge_base_article` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Article',
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `knowledge_base_article_knowledge_base_category`
--

CREATE TABLE `knowledge_base_article_knowledge_base_category` (
  `id` bigint(20) NOT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `knowledge_base_article_portal`
--

CREATE TABLE `knowledge_base_article_portal` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `knowledge_base_category`
--

CREATE TABLE `knowledge_base_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `knowledge_base_category_path`
--

CREATE TABLE `knowledge_base_category_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `layout_record`
--

CREATE TABLE `layout_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `layout_set`
--

CREATE TABLE `layout_set` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lead`
--

CREATE TABLE `lead` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount` double DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lead_capture`
--

CREATE TABLE `lead_capture` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_contact_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `field_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '["firstName","lastName","emailAddress"]',
  `duplicate_check` tinyint(1) NOT NULL DEFAULT 1,
  `opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `opt_in_confirmation_lifetime` int(11) DEFAULT 48,
  `opt_in_confirmation_success_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_lead_before_opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `skip_opt_in_confirmation_if_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Web Site',
  `api_key` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opt_in_confirmation_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lead_capture_log_record`
--

CREATE TABLE `lead_capture_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_created` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `lead_capture_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lead_meeting`
--

CREATE TABLE `lead_meeting` (
  `id` bigint(20) NOT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `lead_target_list`
--

CREATE TABLE `lead_target_list` (
  `id` bigint(20) NOT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mass_action`
--

CREATE TABLE `mass_action` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `processed_count` int(11) DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mass_email`
--

CREATE TABLE `mass_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out_entirely` tinyint(1) NOT NULL DEFAULT 0,
  `from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mass_email_target_list`
--

CREATE TABLE `mass_email_target_list` (
  `id` bigint(20) NOT NULL,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `mass_email_target_list_excluding`
--

CREATE TABLE `mass_email_target_list_excluding` (
  `id` bigint(20) NOT NULL,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `meeting`
--

CREATE TABLE `meeting` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `is_all_day` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `meeting_user`
--

CREATE TABLE `meeting_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `next_number`
--

CREATE TABLE `next_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `note`
--

CREATE TABLE `note` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `post` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Post',
  `target_type` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `is_pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `note_portal`
--

CREATE TABLE `note_portal` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `note_team`
--

CREATE TABLE `note_team` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `note_user`
--

CREATE TABLE `note_user` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `notification`
--

CREATE TABLE `notification` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `email_is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `opportunity`
--

CREATE TABLE `opportunity` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `amount` double DEFAULT NULL,
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Prospecting',
  `last_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probability` int(11) DEFAULT NULL,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_change_request`
--

CREATE TABLE `password_change_request` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `phone_number`
--

CREATE TABLE `phone_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portal`
--

CREATE TABLE `portal` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `custom_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `tab_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_create_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week_start` int(11) DEFAULT -1,
  `default_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_lifetime` double DEFAULT NULL,
  `auth_token_max_idle_time` double DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_provider_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portal_portal_role`
--

CREATE TABLE `portal_portal_role` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portal_role`
--

CREATE TABLE `portal_role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portal_role_user`
--

CREATE TABLE `portal_role_user` (
  `id` bigint(20) NOT NULL,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `portal_user`
--

CREATE TABLE `portal_user` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `preferences`
--

CREATE TABLE `preferences` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reminder`
--

CREATE TABLE `reminder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `remind_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Popup',
  `seconds` int(11) DEFAULT 0,
  `is_submitted` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role`
--

CREATE TABLE `role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assignment_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `user_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `message_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `portal_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `group_email_account_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data_privacy_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `follower_management_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `audit_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mention_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role_team`
--

CREATE TABLE `role_team` (
  `id` bigint(20) NOT NULL,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) NOT NULL,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `scheduled_job`
--

CREATE TABLE `scheduled_job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `scheduling` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `scheduled_job`
--

INSERT INTO `scheduled_job` (`id`, `name`, `deleted`, `job`, `status`, `scheduling`, `last_run`, `created_at`, `modified_at`, `is_internal`, `created_by_id`, `modified_by_id`) VALUES
('6a1d0ecaaa07e118e', 'Submit Popup Reminders', 0, 'SubmitPopupReminders', 'Active', '* * * * *', NULL, '2026-06-01 04:47:06', '2026-06-01 04:47:06', 1, NULL, NULL),
('6a1d0ecac1b0d70a0', 'Process Job Group', 0, 'ProcessJobGroup', 'Active', '* * * * *', NULL, '2026-06-01 04:47:06', '2026-06-01 04:47:06', 1, NULL, NULL),
('6a1d0ecad20482ce7', 'Process Job Queue q0', 0, 'ProcessJobQueueQ0', 'Active', '* * * * *', NULL, '2026-06-01 04:47:06', '2026-06-01 04:47:06', 1, NULL, NULL),
('6a1d0ecad93505158', 'Process Job Queue q1', 0, 'ProcessJobQueueQ1', 'Active', '*/1 * * * *', NULL, '2026-06-01 04:47:06', '2026-06-01 04:47:06', 1, NULL, NULL),
('6a1d0ecadf5457506', 'Process Job Queue e0', 0, 'ProcessJobQueueE0', 'Active', '* * * * *', NULL, '2026-06-01 04:47:06', '2026-06-01 04:47:06', 1, NULL, NULL),
('6a1d0ecae072e4d17', 'Dummy', 0, 'Dummy', 'Active', '1 */12 * * *', NULL, '2026-06-01 04:47:06', '2026-06-01 04:47:06', 1, NULL, NULL),
('6a1d0ecae19239b7c', 'Check for New Version', 0, 'CheckNewVersion', 'Active', '15 5 * * *', NULL, '2026-06-01 04:47:06', '2026-06-01 04:47:06', 1, NULL, NULL),
('6a1d0ecae351734f4', 'Check for New Versions of Installed Extensions', 0, 'CheckNewExtensionVersion', 'Active', '25 5 * * *', NULL, '2026-06-01 04:47:06', '2026-06-01 04:47:06', 1, NULL, NULL),
('6a1d1005851f1d1a5', 'Check Group Email Accounts', 0, 'CheckInboundEmails', 'Active', '*/2 * * * *', NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', 0, 'system', NULL),
('6a1d10058714bd492', 'Check Personal Email Accounts', 0, 'CheckEmailAccounts', 'Active', '*/1 * * * *', NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', 0, 'system', NULL),
('6a1d10058832b51fd', 'Send Email Reminders', 0, 'SendEmailReminders', 'Active', '*/2 * * * *', NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', 0, 'system', NULL),
('6a1d1005898ee57bc', 'Send Email Notifications', 0, 'SendEmailNotifications', 'Active', '*/2 * * * *', NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', 0, 'system', NULL),
('6a1d10058ba2661f8', 'Clean-up', 0, 'Cleanup', 'Active', '1 1 * * 0', NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', 0, 'system', NULL),
('6a1d10058c6937558', 'Send Mass Emails', 0, 'ProcessMassEmail', 'Active', '10,30,50 * * * *', NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', 0, 'system', NULL),
('6a1d10058d2f9726f', 'Auth Token Control', 0, 'AuthTokenControl', 'Active', '*/6 * * * *', NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', 0, 'system', NULL),
('6a1d10058e28a2246', 'Control Knowledge Base Article Status', 0, 'ControlKnowledgeBaseArticleStatus', 'Active', '10 1 * * *', NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', 0, 'system', NULL),
('6a1d10058fb76c1b7', 'Process Webhook Queue', 0, 'ProcessWebhookQueue', 'Active', '*/2 * * * *', NULL, '2026-06-01 04:52:21', '2026-06-01 04:52:21', 0, 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `scheduled_job_log_record`
--

CREATE TABLE `scheduled_job_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `execution_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sms`
--

CREATE TABLE `sms` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `date_sent` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `from_phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sms_phone_number`
--

CREATE TABLE `sms_phone_number` (
  `id` bigint(20) NOT NULL,
  `sms_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `star_subscription`
--

CREATE TABLE `star_subscription` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `stream_subscription`
--

CREATE TABLE `stream_subscription` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_data`
--

CREATE TABLE `system_data` (
  `id` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `last_password_recovery_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `system_data`
--

INSERT INTO `system_data` (`id`, `deleted`, `last_password_recovery_date`) VALUES
('1', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `target`
--

CREATE TABLE `target` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `target_list`
--

CREATE TABLE `target_list` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `target_list_user`
--

CREATE TABLE `target_list_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE `task` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Not Started',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `position_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) NOT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `template`
--

CREATE TABLE `template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left_margin` double DEFAULT 10,
  `right_margin` double DEFAULT 10,
  `top_margin` double DEFAULT 10,
  `bottom_margin` double DEFAULT 20,
  `print_footer` tinyint(1) NOT NULL DEFAULT 0,
  `print_header` tinyint(1) NOT NULL DEFAULT 0,
  `footer_position` double DEFAULT 10,
  `header_position` double DEFAULT 0,
  `style` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `page_orientation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Portrait',
  `page_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'A4',
  `page_width` double DEFAULT NULL,
  `page_height` double DEFAULT NULL,
  `font_face` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `two_factor_code`
--

CREATE TABLE `two_factor_code` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts_left` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `unique_id`
--

CREATE TABLE `unique_id` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `terminate_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'regular',
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_method` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_color` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `delete_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `deleted`, `user_name`, `type`, `password`, `auth_method`, `api_key`, `salutation_name`, `first_name`, `last_name`, `is_active`, `title`, `avatar_color`, `gender`, `created_at`, `modified_at`, `delete_id`, `middle_name`, `default_team_id`, `contact_id`, `avatar_id`, `created_by_id`, `dashboard_template_id`, `working_time_calendar_id`, `layout_set_id`) VALUES
('6a1d0ee0644f99b6b', 0, 'user', 'admin', '/XB22LXXIebvP6fCkktL7Y0pmUHrZzR287A3yAKss1VJg6LysONKNgHMznu.7YQ1p9tFw/2M3KKE8x3GEwp7k1', NULL, NULL, NULL, NULL, 'Admin', 1, NULL, NULL, NULL, '2026-06-01 04:47:28', '2026-06-01 04:47:28', '0', NULL, NULL, NULL, NULL, 'system', NULL, NULL, NULL),
('system', 0, 'system', 'system', NULL, NULL, NULL, NULL, NULL, 'System', 1, NULL, NULL, NULL, '2026-06-01 04:47:06', '2026-06-01 04:47:06', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user_data`
--

CREATE TABLE `user_data` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `imap_handlers` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handlers` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a` tinyint(1) NOT NULL DEFAULT 0,
  `auth2_f_a_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_totp_secret` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user_working_time_range`
--

CREATE TABLE `user_working_time_range` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `webhook`
--

CREATE TABLE `webhook` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `webhook_event_queue_item`
--

CREATE TABLE `webhook_event_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `webhook_queue_item`
--

CREATE TABLE `webhook_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `processed_at` datetime DEFAULT NULL,
  `attempts` int(11) DEFAULT 0,
  `process_at` datetime DEFAULT NULL,
  `webhook_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `working_time_calendar`
--

CREATE TABLE `working_time_calendar` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '[["9:00","17:00"]]',
  `weekday0` tinyint(1) NOT NULL DEFAULT 0,
  `weekday1` tinyint(1) NOT NULL DEFAULT 1,
  `weekday2` tinyint(1) NOT NULL DEFAULT 1,
  `weekday3` tinyint(1) NOT NULL DEFAULT 1,
  `weekday4` tinyint(1) NOT NULL DEFAULT 1,
  `weekday5` tinyint(1) NOT NULL DEFAULT 1,
  `weekday6` tinyint(1) NOT NULL DEFAULT 0,
  `weekday0_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday1_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday2_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday3_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday4_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday5_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday6_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `working_time_calendar_working_time_range`
--

CREATE TABLE `working_time_calendar_working_time_range` (
  `id` bigint(20) NOT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `working_time_range`
--

CREATE TABLE `working_time_range` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `type` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Non-working',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Индексы таблицы `account_contact`
--
ALTER TABLE `account_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_CONTACT_ID` (`account_id`,`contact_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Индексы таблицы `account_document`
--
ALTER TABLE `account_document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_DOCUMENT_ID` (`account_id`,`document_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`);

--
-- Индексы таблицы `account_portal_user`
--
ALTER TABLE `account_portal_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_ACCOUNT_ID` (`user_id`,`account_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`);

--
-- Индексы таблицы `account_target_list`
--
ALTER TABLE `account_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_TARGET_LIST_ID` (`account_id`,`target_list_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Индексы таблицы `action_history_record`
--
ALTER TABLE `action_history_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_TARGET` (`target_type`,`target_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`),
  ADD KEY `IDX_AUTH_LOG_RECORD_ID` (`auth_log_record_id`);

--
-- Индексы таблицы `address_country`
--
ALTER TABLE `address_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NAME` (`name`);

--
-- Индексы таблицы `app_log_record`
--
ALTER TABLE `app_log_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_LEVEL` (`level`);

--
-- Индексы таблицы `array_value`
--
ALTER TABLE `array_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE_VALUE` (`entity_type`,`value`),
  ADD KEY `IDX_ENTITY_VALUE` (`entity_type`,`entity_id`,`value`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`);

--
-- Индексы таблицы `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_PARENT` (`parent_type`,`parent_id`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_SOURCE` (`source_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Индексы таблицы `authentication_provider`
--
ALTER TABLE `authentication_provider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auth_log_record`
--
ALTER TABLE `auth_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_IP_ADDRESS` (`ip_address`),
  ADD KEY `IDX_IP_ADDRESS_REQUEST_TIME` (`ip_address`,`request_time`),
  ADD KEY `IDX_REQUEST_TIME` (`request_time`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`);

--
-- Индексы таблицы `auth_token`
--
ALTER TABLE `auth_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_TOKEN` (`token`,`deleted`),
  ADD KEY `IDX_HASH` (`hash`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`);

--
-- Индексы таблицы `autofollow`
--
ALTER TABLE `autofollow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Индексы таблицы `call`
--
ALTER TABLE `call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Индексы таблицы `call_contact`
--
ALTER TABLE `call_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CALL_ID_CONTACT_ID` (`call_id`,`contact_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Индексы таблицы `call_lead`
--
ALTER TABLE `call_lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CALL_ID_LEAD_ID` (`call_id`,`lead_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`);

--
-- Индексы таблицы `call_user`
--
ALTER TABLE `call_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_CALL_ID` (`user_id`,`call_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`);

--
-- Индексы таблицы `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CONTACTS_TEMPLATE_ID` (`contacts_template_id`),
  ADD KEY `IDX_LEADS_TEMPLATE_ID` (`leads_template_id`),
  ADD KEY `IDX_ACCOUNTS_TEMPLATE_ID` (`accounts_template_id`),
  ADD KEY `IDX_USERS_TEMPLATE_ID` (`users_template_id`);

--
-- Индексы таблицы `campaign_log_record`
--
ALTER TABLE `campaign_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ACTION_DATE` (`action_date`,`deleted`),
  ADD KEY `IDX_ACTION` (`action`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_OBJECT` (`object_id`,`object_type`),
  ADD KEY `IDX_QUEUE_ITEM_ID` (`queue_item_id`);

--
-- Индексы таблицы `campaign_target_list`
--
ALTER TABLE `campaign_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Индексы таблицы `campaign_target_list_excluding`
--
ALTER TABLE `campaign_target_list_excluding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Индексы таблицы `campaign_tracking_url`
--
ALTER TABLE `campaign_tracking_url`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Индексы таблицы `case`
--
ALTER TABLE `case`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Индексы таблицы `case_contact`
--
ALTER TABLE `case_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CASE_ID_CONTACT_ID` (`case_id`,`contact_id`),
  ADD KEY `IDX_CASE_ID` (`case_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Индексы таблицы `case_knowledge_base_article`
--
ALTER TABLE `case_knowledge_base_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CASE_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`case_id`,`knowledge_base_article_id`),
  ADD KEY `IDX_CASE_ID` (`case_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Индексы таблицы `contact_document`
--
ALTER TABLE `contact_document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_DOCUMENT_ID` (`contact_id`,`document_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`);

--
-- Индексы таблицы `contact_meeting`
--
ALTER TABLE `contact_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_MEETING_ID` (`contact_id`,`meeting_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Индексы таблицы `contact_opportunity`
--
ALTER TABLE `contact_opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_OPPORTUNITY_ID` (`contact_id`,`opportunity_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`);

--
-- Индексы таблицы `contact_target_list`
--
ALTER TABLE `contact_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_TARGET_LIST_ID` (`contact_id`,`target_list_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Индексы таблицы `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dashboard_template`
--
ALTER TABLE `dashboard_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_FOLDER_ID` (`folder_id`);

--
-- Индексы таблицы `document_folder`
--
ALTER TABLE `document_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `document_folder_path`
--
ALTER TABLE `document_folder_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Индексы таблицы `document_lead`
--
ALTER TABLE `document_lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DOCUMENT_ID_LEAD_ID` (`document_id`,`lead_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`);

--
-- Индексы таблицы `document_opportunity`
--
ALTER TABLE `document_opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DOCUMENT_ID_OPPORTUNITY_ID` (`document_id`,`opportunity_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`),
  ADD KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`);

--
-- Индексы таблицы `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  ADD KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  ADD KEY `IDX_MESSAGE_ID` (`message_id`),
  ADD KEY `IDX_ICS_EVENT_UID` (`ics_event_uid`),
  ADD KEY `IDX_FROM_EMAIL_ADDRESS_ID` (`from_email_address_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_SENT_BY_ID` (`sent_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_REPLIED_ID` (`replied_id`),
  ADD KEY `IDX_CREATED_EVENT` (`created_event_id`,`created_event_type`),
  ADD KEY `IDX_GROUP_FOLDER_ID` (`group_folder_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`);
ALTER TABLE `email` ADD FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`name`,`body_plain`,`body`);

--
-- Индексы таблицы `email_account`
--
ALTER TABLE `email_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `email_address`
--
ALTER TABLE `email_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LOWER` (`lower`);

--
-- Индексы таблицы `email_email_account`
--
ALTER TABLE `email_email_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ACCOUNT_ID` (`email_id`,`email_account_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_EMAIL_ACCOUNT_ID` (`email_account_id`);

--
-- Индексы таблицы `email_email_address`
--
ALTER TABLE `email_email_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ADDRESS_ID_ADDRESS_TYPE` (`email_id`,`email_address_id`,`address_type`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`);

--
-- Индексы таблицы `email_filter`
--
ALTER TABLE `email_filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `email_folder`
--
ALTER TABLE `email_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_INBOUND_EMAIL_ID` (`email_id`,`inbound_email_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`);

--
-- Индексы таблицы `email_queue_item`
--
ALTER TABLE `email_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_SENT_AT` (`sent_at`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Индексы таблицы `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CATEGORY_ID` (`category_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `email_template_category`
--
ALTER TABLE `email_template_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `email_template_category_path`
--
ALTER TABLE `email_template_category_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Индексы таблицы `email_user`
--
ALTER TABLE `email_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_USER_ID` (`email_id`,`user_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `entity_email_address`
--
ALTER TABLE `entity_email_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_EMAIL_ADDRESS_ID_ENTITY_TYPE` (`entity_id`,`email_address_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`);

--
-- Индексы таблицы `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_PHONE_NUMBER_ID_ENTITY_TYPE` (`entity_id`,`phone_number_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`);

--
-- Индексы таблицы `entity_team`
--
ALTER TABLE `entity_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_TEAM_ID_ENTITY_TYPE` (`entity_id`,`team_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Индексы таблицы `entity_user`
--
ALTER TABLE `entity_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_USER_ID_ENTITY_TYPE` (`entity_id`,`user_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `export`
--
ALTER TABLE `export`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_ATTACHMENT` (`attachment_id`);

--
-- Индексы таблицы `extension`
--
ALTER TABLE `extension`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LICENSE_STATUS` (`license_status`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Индексы таблицы `external_account`
--
ALTER TABLE `external_account`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `group_email_folder`
--
ALTER TABLE `group_email_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `group_email_folder_team`
--
ALTER TABLE `group_email_folder_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_GROUP_EMAIL_FOLDER_ID_TEAM_ID` (`group_email_folder_id`,`team_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Индексы таблицы `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Индексы таблицы `import_entity`
--
ALTER TABLE `import_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_IMPORT` (`import_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_IMPORT` (`import_id`);

--
-- Индексы таблицы `import_error`
--
ALTER TABLE `import_error`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ROW_INDEX` (`row_index`),
  ADD KEY `IDX_IMPORT_ROW_INDEX` (`import_id`,`row_index`),
  ADD KEY `IDX_IMPORT_ID` (`import_id`);

--
-- Индексы таблицы `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASSIGN_TO_USER_ID` (`assign_to_user_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`),
  ADD KEY `IDX_REPLY_EMAIL_TEMPLATE_ID` (`reply_email_template_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_INBOUND_EMAIL_ID_TEAM_ID` (`inbound_email_id`,`team_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Индексы таблицы `integration`
--
ALTER TABLE `integration`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_EXECUTE_TIME` (`status`,`execute_time`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_STATUS_SCHEDULED_JOB_ID` (`status`,`scheduled_job_id`),
  ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`);

--
-- Индексы таблицы `kanban_order`
--
ALTER TABLE `kanban_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_USER_ID` (`entity_type`,`entity_id`,`user_id`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`),
  ADD KEY `IDX_ENTITY_TYPE_USER_ID` (`entity_type`,`user_id`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Индексы таблицы `knowledge_base_article`
--
ALTER TABLE `knowledge_base_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Индексы таблицы `knowledge_base_article_knowledge_base_category`
--
ALTER TABLE `knowledge_base_article_knowledge_base_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_KNOWLEDGE_BASE_ARTICLE_ID_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_article_id`,`knowledge_base_category_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_category_id`);

--
-- Индексы таблицы `knowledge_base_article_portal`
--
ALTER TABLE `knowledge_base_article_portal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`portal_id`,`knowledge_base_article_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`);

--
-- Индексы таблицы `knowledge_base_category`
--
ALTER TABLE `knowledge_base_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Индексы таблицы `knowledge_base_category_path`
--
ALTER TABLE `knowledge_base_category_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Индексы таблицы `layout_record`
--
ALTER TABLE `layout_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME_LAYOUT_SET_ID` (`name`,`layout_set_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`);

--
-- Индексы таблицы `layout_set`
--
ALTER TABLE `layout_set`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_AT_STATUS` (`created_at`,`status`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_ACCOUNT_ID` (`created_account_id`),
  ADD KEY `IDX_CREATED_CONTACT_ID` (`created_contact_id`),
  ADD KEY `IDX_CREATED_OPPORTUNITY_ID` (`created_opportunity_id`);

--
-- Индексы таблицы `lead_capture`
--
ALTER TABLE `lead_capture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`),
  ADD KEY `IDX_OPT_IN_CONFIRMATION_EMAIL_TEMPLATE_ID` (`opt_in_confirmation_email_template_id`),
  ADD KEY `IDX_TARGET_TEAM_ID` (`target_team_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_LEAD_CAPTURE_ID` (`lead_capture_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Индексы таблицы `lead_meeting`
--
ALTER TABLE `lead_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_LEAD_ID_MEETING_ID` (`lead_id`,`meeting_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Индексы таблицы `lead_target_list`
--
ALTER TABLE `lead_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_LEAD_ID_TARGET_LIST_ID` (`lead_id`,`target_list_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Индексы таблицы `mass_action`
--
ALTER TABLE `mass_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Индексы таблицы `mass_email`
--
ALTER TABLE `mass_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EMAIL_TEMPLATE_ID` (`email_template_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `mass_email_target_list`
--
ALTER TABLE `mass_email_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Индексы таблицы `mass_email_target_list_excluding`
--
ALTER TABLE `mass_email_target_list_excluding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Индексы таблицы `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Индексы таблицы `meeting_user`
--
ALTER TABLE `meeting_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_MEETING_ID` (`user_id`,`meeting_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Индексы таблицы `next_number`
--
ALTER TABLE `next_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE_FIELD_NAME` (`entity_type`,`field_name`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`);

--
-- Индексы таблицы `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_CREATED_BY_NUMBER` (`created_by_id`,`number`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_TARGET_TYPE` (`target_type`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`),
  ADD KEY `IDX_PARENT_TYPE` (`parent_type`),
  ADD KEY `IDX_RELATED_ID` (`related_id`),
  ADD KEY `IDX_RELATED_TYPE` (`related_type`),
  ADD KEY `IDX_SUPER_PARENT_TYPE` (`super_parent_type`),
  ADD KEY `IDX_SUPER_PARENT_ID` (`super_parent_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_SUPER_PARENT` (`super_parent_id`,`super_parent_type`);
ALTER TABLE `note` ADD FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`post`);

--
-- Индексы таблицы `note_portal`
--
ALTER TABLE `note_portal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_PORTAL_ID` (`note_id`,`portal_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`);

--
-- Индексы таблицы `note_team`
--
ALTER TABLE `note_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_TEAM_ID` (`note_id`,`team_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Индексы таблицы `note_user`
--
ALTER TABLE `note_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_USER_ID` (`note_id`,`user_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_USER` (`user_id`,`created_at`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_RELATED_PARENT` (`related_parent_id`,`related_parent_type`);

--
-- Индексы таблицы `opportunity`
--
ALTER TABLE `opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_STAGE` (`stage`,`deleted`),
  ADD KEY `IDX_LAST_STAGE` (`last_stage`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_AT_STAGE` (`created_at`,`stage`),
  ADD KEY `IDX_ASSIGNED_USER_STAGE` (`assigned_user_id`,`stage`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Индексы таблицы `password_change_request`
--
ALTER TABLE `password_change_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_REQUEST_ID` (`request_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME` (`name`),
  ADD KEY `IDX_NUMERIC` (`numeric`);

--
-- Индексы таблицы `portal`
--
ALTER TABLE `portal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CUSTOM_ID` (`custom_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  ADD KEY `IDX_AUTHENTICATION_PROVIDER_ID` (`authentication_provider_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Индексы таблицы `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_PORTAL_ROLE_ID` (`portal_id`,`portal_role_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`);

--
-- Индексы таблицы `portal_role`
--
ALTER TABLE `portal_role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portal_role_user`
--
ALTER TABLE `portal_role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ROLE_ID_USER_ID` (`portal_role_id`,`user_id`),
  ADD KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `portal_user`
--
ALTER TABLE `portal_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_USER_ID` (`portal_id`,`user_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_REMIND_AT` (`remind_at`),
  ADD KEY `IDX_START_AT` (`start_at`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`);

--
-- Индексы таблицы `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_team`
--
ALTER TABLE `role_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ROLE_ID_TEAM_ID` (`role_id`,`team_id`),
  ADD KEY `IDX_ROLE_ID` (`role_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ROLE_ID_USER_ID` (`role_id`,`user_id`),
  ADD KEY `IDX_ROLE_ID` (`role_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `scheduled_job`
--
ALTER TABLE `scheduled_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `scheduled_job_log_record`
--
ALTER TABLE `scheduled_job_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_SCHEDULED_JOB_ID_EXECUTION_TIME` (`scheduled_job_id`,`execution_time`),
  ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Индексы таблицы `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  ADD KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  ADD KEY `IDX_FROM_PHONE_NUMBER_ID` (`from_phone_number_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_REPLIED_ID` (`replied_id`);

--
-- Индексы таблицы `sms_phone_number`
--
ALTER TABLE `sms_phone_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_SMS_ID_PHONE_NUMBER_ID_ADDRESS_TYPE` (`sms_id`,`phone_number_id`,`address_type`),
  ADD KEY `IDX_SMS_ID` (`sms_id`),
  ADD KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`);

--
-- Индексы таблицы `star_subscription`
--
ALTER TABLE `star_subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ENTITY` (`user_id`,`entity_id`,`entity_type`),
  ADD KEY `IDX_USER_ENTITY_TYPE` (`user_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Индексы таблицы `stream_subscription`
--
ALTER TABLE `stream_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ENTITY` (`user_id`,`entity_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Индексы таблицы `system_data`
--
ALTER TABLE `system_data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Индексы таблицы `target_list`
--
ALTER TABLE `target_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Индексы таблицы `target_list_user`
--
ALTER TABLE `target_list_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_TARGET_LIST_ID` (`user_id`,`target_list_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Индексы таблицы `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_END_STATUS` (`date_end`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`);

--
-- Индексы таблицы `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_TEAM_ID_USER_ID` (`team_id`,`user_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `two_factor_code`
--
ALTER TABLE `two_factor_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_USER_ID_METHOD` (`user_id`,`method`),
  ADD KEY `IDX_USER_ID_METHOD_IS_ACTIVE` (`user_id`,`method`,`is_active`),
  ADD KEY `IDX_USER_ID_METHOD_CREATED_AT` (`user_id`,`method`,`created_at`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `unique_id`
--
ALTER TABLE `unique_id`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME` (`name`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_NAME_DELETE_ID` (`user_name`,`delete_id`),
  ADD KEY `IDX_USER_NAME` (`user_name`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_DEFAULT_TEAM_ID` (`default_team_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_DASHBOARD_TEMPLATE_ID` (`dashboard_template_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`);

--
-- Индексы таблицы `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Индексы таблицы `user_working_time_range`
--
ALTER TABLE `user_working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_WORKING_TIME_RANGE_ID` (`user_id`,`working_time_range_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`);

--
-- Индексы таблицы `webhook`
--
ALTER TABLE `webhook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EVENT` (`event`),
  ADD KEY `IDX_ENTITY_TYPE_TYPE` (`entity_type`,`type`),
  ADD KEY `IDX_ENTITY_TYPE_FIELD` (`entity_type`,`field`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `webhook_event_queue_item`
--
ALTER TABLE `webhook_event_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Индексы таблицы `webhook_queue_item`
--
ALTER TABLE `webhook_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_WEBHOOK_ID` (`webhook_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Индексы таблицы `working_time_calendar`
--
ALTER TABLE `working_time_calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Индексы таблицы `working_time_calendar_working_time_range`
--
ALTER TABLE `working_time_calendar_working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_WORKING_TIME_CALENDAR_ID_WORKING_TIME_RANGE_ID` (`working_time_calendar_id`,`working_time_range_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`),
  ADD KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`);

--
-- Индексы таблицы `working_time_range`
--
ALTER TABLE `working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_TYPE_RANGE` (`type`,`date_start`,`date_end`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `account_contact`
--
ALTER TABLE `account_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `account_document`
--
ALTER TABLE `account_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `account_portal_user`
--
ALTER TABLE `account_portal_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `account_target_list`
--
ALTER TABLE `account_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `action_history_record`
--
ALTER TABLE `action_history_record`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `app_log_record`
--
ALTER TABLE `app_log_record`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `autofollow`
--
ALTER TABLE `autofollow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `call_contact`
--
ALTER TABLE `call_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `call_lead`
--
ALTER TABLE `call_lead`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `call_user`
--
ALTER TABLE `call_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `campaign_target_list`
--
ALTER TABLE `campaign_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `campaign_target_list_excluding`
--
ALTER TABLE `campaign_target_list_excluding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `case`
--
ALTER TABLE `case`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `case_contact`
--
ALTER TABLE `case_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `case_knowledge_base_article`
--
ALTER TABLE `case_knowledge_base_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contact_document`
--
ALTER TABLE `contact_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contact_meeting`
--
ALTER TABLE `contact_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contact_opportunity`
--
ALTER TABLE `contact_opportunity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `contact_target_list`
--
ALTER TABLE `contact_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `document_folder_path`
--
ALTER TABLE `document_folder_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `document_lead`
--
ALTER TABLE `document_lead`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `document_opportunity`
--
ALTER TABLE `document_opportunity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `email_email_account`
--
ALTER TABLE `email_email_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `email_email_address`
--
ALTER TABLE `email_email_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `email_template_category_path`
--
ALTER TABLE `email_template_category_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `email_user`
--
ALTER TABLE `email_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `entity_email_address`
--
ALTER TABLE `entity_email_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `entity_team`
--
ALTER TABLE `entity_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `entity_user`
--
ALTER TABLE `entity_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `group_email_folder_team`
--
ALTER TABLE `group_email_folder_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `import_entity`
--
ALTER TABLE `import_entity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `job`
--
ALTER TABLE `job`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `knowledge_base_article_knowledge_base_category`
--
ALTER TABLE `knowledge_base_article_knowledge_base_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `knowledge_base_article_portal`
--
ALTER TABLE `knowledge_base_article_portal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `knowledge_base_category_path`
--
ALTER TABLE `knowledge_base_category_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lead_meeting`
--
ALTER TABLE `lead_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `lead_target_list`
--
ALTER TABLE `lead_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mass_email_target_list`
--
ALTER TABLE `mass_email_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mass_email_target_list_excluding`
--
ALTER TABLE `mass_email_target_list_excluding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `meeting_user`
--
ALTER TABLE `meeting_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `note`
--
ALTER TABLE `note`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `note_portal`
--
ALTER TABLE `note_portal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `note_team`
--
ALTER TABLE `note_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `note_user`
--
ALTER TABLE `note_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `notification`
--
ALTER TABLE `notification`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `portal_role_user`
--
ALTER TABLE `portal_role_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `portal_user`
--
ALTER TABLE `portal_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `role_team`
--
ALTER TABLE `role_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sms_phone_number`
--
ALTER TABLE `sms_phone_number`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `star_subscription`
--
ALTER TABLE `star_subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `stream_subscription`
--
ALTER TABLE `stream_subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `target_list_user`
--
ALTER TABLE `target_list_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user_working_time_range`
--
ALTER TABLE `user_working_time_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `webhook_event_queue_item`
--
ALTER TABLE `webhook_event_queue_item`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `webhook_queue_item`
--
ALTER TABLE `webhook_queue_item`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `working_time_calendar_working_time_range`
--
ALTER TABLE `working_time_calendar_working_time_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
