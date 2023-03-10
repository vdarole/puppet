class host_file {
 file { '/etc/hosts':
ensure => file,
source => 'puppet:///modules/host_file/hosts',
owner => 'root',
group => 'root',
mode => '0644',
}



}
