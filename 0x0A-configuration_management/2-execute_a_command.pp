# Kills a process named 'killmenow' using Puppet

exec { 'pkill':
    path      => '/usr/bin/',
  command     => 'pkill killmenow',
}
