class ntpconfig {
service { 'ntpd':
  ensure  => running,
  require => [
    Package['ntp'],
    File['/etc/ntp.conf'],
  ],
}

package { 'ntp':
  ensure => present,
  before => Service['ntpd'],
}

file { '/etc/ntp.conf':
  ensure => file,
  mode   => '0600',
  source => 'puppet:///modules/ntpconfig/ntp.conf',
  before => Service['ntpd'],
}
}
