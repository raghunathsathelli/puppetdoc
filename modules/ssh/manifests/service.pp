class ssh::service{
         service {'sshd':
                  ensure => running,
                 #subscribe => File['/etc/ssh/sshd_config'],
                 } 
}
