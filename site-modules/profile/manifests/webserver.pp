#
class profile::webserver {
  apache::vhost { 'user.example.com':
    port          => 80,
    docroot       => '/var/www/user',
    docroot_owner => 'www-data',
   docroot_group => 'www-data',
  }
}
