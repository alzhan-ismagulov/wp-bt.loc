-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 03 2020 г., 19:39
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp_bt`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-08 02:00:11', '2020-02-07 23:00:11', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp-bt.loc', 'yes'),
(2, 'home', 'http://wp-bt.loc', 'yes'),
(3, 'blogname', 'BlueRex', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@wp-bt.loc', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:22:\"cyr2lat/cyr-to-lat.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";i:3;s:47:\"show-current-template/show-current-template.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bluerex', 'yes'),
(41, 'stylesheet', 'bluerex', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '7', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1585933216;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1585954814;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585954816;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1585954844;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585954848;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581117890;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(130, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"admin@wp-bt.loc\";s:7:\"version\";s:5:\"5.2.5\";s:9:\"timestamp\";i:1581116447;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'acf_version', '5.8.7', 'yes'),
(153, 'duplicate_post_copytitle', '1', 'yes'),
(154, 'duplicate_post_copydate', '0', 'yes'),
(155, 'duplicate_post_copystatus', '0', 'yes'),
(156, 'duplicate_post_copyslug', '0', 'yes'),
(157, 'duplicate_post_copyexcerpt', '1', 'yes'),
(158, 'duplicate_post_copycontent', '1', 'yes'),
(160, 'duplicate_post_copythumbnail', '1', 'yes'),
(162, 'duplicate_post_copytemplate', '1', 'yes'),
(164, 'duplicate_post_copyformat', '1', 'yes'),
(166, 'duplicate_post_copyauthor', '0', 'yes'),
(168, 'duplicate_post_copypassword', '0', 'yes'),
(170, 'duplicate_post_copyattachments', '0', 'yes'),
(172, 'duplicate_post_copychildren', '0', 'yes'),
(174, 'duplicate_post_copycomments', '0', 'yes'),
(176, 'duplicate_post_copymenuorder', '1', 'yes'),
(178, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(180, 'duplicate_post_blacklist', '', 'yes'),
(182, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(184, 'duplicate_post_show_row', '1', 'yes'),
(186, 'duplicate_post_show_adminbar', '1', 'yes'),
(188, 'duplicate_post_show_submitbox', '1', 'yes'),
(190, 'duplicate_post_show_bulkactions', '1', 'yes'),
(199, 'current_theme', '', 'yes'),
(200, 'theme_mods_bluerex', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:23;}', 'yes'),
(201, 'theme_switched', '', 'yes'),
(206, 'duplicate_post_show_original_column', '0', 'yes'),
(207, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(208, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(209, 'duplicate_post_version', '3.2.4', 'yes'),
(210, 'duplicate_post_show_notice', '1', 'no'),
(239, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(305, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1585918983;s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"translations\";a:0:{}}', 'no'),
(334, 'auto_updater.lock', '1585918990', 'no'),
(335, '_site_transient_timeout_theme_roots', '1585920795', 'no'),
(336, '_site_transient_theme_roots', 'a:4:{s:7:\"bluerex\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(339, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1585919414;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"4.3.2\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.4\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.3.3\";}s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"4.3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.4.3.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2022835\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2022835\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2022835\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.4\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"updated\";s:19:\"2020-03-17 21:01:13\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"cyr2lat\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.3.2\";s:7:\"updated\";s:19:\"2020-01-10 19:27:34\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/cyr2lat/4.3.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"duplicate-post\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"3.2.4\";s:7:\"updated\";s:19:\"2019-09-23 09:13:34\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/duplicate-post/3.2.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.3.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(340, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1585919414;s:7:\"checked\";a:4:{s:7:\"bluerex\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.1.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(341, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1581171622:1'),
(4, 7, '_edit_lock', '1581120189:1'),
(5, 9, '_edit_last', '1'),
(6, 9, '_edit_lock', '1581158547:1'),
(7, 16, '_edit_lock', '1581158923:1'),
(8, 18, '_edit_lock', '1581158965:1'),
(11, 5, '_edit_last', '1'),
(12, 5, 'header1', 'We are best and creative agency'),
(13, 5, '_header1', 'field_5e3e8ef97da6e'),
(14, 5, 'header2', 'We turn creative ideas into your business'),
(15, 5, '_header2', 'field_5e3e8f4d7da6f'),
(16, 5, 'header_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!'),
(17, 5, '_header_text', 'field_5e3e8f737da70'),
(18, 5, 'header_btn1', 'a:3:{s:5:\"title\";s:9:\"Our Story\";s:3:\"url\";s:27:\"http://wp-bt.loc/our-story/\";s:6:\"target\";s:0:\"\";}'),
(19, 5, '_header_btn1', 'field_5e3e8fa47da71'),
(20, 5, 'header_btn2', 'a:3:{s:5:\"title\";s:9:\"Read More\";s:3:\"url\";s:26:\"http://wp-bt.loc/about-us/\";s:6:\"target\";s:0:\"\";}'),
(21, 5, '_header_btn2', 'field_5e3e8ffa7da72'),
(22, 5, 'header_bg', '39'),
(23, 5, '_header_bg', 'field_5e3e90467da73'),
(24, 22, 'header1', 'We are best and creative agency'),
(25, 22, '_header1', 'field_5e3e8ef97da6e'),
(26, 22, 'header2', 'We turn creative ideas into your business'),
(27, 22, '_header2', 'field_5e3e8f4d7da6f'),
(28, 22, 'header_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!'),
(29, 22, '_header_text', 'field_5e3e8f737da70'),
(30, 22, 'header_btn1', 'a:3:{s:5:\"title\";s:9:\"Our Story\";s:3:\"url\";s:27:\"http://wp-bt.loc/our-story/\";s:6:\"target\";s:0:\"\";}'),
(31, 22, '_header_btn1', 'field_5e3e8fa47da71'),
(32, 22, 'header_btn2', 'a:3:{s:5:\"title\";s:9:\"Read More\";s:3:\"url\";s:26:\"http://wp-bt.loc/about-us/\";s:6:\"target\";s:0:\"\";}'),
(33, 22, '_header_btn2', 'field_5e3e8ffa7da72'),
(34, 22, 'header_bg', '20'),
(35, 22, '_header_bg', 'field_5e3e90467da73'),
(36, 23, '_wp_attached_file', '2020/02/logo.png'),
(37, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:69;s:6:\"height\";i:62;s:4:\"file\";s:16:\"2020/02/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 24, '_wp_attached_file', '2020/02/cropped-logo.png'),
(39, 24, '_wp_attachment_context', 'custom-logo'),
(40, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:69;s:6:\"height\";i:62;s:4:\"file\";s:24:\"2020/02/cropped-logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 29, '_wp_attached_file', '2020/02/cropped-main1.jpg'),
(50, 29, '_wp_attachment_context', 'custom-logo'),
(51, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:851;s:6:\"height\";i:946;s:4:\"file\";s:25:\"2020/02/cropped-main1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"cropped-main1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-main1-270x300.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"cropped-main1-768x854.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:854;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 31, '_menu_item_type', 'post_type'),
(55, 31, '_menu_item_menu_item_parent', '0'),
(56, 31, '_menu_item_object_id', '5'),
(57, 31, '_menu_item_object', 'page'),
(58, 31, '_menu_item_target', ''),
(59, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 31, '_menu_item_xfn', ''),
(61, 31, '_menu_item_url', ''),
(63, 32, '_menu_item_type', 'post_type'),
(64, 32, '_menu_item_menu_item_parent', '0'),
(65, 32, '_menu_item_object_id', '18'),
(66, 32, '_menu_item_object', 'page'),
(67, 32, '_menu_item_target', ''),
(68, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 32, '_menu_item_xfn', ''),
(70, 32, '_menu_item_url', ''),
(72, 33, '_menu_item_type', 'post_type'),
(73, 33, '_menu_item_menu_item_parent', '0'),
(74, 33, '_menu_item_object_id', '7'),
(75, 33, '_menu_item_object', 'page'),
(76, 33, '_menu_item_target', ''),
(77, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 33, '_menu_item_xfn', ''),
(79, 33, '_menu_item_url', ''),
(90, 35, '_menu_item_type', 'post_type'),
(91, 35, '_menu_item_menu_item_parent', '0'),
(92, 35, '_menu_item_object_id', '16'),
(93, 35, '_menu_item_object', 'page'),
(94, 35, '_menu_item_target', ''),
(95, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 35, '_menu_item_xfn', ''),
(97, 35, '_menu_item_url', ''),
(108, 37, 'header1', 'We are best and creative agency1'),
(109, 37, '_header1', 'field_5e3e8ef97da6e'),
(110, 37, 'header2', 'We turn creative ideas into your business'),
(111, 37, '_header2', 'field_5e3e8f4d7da6f'),
(112, 37, 'header_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!'),
(113, 37, '_header_text', 'field_5e3e8f737da70'),
(114, 37, 'header_btn1', 'a:3:{s:5:\"title\";s:9:\"Our Story\";s:3:\"url\";s:27:\"http://wp-bt.loc/our-story/\";s:6:\"target\";s:0:\"\";}'),
(115, 37, '_header_btn1', 'field_5e3e8fa47da71'),
(116, 37, 'header_btn2', 'a:3:{s:5:\"title\";s:9:\"Read More\";s:3:\"url\";s:26:\"http://wp-bt.loc/about-us/\";s:6:\"target\";s:0:\"\";}'),
(117, 37, '_header_btn2', 'field_5e3e8ffa7da72'),
(118, 37, 'header_bg', '20'),
(119, 37, '_header_bg', 'field_5e3e90467da73'),
(120, 38, 'header1', 'We are best and creative agency'),
(121, 38, '_header1', 'field_5e3e8ef97da6e'),
(122, 38, 'header2', 'We turn creative ideas into your business'),
(123, 38, '_header2', 'field_5e3e8f4d7da6f'),
(124, 38, 'header_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!'),
(125, 38, '_header_text', 'field_5e3e8f737da70'),
(126, 38, 'header_btn1', 'a:3:{s:5:\"title\";s:9:\"Our Story\";s:3:\"url\";s:27:\"http://wp-bt.loc/our-story/\";s:6:\"target\";s:0:\"\";}'),
(127, 38, '_header_btn1', 'field_5e3e8fa47da71'),
(128, 38, 'header_btn2', 'a:3:{s:5:\"title\";s:9:\"Read More\";s:3:\"url\";s:26:\"http://wp-bt.loc/about-us/\";s:6:\"target\";s:0:\"\";}'),
(129, 38, '_header_btn2', 'field_5e3e8ffa7da72'),
(130, 38, 'header_bg', '20'),
(131, 38, '_header_bg', 'field_5e3e90467da73'),
(132, 39, '_wp_attached_file', '2020/02/main1.jpg'),
(133, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1810;s:6:\"height\";i:946;s:4:\"file\";s:17:\"2020/02/main1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"main1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"main1-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"main1-768x401.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"main1-1024x535.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:535;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 40, 'header1', 'We are best and creative agency'),
(135, 40, '_header1', 'field_5e3e8ef97da6e'),
(136, 40, 'header2', 'We turn creative ideas into your business'),
(137, 40, '_header2', 'field_5e3e8f4d7da6f'),
(138, 40, 'header_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!'),
(139, 40, '_header_text', 'field_5e3e8f737da70'),
(140, 40, 'header_btn1', 'a:3:{s:5:\"title\";s:9:\"Our Story\";s:3:\"url\";s:27:\"http://wp-bt.loc/our-story/\";s:6:\"target\";s:0:\"\";}'),
(141, 40, '_header_btn1', 'field_5e3e8fa47da71'),
(142, 40, 'header_btn2', 'a:3:{s:5:\"title\";s:9:\"Read More\";s:3:\"url\";s:26:\"http://wp-bt.loc/about-us/\";s:6:\"target\";s:0:\"\";}'),
(143, 40, '_header_btn2', 'field_5e3e8ffa7da72'),
(144, 40, 'header_bg', '39'),
(145, 40, '_header_bg', 'field_5e3e90467da73'),
(146, 41, '_edit_last', '1'),
(147, 41, '_edit_lock', '1585580125:1'),
(148, 46, '_wp_attached_file', '2020/03/world_map.png'),
(149, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1775;s:6:\"height\";i:872;s:4:\"file\";s:21:\"2020/03/world_map.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"world_map-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"world_map-300x147.png\";s:5:\"width\";i:300;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"world_map-768x377.png\";s:5:\"width\";i:768;s:6:\"height\";i:377;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"world_map-1024x503.png\";s:5:\"width\";i:1024;s:6:\"height\";i:503;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 47, '_wp_attached_file', '2020/03/watch.png'),
(151, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:369;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2020/03/watch.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"watch-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"watch-221x300.png\";s:5:\"width\";i:221;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 48, '_edit_lock', '1585680500:1'),
(155, 50, '_dp_original', '48'),
(156, 50, '_edit_lock', '1585576572:1'),
(162, 53, '_dp_original', '50'),
(163, 53, '_edit_lock', '1585834720:1'),
(174, 58, '_edit_lock', '1585667185:1'),
(179, 61, '_dp_original', '58'),
(180, 61, '_edit_lock', '1585665807:1'),
(184, 63, '_dp_original', '61'),
(185, 63, '_edit_lock', '1585666087:1'),
(192, 61, '_wp_trash_meta_status', 'publish'),
(193, 61, '_wp_trash_meta_time', '1585666950'),
(194, 61, '_wp_desired_post_slug', 'employees'),
(195, 63, '_wp_trash_meta_status', 'publish'),
(196, 63, '_wp_trash_meta_time', '1585666956'),
(197, 63, '_wp_desired_post_slug', 'awards'),
(206, 72, '_dp_original', '58'),
(207, 72, '_edit_lock', '1585667243:1'),
(211, 74, '_dp_original', '72'),
(212, 74, '_edit_lock', '1585679101:1'),
(215, 76, '_wp_attached_file', '2020/03/letsgrow.jpg'),
(216, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1810;s:6:\"height\";i:522;s:4:\"file\";s:20:\"2020/03/letsgrow.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"letsgrow-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"letsgrow-300x87.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"letsgrow-768x221.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"letsgrow-1024x295.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 77, '_edit_lock', '1585834996:1'),
(222, 78, '_edit_last', '1'),
(223, 78, '_edit_lock', '1585928806:1'),
(224, 80, '_edit_lock', '1585835930:1'),
(227, 80, '_edit_last', '1'),
(230, 80, 'icon', '<i class=\"far fa-comments\"></i>'),
(231, 80, '_icon', 'field_5e85ecb8a82e9'),
(232, 82, 'icon', '<i class=\"far fa-comments\"></i>'),
(233, 82, '_icon', 'field_5e85ecb8a82e9'),
(234, 83, 'icon', '<i class=\"fas fa-bullhorn\"></i>'),
(235, 83, '_icon', 'field_5e85ecb8a82e9'),
(236, 83, '_dp_original', '80'),
(237, 83, '_edit_lock', '1585837101:1'),
(240, 83, '_edit_last', '1'),
(243, 85, 'icon', '<i class=\"fas fa-bullhorn\"></i>'),
(244, 85, '_icon', 'field_5e85ecb8a82e9'),
(249, 87, 'icon', '<i class=\"fas fa-bullhorn\"></i>'),
(250, 87, '_icon', 'field_5e85ecb8a82e9'),
(251, 80, '_wp_trash_meta_status', 'publish'),
(252, 80, '_wp_trash_meta_time', '1585836977'),
(253, 80, '_wp_desired_post_slug', 'graphic-design'),
(254, 88, 'icon', '<i class=\"fas fa-comments\"></i>'),
(255, 88, '_icon', 'field_5e85ecb8a82e9'),
(259, 88, '_dp_original', '83'),
(260, 88, '_edit_lock', '1585837624:1'),
(263, 88, '_edit_last', '1'),
(266, 90, 'icon', '<i class=\"fas fa-comments\"></i>'),
(267, 90, '_icon', 'field_5e85ecb8a82e9'),
(272, 83, '_wp_trash_meta_status', 'publish'),
(273, 83, '_wp_trash_meta_time', '1585837122'),
(274, 83, '_wp_desired_post_slug', 'graphic'),
(275, 91, 'icon', '<i class=\"fas fa-bullhorn\"></i>'),
(276, 91, '_icon', 'field_5e85ecb8a82e9'),
(278, 91, '_dp_original', '88'),
(279, 91, '_edit_lock', '1585837611:1'),
(282, 91, '_edit_last', '1'),
(285, 93, 'icon', '<i class=\"fas fa-bullhorn\"></i>'),
(286, 93, '_icon', 'field_5e85ecb8a82e9'),
(287, 94, '_edit_lock', '1585919852:1'),
(288, 95, '_wp_attached_file', '2020/04/1.jpg'),
(289, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:418;s:6:\"height\";i:418;s:4:\"file\";s:13:\"2020/04/1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 96, '_wp_attached_file', '2020/04/2.jpg'),
(291, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:467;s:4:\"file\";s:13:\"2020/04/2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-289x300.jpg\";s:5:\"width\";i:289;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 97, '_wp_attached_file', '2020/04/3.jpg'),
(293, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:381;s:6:\"height\";i:359;s:4:\"file\";s:13:\"2020/04/3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x283.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 98, '_wp_attached_file', '2020/04/4.jpg'),
(295, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:387;s:6:\"height\";i:387;s:4:\"file\";s:13:\"2020/04/4.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 99, '_wp_attached_file', '2020/04/5.jpg'),
(297, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:387;s:6:\"height\";i:387;s:4:\"file\";s:13:\"2020/04/5.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 100, '_wp_attached_file', '2020/04/6.jpg'),
(299, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:853;s:6:\"height\";i:569;s:4:\"file\";s:13:\"2020/04/6.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 101, '_wp_attached_file', '2020/04/7.jpg'),
(301, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:386;s:4:\"file\";s:13:\"2020/04/7.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 102, '_wp_attached_file', '2020/04/8.jpg'),
(303, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:351;s:4:\"file\";s:13:\"2020/04/8.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 103, '_wp_attached_file', '2020/04/9.jpg'),
(305, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:417;s:6:\"height\";i:405;s:4:\"file\";s:13:\"2020/04/9.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x291.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 94, '_edit_last', '1'),
(311, 94, 'icon', ''),
(312, 94, '_icon', 'field_5e85ecb8a82e9'),
(313, 104, 'icon', ''),
(314, 104, '_icon', 'field_5e85ecb8a82e9'),
(315, 105, '_edit_lock', '1585919990:1'),
(316, 105, '_edit_last', '1'),
(317, 105, 'icon', ''),
(318, 105, '_icon', 'field_5e85ecb8a82e9'),
(319, 106, 'icon', ''),
(320, 106, '_icon', 'field_5e85ecb8a82e9'),
(329, 107, '_edit_lock', '1585926062:1'),
(332, 107, '_edit_last', '1'),
(333, 107, '_pingme', '1'),
(335, 107, 'icon', ''),
(336, 107, '_icon', 'field_5e85ecb8a82e9'),
(337, 108, 'icon', ''),
(338, 108, '_icon', 'field_5e85ecb8a82e9'),
(339, 110, '_edit_lock', '1585928215:1'),
(340, 111, '_edit_last', '1'),
(341, 111, '_edit_lock', '1585929134:1'),
(360, 116, '_edit_lock', '1585929198:1'),
(361, 117, '_edit_lock', '1585931934:1'),
(362, 118, '_wp_attached_file', '2020/04/client.png'),
(363, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:573;s:4:\"file\";s:18:\"2020/04/client.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"client-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"client-191x300.png\";s:5:\"width\";i:191;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 117, '_thumbnail_id', '118'),
(365, 117, '_edit_last', '1'),
(366, 117, 'review_header', 'Testimonials 1'),
(367, 117, '_review_header', 'field_5e8758ce3899f'),
(368, 117, 'review_author', 'Mr. John Doe'),
(369, 117, '_review_author', 'field_5e875901389a0'),
(370, 119, '_edit_lock', '1585931857:1'),
(371, 119, '_thumbnail_id', '118'),
(372, 119, '_edit_last', '1'),
(373, 119, 'review_header', 'Testimonials 2'),
(374, 119, '_review_header', 'field_5e8758ce3899f'),
(375, 119, 'review_author', 'Mr. Jack'),
(376, 119, '_review_author', 'field_5e875901389a0'),
(377, 120, '_edit_lock', '1585931722:1'),
(378, 120, '_thumbnail_id', '118'),
(379, 120, '_edit_last', '1'),
(380, 120, 'review_header', 'Testimonials 3'),
(381, 120, '_review_header', 'field_5e8758ce3899f'),
(382, 120, 'review_author', 'Mr. David'),
(383, 120, '_review_author', 'field_5e875901389a0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-08 02:00:11', '2020-02-07 23:00:11', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-02-08 02:00:11', '2020-02-07 23:00:11', '', 0, 'http://wp-bt.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2020-02-08 02:00:11', '2020-02-07 23:00:11', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://wp-bt.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-02-08 02:00:11', '2020-02-07 23:00:11', '', 0, 'http://wp-bt.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-02-08 02:00:11', '2020-02-07 23:00:11', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://wp-bt.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-02-08 02:00:11', '2020-02-07 23:00:11', '', 0, 'http://wp-bt.loc/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-02-08 03:04:53', '2020-02-08 00:04:53', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-02-08 17:04:41', '2020-02-08 14:04:41', '', 0, 'http://wp-bt.loc/?page_id=5', 0, 'page', '', 0),
(7, 1, '2020-02-08 03:05:14', '2020-02-08 00:05:14', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-02-08 03:05:14', '2020-02-08 00:05:14', '', 0, 'http://wp-bt.loc/?page_id=7', 0, 'page', '', 0),
(9, 1, '2020-02-08 13:42:35', '2020-02-08 10:42:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Шапка главной страницы', 'shapka-glavnoj-straniczy', 'publish', 'closed', 'closed', '', 'group_5e3e8ec9b1497', '', '', '2020-02-08 13:44:44', '2020-02-08 10:44:44', '', 0, 'http://wp-bt.loc/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2020-02-08 13:42:35', '2020-02-08 10:42:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок 1', 'header1', 'publish', 'closed', 'closed', '', 'field_5e3e8ef97da6e', '', '', '2020-02-08 13:42:35', '2020-02-08 10:42:35', '', 9, 'http://wp-bt.loc/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2020-02-08 13:42:36', '2020-02-08 10:42:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок 2', 'header2', 'publish', 'closed', 'closed', '', 'field_5e3e8f4d7da6f', '', '', '2020-02-08 13:42:36', '2020-02-08 10:42:36', '', 9, 'http://wp-bt.loc/?post_type=acf-field&p=11', 1, 'acf-field', '', 0),
(12, 1, '2020-02-08 13:42:36', '2020-02-08 10:42:36', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст', 'header_text', 'publish', 'closed', 'closed', '', 'field_5e3e8f737da70', '', '', '2020-02-08 13:42:36', '2020-02-08 10:42:36', '', 9, 'http://wp-bt.loc/?post_type=acf-field&p=12', 2, 'acf-field', '', 0),
(13, 1, '2020-02-08 13:42:36', '2020-02-08 10:42:36', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Кнопка 1', 'header_btn1', 'publish', 'closed', 'closed', '', 'field_5e3e8fa47da71', '', '', '2020-02-08 13:44:44', '2020-02-08 10:44:44', '', 9, 'http://wp-bt.loc/?post_type=acf-field&#038;p=13', 3, 'acf-field', '', 0),
(14, 1, '2020-02-08 13:42:36', '2020-02-08 10:42:36', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Кнопка 2', 'header_btn2', 'publish', 'closed', 'closed', '', 'field_5e3e8ffa7da72', '', '', '2020-02-08 13:44:44', '2020-02-08 10:44:44', '', 9, 'http://wp-bt.loc/?post_type=acf-field&#038;p=14', 4, 'acf-field', '', 0),
(15, 1, '2020-02-08 13:42:36', '2020-02-08 10:42:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фон шапки', 'header_bg', 'publish', 'closed', 'closed', '', 'field_5e3e90467da73', '', '', '2020-02-08 13:42:36', '2020-02-08 10:42:36', '', 9, 'http://wp-bt.loc/?post_type=acf-field&p=15', 5, 'acf-field', '', 0),
(16, 1, '2020-02-08 13:50:59', '2020-02-08 10:50:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Our Story', '', 'publish', 'closed', 'closed', '', 'our-story', '', '', '2020-02-08 13:50:59', '2020-02-08 10:50:59', '', 0, 'http://wp-bt.loc/?page_id=16', 0, 'page', '', 0),
(17, 1, '2020-02-08 13:50:59', '2020-02-08 10:50:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Our Story', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-02-08 13:50:59', '2020-02-08 10:50:59', '', 16, 'http://wp-bt.loc/2020/02/08/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-02-08 13:51:39', '2020-02-08 10:51:39', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-02-08 13:51:39', '2020-02-08 10:51:39', '', 0, 'http://wp-bt.loc/?page_id=18', 0, 'page', '', 0),
(19, 1, '2020-02-08 13:51:39', '2020-02-08 10:51:39', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-02-08 13:51:39', '2020-02-08 10:51:39', '', 18, 'http://wp-bt.loc/2020/02/08/18-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-02-08 13:54:34', '2020-02-08 10:54:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-02-08 13:54:34', '2020-02-08 10:54:34', '', 5, 'http://wp-bt.loc/2020/02/08/5-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-02-08 13:54:35', '2020-02-08 10:54:35', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-02-08 13:54:35', '2020-02-08 10:54:35', '', 5, 'http://wp-bt.loc/2020/02/08/5-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-02-08 13:56:45', '2020-02-08 10:56:45', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-02-08 13:56:45', '2020-02-08 10:56:45', '', 0, 'http://wp-bt.loc/wp-content/uploads/2020/02/logo.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2020-02-08 13:56:57', '2020-02-08 10:56:57', 'http://wp-bt.loc/wp-content/uploads/2020/02/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-02-08 13:56:57', '2020-02-08 10:56:57', '', 0, 'http://wp-bt.loc/wp-content/uploads/2020/02/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2020-02-08 14:19:45', '2020-02-08 11:19:45', 'http://wp-bt.loc/wp-content/uploads/2020/02/cropped-main1.jpg', 'cropped-main1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-main1-jpg', '', '', '2020-02-08 14:19:45', '2020-02-08 11:19:45', '', 0, 'http://wp-bt.loc/wp-content/uploads/2020/02/cropped-main1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2020-02-08 14:53:49', '2020-02-08 11:53:49', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2020-02-08 14:54:52', '2020-02-08 11:54:52', '', 0, 'http://wp-bt.loc/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2020-02-08 14:53:50', '2020-02-08 11:53:50', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2020-02-08 14:54:52', '2020-02-08 11:54:52', '', 0, 'http://wp-bt.loc/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2020-02-08 14:53:51', '2020-02-08 11:53:51', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2020-02-08 14:54:52', '2020-02-08 11:54:52', '', 0, 'http://wp-bt.loc/?p=33', 2, 'nav_menu_item', '', 0),
(35, 1, '2020-02-08 14:53:52', '2020-02-08 11:53:52', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2020-02-08 14:54:52', '2020-02-08 11:54:52', '', 0, 'http://wp-bt.loc/?p=35', 4, 'nav_menu_item', '', 0),
(37, 1, '2020-02-08 16:47:01', '2020-02-08 13:47:01', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-02-08 16:47:01', '2020-02-08 13:47:01', '', 5, 'http://wp-bt.loc/2020/02/08/5-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-02-08 16:47:17', '2020-02-08 13:47:17', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-02-08 16:47:17', '2020-02-08 13:47:17', '', 5, 'http://wp-bt.loc/2020/02/08/5-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-02-08 17:04:27', '2020-02-08 14:04:27', '', 'main1', '', 'inherit', 'open', 'closed', '', 'main1', '', '', '2020-02-08 17:04:27', '2020-02-08 14:04:27', '', 5, 'http://wp-bt.loc/wp-content/uploads/2020/02/main1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-02-08 17:04:41', '2020-02-08 14:04:41', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit doloribus non nam, velit nemo enim!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-02-08 17:04:41', '2020-02-08 14:04:41', '', 5, 'http://wp-bt.loc/2020/02/08/5-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-03-30 15:37:44', '2020-03-30 12:37:44', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Категории', 'kategorii', 'publish', 'closed', 'closed', '', 'group_5e81e6e9728e8', '', '', '2020-03-30 15:37:46', '2020-03-30 12:37:46', '', 0, 'http://wp-bt.loc/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2020-03-30 15:37:44', '2020-03-30 12:37:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'section_header', 'publish', 'closed', 'closed', '', 'field_5e81e73d60862', '', '', '2020-03-30 15:37:44', '2020-03-30 12:37:44', '', 41, 'http://wp-bt.loc/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2020-03-30 15:37:45', '2020-03-30 12:37:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фоновое изображение', 'section_img', 'publish', 'closed', 'closed', '', 'field_5e81e76460863', '', '', '2020-03-30 15:37:45', '2020-03-30 12:37:45', '', 41, 'http://wp-bt.loc/?post_type=acf-field&p=43', 1, 'acf-field', '', 0),
(44, 1, '2020-03-30 15:37:45', '2020-03-30 12:37:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Дополнительное изображение', 'section_add_img', 'publish', 'closed', 'closed', '', 'field_5e81e7a360864', '', '', '2020-03-30 15:37:45', '2020-03-30 12:37:45', '', 41, 'http://wp-bt.loc/?post_type=acf-field&p=44', 2, 'acf-field', '', 0),
(45, 1, '2020-03-30 15:37:45', '2020-03-30 12:37:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Видео', 'section_video', 'publish', 'closed', 'closed', '', 'field_5e81e7bb60865', '', '', '2020-03-30 15:37:45', '2020-03-30 12:37:45', '', 41, 'http://wp-bt.loc/?post_type=acf-field&p=45', 3, 'acf-field', '', 0),
(46, 1, '2020-03-30 15:39:38', '2020-03-30 12:39:38', '', 'world_map', '', 'inherit', 'open', 'closed', '', 'world_map', '', '', '2020-03-30 15:39:38', '2020-03-30 12:39:38', '', 0, 'http://wp-bt.loc/wp-content/uploads/2020/03/world_map.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2020-03-30 15:40:03', '2020-03-30 12:40:03', '', 'watch', '', 'inherit', 'open', 'closed', '', 'watch', '', '', '2020-03-30 15:40:03', '2020-03-30 12:40:03', '', 0, 'http://wp-bt.loc/wp-content/uploads/2020/03/watch.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2020-03-30 15:41:36', '2020-03-30 12:41:36', '<!-- wp:paragraph -->\n<p>\nWebdesign Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nPariatur obcaecati vero aliquid libero doloribus ad, unde tempora \nmaiores, ullam, modi qui quidem minima debitis perferendis vitae cumque \net quo impedit.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>\nWebdesign Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nPariatur obcaecati vero aliquid libero doloribus ad, unde tempora \nmaiores, ullam, modi qui quidem minima debitis perferendis vitae cumque \net quo impedit.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\nWebdesign Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nPariatur obcaecati vero aliquid libero doloribus ad, unde tempora \nmaiores, ullam, modi qui quidem minima debitis perferendis vitae cumque \net quo impedit.\n\n</p>\n<!-- /wp:paragraph -->', 'Webdesign', '', 'publish', 'open', 'open', '', 'webdesign', '', '', '2020-03-31 21:50:41', '2020-03-31 18:50:41', '', 0, 'http://wp-bt.loc/?p=48', 0, 'post', '', 0),
(49, 1, '2020-03-30 15:41:36', '2020-03-30 12:41:36', '<!-- wp:paragraph -->\n<p>\nWebdesign Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nPariatur obcaecati vero aliquid libero doloribus ad, unde tempora \nmaiores, ullam, modi qui quidem minima debitis perferendis vitae cumque \net quo impedit.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\nWebdesign Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nPariatur obcaecati vero aliquid libero doloribus ad, unde tempora \nmaiores, ullam, modi qui quidem minima debitis perferendis vitae cumque \net quo impedit.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\nWebdesign Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nPariatur obcaecati vero aliquid libero doloribus ad, unde tempora \nmaiores, ullam, modi qui quidem minima debitis perferendis vitae cumque \net quo impedit.\n\n</p>\n<!-- /wp:paragraph -->', 'Webdesign', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2020-03-30 15:41:36', '2020-03-30 12:41:36', '', 48, 'http://wp-bt.loc/2020/03/30/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-03-30 15:42:59', '2020-03-30 12:42:59', '<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->', 'Mobile App', '', 'publish', 'open', 'open', '', 'mobile-app', '', '', '2020-03-30 16:58:34', '2020-03-30 13:58:34', '', 0, 'http://wp-bt.loc/?p=50', 0, 'post', '', 0),
(51, 1, '2020-03-30 15:42:59', '2020-03-30 12:42:59', '<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->', 'MOBILE APP', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-03-30 15:42:59', '2020-03-30 12:42:59', '', 50, 'http://wp-bt.loc/2020/03/30/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-03-30 15:43:56', '2020-03-30 12:43:56', '<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->', 'Mobile App', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-03-30 15:43:56', '2020-03-30 12:43:56', '', 50, 'http://wp-bt.loc/2020/03/30/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-03-30 15:45:20', '2020-03-30 12:45:20', '<!-- wp:paragraph -->\n<p> Branding Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p> Branding Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Branding Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->', 'Branding', '', 'publish', 'open', 'open', '', 'branding', '', '', '2020-03-31 21:50:56', '2020-03-31 18:50:56', '', 0, 'http://wp-bt.loc/?p=53', 0, 'post', '', 0),
(54, 1, '2020-03-30 15:45:20', '2020-03-30 12:45:20', '<!-- wp:paragraph -->\n<p> Branding Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Branding Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Branding Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->', 'Branding', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-03-30 15:45:20', '2020-03-30 12:45:20', '', 53, 'http://wp-bt.loc/2020/03/30/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-03-30 16:57:53', '2020-03-30 13:57:53', '<!-- wp:paragraph -->\n<p> Branding Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p> Branding Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Branding Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->', 'Branding', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-03-30 16:57:53', '2020-03-30 13:57:53', '', 53, 'http://wp-bt.loc/53-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-03-30 16:58:26', '2020-03-30 13:58:26', '<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Mobile app Lorem ipsum dolor sit amet, consectetur adipisicing elit.  Pariatur obcaecati vero aliquid libero doloribus ad, unde tempora  maiores, ullam, modi qui quidem minima debitis perferendis vitae cumque  et quo impedit. </p>\n<!-- /wp:paragraph -->', 'Mobile App', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-03-30 16:58:26', '2020-03-30 13:58:26', '', 50, 'http://wp-bt.loc/50-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-03-30 16:58:50', '2020-03-30 13:58:50', '<!-- wp:paragraph -->\n<p>\nWebdesign Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nPariatur obcaecati vero aliquid libero doloribus ad, unde tempora \nmaiores, ullam, modi qui quidem minima debitis perferendis vitae cumque \net quo impedit.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>\nWebdesign Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nPariatur obcaecati vero aliquid libero doloribus ad, unde tempora \nmaiores, ullam, modi qui quidem minima debitis perferendis vitae cumque \net quo impedit.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\nWebdesign Lorem ipsum dolor sit amet, consectetur adipisicing elit. \nPariatur obcaecati vero aliquid libero doloribus ad, unde tempora \nmaiores, ullam, modi qui quidem minima debitis perferendis vitae cumque \net quo impedit.\n\n</p>\n<!-- /wp:paragraph -->', 'Webdesign', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2020-03-30 16:58:50', '2020-03-30 13:58:50', '', 48, 'http://wp-bt.loc/48-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-03-31 17:42:47', '2020-03-31 14:42:47', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">500+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Successfully</strong> completed projects</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Projects', '', 'publish', 'open', 'open', '', 'projects', '', '', '2020-03-31 18:07:28', '2020-03-31 15:07:28', '', 0, 'http://wp-bt.loc/?p=58', 0, 'post', '', 0),
(59, 1, '2020-03-31 17:42:47', '2020-03-31 14:42:47', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">500+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\"><strong>Successfully</strong> completed projects</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\"><strong>Successfully</strong> completed projects</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</pre>\n<!-- /wp:preformatted -->', 'Projects', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-03-31 17:42:47', '2020-03-31 14:42:47', '', 58, 'http://wp-bt.loc/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-03-31 17:43:07', '2020-03-31 14:43:07', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">500+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\"><strong>Successfully</strong> completed projects</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</pre>\n<!-- /wp:preformatted -->', 'Projects', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-03-31 17:43:07', '2020-03-31 14:43:07', '', 58, 'http://wp-bt.loc/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-03-31 17:45:47', '2020-03-31 14:45:47', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\"> 254+ </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\"><strong>Highly</strong> specialised employees</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat                         officiis ipsa quae, magnam esse? </pre>\n<!-- /wp:preformatted -->', 'Employees', '', 'trash', 'open', 'open', '', 'employees__trashed', '', '', '2020-03-31 18:02:30', '2020-03-31 15:02:30', '', 0, 'http://wp-bt.loc/?p=61', 0, 'post', '', 0),
(62, 1, '2020-03-31 17:45:47', '2020-03-31 14:45:47', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\"> 254+ </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\"><strong>Highly</strong> specialised employees</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat                         officiis ipsa quae, magnam esse? </pre>\n<!-- /wp:preformatted -->', 'Employees', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-03-31 17:45:47', '2020-03-31 14:45:47', '', 61, 'http://wp-bt.loc/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-03-31 17:46:51', '2020-03-31 14:46:51', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">45+ </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\"><strong>Awards</strong> around the world</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat                         officiis ipsa quae, magnam esse? </pre>\n<!-- /wp:preformatted -->', 'Awards', '', 'trash', 'open', 'open', '', 'awards__trashed', '', '', '2020-03-31 18:02:36', '2020-03-31 15:02:36', '', 0, 'http://wp-bt.loc/?p=63', 0, 'post', '', 0),
(64, 1, '2020-03-31 17:46:51', '2020-03-31 14:46:51', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">45+ </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\"><strong>Awards</strong> around the world</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat                         officiis ipsa quae, magnam esse? </pre>\n<!-- /wp:preformatted -->', 'Awards', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-03-31 17:46:51', '2020-03-31 14:46:51', '', 63, 'http://wp-bt.loc/63-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-03-31 17:59:54', '2020-03-31 14:59:54', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>500+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Succesfully</strong> completed projects</h4>\n<!-- /wp:heading -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?&lt;/<strong>p</strong>></pre>\n<!-- /wp:preformatted -->', 'Projects', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-03-31 17:59:54', '2020-03-31 14:59:54', '', 58, 'http://wp-bt.loc/58-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-03-31 18:02:15', '2020-03-31 15:02:15', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">500+</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:heading -->\n<h2><strong>Successfully</strong> completed projects</h2>\n<!-- /wp:heading -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?&lt;/<strong>p</strong>&gt;<br></pre>\n<!-- /wp:preformatted -->', 'Projects', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-03-31 18:02:15', '2020-03-31 15:02:15', '', 58, 'http://wp-bt.loc/58-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-03-31 18:06:01', '2020-03-31 15:06:01', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>500+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Successfully</strong> completed projects</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Projects', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-03-31 18:06:01', '2020-03-31 15:06:01', '', 58, 'http://wp-bt.loc/58-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-03-31 18:06:23', '2020-03-31 15:06:23', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">500+</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Successfully</strong> completed projects</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Projects', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-03-31 18:06:23', '2020-03-31 15:06:23', '', 58, 'http://wp-bt.loc/58-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-03-31 18:06:40', '2020-03-31 15:06:40', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>500+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Successfully</strong> completed projects</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Projects', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-03-31 18:06:40', '2020-03-31 15:06:40', '', 58, 'http://wp-bt.loc/58-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-03-31 18:07:28', '2020-03-31 15:07:28', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">500+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Successfully</strong> completed projects</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Projects', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-03-31 18:07:28', '2020-03-31 15:07:28', '', 58, 'http://wp-bt.loc/58-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-03-31 18:09:42', '2020-03-31 15:09:42', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">254+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Highly</strong> specialised employees</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Employees', '', 'publish', 'open', 'open', '', 'employees', '', '', '2020-03-31 18:09:42', '2020-03-31 15:09:42', '', 0, 'http://wp-bt.loc/?p=72', 0, 'post', '', 0),
(73, 1, '2020-03-31 18:09:42', '2020-03-31 15:09:42', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">254+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Highly</strong> specialised employees</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Employees', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2020-03-31 18:09:42', '2020-03-31 15:09:42', '', 72, 'http://wp-bt.loc/72-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(74, 1, '2020-03-31 18:10:26', '2020-03-31 15:10:26', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">45+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Awards</strong> around the world</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Awards', '', 'publish', 'open', 'open', '', 'awards', '', '', '2020-03-31 18:10:26', '2020-03-31 15:10:26', '', 0, 'http://wp-bt.loc/?p=74', 0, 'post', '', 0),
(75, 1, '2020-03-31 18:10:26', '2020-03-31 15:10:26', '<!-- wp:html -->\n<i class=\"fas fa-bullhorn\"></i>\n<!-- /wp:html -->\n\n<!-- wp:paragraph {\"className\":\"num\"} -->\n<p class=\"num\">45+</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4><strong>Awards</strong> around the world</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore aspernatur quas voluptatibus sed dolor optio architecto, praesentium ullam dolorum alias soluta deserunt quod quidem quaerat officiis ipsa quae, magnam esse?</p>\n<!-- /wp:paragraph -->', 'Awards', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-03-31 18:10:26', '2020-03-31 15:10:26', '', 74, 'http://wp-bt.loc/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-03-31 21:29:16', '2020-03-31 18:29:16', '', 'letsgrow', '', 'inherit', 'open', 'closed', '', 'letsgrow', '', '', '2020-03-31 21:29:16', '2020-03-31 18:29:16', '', 0, 'http://wp-bt.loc/wp-content/uploads/2020/03/letsgrow.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-04-02 16:45:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-02 16:45:28', '0000-00-00 00:00:00', '', 0, 'http://wp-bt.loc/?p=77', 0, 'post', '', 0),
(78, 1, '2020-04-02 16:48:04', '2020-04-02 13:48:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Для записей', 'dlya-zapisej', 'publish', 'closed', 'closed', '', 'group_5e85ec86c80fa', '', '', '2020-04-02 16:48:04', '2020-04-02 13:48:04', '', 0, 'http://wp-bt.loc/?post_type=acf-field-group&#038;p=78', 0, 'acf-field-group', '', 0),
(79, 1, '2020-04-02 16:48:04', '2020-04-02 13:48:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Иконка fontawesome', 'icon', 'publish', 'closed', 'closed', '', 'field_5e85ecb8a82e9', '', '', '2020-04-02 16:48:04', '2020-04-02 13:48:04', '', 78, 'http://wp-bt.loc/?post_type=acf-field&p=79', 0, 'acf-field', '', 0),
(80, 1, '2020-04-02 16:58:42', '2020-04-02 13:58:42', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->', 'Graphic Design', '', 'trash', 'open', 'open', '', 'graphic-design__trashed', '', '', '2020-04-02 17:16:17', '2020-04-02 14:16:17', '', 0, 'http://wp-bt.loc/?p=80', 0, 'post', '', 0),
(81, 1, '2020-04-02 16:58:42', '2020-04-02 13:58:42', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->', 'Graphic Design', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-04-02 16:58:42', '2020-04-02 13:58:42', '', 80, 'http://wp-bt.loc/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-04-02 16:58:47', '2020-04-02 13:58:47', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->', 'Graphic Design', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-04-02 16:58:47', '2020-04-02 13:58:47', '', 80, 'http://wp-bt.loc/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-04-02 16:59:35', '2020-04-02 13:59:35', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->', 'Graphic', '', 'trash', 'open', 'open', '', 'graphic__trashed', '', '', '2020-04-02 17:18:43', '2020-04-02 14:18:43', '', 0, 'http://wp-bt.loc/?p=83', 0, 'post', '', 0),
(84, 1, '2020-04-02 16:59:35', '2020-04-02 13:59:35', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->', 'Graphic', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-04-02 16:59:35', '2020-04-02 13:59:35', '', 83, 'http://wp-bt.loc/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-04-02 16:59:38', '2020-04-02 13:59:38', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae. </pre>\n<!-- /wp:preformatted -->', 'Graphic', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-04-02 16:59:38', '2020-04-02 13:59:38', '', 83, 'http://wp-bt.loc/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-04-02 17:16:07', '2020-04-02 14:16:07', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->', 'Graphic', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-04-02 17:16:07', '2020-04-02 14:16:07', '', 83, 'http://wp-bt.loc/83-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-04-02 17:16:09', '2020-04-02 14:16:09', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->', 'Graphic', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-04-02 17:16:09', '2020-04-02 14:16:09', '', 83, 'http://wp-bt.loc/83-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-04-02 17:17:20', '2020-04-02 14:17:20', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->', 'Graphic Design', '', 'publish', 'open', 'open', '', 'graphic-design', '', '', '2020-04-02 17:17:23', '2020-04-02 14:17:23', '', 0, 'http://wp-bt.loc/?p=88', 0, 'post', '', 0),
(89, 1, '2020-04-02 17:17:20', '2020-04-02 14:17:20', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->', 'Graphic Design', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2020-04-02 17:17:20', '2020-04-02 14:17:20', '', 88, 'http://wp-bt.loc/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-04-02 17:17:23', '2020-04-02 14:17:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->', 'Graphic Design', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2020-04-02 17:17:23', '2020-04-02 14:17:23', '', 88, 'http://wp-bt.loc/88-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-04-02 17:19:22', '2020-04-02 14:19:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->', 'Graphic', '', 'publish', 'open', 'open', '', 'graphic', '', '', '2020-04-02 17:19:27', '2020-04-02 14:19:27', '', 0, 'http://wp-bt.loc/?p=91', 0, 'post', '', 0),
(92, 1, '2020-04-02 17:19:22', '2020-04-02 14:19:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->', 'Graphic', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2020-04-02 17:19:22', '2020-04-02 14:19:22', '', 91, 'http://wp-bt.loc/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-04-02 17:19:27', '2020-04-02 14:19:27', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, amet totam modi optio, a quae.</p>\n<!-- /wp:paragraph -->', 'Graphic', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2020-04-02 17:19:27', '2020-04-02 14:19:27', '', 91, 'http://wp-bt.loc/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-04-03 16:17:21', '2020-04-03 13:17:21', '<!-- wp:gallery {\"ids\":[95,96,97,98,99,100,101,102,103],\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\" alt=\"\" data-id=\"95\" data-link=\"http://wp-bt.loc/?attachment_id=95\" class=\"wp-image-95\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\" alt=\"\" data-id=\"96\" data-link=\"http://wp-bt.loc/?attachment_id=96\" class=\"wp-image-96\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\" alt=\"\" data-id=\"97\" data-link=\"http://wp-bt.loc/?attachment_id=97\" class=\"wp-image-97\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\" alt=\"\" data-id=\"98\" data-link=\"http://wp-bt.loc/?attachment_id=98\" class=\"wp-image-98\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\" alt=\"\" data-id=\"99\" data-link=\"http://wp-bt.loc/?attachment_id=99\" class=\"wp-image-99\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\" alt=\"\" data-id=\"100\" data-link=\"http://wp-bt.loc/?attachment_id=100\" class=\"wp-image-100\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\" alt=\"\" data-id=\"101\" data-link=\"http://wp-bt.loc/?attachment_id=101\" class=\"wp-image-101\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\" alt=\"\" data-id=\"102\" data-link=\"http://wp-bt.loc/?attachment_id=102\" class=\"wp-image-102\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\" alt=\"\" data-id=\"103\" data-link=\"http://wp-bt.loc/?attachment_id=103\" class=\"wp-image-103\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Design', '', 'publish', 'open', 'open', '', 'design', '', '', '2020-04-03 16:17:28', '2020-04-03 13:17:28', '', 0, 'http://wp-bt.loc/?p=94', 0, 'post', '', 0),
(95, 1, '2020-04-03 16:16:36', '2020-04-03 13:16:36', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2020-04-03 16:16:36', '2020-04-03 13:16:36', '', 94, 'http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2020-04-03 16:16:51', '2020-04-03 13:16:51', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2020-04-03 16:16:51', '2020-04-03 13:16:51', '', 94, 'http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2020-04-03 16:16:52', '2020-04-03 13:16:52', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2020-04-03 16:16:52', '2020-04-03 13:16:52', '', 94, 'http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2020-04-03 16:16:53', '2020-04-03 13:16:53', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2020-04-03 16:16:53', '2020-04-03 13:16:53', '', 94, 'http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2020-04-03 16:16:54', '2020-04-03 13:16:54', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2020-04-03 16:16:54', '2020-04-03 13:16:54', '', 94, 'http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2020-04-03 16:16:56', '2020-04-03 13:16:56', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2020-04-03 16:16:56', '2020-04-03 13:16:56', '', 94, 'http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2020-04-03 16:16:58', '2020-04-03 13:16:58', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2020-04-03 16:16:58', '2020-04-03 13:16:58', '', 94, 'http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2020-04-03 16:17:02', '2020-04-03 13:17:02', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2020-04-03 16:17:02', '2020-04-03 13:17:02', '', 94, 'http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2020-04-03 16:17:04', '2020-04-03 13:17:04', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2020-04-03 16:17:04', '2020-04-03 13:17:04', '', 94, 'http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2020-04-03 16:17:21', '2020-04-03 13:17:21', '<!-- wp:gallery {\"ids\":[95,96,97,98,99,100,101,102,103],\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\" alt=\"\" data-id=\"95\" data-link=\"http://wp-bt.loc/?attachment_id=95\" class=\"wp-image-95\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\" alt=\"\" data-id=\"96\" data-link=\"http://wp-bt.loc/?attachment_id=96\" class=\"wp-image-96\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\" alt=\"\" data-id=\"97\" data-link=\"http://wp-bt.loc/?attachment_id=97\" class=\"wp-image-97\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\" alt=\"\" data-id=\"98\" data-link=\"http://wp-bt.loc/?attachment_id=98\" class=\"wp-image-98\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\" alt=\"\" data-id=\"99\" data-link=\"http://wp-bt.loc/?attachment_id=99\" class=\"wp-image-99\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\" alt=\"\" data-id=\"100\" data-link=\"http://wp-bt.loc/?attachment_id=100\" class=\"wp-image-100\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\" alt=\"\" data-id=\"101\" data-link=\"http://wp-bt.loc/?attachment_id=101\" class=\"wp-image-101\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\" alt=\"\" data-id=\"102\" data-link=\"http://wp-bt.loc/?attachment_id=102\" class=\"wp-image-102\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\" alt=\"\" data-id=\"103\" data-link=\"http://wp-bt.loc/?attachment_id=103\" class=\"wp-image-103\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Design', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-04-03 16:17:21', '2020-04-03 13:17:21', '', 94, 'http://wp-bt.loc/94-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-04-03 16:19:07', '2020-04-03 13:19:07', '<!-- wp:gallery {\"ids\":[103,102,101,100,99,98,97,96,95],\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\" alt=\"\" data-id=\"103\" data-link=\"http://wp-bt.loc/design/attachment/9/\" class=\"wp-image-103\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\" alt=\"\" data-id=\"102\" data-link=\"http://wp-bt.loc/design/attachment/8/\" class=\"wp-image-102\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\" alt=\"\" data-id=\"101\" data-link=\"http://wp-bt.loc/design/attachment/7/\" class=\"wp-image-101\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\" alt=\"\" data-id=\"100\" data-link=\"http://wp-bt.loc/design/attachment/6/\" class=\"wp-image-100\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\" alt=\"\" data-id=\"99\" data-link=\"http://wp-bt.loc/design/attachment/5/\" class=\"wp-image-99\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\" alt=\"\" data-id=\"98\" data-link=\"http://wp-bt.loc/design/attachment/4/\" class=\"wp-image-98\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\" alt=\"\" data-id=\"97\" data-link=\"http://wp-bt.loc/design/attachment/3/\" class=\"wp-image-97\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\" alt=\"\" data-id=\"96\" data-link=\"http://wp-bt.loc/design/attachment/2/\" class=\"wp-image-96\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\" alt=\"\" data-id=\"95\" data-link=\"http://wp-bt.loc/design/attachment/1/\" class=\"wp-image-95\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Mobile', '', 'publish', 'open', 'open', '', 'mobile', '', '', '2020-04-03 16:19:45', '2020-04-03 13:19:45', '', 0, 'http://wp-bt.loc/?p=105', 0, 'post', '', 0),
(106, 1, '2020-04-03 16:18:51', '2020-04-03 13:18:51', '<!-- wp:gallery {\"ids\":[103,102,101,100,99,98,97,96,95],\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\" alt=\"\" data-id=\"103\" data-link=\"http://wp-bt.loc/design/attachment/9/\" class=\"wp-image-103\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\" alt=\"\" data-id=\"102\" data-link=\"http://wp-bt.loc/design/attachment/8/\" class=\"wp-image-102\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\" alt=\"\" data-id=\"101\" data-link=\"http://wp-bt.loc/design/attachment/7/\" class=\"wp-image-101\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\" alt=\"\" data-id=\"100\" data-link=\"http://wp-bt.loc/design/attachment/6/\" class=\"wp-image-100\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\" alt=\"\" data-id=\"99\" data-link=\"http://wp-bt.loc/design/attachment/5/\" class=\"wp-image-99\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\" alt=\"\" data-id=\"98\" data-link=\"http://wp-bt.loc/design/attachment/4/\" class=\"wp-image-98\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\" alt=\"\" data-id=\"97\" data-link=\"http://wp-bt.loc/design/attachment/3/\" class=\"wp-image-97\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\" alt=\"\" data-id=\"96\" data-link=\"http://wp-bt.loc/design/attachment/2/\" class=\"wp-image-96\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\" alt=\"\" data-id=\"95\" data-link=\"http://wp-bt.loc/design/attachment/1/\" class=\"wp-image-95\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Mobile', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2020-04-03 16:18:51', '2020-04-03 13:18:51', '', 105, 'http://wp-bt.loc/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-04-03 16:20:34', '2020-04-03 13:20:34', '<!-- wp:gallery {\"ids\":[103,102,101,100,99,98,97,96,95],\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\" alt=\"\" data-id=\"103\" data-link=\"http://wp-bt.loc/design/attachment/9/\" class=\"wp-image-103\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\" alt=\"\" data-id=\"102\" data-link=\"http://wp-bt.loc/design/attachment/8/\" class=\"wp-image-102\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\" alt=\"\" data-id=\"101\" data-link=\"http://wp-bt.loc/design/attachment/7/\" class=\"wp-image-101\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\" alt=\"\" data-id=\"100\" data-link=\"http://wp-bt.loc/design/attachment/6/\" class=\"wp-image-100\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\" alt=\"\" data-id=\"99\" data-link=\"http://wp-bt.loc/design/attachment/5/\" class=\"wp-image-99\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\" alt=\"\" data-id=\"98\" data-link=\"http://wp-bt.loc/design/attachment/4/\" class=\"wp-image-98\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\" alt=\"\" data-id=\"97\" data-link=\"http://wp-bt.loc/design/attachment/3/\" class=\"wp-image-97\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\" alt=\"\" data-id=\"96\" data-link=\"http://wp-bt.loc/design/attachment/2/\" class=\"wp-image-96\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\" alt=\"\" data-id=\"95\" data-link=\"http://wp-bt.loc/design/attachment/1/\" class=\"wp-image-95\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Brand', '', 'publish', 'open', 'open', '', 'brand', '', '', '2020-04-03 16:20:39', '2020-04-03 13:20:39', '', 0, 'http://wp-bt.loc/?p=107', 0, 'post', '', 0),
(108, 1, '2020-04-03 16:20:34', '2020-04-03 13:20:34', '<!-- wp:gallery {\"ids\":[103,102,101,100,99,98,97,96,95],\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-3 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/9.jpg\" alt=\"\" data-id=\"103\" data-link=\"http://wp-bt.loc/design/attachment/9/\" class=\"wp-image-103\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/8.jpg\" alt=\"\" data-id=\"102\" data-link=\"http://wp-bt.loc/design/attachment/8/\" class=\"wp-image-102\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/7.jpg\" alt=\"\" data-id=\"101\" data-link=\"http://wp-bt.loc/design/attachment/7/\" class=\"wp-image-101\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/6.jpg\" alt=\"\" data-id=\"100\" data-link=\"http://wp-bt.loc/design/attachment/6/\" class=\"wp-image-100\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/5.jpg\" alt=\"\" data-id=\"99\" data-link=\"http://wp-bt.loc/design/attachment/5/\" class=\"wp-image-99\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/4.jpg\" alt=\"\" data-id=\"98\" data-link=\"http://wp-bt.loc/design/attachment/4/\" class=\"wp-image-98\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/3.jpg\" alt=\"\" data-id=\"97\" data-link=\"http://wp-bt.loc/design/attachment/3/\" class=\"wp-image-97\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/2.jpg\" alt=\"\" data-id=\"96\" data-link=\"http://wp-bt.loc/design/attachment/2/\" class=\"wp-image-96\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\"><img src=\"http://wp-bt.loc/wp-content/uploads/2020/04/1.jpg\" alt=\"\" data-id=\"95\" data-link=\"http://wp-bt.loc/design/attachment/1/\" class=\"wp-image-95\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Brand', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2020-04-03 16:20:34', '2020-04-03 13:20:34', '', 107, 'http://wp-bt.loc/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-04-03 18:37:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-03 18:37:15', '0000-00-00 00:00:00', '', 0, 'http://wp-bt.loc/?post_type=reviews&p=109', 0, 'reviews', '', 0),
(110, 1, '2020-04-03 18:38:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-03 18:38:27', '0000-00-00 00:00:00', '', 0, 'http://wp-bt.loc/?post_type=reviews&p=110', 0, 'reviews', '', 0),
(111, 1, '2020-04-03 18:41:20', '2020-04-03 15:41:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"reviews\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для отзывов', 'polya-dlya-otzyvov', 'publish', 'closed', 'closed', '', 'group_5e8758a9b714f', '', '', '2020-04-03 18:44:11', '2020-04-03 15:44:11', '', 0, 'http://wp-bt.loc/?post_type=acf-field-group&#038;p=111', 0, 'acf-field-group', '', 0),
(112, 1, '2020-04-03 18:41:20', '2020-04-03 15:41:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'review_header', 'publish', 'closed', 'closed', '', 'field_5e8758ce3899f', '', '', '2020-04-03 18:41:20', '2020-04-03 15:41:20', '', 111, 'http://wp-bt.loc/?post_type=acf-field&p=112', 0, 'acf-field', '', 0),
(113, 1, '2020-04-03 18:41:21', '2020-04-03 15:41:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Автор', 'review_author', 'publish', 'closed', 'closed', '', 'field_5e875901389a0', '', '', '2020-04-03 18:44:10', '2020-04-03 15:44:10', '', 111, 'http://wp-bt.loc/?post_type=acf-field&#038;p=113', 1, 'acf-field', '', 0),
(116, 1, '2020-04-03 18:54:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-03 18:54:55', '0000-00-00 00:00:00', '', 0, 'http://wp-bt.loc/?post_type=reviews&p=116', 0, 'reviews', '', 0),
(117, 0, '2020-04-03 18:58:29', '2020-04-03 15:58:29', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\n<!-- /wp:paragraph -->', 'Client 1', '', 'publish', 'closed', 'closed', '', 'client-1', '', '', '2020-04-03 19:38:36', '2020-04-03 16:38:36', '', 0, 'http://wp-bt.loc/?post_type=reviews&#038;p=117', 0, 'reviews', '', 0),
(118, 1, '2020-04-03 18:57:35', '2020-04-03 15:57:35', '', 'client', '', 'inherit', 'open', 'closed', '', 'client', '', '', '2020-04-03 18:57:35', '2020-04-03 15:57:35', '', 117, 'http://wp-bt.loc/wp-content/uploads/2020/04/client.png', 0, 'attachment', 'image/png', 0),
(119, 0, '2020-04-03 18:59:53', '2020-04-03 15:59:53', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\n<!-- /wp:paragraph -->', 'Client 2', '', 'publish', 'closed', 'closed', '', 'client-2', '', '', '2020-04-03 19:37:36', '2020-04-03 16:37:36', '', 0, 'http://wp-bt.loc/?post_type=reviews&#038;p=119', 0, 'reviews', '', 0),
(120, 0, '2020-04-03 19:01:21', '2020-04-03 16:01:21', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\n<!-- /wp:paragraph -->', 'Client 3', '', 'publish', 'closed', 'closed', '', 'client-3', '', '', '2020-04-03 19:01:22', '2020-04-03 16:01:22', '', 0, 'http://wp-bt.loc/?post_type=reviews&#038;p=120', 0, 'reviews', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'section_header', 'Dream Big Inspire the World'),
(2, 3, '_section_header', 'field_5e81e73d60862'),
(3, 3, 'section_img', '46'),
(4, 3, '_section_img', 'field_5e81e76460863'),
(5, 3, 'section_add_img', '47'),
(6, 3, '_section_add_img', 'field_5e81e7a360864'),
(7, 3, 'section_video', ''),
(8, 3, '_section_video', 'field_5e81e7bb60865'),
(9, 4, 'section_header', ''),
(10, 4, '_section_header', 'field_5e81e73d60862'),
(11, 4, 'section_img', ''),
(12, 4, '_section_img', 'field_5e81e76460863'),
(13, 4, 'section_add_img', ''),
(14, 4, '_section_add_img', 'field_5e81e7a360864'),
(15, 4, 'section_video', ''),
(16, 4, '_section_video', 'field_5e81e7bb60865'),
(17, 5, 'section_header', 'We turn creative ideas into your business'),
(18, 5, '_section_header', 'field_5e81e73d60862'),
(19, 5, 'section_img', '76'),
(20, 5, '_section_img', 'field_5e81e76460863'),
(21, 5, 'section_add_img', ''),
(22, 5, '_section_add_img', 'field_5e81e7a360864'),
(23, 5, 'section_video', ''),
(24, 5, '_section_video', 'field_5e81e7bb60865'),
(25, 6, 'section_header', 'We turn creative ideas into your business'),
(26, 6, '_section_header', 'field_5e81e73d60862'),
(27, 6, 'section_img', ''),
(28, 6, '_section_img', 'field_5e81e76460863'),
(29, 6, 'section_add_img', ''),
(30, 6, '_section_add_img', 'field_5e81e7a360864'),
(31, 6, 'section_video', 'https://www.youtube.com/watch?v=jZvKDCEYjrI?rel=0'),
(32, 6, '_section_video', 'field_5e81e7bb60865'),
(33, 7, 'section_header', ''),
(34, 7, '_section_header', 'field_5e81e73d60862'),
(35, 7, 'section_img', ''),
(36, 7, '_section_img', 'field_5e81e76460863'),
(37, 7, 'section_add_img', ''),
(38, 7, '_section_add_img', 'field_5e81e7a360864'),
(39, 7, 'section_video', ''),
(40, 7, '_section_video', 'field_5e81e7bb60865');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'Web Design', 'web-design', 0),
(4, 'Progress', 'progress', 0),
(5, 'Let\'s Grow Together', 'lets-grow-together', 0),
(6, 'We are best and creative agency', 'we-are-best-and-creative-agency', 0),
(7, 'Our Recent Work', 'our-recent-work', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(35, 2, 0),
(48, 3, 0),
(48, 5, 0),
(50, 3, 0),
(53, 3, 0),
(53, 5, 0),
(58, 4, 0),
(61, 4, 0),
(63, 4, 0),
(72, 4, 0),
(74, 4, 0),
(80, 6, 0),
(83, 6, 0),
(88, 6, 0),
(91, 6, 0),
(94, 7, 0),
(105, 7, 0),
(107, 7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', 'We turn creative ideas into your business', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil ipsa voluptas delectus sed, assumenda voluptates ab adipisci perspiciatis earum magnam fugit quasi culpa, repellendus totam in unde neque sapiente quod.', 0, 2),
(6, 6, 'category', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam ipsam, quas, illo laborum molestias nihil dolore nobis quis, quam reiciendis asperiores. Accusamus consequatur ipsum asperiores dolore perferendis, tempore ducimus blanditiis.', 0, 2),
(7, 7, 'category', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati ipsum cumque, sit earum quasi, nisi repudiandae perspiciatis culpa praesentium cupiditate, distinctio maiores mollitia. Similique quidem, harum aliquam consectetur qui ut.', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a9b77948088765bd99a3e1a844066efb9b6e037b4a555924196a6bdecc693f55\";a:4:{s:10:\"expiration\";i:1586781139;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:74.0) Gecko/20100101 Firefox/74.0\";s:5:\"login\";i:1585571539;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1581116443'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'closedpostboxes_reviews', 'a:0:{}'),
(26, 1, 'metaboxhidden_reviews', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BYbK/KIS4B3CT96WvWKg2PBJSs0r2q0', 'admin', 'admin@wp-bt.loc', '', '2020-02-07 23:00:09', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
