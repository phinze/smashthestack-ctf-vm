class ctf {
  package { "build-essential":
    ensure => installed
  }

  ubuntu_user { "level01": uid => "8001", password => '$6$sdfiy$GiijcEUzna.dHjvZyo1ehExHydmN7snDiHWwt8wSemmcU.8tvZfsuKl/IcRhYAGVT8C.Jsx.LUobWmYp4yAkZ.' }
}

