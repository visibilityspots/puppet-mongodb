# Class: mongodb
#
# This class installs mongodb
#
# Parameters:
#
# Actions:
#   - Install mongodb
#
#
# Sample Usage:
#  node host01 {
#    class { 'mongodb':
#      dbname => 'mongodb',
#      dbuser => 'mongodb';
#    }
#  }
#
#
class mongodb {
  #class { 'mongodb::params': }
  class { 'mongodb::preinstall': }
  class { 'mongodb::install': }
  #class { 'mongodb::config': }
  class { 'mongodb::service': }
  #class { 'mongodb::monitor': }

  #Class['mongodb::params'] ->
  Class['mongodb::preinstall'] ->
  Class['mongodb::install'] ->
  #Class['mongodb::config']  ->
  Class['mongodb::service'] #->
  #Class['mongodb::monitor']

}

# Define: mongodb::mongoimport
#
define mongodb::mongoimport
(
  $collection = 'jcr',
  $dbfile     = 'jcr.json'
) {

  exec {
    "import-${name}-db":
      unless  => "/usr/bin/test -f /var/run/mongodb/${name}.import",
      command => "/usr/bin/mongoimport -d ${name} -c ${collection} --file ${dbfile}; /bin/touch /var/run/mongodb/${name}.import",
      require => Class['mongodb::service'];
  }
#
}
