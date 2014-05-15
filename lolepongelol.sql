-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2014 at 10:40 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lolepongelol`
--

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `gme_wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_comments`
--

CREATE TABLE IF NOT EXISTS `gme_wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `gme_wp_comments`
--

INSERT INTO `gme_wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2014-04-17 08:49:17', '2014-04-17 08:49:17', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_links`
--

CREATE TABLE IF NOT EXISTS `gme_wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_options`
--

CREATE TABLE IF NOT EXISTS `gme_wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `gme_wp_options`
--

INSERT INTO `gme_wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Projet_Web_CESI', 'yes'),
(2, 'blogname', 'LOLepongeLOL', 'yes'),
(3, 'blogdescription', 'Songe d&#039;une nuit d&#039;éponges', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'david.bourdet@vaicesi.fr', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/Projet_Web_CESI', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:2:{i:0;s:77:"C:\\xampp\\htdocs\\Projet_Web_CESI/wp-content/themes/html5blank-master/style.css";i:2;s:0:"";}', 'no'),
(44, 'template', 'html5blank-master', 'yes'),
(45, 'stylesheet', 'html5blank-master', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '26692', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '2', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26692', 'yes'),
(92, 'gme_wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:13:"widget-area-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"widget-area-2";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1400143763;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1400145280;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1400146827;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1400178300;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:3;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"3.9";s:7:"version";s:3:"3.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1400135692;s:15:"version_checked";s:5:"3.8.3";s:12:"translations";a:0:{}}', 'yes'),
(106, 'can_compress_scripts', '1', 'yes'),
(112, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1397726086;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(113, 'current_theme', 'HTML5 Blank', 'yes'),
(114, 'theme_mods_html5blank-master', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:11:"header-menu";i:0;s:12:"sidebar-menu";i:2;s:10:"extra-menu";i:0;}}', 'yes'),
(115, 'theme_switched', '', 'yes'),
(120, '_transient_timeout_plugin_slugs', '1400143527', 'no'),
(121, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(122, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1400099582', 'no'),
(123, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: Connection timed out after 10000 milliseconds</p></div><div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: Connection timed out after 10000 milliseconds</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(124, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(125, 'recently_activated', 'a:0:{}', 'yes'),
(141, '_site_transient_timeout_theme_roots', '1400137491', 'yes'),
(142, '_site_transient_theme_roots', 'a:4:{s:17:"html5blank-master";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(143, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1400135693;s:7:"checked";a:4:{s:17:"html5blank-master";s:5:"1.4.3";s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.1";s:3:"url";s:43:"https://wordpress.org/themes/twentyfourteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentyfourteen.1.1.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentythirteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentythirteen.1.2.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.4";s:3:"url";s:41:"https://wordpress.org/themes/twentytwelve";s:7:"package";s:58:"https://wordpress.org/themes/download/twentytwelve.1.4.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(144, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1400135694;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"2.6.0";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.0";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.0.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(145, '_transient_random_seed', '2d89483512921c6928ae02c2eb464feb', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `gme_wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `gme_wp_postmeta`
--

INSERT INTO `gme_wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1397746629:1'),
(4, 2, '_edit_lock', '1400141356:1'),
(5, 2, '_edit_last', '1'),
(6, 10, '_edit_last', '1'),
(7, 10, '_wp_page_template', 'default'),
(8, 10, '_edit_lock', '1400078796:1'),
(9, 12, '_edit_last', '1'),
(10, 12, '_wp_page_template', 'default'),
(11, 12, '_edit_lock', '1400056800:1'),
(12, 14, '_edit_last', '1'),
(13, 14, '_wp_page_template', 'default'),
(14, 14, '_edit_lock', '1400076646:1'),
(15, 4, '_wp_trash_meta_status', 'publish'),
(16, 4, '_wp_trash_meta_time', '1400057129'),
(17, 1, '_edit_lock', '1400071157:1'),
(18, 1, '_wp_trash_meta_status', 'publish'),
(19, 1, '_wp_trash_meta_time', '1400071276'),
(20, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(21, 10, '_wp_trash_meta_status', 'publish'),
(22, 10, '_wp_trash_meta_time', '1400078935'),
(23, 14, '_wp_trash_meta_status', 'publish'),
(24, 14, '_wp_trash_meta_time', '1400078935'),
(25, 12, '_wp_trash_meta_status', 'publish'),
(26, 12, '_wp_trash_meta_time', '1400078935'),
(27, 21, '_edit_last', '1'),
(28, 21, '_edit_lock', '1400138606:1'),
(29, 21, '_wp_page_template', 'default'),
(30, 21, '_wp_trash_meta_status', 'publish'),
(31, 21, '_wp_trash_meta_time', '1400138732'),
(32, 23, '_edit_last', '1'),
(33, 23, '_wp_page_template', 'default'),
(34, 23, '_edit_lock', '1400142653:1');

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_posts`
--

CREATE TABLE IF NOT EXISTS `gme_wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `gme_wp_posts`
--

INSERT INTO `gme_wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-04-17 08:49:17', '2014-04-17 08:49:17', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2014-05-14 13:41:16', '2014-05-14 12:41:16', '', 0, 'http://localhost/Projet_Web_CESI/?p=1', 0, 'post', '', 1),
(2, 1, '2014-04-17 08:49:17', '2014-04-17 08:49:17', 'Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.', 'Notre entreprise', '', 'publish', 'open', 'open', '', 'page-d-exemple', '', '', '2014-05-14 15:45:59', '2014-05-14 14:45:59', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=2', 0, 'page', '', 0),
(4, 1, '2014-04-17 10:50:01', '2014-04-17 09:50:01', 'Bulbasaur Lorem', 'Test', '', 'trash', 'closed', 'closed', '', 'test', '', '', '2014-05-14 09:45:29', '2014-05-14 08:45:29', '', 0, 'http://localhost/Projet_Web_CESI/?post_type=html5-blank&#038;p=4', 0, 'html5-blank', '', 0),
(6, 1, '2014-05-14 09:31:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-05-14 09:31:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-05-14 09:36:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-05-14 09:36:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet_Web_CESI/?p=7', 0, 'post', '', 0),
(8, 1, '2014-05-14 15:45:19', '2014-05-14 14:45:19', 'Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour', 'Notre entreprise', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2014-05-14 15:45:19', '2014-05-14 14:45:19', '', 2, 'http://localhost/Projet_Web_CESI/?p=8', 0, 'revision', '', 0),
(9, 1, '2014-05-14 09:40:28', '2014-05-14 08:40:28', 'Notre entreprise se spécialise dans la maintenance et la customisation de vos éponges préférées.', 'Accueil', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-05-14 09:40:28', '2014-05-14 08:40:28', '', 2, 'http://localhost/Projet_Web_CESI/?p=9', 0, 'revision', '', 0),
(10, 1, '2014-05-14 09:41:41', '2014-05-14 08:41:41', '', 'Boutique', '', 'trash', 'open', 'open', '', 'boutique', '', '', '2014-05-14 15:48:55', '2014-05-14 14:48:55', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=10', 0, 'page', '', 0),
(11, 1, '2014-05-14 09:41:41', '2014-05-14 08:41:41', '', 'Boutique', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-05-14 09:41:41', '2014-05-14 08:41:41', '', 10, 'http://localhost/Projet_Web_CESI/?p=11', 0, 'revision', '', 0),
(12, 1, '2014-05-14 09:41:53', '2014-05-14 08:41:53', '', 'Portfolio', '', 'trash', 'open', 'open', '', 'portfolio', '', '', '2014-05-14 15:48:55', '2014-05-14 14:48:55', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=12', 0, 'page', '', 0),
(13, 1, '2014-05-14 09:41:53', '2014-05-14 08:41:53', '', 'Portfolio', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-05-14 09:41:53', '2014-05-14 08:41:53', '', 12, 'http://localhost/Projet_Web_CESI/?p=13', 0, 'revision', '', 0),
(14, 1, '2014-05-14 09:42:01', '2014-05-14 08:42:01', '', 'Contact', '', 'trash', 'open', 'open', '', 'contact', '', '', '2014-05-14 15:48:55', '2014-05-14 14:48:55', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=14', 0, 'page', '', 0),
(15, 1, '2014-05-14 09:42:01', '2014-05-14 08:42:01', '', 'Contact', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2014-05-14 09:42:01', '2014-05-14 08:42:01', '', 14, 'http://localhost/Projet_Web_CESI/?p=15', 0, 'revision', '', 0),
(16, 1, '2014-05-14 09:43:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-05-14 09:43:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet_Web_CESI/?p=16', 0, 'post', '', 0),
(17, 1, '2014-05-14 13:41:16', '2014-05-14 12:41:16', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-05-14 13:41:16', '2014-05-14 12:41:16', '', 1, 'http://localhost/Projet_Web_CESI/?p=17', 0, 'revision', '', 0),
(18, 1, '2014-05-14 15:01:58', '2014-05-14 14:01:58', 'Notre entreprise se spécialise dans la maintenance et la customisation de vos éponges préférées.', '', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-05-14 15:01:58', '2014-05-14 14:01:58', '', 2, 'http://localhost/Projet_Web_CESI/?p=18', 0, 'revision', '', 0),
(19, 1, '2014-05-14 15:02:12', '2014-05-14 14:02:12', 'Notre entreprise se spécialise dans la maintenance et la customisation de vos éponges préférées.', 'Acceuil', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-05-14 15:02:12', '2014-05-14 14:02:12', '', 2, 'http://localhost/Projet_Web_CESI/?p=19', 0, 'revision', '', 0),
(20, 1, '2014-05-14 15:45:59', '2014-05-14 14:45:59', 'Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.', 'Notre entreprise', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-05-14 15:45:59', '2014-05-14 14:45:59', '', 2, 'http://localhost/Projet_Web_CESI/?p=20', 0, 'revision', '', 0),
(21, 1, '2014-05-15 08:24:47', '2014-05-15 07:24:47', 'test', 'Nos produits', '', 'trash', 'open', 'open', '', 'nos-produits', '', '', '2014-05-15 08:25:32', '2014-05-15 07:25:32', '', 2, 'http://localhost/Projet_Web_CESI/?page_id=21', 0, 'page', '', 0),
(22, 1, '2014-05-15 08:24:47', '2014-05-15 07:24:47', 'test', 'Nos produits', '', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2014-05-15 08:24:47', '2014-05-15 07:24:47', '', 21, 'http://localhost/Projet_Web_CESI/?p=22', 0, 'revision', '', 0),
(23, 1, '2014-05-15 09:30:53', '2014-05-15 08:30:53', '', 'Actualités', '', 'publish', 'closed', 'open', '', 'actualites', '', '', '2014-05-15 09:30:53', '2014-05-15 08:30:53', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=23', 0, 'page', '', 0),
(24, 1, '2014-05-15 09:30:53', '2014-05-15 08:30:53', '', 'Actualités', '', 'inherit', 'closed', 'open', '', '23-revision-v1', '', '', '2014-05-15 09:30:53', '2014-05-15 08:30:53', '', 23, 'http://localhost/Projet_Web_CESI/?p=24', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_terms`
--

CREATE TABLE IF NOT EXISTS `gme_wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gme_wp_terms`
--

INSERT INTO `gme_wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Test', 'test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `gme_wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gme_wp_term_relationships`
--

INSERT INTO `gme_wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `gme_wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `gme_wp_term_taxonomy`
--

INSERT INTO `gme_wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `gme_wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `gme_wp_usermeta`
--

INSERT INTO `gme_wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'gme_wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'gme_wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'gme_wp_dashboard_quick_press_last_post_id', '16'),
(15, 1, 'gme_wp_user-settings', 'editor=tinymce'),
(16, 1, 'gme_wp_user-settings-time', '1400076964'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:15:"add-html5-blank";i:2;s:12:"add-post_tag";}'),
(19, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `gme_wp_users`
--

CREATE TABLE IF NOT EXISTS `gme_wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `gme_wp_users`
--

INSERT INTO `gme_wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bh52IdcM1PGd4vOaHHsvNFDbO4fySr.', 'admin', 'david.bourdet@vaicesi.fr', '', '2014-04-17 08:49:17', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
