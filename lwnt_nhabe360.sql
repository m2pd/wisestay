-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2020 lúc 10:25 AM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lwnt_nhabe360`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_commentmeta`
--

CREATE TABLE `nhabe360_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_comments`
--

CREATE TABLE `nhabe360_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhabe360_comments`
--

INSERT INTO `nhabe360_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-12-28 07:27:17', '2020-12-28 07:27:17', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_links`
--

CREATE TABLE `nhabe360_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_options`
--

CREATE TABLE `nhabe360_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhabe360_options`
--

INSERT INTO `nhabe360_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/trustsoft/nhabe360', 'yes'),
(2, 'home', 'http://localhost/trustsoft/nhabe360', 'yes'),
(3, 'blogname', 'Nhà Bè 360', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nguyenhuutanphat.1207@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:54:\"loai_san_pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?loai_san_pham=$matches[1]&feed=$matches[2]\";s:49:\"loai_san_pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?loai_san_pham=$matches[1]&feed=$matches[2]\";s:30:\"loai_san_pham/([^/]+)/embed/?$\";s:46:\"index.php?loai_san_pham=$matches[1]&embed=true\";s:42:\"loai_san_pham/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?loai_san_pham=$matches[1]&paged=$matches[2]\";s:24:\"loai_san_pham/([^/]+)/?$\";s:35:\"index.php?loai_san_pham=$matches[1]\";s:46:\"danh-sach-san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"danh-sach-san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"danh-sach-san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"danh-sach-san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"danh-sach-san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"danh-sach-san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"danh-sach-san-pham/([^/]+)/embed/?$\";s:51:\"index.php?danh-sach-san-pham=$matches[1]&embed=true\";s:39:\"danh-sach-san-pham/([^/]+)/trackback/?$\";s:45:\"index.php?danh-sach-san-pham=$matches[1]&tb=1\";s:47:\"danh-sach-san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?danh-sach-san-pham=$matches[1]&paged=$matches[2]\";s:54:\"danh-sach-san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?danh-sach-san-pham=$matches[1]&cpage=$matches[2]\";s:43:\"danh-sach-san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?danh-sach-san-pham=$matches[1]&page=$matches[2]\";s:35:\"danh-sach-san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"danh-sach-san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"danh-sach-san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"danh-sach-san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"danh-sach-san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"danh-sach-san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'nhabe360', 'yes'),
(41, 'stylesheet', 'nhabe360', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1624692435', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'nhabe360_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'vi', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1609320441;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1609320475;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1609356441;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1609399638;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1609399679;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1609831639;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:1:{s:22:\"If6hwbx0WEjt8gIkwBt0Sw\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BVsDrHzFjPXLIMK3yCYj5kaxZFW4bk1\";s:10:\"created_at\";i:1609295992;}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1609313246;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_timeout_browser_2d6330f380f44ac20f3a02eed0958f66', '1609745253', 'no'),
(127, '_site_transient_browser_2d6330f380f44ac20f3a02eed0958f66', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"87.0.4280.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', '1609745254', 'no'),
(129, '_site_transient_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(146, 'finished_updating_comment_type', '1', 'yes'),
(148, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1609313249;s:7:\"checked\";a:2:{s:10:\"blankslate\";s:6:\"2019.1\";s:8:\"nhabe360\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:10:\"blankslate\";a:6:{s:5:\"theme\";s:10:\"blankslate\";s:11:\"new_version\";s:6:\"2019.1\";s:3:\"url\";s:40:\"https://wordpress.org/themes/blankslate/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/blankslate.2019.1.zip\";s:8:\"requires\";s:3:\"5.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(149, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609140588;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(150, 'current_theme', 'nhabe360', 'yes'),
(151, 'theme_mods_assets/..', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609140794;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(153, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'theme_mods_nhabe360', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:19;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(161, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"10\",\"critical\":\"0\"}', 'yes'),
(173, 'cptui_new_install', 'false', 'yes'),
(174, 'cptui_post_types', 'a:1:{s:18:\"danh-sach-san-pham\";a:30:{s:4:\"name\";s:18:\"danh-sach-san-pham\";s:5:\"label\";s:12:\"Sản phẩm\";s:14:\"singular_label\";s:12:\"Sản phẩm\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:1:\"5\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:15:\"dashicons-store\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:13:\"loai_san_pham\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:12:\"Sản phẩm\";s:9:\"all_items\";s:23:\"Tất cả sản phẩm\";s:7:\"add_new\";s:24:\"Thêm mới sản phẩm\";s:12:\"add_new_item\";s:24:\"Thêm mới sản phẩm\";s:9:\"edit_item\";s:26:\"Chỉnh sửa sản phẩm\";s:8:\"new_item\";s:18:\"Sản phẩm mới\";s:9:\"view_item\";s:16:\"Xem sản phẩm\";s:10:\"view_items\";s:16:\"Xem sản phẩm\";s:12:\"search_items\";s:24:\"Tìm kiếm sản phẩm\";s:9:\"not_found\";s:31:\"Không tìm thấy sản phẩm\";s:18:\"not_found_in_trash\";s:53:\"Không tim thấy sản phẩm nào trong thùng rác\";s:14:\"featured_image\";s:23:\"Hình ảnh nổi bật\";s:18:\"set_featured_image\";s:30:\"Đặt hình ảnh nổi bật\";s:21:\"remove_featured_image\";s:29:\"Xóa hỉnh ảnh nổi bật\";s:18:\"use_featured_image\";s:40:\"Sử dụng làm hình ảnh nổi bật\";s:16:\"insert_into_item\";s:23:\"Chèn vào sản phẩm\";s:21:\"uploaded_to_this_item\";s:33:\"Đã tải lên sản phẩm này\";s:17:\"filter_items_list\";s:29:\"Lọc danh sách sản phẩm\";s:21:\"items_list_navigation\";s:40:\"Điều hướng danh sách sản phẩm\";s:10:\"items_list\";s:23:\"Danh sách sản phẩm\";s:10:\"attributes\";s:32:\"Thêm thuộc tính sản phẩm\";s:14:\"item_published\";s:24:\"Sản phẩm đã đăng\";s:24:\"item_published_privately\";s:23:\"Sản phẩm riêng tư\";s:22:\"item_reverted_to_draft\";s:18:\"Sản phẩm nháp\";s:14:\"item_scheduled\";s:29:\"Sản phẩm đã lên lịch\";s:12:\"item_updated\";s:30:\"Đã cập nhật sản phẩm\";s:17:\"parent_item_colon\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(188, 'cptui_taxonomies', 'a:1:{s:13:\"loai_san_pham\";a:25:{s:4:\"name\";s:13:\"loai_san_pham\";s:5:\"label\";s:12:\"Phân loại\";s:14:\"singular_label\";s:12:\"Phân loại\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:18:\"danh-sach-san-pham\";}}}', 'yes'),
(238, 'category_children', 'a:0:{}', 'yes'),
(241, 'acf_version', '5.9.3', 'yes'),
(242, '_transient_timeout_acf_plugin_updates', '1609410293', 'no'),
(243, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";}}', 'no'),
(245, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(255, 'recovery_mode_email_last_sent', '1609295992', 'yes'),
(263, '_site_transient_timeout_theme_roots', '1609315048', 'no'),
(264, '_site_transient_theme_roots', 'a:2:{s:10:\"blankslate\";s:7:\"/themes\";s:8:\"nhabe360\";s:7:\"/themes\";}', 'no'),
(265, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1609313250;s:7:\"checked\";a:2:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.8.1\";}s:8:\"response\";a:1:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.0\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(267, 'loai_san_pham_children', 'a:3:{i:20;a:2:{i:0;i:11;i:1;i:14;}i:11;a:2:{i:0;i:12;i:1;i:13;}i:14;a:4:{i:0;i:15;i:1;i:16;i:2;i:17;i:3;i:18;}}', 'yes'),
(268, 'options_global_logo', '52', 'no'),
(269, '_options_global_logo', 'field_5fec33530db9a', 'no'),
(270, 'options_favicon', '56', 'no'),
(271, '_options_favicon', 'field_5fec336d0db9b', 'no'),
(272, 'options_logo_white', '55', 'no'),
(273, '_options_logo_white', 'field_5fec361bcc1a8', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_postmeta`
--

