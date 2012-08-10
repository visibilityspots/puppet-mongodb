# Class: mongodb::preinstall
#
#
class mongodb::preinstall {
  realize User_create["mongodb"]

  package {
    'boost-filesystem':
      ensure  => installed;
    'boost-program-options':
      ensure  => installed;
    'boost-system':
      ensure  => installed;
    'boost-thread':
      ensure  => installed;
    'libmongodb':
      ensure  => installed;
    'js':
      ensure  => installed;
  }
}
