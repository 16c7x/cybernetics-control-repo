#
# @param source
#   An array of the NTP sources to use.
#
class profile::baseline (
  Array[Stdlib::Host] $source
) {
  class { 'ntp':
    servers => $source,
  }
}
