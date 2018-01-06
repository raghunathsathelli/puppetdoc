class motdsample {
   file { '/etc/motd':
           content => template('motdsample/motd.erb'), 
        }
}
