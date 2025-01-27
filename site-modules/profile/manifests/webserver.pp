#
class profile::webserver {
  class {'webapp':
    port => '80',
  }
}
