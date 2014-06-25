# Install latest Wordpress

class wordpress::install {

  # Create the Wordpress database
  exec { 'create-database':
    unless     => '/usr/bin/mysql -u root -pvagrant vagrant',
    command    => '/usr/bin/mysql -u root -pvagrant --execute=\'create database vagrant\'',
  }

  exec { 'create-user':
    unless     => '/usr/bin/mysql -u vagrant -pvagrant',
    command    => '/usr/bin/mysql -u root -pvagrant --execute="GRANT ALL PRIVILEGES ON vagrant.* TO \'vagrant\'@\'localhost\' IDENTIFIED BY \'vagrant\'"',
  }

  # Get a new copy of the latest wordpress release
  # FILE TO DOWNLOAD: http://wordpress.org/latest.tar.gz

  file { "/vagrant/www/wordpress":
      ensure   => "directory",
  }


  exec { 'download-wordpress': #tee hee
    command    => '/usr/bin/wget http://wordpress.org/latest.tar.gz',
    cwd        => '/vagrant/www/wordpress/',
    creates    => '/vagrant/www/wordpress/latest.tar.gz'
  }

  exec { 'untar-wordpress':
    cwd        => '/vagrant/www/wordpress',
    command    => '/bin/tar --strip-components=1 -zxvf /vagrant/www/wordpress/latest.tar.gz',
    require    => Exec['download-wordpress'],
    #creates   => '/vagrant/wordpress',
  }

  # Import a MySQL database for a basic wordpress site.
  file { '/tmp/wordpress.sql':
    source     => 'puppet:///modules/wordpress/wordpress.sql'
  }

  exec { 'load-db':
    command    => '/usr/bin/mysql -u vagrant -pvagrant vagrant < /tmp/wordpress.sql && touch /home/vagrant/db-created',
    creates    => '/home/vagrant/db-created',
  }

  # Copy a working wp-config.php file for the vagrant setup.
  file { '/home/vagrant/www/wordpress/wp-config.php':
    ensure     => file,
    owner      => 'vagrant',
    group      => 'vagrant',
    mode       => 644,
    path       => '/home/vagrant/www/wordpress/wp-config.php',
    source     => 'puppet:///modules/wordpress/wp-config.php',
  }

}
