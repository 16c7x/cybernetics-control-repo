#
# @param source
#   An array of the NTP sources to use.
#
class profile::baseline (
  Array[Stdlib::Blablabla] $source
) {
  class { 'ntp':
    servers => $source,
  }
}
