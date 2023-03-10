if  $::operatingsystem =='Ubuntu' {

$packages = ['ftp', 'curl' ,'nfs-common','wget',]
package { $packages:
   ensure => "installed"
}
}
