# Definitions
class install_rvm {
  include rvm
  rvm::system_user { vagrant: ; }
}

class install_ruby {
    rvm_system_ruby {
        'ruby-1.9.3-p448':
        ensure      => 'present',
        default_use => true,
    }
}

class install_rails {
  rvm_gem {
    'ruby-1.9.3-p448@global/rails':
    ensure => '4.0.0'
  }
}

# Declarations
package { 'tzdata':
  ensure => installed
}

file { '/etc/localtime':
  require => Package['tzdata'],
  source => 'file:///usr/share/zoneinfo/America/New_York'
}

class { install_rvm: }
class { install_ruby: require => Class['install_rvm'] }
class { install_rails: require => Class['install_ruby'] }

include nodejs
