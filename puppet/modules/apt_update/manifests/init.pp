# Install apt_update

class apt_update {

    exec { 'apt_update':
      command => 'apt-get update',
      path    => '/usr/bin'
    }

}
