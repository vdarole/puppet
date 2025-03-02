class chronyconfig {

  if $facts['os']['family'] == 'RedHat' {
    package { 'chrony':
      ensure => present,
      before => Service['chronyd'],
    }

    file { '/etc/chrony.conf':
      ensure => file,
      mode   => '0644',
      source => 'puppet:///modules/chronyconfig/chrony.conf',
      before => Service['chronyd'],
    }

    service { 'chronyd':
      ensure  => running,
      enable  => true,
      require => [
        Package['chrony'],
        File['/etc/chrony.conf'],
      ],
    }
  }

  if $facts['os']['family'] == 'Debian' {
    package { 'chrony':
      ensure => present,
      before => Service['chronyd'],
    }

    file { '/etc/chrony/chrony.conf':
      ensure => file,
      mode   => '0644',
      source => 'puppet:///modules/chronyconfig/chrony.conf',
      before => Service['chronyd'],
    }

    service { 'chronyd':
      ensure  => running,
      enable  => true,
      require => [
        Package['chrony'],
        File['/etc/chrony/chrony.conf'],
      ],
    }
  }
}

