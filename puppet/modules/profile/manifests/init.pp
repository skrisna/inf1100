class profile {
  file {'/home/vagrant/.profile':
    content => template('profile/profile.erb'),
  }
}
