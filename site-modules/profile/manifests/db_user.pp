#
class profile::db_user (
  String $mykey
  ){
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    comment    => 'DBAs rule, yeah!',
    password   => Sensitive(lookup('password')),
    #password   => $password,
  }

  group { 'dba':
    ensure => 'present',
  }

  file {'/home/postgres/keyfile':
    ensure => file,
    content => Deferred("node_decrypt", [$mykey]),
  }
}

