#
class profile::webserver (
  String $port
){
  class {'webapp':
    port => $port,
  }
}
