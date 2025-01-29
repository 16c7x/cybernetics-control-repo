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
    #password   => $mykey.node_encrypt::secret,
    password   => $mykey,
  }

  group { 'dba':
    ensure => 'present',
  }
}
