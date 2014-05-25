# -*- mode: ruby -*-
# vi: set ft=ruby :

# |
# | Path
# | :::::::::::::::::::::::::::::::::: |

Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }


# |
# | Class
# | :::::::::::::::::::::::::::::::::: |

class { 'apache':
    default_vhost => false,
}

apache::listen { '8080': }
apache::mod { 'rewrite': }

apache::vhost { 'first.example.com':
    port    => '8080',
    docroot => '/vagrant/www/first',
}
