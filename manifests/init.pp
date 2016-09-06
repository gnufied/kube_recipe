exec { 'dnf-update':
  command => "/usr/bin/dnf update -y"
}

package { 'etcd':
  require => Exec['dnf-update'],
  ensure => installed,
}
