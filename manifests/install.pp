# Class: mongodb::install
#
#
class mongodb::install {

  package {
    'mongodb':
      ensure  => installed;
    'mongodb-devel':
      ensure  => installed;
    'mongodb-server':
      ensure  => installed;
  }
}
