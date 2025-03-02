class bashfile {

file {'/etc/skel/.bashrc':
  ensure => file,
  source => 'puppet:///modules/bashfile/skel-bashrc',
  owner => 'root',
  group => 'root',
  mode => '0644',
  }

file {'/root/.bashrc':
  ensure => file,
  source => 'puppet:///modules/bashfile/bashrc',
  owner => 'root',
  group => 'root',
  mode => '0644',
  }


}

