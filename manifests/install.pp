# Class: mongodb::install
#
#
class mongodb::install {

  package {
    'mongo-10gen':
      ensure  => installed;
    'mongo-10gen-server':
      ensure  => installed;
  }
}
