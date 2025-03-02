### Create ansible user with password "redhat"

user { 'ansible':
  ensure             => 'present',
  home               => '/home/ansible',
  password           => '$6$Xqu9Qn5Q$Srxo5qVd7NxVtA.U/WtXaktHYXRB5YZIlctuho8L85DkX0bTzL/KdB0GfessD4QCsjfUfZFFFbGadRjtlokWt0',
  password_max_age   => 99999,
  password_min_age   => 0,
  password_warn_days => 7,
  provider           => 'useradd',
  shell              => '/bin/bash',
  uid                => 4001,
managehome => true
}

### Add ansible user to sudoer file

augeas { "sudo-ansible":
context => "/files/etc/sudoers",
changes => [
"set spec[user = 'ansible']/user ansible",
"set spec[user = 'ansible']/host_group/host ALL",
"set spec[user = 'ansible']/host_group/command ALL",
"set spec[user = 'ansible']/host_group/command/runas_user ALL",
"set spec[user = 'ansible']/host_group/command/tag NOPASSWD",
],
}

### Create .ssh directory in ansible home folder

file { '/home/ansible/.ssh/':
  ensure   => 'directory',
  group    => 4001,
  owner    => 4001,
  mode     => '0600',
}

### Copy the authorised key in .ssh directory  

include ansfile

