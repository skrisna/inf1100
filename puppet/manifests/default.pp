#File { owner => 0, group => 0, mode => 0644 }
#
#file { '/etc/motd':
#  content => "Velkommen til INF1000!\n
#              Her kan du kjøre programmene du har skrevet.\n"
#}

file { '/home/vagrant/.profile':
  content => "alias p='python'\n
              alias ls='ls --color'\n
              alias ll='ls -l'\n
              export PS1='\w >>> '"
}

include scitools
include motd
