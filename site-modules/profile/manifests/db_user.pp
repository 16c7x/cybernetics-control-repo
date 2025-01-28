#
class profile::db_user (
  #Sensitive[String[1]] $password
  password= Sensitive('password123')
){
  password= Sensitive('password123')
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
