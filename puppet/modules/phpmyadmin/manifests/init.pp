# Install phpmyadmin

class phpmyadmin::install {

    package{'phpmyadmin':
        ensure=>present,
    }

    # file { '/etc/nginx/sites-enabled/default':
    #     ensure  => link,
    #     target  => '/etc/nginx/sites-available/default',
    #     require => Package['phpmyadmin'],
    #     notify  => Service['nginx'],
    # }


    file { '/etc/apache2/conf-enabled/phpmyadmin.conf':
        ensure => 'link',
        target => '/etc/phpmyadmin/apache.conf',
    }


}
