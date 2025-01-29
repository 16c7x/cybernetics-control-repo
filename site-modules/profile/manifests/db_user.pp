#
class profile::db_user (
    #String $private_key
    Sensitive[String[1]] $mykey
){
  $password=Sensitive('pass456')
  user { 'postgres':
    ensure     => 'present',
    gid        => 'dba',
    home       => '/home/postgres',
    managehome => 'true',
    comment    => 'DBAs rule, yeah!',
    #password   => $password.unwrap,
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

  #file_line { '/home/postgres/key':
  #    ensure => present,
  #    path   => '/home/postgres/key',
  #    line   => "key: ${private_key}",
  #    match  => '^key:',
  #}

  notify { 'secret message':
    message => $mykey,
    }

  ssh_authorized_key { 'nick@magpie.example.com':
    ensure => present,
    user   => 'postgres',
    type   => 'ssh-rsa',
    key    => 'AAAAB3Nza[...]qXfdaQ==',
  }
}
