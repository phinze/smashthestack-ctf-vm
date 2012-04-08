define smashthestack::goal(
  $username = $title,
  $uid,
  $motd,
  $password,
  $hashed_password
) {
  ubuntu_user { $username:
    uid => $uid,
    password => $hashed_password
  }

  file { "/home/${username}/.password":
    content => $password,
    owner => $username, group => $username, mode => '0600'
  }

  file { "/home/${username}/.motd":
    source => $motd,
    owner => $username, group => $username, mode => '0600'
  }

  file { "/home/${username}/.profile":
    content => "cat ~/.motd\n",
    owner => $username, group => $username, mode => '0700'
  }
}
