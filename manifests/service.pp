# Class: mongodb::service
#
#
class mongodb::service {
  service {
    'mongod':
      ensure    => 'running',
      enable    => true,
      subscribe => File['/etc/mongod.conf'];
  }
}
