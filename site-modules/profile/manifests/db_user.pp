#
class profile::db_user {
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
}
