# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include db_module
class db_module {
  file { '/home/benjy/mounts.sh':
    ensure => file,
    mode   => '0770',
    owner  => 'benjy',
    group  => 'db',
    source => 'puppet:///modules/db_module/mounts.sh',
  }

  cron { 'daily_script':
    ensure  => present,
    command => '/home/benjy/mounts.sh > /opt/puppetlabs/facter/facts.d/mounts.yaml',
    user    => 'benjy',
    hour    => 0,
    minute  => 0,
  }
}
