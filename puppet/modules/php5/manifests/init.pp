# Install PHP

class php5::install {

  package { [
    'libapache2-mod-php5',
    'php-apc',
    'php-pear',
    'php5',
    'php5-cli',
    'php5-common',
    'php5-curl',
    'php5-dev',
    'php5-fpm',
    'php5-gd',
    'php5-geoip',
    'php5-imagick',
    'php5-imap',
    'php5-intl',
    'php5-mcrypt',
    'php5-memcache',
    'php5-memcached',
    'php5-mysql',
    'php5-sqlite',
    'php5-tidy',
    'php5-xdebug',
    ]:
    ensure => present,
  }

}
