class ansfile {

file {'/home/ansible/.ssh/authorized_keys':
  ensure => file,
  source => 'puppet:///modules/ansfile/authorized_keys',
  owner => 'ansible',
  group => 'ansible',
  mode => '0600', 

  }
}
