package{ 'vim': # TODO: Fjern denne
  ensure => present,
}

include profile
include scitools
include motd
