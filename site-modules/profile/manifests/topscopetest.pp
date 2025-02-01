#
class profile::topscopetest {
# $whereami = 'class' - doesn't work if called as $::whereami
# look in site.pp
# look on the host - facter whereami

notify { $::whereami: }
}
