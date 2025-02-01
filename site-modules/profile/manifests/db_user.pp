# jq '.resources[] | select(.type == "File" and .title == "/home/postgres/keyfile")' ip-10-138-1-60.eu-west-1.compute.internal.json
class profile::db_user (
  String $password
) {
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    comment    => 'DBAs rule, yeah!',
    password   => $password,
  }

  group { 'dba':
    ensure => 'present',
  }
}
