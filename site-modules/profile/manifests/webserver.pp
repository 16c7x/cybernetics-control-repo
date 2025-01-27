#
class profile::webserver {
  apache::vhost { 'vhost.example.com':
    port    => 80,
    #docroot => '/var/www/vhost',
  }  
}
