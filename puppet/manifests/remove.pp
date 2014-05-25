package { 'apache2.2-bin':
    ensure => purged,
}

package { 'apache2.2-common':
    ensure => purged,
}

package { 'apache2-mpm-worker':
    ensure => purged,
}

package { 'apache2-utils':
    ensure => purged,
}