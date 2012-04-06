class smashthestack::files {
  file { "/levels":
    ensure => directory,
    owner => root, group => root, mode => 0755
  }
}
