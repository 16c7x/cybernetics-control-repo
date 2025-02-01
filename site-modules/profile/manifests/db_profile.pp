#
class profile::db_profile {
  if $facts['location'] == 'cybernetics_a' {
    package { 'postgres-dev':
      ensure => absent,
    }
  } elsif $facts['location'] == 'cybernetics_b' {
    package { 'postgres-dev':
      ensure => present,
    }
  } else {
    fail('unsupported location')
  }
}
