class bash {

file {'/etc/skel/.bashrc':
  ensure => file,
  source => 'puppet:///modules/bash/skel-bashrc',
  owner => 'root',
  group => 'root',
  mode => '0644',
  }

file {'/root/.bashrc':
  ensure => file,
  source => 'puppet:///modules/bash/bashrc',
  owner => 'root',
  group => 'root',
  mode => '0644',
  }


}

