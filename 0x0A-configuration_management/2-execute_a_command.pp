# Kills a process named 'killmenow' using Puppet

exec { 'killmenow':
  command     => 'pkill -f killmenow',
  refreshonly => true,
  subscribe   => File['/path/to/killmenow_script'], # Replace with the actual path to your script
}
