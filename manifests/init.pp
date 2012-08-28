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

