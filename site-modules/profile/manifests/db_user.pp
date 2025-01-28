#
class profile::db_user (
  String $password
){
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    password   => $password
    comment    => 'The Postgres user',
  }

  group { 'dba':
    ensure => 'present',
  }
}
