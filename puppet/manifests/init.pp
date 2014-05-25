# -*- mode: ruby -*-
# vi: set ft=ruby :

# |
# | Path
# | :::::::::::::::::::::::::::::::::: |

Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }


# |
# | Class
# | :::::::::::::::::::::::::::::::::: |


class { 'apt_update':           }
class { 'promt_bash_motd::install':
    owner     => 'vagrant',
    group     => 'vagrant',
}
class { 'vim::install':         }
class { 'basics::install':      }
class { 'curl::install':        }
class { 'nodejs::install':      }
class { 'puppet::install':      }
class { 'git::install':         }
class { 'php5::install':        }
class { 'openssh::install':     }
class { 'apache2::install':     }
class { 'mysql::install':
    root     => 'root',
    password => 'vagrant',
}
class { 'phpmyadmin::install':  }
class { 'wordpress::install':   }




# |
# | Set ejecution order
# | :::::::::::::::::::::::::::::::::: |


Class['apt_update'               ]->
Class['promt_bash_motd::install' ]->
Class['vim::install'             ]->
Class['basics::install'          ]->
Class['curl::install'            ]->
Class['nodejs::install'          ]->
Class['puppet::install'          ]->
Class['git::install'             ]->
Class['php5::install'            ]->
Class['apache2::install'         ]->
Class['mysql::install'           ]->
Class['phpmyadmin::install'      ]->
Class['wordpress::install'       ]


## sudo puppet apply /home/vagrant/puppet/manifests/init.pp --modulepath=/home/vagrant/puppet/modules/
