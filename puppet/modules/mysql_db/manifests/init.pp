# Install mysql_db


class mysql_db::install {

  # Create the Wordpress database
  exec { 'create-database':
    unless  => '/usr/bin/mysql -u root -pvagrant wordpress',
    command => '/usr/bin/mysql -u root -pvagrant --execute=\'create database wordpress\'',
  }

  exec { 'create-user':
    unless  => '/usr/bin/mysql -u wordpress -pwordpress',
    command => '/usr/bin/mysql -u root -pvagrant --execute="GRANT ALL PRIVILEGES ON wordpress.* TO \'wordpress\'@\'localhost\' IDENTIFIED BY \'wordpress\'"',
  }

  # Import a MySQL database for a basic wordpress site.
  file { '/tmp/red.sql':
    source => "puppet:///modules/mysql_db/red.sql"
  }

  exec { 'load-db':
    command => "/usr/bin/mysql -u wordpress -pwordpress wordpress < /tmp/red.sql && touch /home/vagrant/db-created",
    creates => '/home/vagrant/db-created',
  }


}
