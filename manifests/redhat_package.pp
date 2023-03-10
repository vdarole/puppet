if  $::operatingsystem =='Rocky' {

$packages = ['ftp', 'curl' ,'nfs-utils', 'git',]
package { $packages:
   ensure => "installed"
}
}
