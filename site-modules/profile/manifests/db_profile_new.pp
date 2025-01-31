#
class profile::db_profile_new {
  if $facts['location'] == 'cybernetics_a' {
    package { 'apache2-dev':
      ensure => absent,
    }
  } elsif $facts['location'] == 'cybernetics_b' {
    package { 'apache2-dev':
      ensure => present,
    }
  } else {
    fail('unsupported location')
  }
}
