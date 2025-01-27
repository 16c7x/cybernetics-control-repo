#
class profile::webserver {
  apache::vhost { 'localhost':
    port    => 80,
    docroot => '/var/www/vhost',
  }  
}
