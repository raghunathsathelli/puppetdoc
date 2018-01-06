class motd {
   file {'/etc/motd':
          source => 'puppet:///modules/motd/motd',
}
   #  $name1 = 'cricket'
      notify {"name of the game is ${name1}":}
}
