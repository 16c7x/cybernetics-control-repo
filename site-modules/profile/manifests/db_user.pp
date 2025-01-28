#
class profile::db_user (
  Sensitive $password
){
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    password   => $password,
    comment    => 'The Postgres user',
  }

  group { 'dba':
    ensure => 'present',
  }
}
