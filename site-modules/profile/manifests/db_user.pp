#
class profile::db_user {
  $password = 'password567'
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    password   => $password,
    comment    => $password,
  }

  group { 'dba':
    ensure => 'present',
  }
}
