class banner {
file { '/etc/issue':  ### Creation of /etc/issue file
ensure => present,
source => 'puppet:///modules/banner/issue',
owner => 'root',
group => 'root',
mode => '0644',
}
}
