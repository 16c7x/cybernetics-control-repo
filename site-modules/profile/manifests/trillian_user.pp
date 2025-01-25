#
class profile::trillian_user {
  file { '/tmp/trillian_user.sh' :
    ensure => 'file',
    source => 'puppet:///modules/usersprofile/trillian_user.sh',
    mode   => '0755',
  }

  exec { 'trillian_user':
    command => '/tmp/trillian_user.sh',
    require => File['/tmp/trillian_user.sh'],
  }
}
