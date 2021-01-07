<?php

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wisestay');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'G4U^8FB sQ%NiH2GA.g/4k.+V;`lalpl-yD>$/jHJ1Ky+go3N#lp@_.c[)b]WE|;');
define('SECURE_AUTH_KEY',  'jTXCm8fK]tFcM|RP1O:[z;[7U-N9:l7ISl9QM]D$!^]cgWY]&RR+q/4d@yn6I$`v');
define('LOGGED_IN_KEY',    'd-AuKAm<r!%:3e)fUF{p!&KN}w(zeU~m<^xGFXG%MH]XNpkRS9n|w?29c%v0>hPl');
define('NONCE_KEY',        '}Z=_gmEm7n JJ9K5l4LoFM&O,ftLSa:0_pFo,,vu}4{&UUjJrnjO!Z46F:rG,:~{');
define('AUTH_SALT',        'H~C(fbXS0[)g<d`^f>ZVmJ=uM<^XpxEAylf>I|MPKU<T|`C:*~KE8s}ew.acF8Vs');
define('SECURE_AUTH_SALT', 't[`JE/)US2Q;>^Vx<od]v7q;.{6|V=rfZvZ9v^0DKR59F3=_Df56Y<S]8V)1NV25');
define('LOGGED_IN_SALT',   '44U+/eyjBs+w$F@15-oJ=ZiR8N[A2=e8lVHROte&Hd_}$xGu-fXZA_7w[70z@dxC');
define('NONCE_SALT',       'YV5,&qeWk0sTL[O}r%* Z:b`f$VG6WFj^Y|vh5%/}W$ifM/zYs^[Y3i~ M]>tthx');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'nhabe360_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH')) {
	define('ABSPATH', __DIR__ . '/');
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
