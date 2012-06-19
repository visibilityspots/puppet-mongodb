# Class: mongodb::service
#
#
class mongodb::service {
  service {
    'mongod':
      ensure  => running,
      enable  => true;
  }
}
