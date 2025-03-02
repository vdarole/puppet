class ntpconfig {
if $::osfamily == 'RedHat' {
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
if $::osfamily == 'Debian' {
service { 'ntp':
  ensure  => running,
  require => [
    Package['ntpsec-ntpdate'],
    File['/etc/ntp.conf'],
     ],
  }

package { 'ntpsec-ntpdate':
  ensure => present,
  before => Service['ntp'],
  }

file { '/etc/ntp.conf':
  ensure => file,
  mode   => '0600',
  source => 'puppet:///modules/ntpconfig/ntp.conf',
  before => Service['ntp'],
        }
  }
}


