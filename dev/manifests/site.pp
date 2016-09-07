exec { 'dnf-update':
  command => "/usr/bin/dnf update -y"
}

package { 'etcd':
  require => Exec['dnf-update'],
  ensure => installed,
}


package { 'kubernetes':
  require => Exec['dnf-update'],
  ensure => installed,
}

package { 'golang':
  require => Exec['dnf-update'],
  ensure => purged,
}

package { 'git':
  require => Exec['dnf-update'],
  ensure => installed,
}

package { 'docker':
  require => Exec['dnf-update'],
  ensure => installed,
}

package { 'mercurial':
  require => Exec['dnf-update'],
  ensure => installed,
}

class { 'golang':
  version => "1.7"
}
