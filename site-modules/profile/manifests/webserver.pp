#
class profile::webserver {
  nginx::resource::server { 'kibana.myhost.com':
    listen_port => 80,
    #proxy       => 'http://localhost:5601',
  }
}
