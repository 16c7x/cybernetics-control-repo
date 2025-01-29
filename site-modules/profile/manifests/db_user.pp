#
class profile::db_user (
    Sensitive[String] $mykey
){
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    comment    => 'DBAs rule, yeah!',
    #password   => 'password123'.node_encrypt::secret,
    #password   => $password,
  }

  group { 'dba':
    ensure => 'present',
  }

  file {'/home/postgres/key': 
      ensure  => file,
      content => $mykey.node_encrypt::secret, 
    }
}
