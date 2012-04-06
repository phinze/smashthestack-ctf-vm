define smashthestack::level(
  $username = $title,
  $uid,
  $password,
  $hashed_password,
  $source,
  $next_user
) {
  ubuntu_user { $username:
    uid => $uid,
    password => $hashed_password
  }

  file { "/home/${username}/.password":
    content => $password,
    owner => $username, group => $username, mode => '0600'
  }

  $file_basename = inline_template('<%= File.basename(source) %>')
  $file_extension = inline_template('<%= File.extname(file_basename) %>')

  case $file_extension {
    '.c': {
      $binary_filename = inline_template('<%= file_basename.split(".").first %>')
      file { "/levels/${$file_basename}":
        source => $source,
        owner => $username,
        group => $next_user,
        mode => '0644'
      }
      exec { "/levels/${binary_filename}":
        command => "gcc -g ${file_basename} -o ${binary_filename}",
        creates => "/levels/${binary_filename}",
        cwd => "/levels",
        require => File["/levels/${$file_basename}"]
      }
      file { "/levels/${binary_filename}":
        owner => $next_user,
        group => $username,
        mode => '6755',
        require => Exec["/levels/level01"]
      }
    }
    '.py', '.php': {
      file { "/levels/${$file_basename}":
        source => $source,
        owner => $username,
        group => $next_user,
        mode => '6755'
      }
    }
    default: { fail("unknown extension ${file_extension}") }
  }
}
