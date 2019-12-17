#
# = Class: lldpd
#
# This module deploys lldpd
#
class lldpd (
  $service_ensure = 'running',
  $service_enable = true,
){

  if "x${::is_virtual}" == 'xfalse' {

    package { 'lldpd':
      ensure => present,
    }

    service { 'lldpd':
      ensure  => $service_ensure,
      enable  => $service_enable,
      require => Package['lldpd'],
    }

  }

}
