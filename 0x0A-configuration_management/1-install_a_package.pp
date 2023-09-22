#installing a package using Flsak

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
