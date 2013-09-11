# Class: mongodb::config
#
#
class mongodb::config {
  file { '/etc/mongod.conf':
    ensure  => 'present',
    content => template('mongodb/mongod.conf.erb'),
  }
}
