class motd {
  file {'/etc/motd':
  ensure => present,
  source => 'puppet:///modules/motd/motd',
  owner => 'root',
  group => 'root',
  mode => '0644',
	}

}

