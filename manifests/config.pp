# Class: mongodb::config
#
#
class mongodb::config {
  file { '/etc/mongod.conf':
    ensure  => 'present',
    content => template('mongodb/mongod.conf.erb'),
  }

  if $mongodb::limits {
    file { '/etc/security/limits.d/10-mongod.conf':
      ensure  => 'present',
      content => template('mongodb/10-mongod.conf.erb'),
      notify  => Service['mongod']
    }
  }
}
