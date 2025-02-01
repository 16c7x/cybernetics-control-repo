#
class profile::topscopetest {
$whereami = 'class'
# look in site.pp
# look on the host - facter whereami

notify { ::$whereami: }
}
