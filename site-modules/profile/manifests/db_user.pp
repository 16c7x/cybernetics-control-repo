#
class profile::db_user (
    String $private_key
){
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    comment    => 'DBAs rule, yeah!',
  }

  group { 'dba':
    ensure => 'present',
  }

  file { '/home/postgres/key':
    ensure  => file,
    owner   => postgres,
    group   => dba,
    mode    => '0600',
  }

  file_line { '/home/postgres/key':
      ensure => present,
      path   => '/home/postgres/key',
      line   => "key: ${private_key}",
      match  => '^key:',
  }
}