CREATE TABLE `nhabe360_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhabe360_postmeta`
--

INSERT INTO `nhabe360_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1609234069'),
(5, 3, '_wp_desired_post_slug', 'chinh-sach-bao-mat'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1609234069'),
(8, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(9, 7, '_edit_lock', '1609234141:1'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1609302632:1'),
(12, 10, '_edit_last', '1'),
(13, 10, '_edit_lock', '1609234120:1'),
(14, 12, '_edit_last', '1'),
(15, 12, '_edit_lock', '1609234165:1'),
(16, 1, '_wp_trash_meta_status', 'publish'),
(17, 1, '_wp_trash_meta_time', '1609234433'),
(18, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(19, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(20, 22, '_edit_last', '1'),
(21, 22, '_edit_lock', '1609237639:1'),
(22, 26, '_menu_item_type', 'custom'),
(23, 26, '_menu_item_menu_item_parent', '0'),
(24, 26, '_menu_item_object_id', '26'),
(25, 26, '_menu_item_object', 'custom'),
(26, 26, '_menu_item_target', ''),
(27, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 26, '_menu_item_xfn', ''),
(29, 26, '_menu_item_url', 'http://localhost/trustsoft/nhabe360/'),
(30, 26, '_menu_item_orphaned', '1609237784'),
(31, 27, '_menu_item_type', 'post_type'),
(32, 27, '_menu_item_menu_item_parent', '0'),
(33, 27, '_menu_item_object_id', '10'),
(34, 27, '_menu_item_object', 'page'),
(35, 27, '_menu_item_target', ''),
(36, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 27, '_menu_item_xfn', ''),
(38, 27, '_menu_item_url', ''),
(40, 28, '_menu_item_type', 'post_type'),
(41, 28, '_menu_item_menu_item_parent', '0'),
(42, 28, '_menu_item_object_id', '12'),
(43, 28, '_menu_item_object', 'page'),
(44, 28, '_menu_item_target', ''),
(45, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 28, '_menu_item_xfn', ''),
(47, 28, '_menu_item_url', ''),
(49, 29, '_menu_item_type', 'post_type'),
(50, 29, '_menu_item_menu_item_parent', '0'),
(51, 29, '_menu_item_object_id', '8'),
(52, 29, '_menu_item_object', 'page'),
(53, 29, '_menu_item_target', ''),
(54, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 29, '_menu_item_xfn', ''),
(56, 29, '_menu_item_url', ''),
(58, 30, '_menu_item_type', 'taxonomy'),
(59, 30, '_menu_item_menu_item_parent', '0'),
(60, 30, '_menu_item_object_id', '20'),
(61, 30, '_menu_item_object', 'loai_san_pham'),
(62, 30, '_menu_item_target', ''),
(63, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 30, '_menu_item_xfn', ''),
(65, 30, '_menu_item_url', ''),
(67, 31, '_menu_item_type', 'taxonomy'),
(68, 31, '_menu_item_menu_item_parent', '30'),
(69, 31, '_menu_item_object_id', '11'),
(70, 31, '_menu_item_object', 'loai_san_pham'),
(71, 31, '_menu_item_target', ''),
(72, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 31, '_menu_item_xfn', ''),
(74, 31, '_menu_item_url', ''),
(76, 32, '_menu_item_type', 'taxonomy'),
(77, 32, '_menu_item_menu_item_parent', '31'),
(78, 32, '_menu_item_object_id', '12'),
(79, 32, '_menu_item_object', 'loai_san_pham'),
(80, 32, '_menu_item_target', ''),
(81, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 32, '_menu_item_xfn', ''),
(83, 32, '_menu_item_url', ''),
(85, 33, '_menu_item_type', 'taxonomy'),
(86, 33, '_menu_item_menu_item_parent', '31'),
(87, 33, '_menu_item_object_id', '13'),
(88, 33, '_menu_item_object', 'loai_san_pham'),
(89, 33, '_menu_item_target', ''),
(90, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 33, '_menu_item_xfn', ''),
(92, 33, '_menu_item_url', ''),
(94, 34, '_menu_item_type', 'taxonomy'),
(95, 34, '_menu_item_menu_item_parent', '30'),
(96, 34, '_menu_item_object_id', '14'),
(97, 34, '_menu_item_object', 'loai_san_pham'),
(98, 34, '_menu_item_target', ''),
(99, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 34, '_menu_item_xfn', ''),
(101, 34, '_menu_item_url', ''),
(103, 35, '_menu_item_type', 'taxonomy'),
(104, 35, '_menu_item_menu_item_parent', '34'),
(105, 35, '_menu_item_object_id', '15'),
(106, 35, '_menu_item_object', 'loai_san_pham'),
(107, 35, '_menu_item_target', ''),
(108, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 35, '_menu_item_xfn', ''),
(110, 35, '_menu_item_url', ''),
(112, 36, '_menu_item_type', 'taxonomy'),
(113, 36, '_menu_item_menu_item_parent', '34'),
(114, 36, '_menu_item_object_id', '16'),
(115, 36, '_menu_item_object', 'loai_san_pham'),
(116, 36, '_menu_item_target', ''),
(117, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 36, '_menu_item_xfn', ''),
(119, 36, '_menu_item_url', ''),
(121, 37, '_menu_item_type', 'taxonomy'),
(122, 37, '_menu_item_menu_item_parent', '34'),
(123, 37, '_menu_item_object_id', '17'),
(124, 37, '_menu_item_object', 'loai_san_pham'),
(125, 37, '_menu_item_target', ''),
(126, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 37, '_menu_item_xfn', ''),
(128, 37, '_menu_item_url', ''),
(130, 38, '_menu_item_type', 'taxonomy'),
(131, 38, '_menu_item_menu_item_parent', '34'),
(132, 38, '_menu_item_object_id', '18'),
(133, 38, '_menu_item_object', 'loai_san_pham'),
(134, 38, '_menu_item_target', ''),
(135, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 38, '_menu_item_xfn', ''),
(137, 38, '_menu_item_url', ''),
(139, 39, '_edit_last', '1'),
(140, 39, '_edit_lock', '1609302313:1'),
(143, 8, 'content_layout_0_home_banner', '45'),
(144, 8, '_content_layout_0_home_banner', 'field_5febfd396f2c7'),
(145, 8, 'content_layout', 'a:1:{i:0;s:11:\"home_banner\";}'),
(146, 8, '_content_layout', 'field_5febfcf86f2c5'),
(147, 44, 'content_layout_0_home_banner', '43'),
(148, 44, '_content_layout_0_home_banner', 'field_5febfd396f2c7'),
(149, 44, 'content_layout', 'a:1:{i:0;s:11:\"home_banner\";}'),
(150, 44, '_content_layout', 'field_5febfcf86f2c5'),
(151, 45, '_wp_attached_file', '2020/12/banner-home-nha-be-360.jpg'),
(152, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1639;s:6:\"height\";i:1093;s:4:\"file\";s:34:\"2020/12/banner-home-nha-be-360.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"banner-home-nha-be-360-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"banner-home-nha-be-360-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"banner-home-nha-be-360-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:36:\"banner-home-nha-be-360-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 46, 'content_layout_0_home_banner', '45'),
(154, 46, '_content_layout_0_home_banner', 'field_5febfd396f2c7'),
(155, 46, 'content_layout', 'a:1:{i:0;s:11:\"home_banner\";}'),
(156, 46, '_content_layout', 'field_5febfcf86f2c5'),
(157, 48, '_edit_last', '1'),
(158, 48, '_edit_lock', '1609316296:1'),
(159, 52, '_wp_attached_file', '2020/12/nha-be-360-logo.png'),
(160, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:429;s:6:\"height\";i:60;s:4:\"file\";s:27:\"2020/12/nha-be-360-logo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"nha-be-360-logo-300x42.png\";s:5:\"width\";i:300;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"nha-be-360-logo-150x60.png\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 53, '_wp_attached_file', '2020/12/logo-dai-phat-group.png'),
(162, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1043;s:6:\"height\";i:426;s:4:\"file\";s:31:\"2020/12/logo-dai-phat-group.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"logo-dai-phat-group-300x123.png\";s:5:\"width\";i:300;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"logo-dai-phat-group-1024x418.png\";s:5:\"width\";i:1024;s:6:\"height\";i:418;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"logo-dai-phat-group-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(163, 55, '_wp_attached_file', '2020/12/Nha-be-360-white.png'),
(164, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:429;s:6:\"height\";i:60;s:4:\"file\";s:28:\"2020/12/Nha-be-360-white.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Nha-be-360-white-300x42.png\";s:5:\"width\";i:300;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Nha-be-360-white-150x60.png\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 56, '_wp_attached_file', '2020/12/favicon-nha-be-360.png'),
(166, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:128;s:6:\"height\";i:52;s:4:\"file\";s:30:\"2020/12/favicon-nha-be-360.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_posts`
--

