<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('WP_CACHE', true);
define( 'WPCACHEHOME', 'E:\OpenServer\domains\wp-bt.loc\wp-content\plugins\wp-super-cache/' );
define( 'DB_NAME', 'wp_bt' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '*://JAr3>if8x:83%$#^#i=D3KNLyh0f$ykrpn#o[#4NC8uvh[bYdFLYtTd9p=[t' );
define( 'SECURE_AUTH_KEY',  '?]]y79hB>~t(?4GzQZvA(s7+sY*quQNQ.G=#=y9G?1x0TmsG0S@w[J|:hU:>]<X>' );
define( 'LOGGED_IN_KEY',    'ro[Nq!d}2<C_k^q?vcTdxv}YUt3$h`o1GrqYnw#H)9p`)(X;|<UQ`{Dlcl4Zf#s?' );
define( 'NONCE_KEY',        ':L)o3L y3(5+n|hLWk&E-TLyzAECh~c%$mQ>-v$Q:Vhk-Qf~0K-*.kZ0[.&1CRmT' );
define( 'AUTH_SALT',        'f*erPxgCUhu)S4B]_u-t68sG%0%y_YPA0bb?>.!;rAhxtd0Lit1<:nAM//M+m}[ ' );
define( 'SECURE_AUTH_SALT', 'McYxex/`Q;0IKu%GDjD@F6tW{l HEf@?Jc$SbbAhQ6?O{!Fy?OjsgciaIz9e=rF/' );
define( 'LOGGED_IN_SALT',   't:M)&|/a]Ldk$,EhyBE<E?tQm+-[gvf3[~e%q7q)BRO86yI7~;(5PL g4*?M[|pQ' );
define( 'NONCE_SALT',       ';Y[lb$2mVqy`P7pv%FJ:70,cZ)iI}9tzp0SH}d!Q`qP]<oeNR/T}I*^fd*=]N$2u' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
