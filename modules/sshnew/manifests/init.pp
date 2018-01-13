class sshnew {
          $pack1=$osfamily? {
               'RedHat' => 'openssh',
               'Debian' => 'ssh',
               'Solaris' => 'ssh',
           }
     package {'openssh':
                name => $pack1, 
                ensure => present,
             }
     file {'/etc/ssh/sshd_config':
            source => 'puppet:///modules/sshnew/sshd_config',
          }
     service { 'sshd':
               ensure => running,
	       subscribe => File['/etc/ssh/sshd_config'],
             }
}            
