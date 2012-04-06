define smashthestack::goal(
  $username = $title,
  $uid,
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
}