CREATE TABLE `nhabe360_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhabe360_posts`
--

INSERT INTO `nhabe360_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-12-28 07:27:17', '2020-12-28 07:27:17', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2020-12-29 09:33:53', '2020-12-29 09:33:53', '', 0, 'http://localhost/trustsoft/nhabe360/?p=1', 0, 'post', '', 1),
(2, 1, '2020-12-28 07:27:17', '2020-12-28 07:27:17', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/trustsoft/nhabe360/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2020-12-29 09:27:49', '2020-12-29 09:27:49', '', 0, 'http://localhost/trustsoft/nhabe360/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-12-28 07:27:17', '2020-12-28 07:27:17', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/trustsoft/nhabe360.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'trash', 'closed', 'open', '', 'chinh-sach-bao-mat__trashed', '', '', '2020-12-29 09:27:49', '2020-12-29 09:27:49', '', 0, 'http://localhost/trustsoft/nhabe360/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-12-28 07:27:35', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-28 07:27:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?p=4', 0, 'post', '', 0),
(5, 1, '2020-12-29 09:27:49', '2020-12-29 09:27:49', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/trustsoft/nhabe360.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-12-29 09:27:49', '2020-12-29 09:27:49', '', 3, 'http://localhost/trustsoft/nhabe360/2020/12/29/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2020-12-29 09:27:49', '2020-12-29 09:27:49', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/trustsoft/nhabe360/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-12-29 09:27:49', '2020-12-29 09:27:49', '', 2, 'http://localhost/trustsoft/nhabe360/2020/12/29/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-12-29 09:27:55', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-29 09:27:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-12-29 09:29:11', '2020-12-29 09:29:11', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2020-12-30 04:27:56', '2020-12-30 04:27:56', '', 0, 'http://localhost/trustsoft/nhabe360/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-12-29 09:29:11', '2020-12-29 09:29:11', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-12-29 09:29:11', '2020-12-29 09:29:11', '', 8, 'http://localhost/trustsoft/nhabe360/2020/12/29/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-12-29 09:29:25', '2020-12-29 09:29:25', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2020-12-29 09:29:25', '2020-12-29 09:29:25', '', 0, 'http://localhost/trustsoft/nhabe360/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-12-29 09:29:25', '2020-12-29 09:29:25', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-12-29 09:29:25', '2020-12-29 09:29:25', '', 10, 'http://localhost/trustsoft/nhabe360/2020/12/29/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-12-29 09:31:17', '2020-12-29 09:31:17', '', 'Thông tin tổng hợp', '', 'publish', 'closed', 'closed', '', 'thong-tin-tong-hop', '', '', '2020-12-29 09:31:17', '2020-12-29 09:31:17', '', 0, 'http://localhost/trustsoft/nhabe360/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-12-29 09:31:17', '2020-12-29 09:31:17', '', 'Thông tin tổng hợp', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-12-29 09:31:17', '2020-12-29 09:31:17', '', 12, 'http://localhost/trustsoft/nhabe360/2020/12/29/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-12-29 09:32:31', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-29 09:32:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?p=14', 0, 'post', '', 0),
(15, 1, '2020-12-29 09:33:53', '2020-12-29 09:33:53', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-12-29 09:33:53', '2020-12-29 09:33:53', '', 1, 'http://localhost/trustsoft/nhabe360/2020/12/29/1-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-12-29 09:54:12', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-29 09:54:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?post_type=danh-sach-san-pham&p=16', 0, 'danh-sach-san-pham', '', 0),
(17, 1, '2020-12-29 10:00:56', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-29 10:00:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?post_type=danh-sach-san-pham&p=17', 0, 'danh-sach-san-pham', '', 0),
(18, 1, '2020-12-29 10:01:07', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-29 10:01:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?p=18', 0, 'post', '', 0),
(19, 1, '2020-12-29 10:06:50', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-29 10:06:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?post_type=loai-san-pham&p=19', 0, 'loai-san-pham', '', 0),
(20, 1, '2020-12-29 10:20:28', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-29 10:20:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?post_type=danh-sach-san-pham&p=20', 0, 'danh-sach-san-pham', '', 0),
(21, 1, '2020-12-29 10:22:38', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-29 10:22:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?post_type=danh-sach-san-pham&p=21', 0, 'danh-sach-san-pham', '', 0),
(22, 1, '2020-12-29 10:26:01', '2020-12-29 10:26:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"danh-sach-san-pham\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Thông tin sản phẩm', 'thong-tin-san-pham', 'publish', 'closed', 'closed', '', 'group_5feb042414293', '', '', '2020-12-29 10:29:31', '2020-12-29 10:29:31', '', 0, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2020-12-29 10:28:50', '2020-12-29 10:28:50', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Giá', 'gia', 'publish', 'closed', 'closed', '', 'field_5feb04cc69e80', '', '', '2020-12-29 10:28:50', '2020-12-29 10:28:50', '', 22, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
(24, 1, '2020-12-29 10:28:50', '2020-12-29 10:28:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Giá', 'price', 'publish', 'closed', 'closed', '', 'field_5feb04d869e81', '', '', '2020-12-29 10:28:50', '2020-12-29 10:28:50', '', 22, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field&p=24', 1, 'acf-field', '', 0),
(25, 1, '2020-12-29 10:29:01', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-12-29 10:29:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?post_type=danh-sach-san-pham&p=25', 0, 'danh-sach-san-pham', '', 0),
(26, 1, '2020-12-29 10:29:44', '0000-00-00 00:00:00', '', 'Trang chủ', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-12-29 10:29:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/trustsoft/nhabe360/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2020-12-29 10:30:39', '2020-12-29 10:30:39', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2020-12-30 01:27:48', '2020-12-30 01:27:48', '', 0, 'http://localhost/trustsoft/nhabe360/?p=27', 12, 'nav_menu_item', '', 0),
(28, 1, '2020-12-29 10:30:39', '2020-12-29 10:30:39', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-12-30 01:27:48', '2020-12-30 01:27:48', '', 0, 'http://localhost/trustsoft/nhabe360/?p=28', 11, 'nav_menu_item', '', 0),
(29, 1, '2020-12-29 10:30:39', '2020-12-29 10:30:39', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-12-30 01:27:47', '2020-12-30 01:27:47', '', 0, 'http://localhost/trustsoft/nhabe360/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2020-12-30 01:27:47', '2020-12-30 01:27:47', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2020-12-30 01:27:47', '2020-12-30 01:27:47', '', 0, 'http://localhost/trustsoft/nhabe360/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2020-12-30 01:27:47', '2020-12-30 01:27:47', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2020-12-30 01:27:47', '2020-12-30 01:27:47', '', 20, 'http://localhost/trustsoft/nhabe360/?p=31', 3, 'nav_menu_item', '', 0),
(32, 1, '2020-12-30 01:27:47', '2020-12-30 01:27:47', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2020-12-30 01:27:47', '2020-12-30 01:27:47', '', 11, 'http://localhost/trustsoft/nhabe360/?p=32', 4, 'nav_menu_item', '', 0),
(33, 1, '2020-12-30 01:27:47', '2020-12-30 01:27:47', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2020-12-30 01:27:47', '2020-12-30 01:27:47', '', 11, 'http://localhost/trustsoft/nhabe360/?p=33', 5, 'nav_menu_item', '', 0),
(34, 1, '2020-12-30 01:27:48', '2020-12-30 01:27:48', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2020-12-30 01:27:48', '2020-12-30 01:27:48', '', 20, 'http://localhost/trustsoft/nhabe360/?p=34', 6, 'nav_menu_item', '', 0),
(35, 1, '2020-12-30 01:27:48', '2020-12-30 01:27:48', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2020-12-30 01:27:48', '2020-12-30 01:27:48', '', 14, 'http://localhost/trustsoft/nhabe360/?p=35', 10, 'nav_menu_item', '', 0),
(36, 1, '2020-12-30 01:27:48', '2020-12-30 01:27:48', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2020-12-30 01:27:48', '2020-12-30 01:27:48', '', 14, 'http://localhost/trustsoft/nhabe360/?p=36', 7, 'nav_menu_item', '', 0),
(37, 1, '2020-12-30 01:27:48', '2020-12-30 01:27:48', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-12-30 01:27:48', '2020-12-30 01:27:48', '', 14, 'http://localhost/trustsoft/nhabe360/?p=37', 8, 'nav_menu_item', '', 0),
(38, 1, '2020-12-30 01:27:48', '2020-12-30 01:27:48', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2020-12-30 01:27:48', '2020-12-30 01:27:48', '', 14, 'http://localhost/trustsoft/nhabe360/?p=38', 9, 'nav_menu_item', '', 0),
(39, 1, '2020-12-30 04:08:38', '2020-12-30 04:08:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";}s:11:\"description\";s:0:\"\";}', 'Content Layout', 'content-layout', 'publish', 'closed', 'closed', '', 'group_5febfce85a55c', '', '', '2020-12-30 04:23:31', '2020-12-30 04:23:31', '', 0, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2020-12-30 04:08:38', '2020-12-30 04:08:38', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:1:{s:20:\"layout_5febfd013356c\";a:6:{s:3:\"key\";s:20:\"layout_5febfd013356c\";s:5:\"label\";s:11:\"Home Banner\";s:4:\"name\";s:11:\"home_banner\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:7:\"Add Row\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'Content Layout', 'content_layout', 'publish', 'closed', 'closed', '', 'field_5febfcf86f2c5', '', '', '2020-12-30 04:09:49', '2020-12-30 04:09:49', '', 39, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(41, 1, '2020-12-30 04:08:39', '2020-12-30 04:08:39', 'a:8:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5febfd013356c\";s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5febfd116f2c6', '', '', '2020-12-30 04:09:49', '2020-12-30 04:09:49', '', 40, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field&#038;p=41', 0, 'acf-field', '', 0),
(42, 1, '2020-12-30 04:08:39', '2020-12-30 04:08:39', 'a:16:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_5febfd013356c\";s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Home Banner', 'home_banner', 'publish', 'closed', 'closed', '', 'field_5febfd396f2c7', '', '', '2020-12-30 04:23:31', '2020-12-30 04:23:31', '', 40, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field&#038;p=42', 1, 'acf-field', '', 0),
(44, 1, '2020-12-30 04:19:45', '2020-12-30 04:19:45', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-12-30 04:19:45', '2020-12-30 04:19:45', '', 8, 'http://localhost/trustsoft/nhabe360/2020/12/30/8-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-12-30 04:27:50', '2020-12-30 04:27:50', '', 'banner-home-nha-be-360', '', 'inherit', 'open', 'closed', '', 'banner-home-nha-be-360', '', '', '2020-12-30 04:27:50', '2020-12-30 04:27:50', '', 8, 'http://localhost/trustsoft/nhabe360/wp-content/uploads/2020/12/banner-home-nha-be-360.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-12-30 04:27:56', '2020-12-30 04:27:56', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-12-30 04:27:56', '2020-12-30 04:27:56', '', 8, 'http://localhost/trustsoft/nhabe360/2020/12/30/8-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-12-30 04:32:46', '2020-12-30 04:32:46', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2020-12-30 04:32:46', '2020-12-30 04:32:46', '', 8, 'http://localhost/trustsoft/nhabe360/2020/12/30/8-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2020-12-30 08:00:00', '2020-12-30 08:00:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"global-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Thiết lập', 'thiet-lap', 'publish', 'closed', 'closed', '', 'group_5fec331e5d0f6', '', '', '2020-12-30 08:11:31', '2020-12-30 08:11:31', '', 0, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2020-12-30 08:00:00', '2020-12-30 08:00:00', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5fec332e0db99', '', '', '2020-12-30 08:00:00', '2020-12-30 08:00:00', '', 48, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2020-12-30 08:00:00', '2020-12-30 08:00:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'global_logo', 'publish', 'closed', 'closed', '', 'field_5fec33530db9a', '', '', '2020-12-30 08:02:18', '2020-12-30 08:02:18', '', 48, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field&#038;p=50', 1, 'acf-field', '', 0),
(51, 1, '2020-12-30 08:00:00', '2020-12-30 08:00:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Favicon', 'favicon', 'publish', 'closed', 'closed', '', 'field_5fec336d0db9b', '', '', '2020-12-30 08:11:31', '2020-12-30 08:11:31', '', 48, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field&#038;p=51', 3, 'acf-field', '', 0),
(52, 1, '2020-12-30 08:00:34', '2020-12-30 08:00:34', '', 'nha-be-360-logo', '', 'inherit', 'open', 'closed', '', 'nha-be-360-logo', '', '', '2020-12-30 08:00:34', '2020-12-30 08:00:34', '', 0, 'http://localhost/trustsoft/nhabe360/wp-content/uploads/2020/12/nha-be-360-logo.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2020-12-30 08:01:24', '2020-12-30 08:01:24', 'favicon', 'favicon', 'favicon', 'inherit', 'open', 'closed', '', 'logo-dai-phat-group', '', '', '2020-12-30 08:01:52', '2020-12-30 08:01:52', '', 0, 'http://localhost/trustsoft/nhabe360/wp-content/uploads/2020/12/logo-dai-phat-group.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2020-12-30 08:11:31', '2020-12-30 08:11:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo trắng', 'logo_white', 'publish', 'closed', 'closed', '', 'field_5fec361bcc1a8', '', '', '2020-12-30 08:11:31', '2020-12-30 08:11:31', '', 48, 'http://localhost/trustsoft/nhabe360/?post_type=acf-field&p=54', 2, 'acf-field', '', 0),
(55, 1, '2020-12-30 08:11:50', '2020-12-30 08:11:50', '', 'Nha-be-360-white', '', 'inherit', 'open', 'closed', '', 'nha-be-360-white', '', '', '2020-12-30 08:11:50', '2020-12-30 08:11:50', '', 0, 'http://localhost/trustsoft/nhabe360/wp-content/uploads/2020/12/Nha-be-360-white.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2020-12-30 08:20:50', '2020-12-30 08:20:50', '', 'favicon-nha-be-360', '', 'inherit', 'open', 'closed', '', 'favicon-nha-be-360', '', '', '2020-12-30 08:20:50', '2020-12-30 08:20:50', '', 0, 'http://localhost/trustsoft/nhabe360/wp-content/uploads/2020/12/favicon-nha-be-360.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_termmeta`
--

