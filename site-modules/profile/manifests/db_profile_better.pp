#
class profile::db_profile_better {
  if $facts['db_env'] != 'prod' {
    package { 'postgres-dev':
      ensure => present,
    }
  }

  file { '/opt/puppetlabs/facter/facts.d/db_facts.sh':
    ensure => file,
    mode   => '0755',
    source => 'puppet:///modules/profile/db_fact.sh',
  }
}
