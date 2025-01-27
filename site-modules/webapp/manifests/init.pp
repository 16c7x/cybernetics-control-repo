# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include webapp
class webapp (
  String $port
){
  file { '/etc/webapp.conf' :
    ensure => file,
    content => "port: ${port}",
  }
}
