# jq '.resources[] | select(.type == "File" and .title == "/home/postgres/keyfile")' ip-10-138-1-60.eu-west-1.compute.internal.json
class profile::db_user (
  String $password
  ){
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    comment    => 'DBAs rule, yeah!',
    #password   => Sensitive(lookup('password')),
    password   => 'postgres123',
  }

  group { 'dba':
    ensure => 'present',
  }

  file {'/home/postgres/keyfile':
    ensure => file,
    content => Deferred("node_decrypt", [$password]),
    #content => 'test123'.node_encrypt::secret,
    #content => 'test123',
  }
}

