file { '/etc/issue':  ### Creation of /etc/issue file
ensure => present,
content => "\S
\U  on an \m
Today is \d \t  ",
mode => '0644',
owner => 'root',
group => 'root',
path => $issue_file_path,
 }