CREATE TABLE `nhabe360_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_terms`
--

CREATE TABLE `nhabe360_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhabe360_terms`
--

INSERT INTO `nhabe360_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(11, 'Đất', 'dat', 0),
(12, 'Đất nền', 'dat-nen', 0),
(13, 'Đất vườn', 'dat-vuon', 0),
(14, 'Nhà', 'nha', 0),
(15, 'Bán kho – Nhà xưởng', 'ban-kho-nha-xuong', 0),
(16, 'Biệt thự', 'biet-thu', 0),
(17, 'Nhà hẻm', 'nha-hem', 0),
(18, 'Nhà mặt tiền', 'nha-mat-tien', 0),
(19, 'Menu 1', 'menu-1', 0),
(20, 'Tất cả sản phẩm', 'tat-ca-san-pham', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_term_relationships`
--

CREATE TABLE `nhabe360_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhabe360_term_relationships`
--

INSERT INTO `nhabe360_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 19, 0),
(28, 19, 0),
(29, 19, 0),
(30, 19, 0),
(31, 19, 0),
(32, 19, 0),
(33, 19, 0),
(34, 19, 0),
(35, 19, 0),
(36, 19, 0),
(37, 19, 0),
(38, 19, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_term_taxonomy`
--

CREATE TABLE `nhabe360_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhabe360_term_taxonomy`
--

