#!/usr/bin/env bash

apt-get update


anaconda=Anaconda2-4.2.0-Linux-x86_64.sh
cd /vagrant
if [[ ! -f $anaconda ]]; then
    wget --quiet http://repo.continuum.io/archive/$anaconda
fi
chmod +x $anaconda
./$anaconda -b -p /opt/anaconda

cat >> /home/vagrant/.bashrc << END
# add for anaconda install
PATH=/opt/anaconda/bin:\$PATH
END

apt-get install python-pip