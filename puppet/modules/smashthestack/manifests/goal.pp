define smashthestack::goal(
  $username = $title,
  $uid,
  $password
) {
  ubuntu_user { $username:
    uid => $uid,
    password => $password
  }
}
