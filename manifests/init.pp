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

class mongodb (
  $dbpath         = $mongodb::params::dbpath,
  ) inherits mongodb::params {

  motd::register{'mongo':}

  class { 'mongodb::install': }
  class { 'mongodb::config': }
  class { 'mongodb::service': }

  Class['mongodb::install'] ->
  Class['mongodb::config']  ->
  Class['mongodb::service']
}