INSERT INTO `nhabe360_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(11, 11, 'loai_san_pham', '', 20, 0),
(12, 12, 'loai_san_pham', '', 11, 0),
(13, 13, 'loai_san_pham', '', 11, 0),
(14, 14, 'loai_san_pham', '', 20, 0),
(15, 15, 'loai_san_pham', '', 14, 0),
(16, 16, 'loai_san_pham', '', 14, 0),
(17, 17, 'loai_san_pham', '', 14, 0),
(18, 18, 'loai_san_pham', '', 14, 0),
(19, 19, 'nav_menu', '', 0, 12),
(20, 20, 'loai_san_pham', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_usermeta`
--

CREATE TABLE `nhabe360_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhabe360_usermeta`
--

INSERT INTO `nhabe360_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(12, 1, 'nhabe360_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'nhabe360_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"e70855c8c104586e87a21609c4f250dab5293bde1759a5f29fb7856a9d9113ca\";a:4:{s:10:\"expiration\";i:1609313251;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609140451;}s:64:\"bbadcffd6a599d605237d681ac460be0e8b4983e6c45bc7d4d51ebf480180321\";a:4:{s:10:\"expiration\";i:1609406772;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609233972;}s:64:\"4f04e8eaef08a5c65e2693d2bdf0bda5445eaf15f14997ded6848494de1a2f65\";a:4:{s:10:\"expiration\";i:1609464398;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1609291598;}}'),
(17, 1, 'nhabe360_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:32:\"add-post-type-danh-sach-san-pham\";i:1;s:12:\"add-post_tag\";}'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'nav_menu_recently_edited', '19'),
(25, 1, 'manageedit-acf-field-groupcolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(26, 1, 'nhabe360_user-settings', 'libraryContent=browse'),
(27, 1, 'nhabe360_user-settings-time', '1609301981');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhabe360_users`
--

