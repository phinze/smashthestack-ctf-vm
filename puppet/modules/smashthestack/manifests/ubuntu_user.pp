define ubuntu_user(
$username = $title,
$param_groupname = undef,
$uid,
$param_gid = undef,
$param_homedir = undef,
$password = "changeme"
) {

  $groupname = $param_groupname ? { '' => $username, default => $param_groupname }
  $gid = $param_gid ? { '' => $uid, default => $param_gid }
  $homedir = $param_homedir ? { '' => "/home/$username", default => $param_homedir }

  group { $groupname:
    gid => $gid
  }

  user { $username:
    home => $homedir,
    uid => $uid,
    gid => $gid,
    shell => '/bin/bash',
    password => $password
  }

  file { $homedir:
    ensure => directory,
    owner => $username,
    group => $groupname,
    mode => '0750'
  }
}
