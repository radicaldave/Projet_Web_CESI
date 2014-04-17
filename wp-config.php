<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clefs secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur 
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C'est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d'installation. Vous n'avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'LOLepongeLOL');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', '');

/** Adresse de l'hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8');

/** Type de collation de la base de données. 
  * N'y touchez que si vous savez ce que vous faites. 
  */
define('DB_COLLATE', '');

/**#@+
 * Clefs uniques d'authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant 
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n'importe quel moment, afin d'invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'cD|TU0iYv7|@K7|w- fi$t3Ky|_zef1_^yAqO4sR>? B~Kye9P2Ri!R:|6OK754Y');
define('SECURE_AUTH_KEY',  'waTY**n10IMLn4w-,i_k<W8 c%y-0>s<uI|6P3%@]2UoK3@GF.Kxu;Z}k6*f_>jC');
define('LOGGED_IN_KEY',    'RC$o?!lqf!]35~>]4Q{+sQw<[9rYkPvS2;%=<+D k3cn+tbPX-H4q>*lu^&*{6@a');
define('NONCE_KEY',        'BD-IvfzgWYA:K3xULm7[)XWn_xBFnDx7|/Oa-A#{^xLyEf5fgC+&s-}%T$U_6-/h');
define('AUTH_SALT',        'k:=ZBqhQmWp*;F6Ei$pQ(g6O MK8iuzB?vhYhn$%BLsrnt|xt%ea>]Zs^oZ<q8XB');
define('SECURE_AUTH_SALT', 'TYa-7kksF[e3}koL/RS]QgxR[]3^^_7o(&>5N(8iOOMrg+6mw=pn*w&r||dk1SsO');
define('LOGGED_IN_SALT',   ' 3PC5SL>2/}{bb>lkJt:*QY@t}QI3W[`^!%QO|[&WsbQ3hmk(A<?saDNCIF*A`uM');
define('NONCE_SALT',       '7ONfq/|jVt-loVwZ-36/aI(:_5ndWY^$5h{=a|(=H7rH8bn-!72b[Y<*).T[k`&C');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique. 
 * N'utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés!
 */
$table_prefix  = 'gme_wp_';

/**
 * Langue de localisation de WordPress, par défaut en Anglais.
 *
 * Modifiez cette valeur pour localiser WordPress. Un fichier MO correspondant
 * au langage choisi doit être installé dans le dossier wp-content/languages.
 * Par exemple, pour mettre en place une traduction française, mettez le fichier
 * fr_FR.mo dans wp-content/languages, et réglez l'option ci-dessous à "fr_FR".
 */
define('WPLANG', 'fr_FR');

/** 
 * Pour les développeurs : le mode deboguage de WordPress.
 * 
 * En passant la valeur suivante à "true", vous activez l'affichage des
 * notifications d'erreurs pendant votre essais.
 * Il est fortemment recommandé que les développeurs d'extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de 
 * développement.
 */ 
define('WP_DEBUG', false); 

/* C'est tout, ne touchez pas à ce qui suit ! Bon blogging ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');