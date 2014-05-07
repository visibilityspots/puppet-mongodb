# Class: mongodb::install
#
# Installation of the mongodb packages
class mongodb::install {
  package {
    'mongodb-org':
      ensure  => 'installed';
  }
}
