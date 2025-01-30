#
class profile::db_profile_old {
  if ::db_env != 'prod' {
    package { 'db-development-tools':
      ensure => present,
    }
  }

  file { '/opt/puppetlabs/facter/facts.d/db_facts.sh':
    ensure => file,
    mode   => '0755',
    source => 'puppet:///modules/profile/db_fact.sh',
  }
}
