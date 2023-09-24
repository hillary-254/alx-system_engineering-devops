# Ensure the puppetlabs/stdlib module is installed
class { 'stdlib': }

# Turn off password authentication in SSH client configuration
file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
  match  => '^PasswordAuthentication.*',
}

# Configure the SSH client to use the private key ~/.ssh/school
file_line { 'Declare identity file':
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school',
  match  => '^IdentityFile.*',
  ensure => present,
  require => Class['stdlib'],
}
