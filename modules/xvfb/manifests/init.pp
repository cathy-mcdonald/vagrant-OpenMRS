class xvfb {
  package { 'xvfb':
    ensure => "installed",
  }

  file { "/etc/init.d/xvfb":
    ensure => present,
    source => "puppet:///modules/xvfb/xvfb",
    owner => "root",
    group => "root",
    mode => 755,
  }

  file { "/etc/profile.d/set_xvfb_display.sh":
    ensure => present,
    source => "puppet:///modules/xvfb/set_xvfb_display.sh",
    owner => "root",
    group => "root",
    mode => 755,
  }
}
