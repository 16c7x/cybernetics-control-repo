#
class profile::baseline (
  $source
) {
  class { 'ntp':
     servers => $source,
  }
}
