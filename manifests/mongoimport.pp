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
