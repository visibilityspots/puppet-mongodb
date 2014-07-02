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
  $smallfiles     = $mongodb::params::smallfiles,
  $bind_ip        = $mongodb::params::bind_ip,
  ) inherits mongodb::params {

  class { 'mongodb::install': }
  class { 'mongodb::config': }
  class { 'mongodb::service': }

  Class['mongodb::install'] ->
  Class['mongodb::config']  ->
  Class['mongodb::service']
}

