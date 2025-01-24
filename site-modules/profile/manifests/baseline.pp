#
# @param source
#   An array of the NTP sources to use.
#
class profile::baseline (
  Array[String] $source
) {
  class { 'ntp':
    servers => $source,
  }
}
