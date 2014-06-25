#Install MySQL

class mysql::install (
    $root     = 'root',
    $password = 'root',
  ) {


  package { [
      'mysql-client',
      'mysql-server',
    ]:
    ensure => installed,
  }

  exec { 'Set MySQL server\'s root password':
    subscribe   => [
      Package['mysql-server'],
      Package['mysql-client'],
    ],
    refreshonly => true,
    unless      => "mysqladmin -u${root} -p${password} status",
    path        => '/bin:/usr/bin',
    command     => "mysqladmin -u${root} password ${password}",
  }

}
