class xvfb {
  package { 'xvfb':
    ensure => "installed",
  }

  file { '/etc/profile.d/set_xvfb_display.sh':
    ensure => present,
    source => "puppet:///modules/xvfb/set_xvfb_display.sh",
    owner => "root",
    group => "root",
    mode => 755,
  }

  exec { 'xvfb':
    command => "/usr/bin/X11/Xvfb :99 >>/home/vagrant/tmp/xvfb.out 2>&1 &",    
  }
}
