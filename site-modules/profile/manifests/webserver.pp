#
class profile::webserver (
  String $port,
  String $docroot,
  String $group,
) {
  class { 'webapp':
    port    => $port,
    docroot => $docroot,
    group   => $group,
  }
}
