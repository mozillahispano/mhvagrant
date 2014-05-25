<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'vagrant');

/** MySQL database username */
define('DB_USER', 'vagrant');

/** MySQL database password */
define('DB_PASSWORD', 'vagrant');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         '#KArxxc+YTq17Xd=:s@:(S37<9{^->4ci;GG)X3bK6vyve+:7<{:e5j)ATO6+_hz');
define('SECURE_AUTH_KEY',  '6kZ#/5ySUQH41UL(%mi4}-UDRg{)@!yCmQ6y_`2~/@u^[z@ree-B=Oqt|s{F-9n5');
define('LOGGED_IN_KEY',    'ePNJ.vGP+ pW02!dKJIE/n~%4QMAx3EO%)@v-*j<N@Qgu%FiKb|AQZ&:QJQsx.vl');
define('NONCE_KEY',        '|#:r0o5&0,. k(Ylnc$3),N-8v~wkra;=u~ICp96-&KmJ7${|Rh*(-]$>8^Rgh~e');
define('AUTH_SALT',        '~yf[6e-@q-r#$G<Zc7m.5`}T-(kH2o(*L7b6sD0[=C_`6fA jsKm@qE%=+nR&Gc/');
define('SECURE_AUTH_SALT', 'vv3CWuVCgb<n)-Y)/x$Y|Oboho-L|/z kS>[:Y  Q>ZtlFht(uM6Hh_ooTM%56Jv');
define('LOGGED_IN_SALT',   'Wg(l4a78<-/.vB|*gFY([h[3%d/~Qs;1SeG5A{VsT~s-AFjdB;`MmH[>QGp7|xZO');
define('NONCE_SALT',       'PIl(ca0Ab2JHo!Yhj9[%>=C-)06,{ma32#J0@H+wqLW|c`l1TRrRU%|SP+.2=4vO');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