CREATE TABLE `nhabe360_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhabe360_users`
--

INSERT INTO `nhabe360_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$B4W15NeNLpVFjs8tw6HVM1gragirMQ.', 'root', 'nguyenhuutanphat.1207@gmail.com', 'http://localhost/trustsoft/nhabe360', '2020-12-28 07:27:16', '', 0, 'root');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nhabe360_commentmeta`
--
ALTER TABLE `nhabe360_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `nhabe360_comments`
--
ALTER TABLE `nhabe360_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `nhabe360_links`
--
ALTER TABLE `nhabe360_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `nhabe360_options`
--
ALTER TABLE `nhabe360_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `nhabe360_postmeta`
--
ALTER TABLE `nhabe360_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `nhabe360_posts`
--
ALTER TABLE `nhabe360_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `nhabe360_termmeta`
--
ALTER TABLE `nhabe360_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `nhabe360_terms`
--
ALTER TABLE `nhabe360_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `nhabe360_term_relationships`
--
ALTER TABLE `nhabe360_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `nhabe360_term_taxonomy`
--
ALTER TABLE `nhabe360_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `nhabe360_usermeta`
--
ALTER TABLE `nhabe360_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `nhabe360_users`
--
ALTER TABLE `nhabe360_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `nhabe360_commentmeta`
--
ALTER TABLE `nhabe360_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhabe360_comments`
--
ALTER TABLE `nhabe360_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nhabe360_links`
--
ALTER TABLE `nhabe360_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhabe360_options`
--
ALTER TABLE `nhabe360_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT cho bảng `nhabe360_postmeta`
--
ALTER TABLE `nhabe360_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT cho bảng `nhabe360_posts`
--
ALTER TABLE `nhabe360_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `nhabe360_termmeta`
--
ALTER TABLE `nhabe360_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhabe360_terms`
--
ALTER TABLE `nhabe360_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nhabe360_term_taxonomy`
--
ALTER TABLE `nhabe360_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `nhabe360_usermeta`
--
ALTER TABLE `nhabe360_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `nhabe360_users`
--
ALTER TABLE `nhabe360_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
