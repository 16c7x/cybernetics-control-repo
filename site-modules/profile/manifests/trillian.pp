#
class profile::trillian {
  user { 'trillian':
    ensure     => 'present',
    gid        => 'earth',
    home       => '/home/trillian',
    managehome => 'true',
    comment    => 'Tricia McMillan',
  }

  group { 'earth':
    ensure => 'present',
  }
}

