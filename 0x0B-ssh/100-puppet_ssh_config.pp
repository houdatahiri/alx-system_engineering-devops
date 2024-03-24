#!/usr/bin/env bash
#using puppet

file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'Turn off passwd auth':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAauthentication no',
  match   => '^#PasswordAuthentication',
}

file_line { 'Declare identity file':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^#IdentityFile',
}
