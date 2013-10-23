#!/bin/sh -x

# Install fail2ban
rpm -Uvh http://mirror.us.leaseweb.net/epel/6/i386/epel-release-6-8.noarch.rpm
yum install fail2ban -y

# Install NewRelic
rpm -Uvh http://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm
yum install newrelic-php5 -y
#newrelic-install
#etc/init.d/newrelic-daemon restart

# Install zsh
yum install zsh -y

# install mod_pagespeed
yum install at -y
cd /tmp
wget https://dl-ssl.google.com/dl/linux/direct/mod-pagespeed-stable_current_x86_64.rpm
rpm -U mod-pagespeed-*.rpm
rm mod-pagespeed-stable_current_x86_64.rpm

# Install additional dependencies
yum install -y gcc curl-devel httpd-devel apr-devel apr-util-devel sqlite-devel
yum install -y ruby-rdoc ruby-devel 

# Install Ruby Gems
yum install rubygems -y

# Install Jekyll
gem install jekyll

# Install htop
yum install htop -y

# Install Mosh
yum install mosh

# Install Less
gem install therubyracer
gem install less


echo "Done. Please configure mod-pagespeed and New relic."
echo "run, 'sudo newrelic-install'"
echo "run, './etc/init.d/newrelic-daemon restart'"

