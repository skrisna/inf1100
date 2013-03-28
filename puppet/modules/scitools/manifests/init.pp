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

