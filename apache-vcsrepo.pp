# define the docroot for use in multiple places
$docroot = '/www'

# install the git package
package{ 'git':
	ensure => installed,
}

# instantiate the apache class
class { 'apache': }

# configure the apache vhost
apache::vhost { $::hostname:
  docroot => $docroot,
}

# clone the repository
vcsrepo { $docroot:
    ensure   => present,
    provider => git,
    source   => "https://github.com/managedkaos/puppet-forge-intro.git"
}
