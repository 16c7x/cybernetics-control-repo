#
class role::marketing_dev_webserver {
  include profile::baseline
  include profile::webserver
  include profile::webdevtools 
}
