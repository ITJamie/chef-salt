name             'salt'
maintainer       'Grant Ridder'
maintainer_email 'shortdudey123@gmail.com'
license          'Apache 2.0'
description      'Installs and configures Salt'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.0.0'

recipe 'salt::master', 'Installs and configures a Salt master'
recipe 'salt::minion', 'Installs and configures a Salt minion'

supports 'ubuntu', '>= 12.04'
supports 'fedora', '>= 19.0'
supports 'debian', '>= 7.0'

%w(redhat centos scientific amazon oracle).each do |os|
  supports os, '>= 5.0'
end

depends 'apt'
depends 'yum'
depends 'ohai', '~> 4.0'

source_url 'https://github.com/shortdudey123/chef-salt' if respond_to?(:source_url)
issues_url 'https://github.com/shortdudey123/chef-salt/issues' if respond_to?(:issues_url)
