class promt_bash_motd::install (
    $owner     = 'root',
    $group     = 'root',
  ) {

    #|
    #| :::::: Change Wellcome Message
    #|
    file { 'motd':
        ensure    => file,
        owner     => $owner,
        group     => $group,
        path      => "/etc/motd",
        source    => 'puppet:///modules/promt_bash_motd/motd',
    }

}
