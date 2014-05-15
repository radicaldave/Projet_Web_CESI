-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2014 at 03:44 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=170 ;

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
(9, 'require_name_email', '', 'yes'),
(10, 'comments_notify', '', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '1', 'yes'),
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
(29, 'moderation_notify', '', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:1:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
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
(46, 'comment_whitelist', '', 'yes'),
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
(75, 'thread_comments', '', 'yes'),
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
(87, 'page_for_posts', '23', 'yes'),
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
(99, 'cron', 'a:5:{i:1400178300;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1400186963;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1400231680;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1400233227;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-3.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"3.9.1";s:7:"version";s:5:"3.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:3;O:8:"stdClass":10:{s:8:"response";s:10:"autoupdate";s:8:"download";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/fr_FR/wordpress-3.9.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"3.9";s:7:"version";s:3:"3.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1400154775;s:15:"version_checked";s:5:"3.8.3";s:12:"translations";a:0:{}}', 'yes'),
(106, 'can_compress_scripts', '1', 'yes'),
(112, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1397726086;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(113, 'current_theme', 'HTML5 Blank', 'yes'),
(114, 'theme_mods_html5blank-master', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:10:"extra-menu";i:0;}}', 'yes'),
(115, 'theme_switched', '', 'yes'),
(120, '_transient_timeout_plugin_slugs', '1400241184', 'no'),
(121, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";}', 'no'),
(124, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(125, 'recently_activated', 'a:0:{}', 'yes'),
(143, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1400160925;s:7:"checked";a:4:{s:17:"html5blank-master";s:5:"1.4.3";s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.1";s:3:"url";s:43:"https://wordpress.org/themes/twentyfourteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentyfourteen.1.1.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentythirteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentythirteen.1.2.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.4";s:3:"url";s:41:"https://wordpress.org/themes/twentytwelve";s:7:"package";s:58:"https://wordpress.org/themes/download/twentytwelve.1.4.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(145, '_transient_random_seed', '2d89483512921c6928ae02c2eb464feb', 'yes'),
(159, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1400165534', 'yes'),
(160, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"3898";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"2456";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"2344";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"1930";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"1856";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1583";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1329";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1325";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1310";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1260";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1225";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1121";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1000";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:3:"982";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:3:"974";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:3:"950";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:3:"844";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:3:"821";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:3:"780";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"722";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"686";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"681";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"678";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"623";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"615";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"595";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"572";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"570";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"541";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"539";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"530";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"522";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"506";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"505";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"471";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"458";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"453";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"452";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"436";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"432";}}', 'yes'),
(163, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1400154783;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"2.6.0";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"3.8.1";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.0";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.0.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(164, 'wpcf7', 'a:1:{s:7:"version";s:5:"3.8.1";}', 'yes'),
(166, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1400199087', 'no'),
(167, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: Connection timed out after 10000 milliseconds</p></div><div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: Connection timed out after 10000 milliseconds</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(168, '_site_transient_timeout_theme_roots', '1400162724', 'yes'),
(169, '_site_transient_theme_roots', 'a:4:{s:17:"html5blank-master";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `gme_wp_postmeta`
--

INSERT INTO `gme_wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1397746629:1'),
(4, 2, '_edit_lock', '1400160792:1'),
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
(34, 23, '_edit_lock', '1400155742:1'),
(44, 26, '_menu_item_type', 'post_type'),
(45, 26, '_menu_item_menu_item_parent', '0'),
(46, 26, '_menu_item_object_id', '2'),
(47, 26, '_menu_item_object', 'page'),
(48, 26, '_menu_item_target', ''),
(49, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 26, '_menu_item_xfn', ''),
(51, 26, '_menu_item_url', ''),
(53, 27, '_edit_last', '1'),
(54, 27, '_edit_lock', '1400158131:1'),
(55, 27, '_wp_page_template', 'default'),
(56, 29, '_menu_item_type', 'post_type'),
(57, 29, '_menu_item_menu_item_parent', '0'),
(58, 29, '_menu_item_object_id', '27'),
(59, 29, '_menu_item_object', 'page'),
(60, 29, '_menu_item_target', ''),
(61, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 29, '_menu_item_xfn', ''),
(63, 29, '_menu_item_url', ''),
(65, 30, '_edit_last', '1'),
(66, 30, '_wp_page_template', 'default'),
(67, 30, '_edit_lock', '1400161366:1'),
(68, 32, '_menu_item_type', 'post_type'),
(69, 32, '_menu_item_menu_item_parent', '0'),
(70, 32, '_menu_item_object_id', '30'),
(71, 32, '_menu_item_object', 'page'),
(72, 32, '_menu_item_target', ''),
(73, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 32, '_menu_item_xfn', ''),
(75, 32, '_menu_item_url', ''),
(77, 35, '_wp_attached_file', '2014/05/creation_1.jpg'),
(78, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:22:"2014/05/creation_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"creation_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"creation_1-250x187.jpg";s:5:"width";i:250;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:21:"creation_1-120x90.jpg";s:5:"width";i:120;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:22:"creation_1-400x200.jpg";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(79, 40, '_wp_attached_file', '2014/05/1.png'),
(80, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:460;s:6:"height";i:460;s:4:"file";s:13:"2014/05/1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"1-250x250.png";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:5:"small";a:4:{s:4:"file";s:13:"1-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}s:11:"custom-size";a:4:{s:4:"file";s:13:"1-460x200.png";s:5:"width";i:460;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(81, 41, '_wp_attached_file', '2014/05/2.jpg'),
(82, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:195;s:6:"height";i:195;s:4:"file";s:13:"2014/05/2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:13:"2-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(83, 42, '_wp_attached_file', '2014/05/3.jpg'),
(84, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:260;s:4:"file";s:13:"2014/05/3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-250x185.jpg";s:5:"width";i:250;s:6:"height";i:185;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:12:"3-120x89.jpg";s:5:"width";i:120;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:13:"3-350x200.jpg";s:5:"width";i:350;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(85, 43, '_wp_attached_file', '2014/05/4.jpg'),
(86, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:13:"2014/05/4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"4-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:13:"4-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:13:"4-400x200.jpg";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(87, 44, '_wp_attached_file', '2014/05/5.jpg'),
(88, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:13:"2014/05/5.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:13:"5-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:13:"5-400x200.jpg";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(89, 45, '_wp_attached_file', '2014/05/6.jpg'),
(90, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:398;s:4:"file";s:13:"2014/05/6.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"6-250x165.jpg";s:5:"width";i:250;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:12:"6-120x79.jpg";s:5:"width";i:120;s:6:"height";i:79;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:13:"6-600x200.jpg";s:5:"width";i:600;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5;s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D5000";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1348144896;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"38";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";}}'),
(91, 46, '_wp_attached_file', '2014/05/7.jpg'),
(92, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:389;s:4:"file";s:13:"2014/05/7.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"7-250x162.jpg";s:5:"width";i:250;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:12:"7-120x77.jpg";s:5:"width";i:120;s:6:"height";i:77;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:13:"7-600x200.jpg";s:5:"width";i:600;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(93, 47, '_wp_attached_file', '2014/05/afro-sponge1.jpg'),
(94, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:636;s:6:"height";i:315;s:4:"file";s:24:"2014/05/afro-sponge1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"afro-sponge1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"afro-sponge1-250x123.jpg";s:5:"width";i:250;s:6:"height";i:123;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:23:"afro-sponge1-120x59.jpg";s:5:"width";i:120;s:6:"height";i:59;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:24:"afro-sponge1-636x200.jpg";s:5:"width";i:636;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(95, 48, '_wp_attached_file', '2014/05/mes_filles.jpg'),
(96, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:22:"2014/05/mes_filles.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"mes_filles-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"mes_filles-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:22:"mes_filles-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:22:"mes_filles-400x200.jpg";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(97, 55, '_wp_attached_file', '2014/05/030172045790C.jpg'),
(98, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:350;s:6:"height";i:350;s:4:"file";s:25:"2014/05/030172045790C.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"030172045790C-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"030172045790C-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:5:"small";a:4:{s:4:"file";s:25:"030172045790C-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:11:"custom-size";a:4:{s:4:"file";s:25:"030172045790C-350x200.jpg";s:5:"width";i:350;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:22;s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D100";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1156763093;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"120";s:3:"iso";i:0;s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(99, 64, '_form', '<p style = "text-align:center">Votre nom (obligatoire)<br />\n    [text* your-name] </p>\n\n<p style = "text-align:center">Votre email (obligatoire)<br />\n    [email* your-email] </p>\n\n<p style = "text-align:center">Sujet<br />\n    [text your-subject] </p>\n\n<p style = "text-align:center">Votre message<br />\n    [textarea your-message] </p>\n\n<p style = "text-align:center">[submit "Envoyer"]</p>'),
(100, 64, '_mail', 'a:7:{s:7:"subject";s:12:"LOLepongeLOL";s:6:"sender";s:27:"LOLepongeLOL LOL@eponge.lol";s:4:"body";s:199:"De : [your-name] <[your-email]>\nSujet : [your-subject]\n\nCorps du message :\n[your-message]\n\n--\nCet email a été envoyé via le formulaire de contact de LOLepongeLOL (http://localhost/Projet_Web_CESI)";s:9:"recipient";s:24:"david.bourdet@viacesi.fr";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;}'),
(101, 64, '_mail_2', 'a:8:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:26:"[your-name] <[your-email]>";s:4:"body";s:143:"Corps du message :\n[your-message]\n\n--\nCet email a été envoyé via le formulaire de contact de LOLepongeLOL (http://localhost/Projet_Web_CESI)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:0:"";s:11:"attachments";s:0:"";s:8:"use_html";b:0;}'),
(102, 64, '_messages', 'a:21:{s:12:"mail_sent_ok";s:42:"Votre message a bien été envoyé. Merci.";s:12:"mail_sent_ng";s:116:"Erreur lors de l''envoi du message. Veuillez réessayer plus tard ou contacter l''administrateur d''une autre manière.";s:16:"validation_error";s:76:"Erreur de validation. Veuillez vérifier les champs et soumettre à nouveau.";s:4:"spam";s:116:"Erreur lors de l''envoi du message. Veuillez réessayer plus tard ou contacter l''administrateur d''une autre manière.";s:12:"accept_terms";s:61:"Merci de bien vouloir accepter les conditions pour continuer.";s:16:"invalid_required";s:38:"Veuillez remplir le champ obligatoire.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:14:"invalid_number";s:37:"Le format numérique semble invalide.";s:16:"number_too_small";s:25:"Ce nombre est trop petit.";s:16:"number_too_large";s:25:"Ce nombre est trop grand.";s:13:"invalid_email";s:32:"L''adresse email semble invalide.";s:11:"invalid_url";s:22:"L''URL semble invalide.";s:11:"invalid_tel";s:42:"Le numéro de téléphone semble invalide.";s:23:"quiz_answer_not_correct";s:30:"Votre réponse est incorrecte.";s:12:"invalid_date";s:34:"Le format de date semble invalide.";s:14:"date_too_early";s:25:"Cette date est trop tôt.";s:13:"date_too_late";s:25:"Cette date est trop tard.";s:13:"upload_failed";s:39:"Impossible de télécharger le fichier.";s:24:"upload_file_type_invalid";s:39:"Ce type de fichier n''est pas autorisé.";s:21:"upload_file_too_large";s:31:"Ce fichier est trop volumineux.";s:23:"upload_failed_php_error";s:66:"Impossible de mettre en ligne le fichier. Une erreur est survenue.";}'),
(103, 64, '_additional_settings', ''),
(104, 64, '_locale', 'fr_FR'),
(105, 66, '_edit_last', '1'),
(106, 66, '_edit_lock', '1400155530:1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `gme_wp_posts`
--

INSERT INTO `gme_wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-04-17 08:49:17', '2014-04-17 08:49:17', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2014-05-14 13:41:16', '2014-05-14 12:41:16', '', 0, 'http://localhost/Projet_Web_CESI/?p=1', 0, 'post', '', 1),
(2, 1, '2014-04-17 08:49:17', '2014-04-17 08:49:17', '<p style="text-align: center">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.</p>\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>\r\n\r\n\r\n<p style="text-align: center"> Voici nos partenaires :</p>\r\n\r\n<li><a href="http://www.spontex.fr/">Personnalisation d’éponges</a></li>\r\n<li><a href="http://www.nickelodeon.fr/tv/emission/bob-eponge/">Eponges qui claquent sa mère</a></li>\r\n<li><a href="https://www.facebook.com/mrpropre">Avoir l''air cool en faisant la vaiselle</a></li>\r\n<li><a href="http://www.swiffer.com/">Eponge SWAG YOLO</a></li>\r\n', 'Notre entreprise', '', 'publish', 'open', 'open', '', 'page-d-exemple', '', '', '2014-05-15 14:23:34', '2014-05-15 13:23:34', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=2', 0, 'page', '', 0),
(4, 1, '2014-04-17 10:50:01', '2014-04-17 09:50:01', 'Bulbasaur Lorem', 'Test', '', 'trash', 'closed', 'closed', '', 'test', '', '', '2014-05-14 09:45:29', '2014-05-14 08:45:29', '', 0, 'http://localhost/Projet_Web_CESI/?post_type=html5-blank&#038;p=4', 0, 'html5-blank', '', 0),
(6, 1, '2014-05-14 09:31:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-05-14 09:31:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-05-14 09:36:57', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-05-14 09:36:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/Projet_Web_CESI/?p=7', 0, 'post', '', 0),
(8, 1, '2014-05-15 14:19:00', '2014-05-15 13:19:00', '<p style="text-align: center">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\nSon siège social se situe à Bikini Bottom.</p>\n\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>\n\n\n<p style="text-align: center"> Voici nos partenaires :</p>\n\n<li><a href="http://www.spontex.fr/">Personnalisation d’éponges</a></li>\n<li><a href="http://www.nickelodeon.fr/tv/emission/bob-eponge/">Eponges qui claquent sa mère</a></li>\n<li><a href="https://www.facebook.com/mrpropre">Avoir l''air cool en faisant la vaiselle</a></li>\n<li><a href="http://www.spontex.fr/">Eponge SWAG YOLO</a></li>\n', 'Notre entreprise', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2014-05-15 14:19:00', '2014-05-15 13:19:00', '', 2, 'http://localhost/Projet_Web_CESI/?p=8', 0, 'revision', '', 0),
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
(24, 1, '2014-05-15 09:30:53', '2014-05-15 08:30:53', '', 'Actualités', '', 'inherit', 'closed', 'open', '', '23-revision-v1', '', '', '2014-05-15 09:30:53', '2014-05-15 08:30:53', '', 23, 'http://localhost/Projet_Web_CESI/?p=24', 0, 'revision', '', 0),
(26, 1, '2014-05-15 09:54:15', '2014-05-15 08:54:15', ' ', '', '', 'publish', 'closed', 'open', '', '26', '', '', '2014-05-15 13:12:58', '2014-05-15 12:12:58', '', 0, 'http://localhost/Projet_Web_CESI/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2014-05-15 10:17:18', '2014-05-15 09:17:18', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a><a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg"><img class="alignnone size-medium wp-image-47" alt="afro-sponge1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1-250x123.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg"><img class="alignnone size-medium wp-image-46" alt="7" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7-250x162.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg"><img class="alignnone size-medium wp-image-48" alt="mes_filles" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles-250x250.jpg" /></a>\r\n\r\n&nbsp;\r\n\r\nQuelques personnes nous remercient :\r\n<div>\r\n<p style="text-align: left;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - <em>Le Monde</em></p>\r\n<p style="text-align: center;">« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - <em>Gérard Depardieu</em></p>\r\n<p style="text-align: right;">« Je n’ai enfin plus honte de montrer mes éponges » - <em>Geneviève de Fontenay</em></p>\r\n<p style="text-align: left;">« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - <em>Nicolas Hulot</em></p>\r\n<p style="text-align: center;">« Je les déteste. » - <em>Mr. Propre</em></p>\r\n<p style="text-align: right;">« Hodor » - <em>Hodor</em></p>\r\n</div>', 'Portfolio', '', 'publish', 'closed', 'open', '', 'portfolio-2', '', '', '2014-05-15 12:45:52', '2014-05-15 11:45:52', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=27', 0, 'page', '', 0),
(28, 1, '2014-05-15 10:17:18', '2014-05-15 09:17:18', '', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:17:18', '2014-05-15 09:17:18', '', 27, 'http://localhost/Projet_Web_CESI/?p=28', 0, 'revision', '', 0),
(29, 1, '2014-05-15 10:17:44', '2014-05-15 09:17:44', ' ', '', '', 'publish', 'closed', 'open', '', '29', '', '', '2014-05-15 13:12:58', '2014-05-15 12:12:58', '', 0, 'http://localhost/Projet_Web_CESI/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2014-05-15 10:18:55', '2014-05-15 09:18:55', '<p style="text-align: center;">Afin de nous contacter, veuillez remplir le formulaire ci-dessous :</p>\r\n&nbsp;\r\n\r\n[contact-form-7 id="64" title="Formulaire de contact 1"]', 'Contacts', '', 'publish', 'closed', 'open', '', 'contacts', '', '', '2014-05-15 14:42:45', '2014-05-15 13:42:45', '', 0, 'http://localhost/Projet_Web_CESI/?page_id=30', 0, 'page', '', 0),
(31, 1, '2014-05-15 10:18:55', '2014-05-15 09:18:55', '', 'Contacts', '', 'inherit', 'closed', 'open', '', '30-revision-v1', '', '', '2014-05-15 10:18:55', '2014-05-15 09:18:55', '', 30, 'http://localhost/Projet_Web_CESI/?p=31', 0, 'revision', '', 0),
(32, 1, '2014-05-15 10:19:16', '2014-05-15 09:19:16', ' ', '', '', 'publish', 'closed', 'open', '', '32', '', '', '2014-05-15 13:12:58', '2014-05-15 12:12:58', '', 0, 'http://localhost/Projet_Web_CESI/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2014-05-15 10:23:24', '2014-05-15 09:23:24', 'Retrouvez quelques unes de nos créations : \r\n\r\n<img src="img/creation_1.jpg" alt="" />\r\n\r\n&nbsp;\r\n\r\n- Personnalisation de l’éponge fétiche de Michael Jackson en forme d’enfant en 2002 - « Les éponges les plus réussies et drôles depuis Bob l’éponge » Le Monde « Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » Gérard Depardieu « Je n’ai enfin plus honte de montrer mes éponges » Geneviève de Fontenay « Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » Nicolas Hulot « Je les déteste. » Mr. Propre « Hodor » Hodor - Personnalisation de l’éponge fétiche de Michael Jackson en forme d’enfant en 2002 - « Les éponges les plus réussies et drôles depuis Bob l’éponge » Le Monde « Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » Gérard Depardieu « Je n’ai enfin plus honte de montrer mes éponges » Geneviève de Fontenay « Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » Nicolas Hulot « Je les déteste. » Mr. Propre « Hodor » Hodor', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:23:24', '2014-05-15 09:23:24', '', 27, 'http://localhost/Projet_Web_CESI/?p=33', 0, 'revision', '', 0),
(34, 1, '2014-05-15 10:23:52', '2014-05-15 09:23:52', 'Retrouvez quelques unes de nos créations : \r\n\r\n<img src="/img/creation_1.jpg" alt="" />\r\n\r\n&nbsp;\r\n\r\n- Personnalisation de l’éponge fétiche de Michael Jackson en forme d’enfant en 2002 - « Les éponges les plus réussies et drôles depuis Bob l’éponge » Le Monde « Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » Gérard Depardieu « Je n’ai enfin plus honte de montrer mes éponges » Geneviève de Fontenay « Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » Nicolas Hulot « Je les déteste. » Mr. Propre « Hodor » Hodor - Personnalisation de l’éponge fétiche de Michael Jackson en forme d’enfant en 2002 - « Les éponges les plus réussies et drôles depuis Bob l’éponge » Le Monde « Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » Gérard Depardieu « Je n’ai enfin plus honte de montrer mes éponges » Geneviève de Fontenay « Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » Nicolas Hulot « Je les déteste. » Mr. Propre « Hodor » Hodor', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:23:52', '2014-05-15 09:23:52', '', 27, 'http://localhost/Projet_Web_CESI/?p=34', 0, 'revision', '', 0),
(35, 1, '2014-05-15 10:24:03', '2014-05-15 09:24:03', '', 'creation_1', '', 'inherit', 'closed', 'open', '', 'creation_1', '', '', '2014-05-15 10:24:03', '2014-05-15 09:24:03', '', 27, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2014-05-15 10:24:55', '2014-05-15 09:24:55', 'Retrouvez quelques unes de nos créations : \r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" alt="creation_1" class="alignnone size-medium wp-image-35" /></a>\r\n\r\n&nbsp;\r\n\r\n- Personnalisation de l’éponge fétiche de Michael Jackson en forme d’enfant en 2002 - « Les éponges les plus réussies et drôles depuis Bob l’éponge » Le Monde « Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » Gérard Depardieu « Je n’ai enfin plus honte de montrer mes éponges » Geneviève de Fontenay « Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » Nicolas Hulot « Je les déteste. » Mr. Propre « Hodor » Hodor - Personnalisation de l’éponge fétiche de Michael Jackson en forme d’enfant en 2002 - « Les éponges les plus réussies et drôles depuis Bob l’éponge » Le Monde « Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » Gérard Depardieu « Je n’ai enfin plus honte de montrer mes éponges » Geneviève de Fontenay « Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » Nicolas Hulot « Je les déteste. » Mr. Propre « Hodor » Hodor', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:24:55', '2014-05-15 09:24:55', '', 27, 'http://localhost/Projet_Web_CESI/?p=36', 0, 'revision', '', 0),
(37, 1, '2014-05-15 10:54:45', '2014-05-15 09:54:45', 'Retrouvez quelques unes de nos créations :\n\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a><a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg"><img class="alignnone size-medium wp-image-47" alt="afro-sponge1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1-250x123.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg"><img class="alignnone size-medium wp-image-46" alt="7" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7-250x162.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg"><img class="alignnone size-medium wp-image-48" alt="mes_filles" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles-250x250.jpg" /></a>\n\n&nbsp;\n\nQuelques personnes nous remercient :\n<p style="text-align: left;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - <em>Le Monde</em></p>\n<p style="text-align: left;">« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - <em>Gérard Depardieu</em></p>\n<p style="text-align: left;">« Je n’ai enfin plus honte de montrer mes éponges » - <em>Geneviève de Fontenay</em></p>\n<p style="text-align: left;">« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - <em>Nicolas Hulot</em></p>\n<p style="text-align: left;">« Je les déteste. » - <em>Mr. Propre</em></p>\n<p style="text-align: right;">« Hodor » - <em>Hodor</em></p>', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-autosave-v1', '', '', '2014-05-15 10:54:45', '2014-05-15 09:54:45', '', 27, 'http://localhost/Projet_Web_CESI/?p=37', 0, 'revision', '', 0),
(38, 1, '2014-05-15 10:31:09', '2014-05-15 09:31:09', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a>\r\n\r\n&nbsp;\r\n\r\n- Personnalisation de l’éponge fétiche de Michael Jackson en forme d’enfant en 2002\r\n\r\nQuelques personnes nous remercient :\r\n\r\n« Les éponges les plus réussies et drôles depuis Bob l’éponge » - Le Monde\r\n« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - Gérard Depardieu \r\n« Je n’ai enfin plus honte de montrer mes éponges » - Geneviève de Fontenay \r\n« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - Nicolas Hulot \r\n« Je les déteste. » - Mr. Propre \r\n« Hodor » - Hodor', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:31:09', '2014-05-15 09:31:09', '', 27, 'http://localhost/Projet_Web_CESI/?p=38', 0, 'revision', '', 0),
(39, 1, '2014-05-15 10:47:52', '2014-05-15 09:47:52', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a>\r\n\r\n&nbsp;\r\n\r\nQuelques personnes nous remercient :\r\n<p style="text-align: center;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - Le Monde\r\n« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - Gérard Depardieu\r\n« Je n’ai enfin plus honte de montrer mes éponges » - Geneviève de Fontenay\r\n« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - Nicolas Hulot\r\n« Je les déteste. » - Mr. Propre\r\n« Hodor » - Hodor</p>', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:47:52', '2014-05-15 09:47:52', '', 27, 'http://localhost/Projet_Web_CESI/?p=39', 0, 'revision', '', 0),
(40, 1, '2014-05-15 10:48:19', '2014-05-15 09:48:19', '', '1', '', 'inherit', 'closed', 'open', '', '1', '', '', '2014-05-15 10:48:19', '2014-05-15 09:48:19', '', 27, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2014-05-15 10:48:20', '2014-05-15 09:48:20', '', '2', '', 'inherit', 'closed', 'open', '', '2', '', '', '2014-05-15 10:48:20', '2014-05-15 09:48:20', '', 0, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2014-05-15 10:48:20', '2014-05-15 09:48:20', '', '3', '', 'inherit', 'closed', 'open', '', '3', '', '', '2014-05-15 10:48:20', '2014-05-15 09:48:20', '', 0, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2014-05-15 10:48:20', '2014-05-15 09:48:20', '', '4', '', 'inherit', 'closed', 'open', '', '4', '', '', '2014-05-15 10:48:20', '2014-05-15 09:48:20', '', 0, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2014-05-15 10:48:21', '2014-05-15 09:48:21', '', '5', '', 'inherit', 'closed', 'open', '', '5', '', '', '2014-05-15 10:48:21', '2014-05-15 09:48:21', '', 27, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2014-05-15 10:48:21', '2014-05-15 09:48:21', '', '6', '', 'inherit', 'closed', 'open', '', '6', '', '', '2014-05-15 10:48:21', '2014-05-15 09:48:21', '', 0, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2014-05-15 10:48:22', '2014-05-15 09:48:22', '', '7', '', 'inherit', 'closed', 'open', '', '7', '', '', '2014-05-15 10:48:22', '2014-05-15 09:48:22', '', 27, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2014-05-15 10:48:22', '2014-05-15 09:48:22', '', 'afro-sponge1', '', 'inherit', 'closed', 'open', '', 'afro-sponge1', '', '', '2014-05-15 10:48:22', '2014-05-15 09:48:22', '', 27, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2014-05-15 10:48:23', '2014-05-15 09:48:23', '', 'mes_filles', '', 'inherit', 'closed', 'open', '', 'mes_filles', '', '', '2014-05-15 10:48:23', '2014-05-15 09:48:23', '', 27, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2014-05-15 10:49:13', '2014-05-15 09:49:13', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /><a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg"><img class="alignnone size-medium wp-image-47" alt="afro-sponge1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1-250x123.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg"><img class="alignnone size-medium wp-image-46" alt="7" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7-250x162.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg"><img class="alignnone size-medium wp-image-48" alt="mes_filles" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles-250x250.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/5.jpg"><img class="alignnone size-medium wp-image-44" alt="5" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/5-250x250.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/1.png"><img class="alignnone size-medium wp-image-40" alt="1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/1-250x250.png" /></a></a>\r\n\r\n&nbsp;\r\n\r\nQuelques personnes nous remercient :\r\n<p style="text-align: center;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - Le Monde\r\n« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - Gérard Depardieu\r\n« Je n’ai enfin plus honte de montrer mes éponges » - Geneviève de Fontenay\r\n« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - Nicolas Hulot\r\n« Je les déteste. » - Mr. Propre\r\n« Hodor » - Hodor</p>', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:49:13', '2014-05-15 09:49:13', '', 27, 'http://localhost/Projet_Web_CESI/?p=49', 0, 'revision', '', 0),
(50, 1, '2014-05-15 10:49:37', '2014-05-15 09:49:37', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a><a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg"><img class="alignnone size-medium wp-image-47" alt="afro-sponge1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1-250x123.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg"><img class="alignnone size-medium wp-image-46" alt="7" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7-250x162.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg"><img class="alignnone size-medium wp-image-48" alt="mes_filles" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles-250x250.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/5.jpg"><img class="alignnone size-medium wp-image-44" alt="5" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/5-250x250.jpg" /></a>\r\n\r\n&nbsp;\r\n\r\nQuelques personnes nous remercient :\r\n<p style="text-align: center;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - Le Monde\r\n« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - Gérard Depardieu\r\n« Je n’ai enfin plus honte de montrer mes éponges » - Geneviève de Fontenay\r\n« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - Nicolas Hulot\r\n« Je les déteste. » - Mr. Propre\r\n« Hodor » - Hodor</p>', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:49:37', '2014-05-15 09:49:37', '', 27, 'http://localhost/Projet_Web_CESI/?p=50', 0, 'revision', '', 0),
(51, 1, '2014-05-15 10:49:46', '2014-05-15 09:49:46', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a><a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg"><img class="alignnone size-medium wp-image-47" alt="afro-sponge1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1-250x123.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg"><img class="alignnone size-medium wp-image-46" alt="7" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7-250x162.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg"><img class="alignnone size-medium wp-image-48" alt="mes_filles" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles-250x250.jpg" /></a>\r\n\r\n&nbsp;\r\n\r\nQuelques personnes nous remercient :\r\n<p style="text-align: center;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - Le Monde\r\n« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - Gérard Depardieu\r\n« Je n’ai enfin plus honte de montrer mes éponges » - Geneviève de Fontenay\r\n« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - Nicolas Hulot\r\n« Je les déteste. » - Mr. Propre\r\n« Hodor » - Hodor</p>', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:49:46', '2014-05-15 09:49:46', '', 27, 'http://localhost/Projet_Web_CESI/?p=51', 0, 'revision', '', 0),
(52, 1, '2014-05-15 10:53:44', '2014-05-15 09:53:44', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a><a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg"><img class="alignnone size-medium wp-image-47" alt="afro-sponge1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1-250x123.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg"><img class="alignnone size-medium wp-image-46" alt="7" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7-250x162.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg"><img class="alignnone size-medium wp-image-48" alt="mes_filles" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles-250x250.jpg" /></a>\r\n\r\n&nbsp;\r\n\r\nQuelques personnes nous remercient :\r\n<p style="text-align: left;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - <em>Le Monde</em></p>\r\n<p style="text-align: left;">\r\n« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - <em>Gérard Depardieu</em></p>\r\n<p style="text-align: left;">\r\n« Je n’ai enfin plus honte de montrer mes éponges » - <em>Geneviève de Fontenay</em></p>\r\n<p style="text-align: left;">\r\n« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - <em>Nicolas Hulot</em></p>\r\n<p style="text-align: left;">\r\n« Je les déteste. » - <em>Mr. Propre</em></p>\r\n<p style="text-align: left;">\r\n« Hodor » - <em>Hodor</em></p>', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:53:44', '2014-05-15 09:53:44', '', 27, 'http://localhost/Projet_Web_CESI/?p=52', 0, 'revision', '', 0),
(53, 1, '2014-05-15 10:54:47', '2014-05-15 09:54:47', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a><a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg"><img class="alignnone size-medium wp-image-47" alt="afro-sponge1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1-250x123.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg"><img class="alignnone size-medium wp-image-46" alt="7" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7-250x162.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg"><img class="alignnone size-medium wp-image-48" alt="mes_filles" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles-250x250.jpg" /></a>\r\n\r\n&nbsp;\r\n\r\nQuelques personnes nous remercient :\r\n<p style="text-align: left;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - <em>Le Monde</em></p>\r\n<p style="text-align: left;">« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - <em>Gérard Depardieu</em></p>\r\n<p style="text-align: left;">« Je n’ai enfin plus honte de montrer mes éponges » - <em>Geneviève de Fontenay</em></p>\r\n<p style="text-align: left;">« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - <em>Nicolas Hulot</em></p>\r\n<p style="text-align: left;">« Je les déteste. » - <em>Mr. Propre</em></p>\r\n<p style="text-align: right;">« Hodor » - <em>Hodor</em></p>', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:54:47', '2014-05-15 09:54:47', '', 27, 'http://localhost/Projet_Web_CESI/?p=53', 0, 'revision', '', 0),
(54, 1, '2014-05-15 10:55:43', '2014-05-15 09:55:43', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a><a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg"><img class="alignnone size-medium wp-image-47" alt="afro-sponge1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1-250x123.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg"><img class="alignnone size-medium wp-image-46" alt="7" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7-250x162.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg"><img class="alignnone size-medium wp-image-48" alt="mes_filles" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles-250x250.jpg" /></a>\r\n\r\n&nbsp;\r\n\r\nQuelques personnes nous remercient :\r\n<p style="text-align: left;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - <em>Le Monde</em></p>\r\n<p style="text-align: center;">« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - <em>Gérard Depardieu</em></p>\r\n<p style="text-align: right;">« Je n’ai enfin plus honte de montrer mes éponges » - <em>Geneviève de Fontenay</em></p>\r\n<p style="text-align: left;">« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - <em>Nicolas Hulot</em></p>\r\n<p style="text-align: center;">« Je les déteste. » - <em>Mr. Propre</em></p>\r\n<p style="text-align: right;">« Hodor » - <em>Hodor</em></p>', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 10:55:43', '2014-05-15 09:55:43', '', 27, 'http://localhost/Projet_Web_CESI/?p=54', 0, 'revision', '', 0),
(55, 1, '2014-05-15 12:31:18', '2014-05-15 11:31:18', '', '030172045790C', '', 'inherit', 'closed', 'open', '', '030172045790c', '', '', '2014-05-15 12:31:18', '2014-05-15 11:31:18', '', 2, 'http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2014-05-15 12:32:36', '2014-05-15 11:32:36', 'Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" alt="030172045790C" class="aligncenter size-medium wp-image-55" /></a>', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 12:32:36', '2014-05-15 11:32:36', '', 2, 'http://localhost/Projet_Web_CESI/?p=56', 0, 'revision', '', 0),
(57, 1, '2014-05-15 12:35:06', '2014-05-15 11:35:06', 'Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège sociale se situe à Bikini Bottom.\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" alt="030172045790C" class="aligncenter size-medium wp-image-55" /></a>', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 12:35:06', '2014-05-15 11:35:06', '', 2, 'http://localhost/Projet_Web_CESI/?p=57', 0, 'revision', '', 0),
(58, 1, '2014-05-15 12:35:42', '2014-05-15 11:35:42', 'Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 12:35:42', '2014-05-15 11:35:42', '', 2, 'http://localhost/Projet_Web_CESI/?p=58', 0, 'revision', '', 0),
(59, 1, '2014-05-15 12:37:37', '2014-05-15 11:37:37', '<p style="text-align: center;">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.</p>\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 12:37:37', '2014-05-15 11:37:37', '', 2, 'http://localhost/Projet_Web_CESI/?p=59', 0, 'revision', '', 0),
(60, 1, '2014-05-15 12:38:09', '2014-05-15 11:38:09', '<p style="text-align: center;">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.</p>\r\n<p style="text-align: center;">Fondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.</p>\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 12:38:09', '2014-05-15 11:38:09', '', 2, 'http://localhost/Projet_Web_CESI/?p=60', 0, 'revision', '', 0),
(61, 1, '2014-05-15 12:44:14', '2014-05-15 11:44:14', '<p style="text-align: center;">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.</p>\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 12:44:14', '2014-05-15 11:44:14', '', 2, 'http://localhost/Projet_Web_CESI/?p=61', 0, 'revision', '', 0),
(62, 1, '2014-05-15 12:45:52', '2014-05-15 11:45:52', 'Retrouvez quelques unes de nos créations :\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1.jpg"><img class="alignnone size-medium wp-image-35" alt="creation_1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/creation_1-250x187.jpg" /></a><a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1.jpg"><img class="alignnone size-medium wp-image-47" alt="afro-sponge1" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/afro-sponge1-250x123.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7.jpg"><img class="alignnone size-medium wp-image-46" alt="7" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/7-250x162.jpg" /></a> <a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles.jpg"><img class="alignnone size-medium wp-image-48" alt="mes_filles" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/mes_filles-250x250.jpg" /></a>\r\n\r\n&nbsp;\r\n\r\nQuelques personnes nous remercient :\r\n<div>\r\n<p style="text-align: left;">« Les éponges les plus réussies et drôles depuis Bob l’éponge » - <em>Le Monde</em></p>\r\n<p style="text-align: center;">« Mon budget éponge n’a jamais été aussi bas depuis que j’ai découvert LOLepongeLOL » - <em>Gérard Depardieu</em></p>\r\n<p style="text-align: right;">« Je n’ai enfin plus honte de montrer mes éponges » - <em>Geneviève de Fontenay</em></p>\r\n<p style="text-align: left;">« Leurs éponges sont aussi colorées que celles que j’ai l’habitude de voir dans les Caraïbes » - <em>Nicolas Hulot</em></p>\r\n<p style="text-align: center;">« Je les déteste. » - <em>Mr. Propre</em></p>\r\n<p style="text-align: right;">« Hodor » - <em>Hodor</em></p>\r\n</div>', 'Portfolio', '', 'inherit', 'closed', 'open', '', '27-revision-v1', '', '', '2014-05-15 12:45:52', '2014-05-15 11:45:52', '', 27, 'http://localhost/Projet_Web_CESI/?p=62', 0, 'revision', '', 0),
(63, 1, '2014-05-15 14:41:57', '2014-05-15 13:41:57', '\n\n[contact-form-7 id="64" title="Formulaire de contact 1"]', 'Contacts', '', 'inherit', 'closed', 'open', '', '30-autosave-v1', '', '', '2014-05-15 14:41:57', '2014-05-15 13:41:57', '', 30, 'http://localhost/Projet_Web_CESI/?p=63', 0, 'revision', '', 0),
(64, 1, '2014-05-15 12:53:04', '2014-05-15 11:53:04', '<p style = "text-align:center">Votre nom (obligatoire)<br />\r\n    [text* your-name] </p>\r\n\r\n<p style = "text-align:center">Votre email (obligatoire)<br />\r\n    [email* your-email] </p>\r\n\r\n<p style = "text-align:center">Sujet<br />\r\n    [text your-subject] </p>\r\n\r\n<p style = "text-align:center">Votre message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p style = "text-align:center">[submit "Envoyer"]</p>\nLOLepongeLOL\nLOLepongeLOL LOL@eponge.lol\nDe : [your-name] <[your-email]>\r\nSujet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n--\r\nCet email a été envoyé via le formulaire de contact de LOLepongeLOL (http://localhost/Projet_Web_CESI)\ndavid.bourdet@viacesi.fr\n\n\n\n\n[your-subject]\n[your-name] <[your-email]>\nCorps du message :\r\n[your-message]\r\n\r\n--\r\nCet email a été envoyé via le formulaire de contact de LOLepongeLOL (http://localhost/Projet_Web_CESI)\n[your-email]\n\n\n\nVotre message a bien été envoyé. Merci.\nErreur lors de l''envoi du message. Veuillez réessayer plus tard ou contacter l''administrateur d''une autre manière.\nErreur de validation. Veuillez vérifier les champs et soumettre à nouveau.\nErreur lors de l''envoi du message. Veuillez réessayer plus tard ou contacter l''administrateur d''une autre manière.\nMerci de bien vouloir accepter les conditions pour continuer.\nVeuillez remplir le champ obligatoire.\nLe code entré est incorrect.\nLe format numérique semble invalide.\nCe nombre est trop petit.\nCe nombre est trop grand.\nL''adresse email semble invalide.\nL''URL semble invalide.\nLe numéro de téléphone semble invalide.\nVotre réponse est incorrecte.\nLe format de date semble invalide.\nCette date est trop tôt.\nCette date est trop tard.\nImpossible de télécharger le fichier.\nCe type de fichier n''est pas autorisé.\nCe fichier est trop volumineux.\nImpossible de mettre en ligne le fichier. Une erreur est survenue.', 'Formulaire de contact 1', '', 'publish', 'closed', 'open', '', 'formulaire-de-contact-1', '', '', '2014-05-15 13:02:14', '2014-05-15 12:02:14', '', 0, 'http://localhost/Projet_Web_CESI/?post_type=wpcf7_contact_form&#038;p=64', 0, 'wpcf7_contact_form', '', 0),
(65, 1, '2014-05-15 12:53:47', '2014-05-15 11:53:47', '[contact-form-7 id="64" title="Formulaire de contact 1"]', 'Contacts', '', 'inherit', 'closed', 'open', '', '30-revision-v1', '', '', '2014-05-15 12:53:47', '2014-05-15 11:53:47', '', 30, 'http://localhost/Projet_Web_CESI/?p=65', 0, 'revision', '', 0),
(66, 1, '2014-05-15 13:07:18', '2014-05-15 12:07:18', 'texte d''éponges qui claquent', 'article d''éponges qui claquent', '', 'publish', 'closed', 'open', '', 'article-deponges-qui-claquent', '', '', '2014-05-15 13:07:18', '2014-05-15 12:07:18', '', 0, 'http://localhost/Projet_Web_CESI/?p=66', 0, 'post', '', 0),
(67, 1, '2014-05-15 13:07:18', '2014-05-15 12:07:18', 'texte d''éponges qui claquent', 'article d''éponges qui claquent', '', 'inherit', 'closed', 'open', '', '66-revision-v1', '', '', '2014-05-15 13:07:18', '2014-05-15 12:07:18', '', 66, 'http://localhost/Projet_Web_CESI/?p=67', 0, 'revision', '', 0),
(68, 1, '2014-05-15 14:02:18', '2014-05-15 13:02:18', '<p style="text-align: center;">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.</p>\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>\r\n\r\n<p style="text-align: center;">\r\n<li><a href="http://www.spontex.fr/">Personnalisation d’éponges</a></li>\r\nEponges qui claquent sa mère\r\nAvoir l’air cool en faisant la vaisselle\r\nEponge SWAG YOLO\r\n</p>', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 14:02:18', '2014-05-15 13:02:18', '', 2, 'http://localhost/Projet_Web_CESI/?p=68', 0, 'revision', '', 0);
INSERT INTO `gme_wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(69, 1, '2014-05-15 14:04:08', '2014-05-15 13:04:08', '<p style="text-align: center;">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.</p>\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>\r\n\r\n<p style="text-align: center;">\r\n<li><a href="http://www.spontex.fr/">Personnalisation d’éponges</a></li>\r\n<li><a href="http://www.spontex.fr/">Eponges qui claquent sa mère</a></li>\r\n<li><a href="http://www.spontex.fr/">Avoir l''air cool en faisant la vaiselle</a></li>\r\n<li><a href="http://www.spontex.fr/">Eponge SWAG YOLO</a></li>\r\n</p>', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 14:04:08', '2014-05-15 13:04:08', '', 2, 'http://localhost/Projet_Web_CESI/?p=69', 0, 'revision', '', 0),
(70, 1, '2014-05-15 14:14:29', '2014-05-15 13:14:29', '<p style="text-align: center;">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.</p>\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>\r\n\r\n<li><a href="http://www.spontex.fr/">Personnalisation d’éponges</a></li>\r\n<li><a href="http://www.spontex.fr/">Eponges qui claquent sa mère</a></li>\r\n<li><a href="http://www.spontex.fr/">Avoir l''air cool en faisant la vaiselle</a></li>\r\n<li><a href="http://www.spontex.fr/">Eponge SWAG YOLO</a></li>\r\n', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 14:14:29', '2014-05-15 13:14:29', '', 2, 'http://localhost/Projet_Web_CESI/?p=70', 0, 'revision', '', 0),
(71, 1, '2014-05-15 14:16:59', '2014-05-15 13:16:59', '<p style="text-align: center">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.</p>\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>\r\n\r\n\r\n<p style="text-align: center"> Voici nos partenaires :</p>\r\n\r\n<li><a href="http://www.spontex.fr/">Personnalisation d’éponges</a></li>\r\n<li><a href="http://www.spontex.fr/">Eponges qui claquent sa mère</a></li>\r\n<li><a href="http://www.spontex.fr/">Avoir l''air cool en faisant la vaiselle</a></li>\r\n<li><a href="http://www.spontex.fr/">Eponge SWAG YOLO</a></li>\r\n', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 14:16:59', '2014-05-15 13:16:59', '', 2, 'http://localhost/Projet_Web_CESI/?p=71', 0, 'revision', '', 0),
(72, 1, '2014-05-15 14:23:34', '2014-05-15 13:23:34', '<p style="text-align: center">Notre entreprise se spécialise dans la restauration de vos éponges préférées. Nous proposons aussi la customisation de celles-ci, pour qu''elles puissent correspondre au mieux à vos envies.\r\nFondée en 2000 par BOURDET David et SCHMITT Tom, elle a rapidement pris une place de leader dans ce domaine grâce à son savoir-faire et à l''excellence de ses services.\r\nSon siège social se situe à Bikini Bottom.</p>\r\n\r\n<a href="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C.jpg"><img class="aligncenter size-medium wp-image-55" alt="030172045790C" src="http://localhost/Projet_Web_CESI/wp-content/uploads/2014/05/030172045790C-250x250.jpg" /></a>\r\n\r\n\r\n<p style="text-align: center"> Voici nos partenaires :</p>\r\n\r\n<li><a href="http://www.spontex.fr/">Personnalisation d’éponges</a></li>\r\n<li><a href="http://www.nickelodeon.fr/tv/emission/bob-eponge/">Eponges qui claquent sa mère</a></li>\r\n<li><a href="https://www.facebook.com/mrpropre">Avoir l''air cool en faisant la vaiselle</a></li>\r\n<li><a href="http://www.swiffer.com/">Eponge SWAG YOLO</a></li>\r\n', 'Notre entreprise', '', 'inherit', 'closed', 'open', '', '2-revision-v1', '', '', '2014-05-15 14:23:34', '2014-05-15 13:23:34', '', 2, 'http://localhost/Projet_Web_CESI/?p=72', 0, 'revision', '', 0),
(73, 1, '2014-05-15 14:42:45', '2014-05-15 13:42:45', '<p style="text-align: center;">Afin de nous contacter, veuillez remplir le formulaire ci-dessous :</p>\r\n&nbsp;\r\n\r\n[contact-form-7 id="64" title="Formulaire de contact 1"]', 'Contacts', '', 'inherit', 'closed', 'open', '', '30-revision-v1', '', '', '2014-05-15 14:42:45', '2014-05-15 13:42:45', '', 30, 'http://localhost/Projet_Web_CESI/?p=73', 0, 'revision', '', 0);

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
(1, 1, 0),
(26, 2, 0),
(29, 2, 0),
(32, 2, 0),
(66, 1, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

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
(15, 1, 'gme_wp_user-settings', 'editor=tinymce&libraryContent=browse&align=center'),
(16, 1, 'gme_wp_user-settings-time', '1400161361'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:15:"add-html5-blank";i:2;s:12:"add-post_tag";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:21:"dashboard_quick_press";i:1;s:17:"dashboard_primary";}'),
(21, 1, 'metaboxhidden_dashboard', 'a:0:{}');

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
