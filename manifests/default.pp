File { owner => 0, group => 0, mode => 0644 }

file { '/etc/motd':
  content => "Velkommen til INF1000!\n
              Her kan du kjøre programmene du har skrevet.\n"
}

file { '/home/vagrant/.profile':
  content => "alias p='python'\n
              export PS1=>>>"
}

class scitools {
  
  exec { "apt-update":
    command => "/usr/bin/apt-get update"
  }

  Exec["apt-update"] -> Package <| |>

  package { 'python-matplotlib':
    ensure => present
  }

  package { 'python-scitools':
    require => Package['python-matplotlib'],
    ensure => present
  }
}

include scitools
