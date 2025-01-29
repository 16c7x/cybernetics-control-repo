#
class profile::db_user (
    Sensitive[String[1]] $password
){
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    comment    => 'DBAs rule, yeah!',
    password   => $mykey.node_encrypt::secret,
  }

  group { 'dba':
    ensure => 'present',
  }
}
