$packages = ['ftp', 'telnet', 'sysstat' ,'nfs-utils','mailx','net-tools','wget','git',]
package { $packages:
   ensure => "installed",
        }
