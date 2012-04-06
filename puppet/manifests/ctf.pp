class ctf {
  package { 'build-essential':
    ensure => installed
  }
  include stripectf
}

