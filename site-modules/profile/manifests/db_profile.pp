#
class profile::db_profile {
  if $facts['location'] = 'cybernetics_a' {
    package {'db-development-tools'
    ensure => present,
  } elsif { $facts['location'] = 'cybernetics_b' {
      package {'db-development-tools'
      ensure => absent,
  } else {
    fail('unsupported location')
  }
}
