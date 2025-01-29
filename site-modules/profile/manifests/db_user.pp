#
class profile::db_user (
    String $password
){
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    comment    => 'DBAs rule, yeah!',
    #password   => $password.node_encrypt::secret,
    password   => $password,
  }

  group { 'dba':
    ensure => 'present',
  }
}
