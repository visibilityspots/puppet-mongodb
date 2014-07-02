# Class mongodb::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the mongodb service
class mongodb::params {
  $dbpath     = '/var/lib/mongo'
  $smallfiles = true
  $bind_ip    = '127.0.0.1'
}
