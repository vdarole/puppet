if $::osfamily == 'RedHat' {
        $packages = ['ftp', 'telnet', 'sysstat' ,'nfs-utils','mailx','net-tools','wget','git','rsyslog','postfix']
        package { $packages:
        ensure => "installed",
        provider => 'yum',
       }
}
if $::osfamily == 'Debian' {
        $packages = ['ftp', 'telnet', 'sysstat' ,'nfs-common','mailutils','net-tools','wget','git',]
        package { $packages:
        ensure => "installed",
        provider => 'apt',
        }
}
