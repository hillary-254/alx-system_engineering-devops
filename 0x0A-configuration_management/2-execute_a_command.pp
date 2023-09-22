# Kills a process named 'killmenow' using Puppet

exec { 'pkill':
  command     => 'pkill killmenow',
  path     => '/usr/bin/',
}
