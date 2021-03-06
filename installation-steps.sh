# Install Puppet
wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb 
apt-get update
apt-get install -y puppet
puppet --version

# Check the Environment
puppet module list
which git
puppet resource package git
service apache2 status
puppet resource service apache2
curl -s -w "%{http_code}\n" -o /dev/null `hostname`.cloudapp.net

# Search for and Install the Puppet Modules
puppet module search puppetlabs-vcsrepo
puppet module search puppetlabs-apache
puppet module install puppetlabs-vcsrepo
puppet module install puppetlabs-apache
wget https://raw.githubusercontent.com/managedkaos/puppet-forge-intro/master/apache-vcsrepo.pp
sudo puppet apply apache-vcsrepo.pp

# Check the Environment
puppet module list
which git
puppet resource package git
service apache2 status
puppet resource service apache2
curl -s -w "%{http_code}\n" -o /dev/null `hostname`.cloudapp.net

