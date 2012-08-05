#!/bin/sh

ipkg-opt install ack
ipkg-opt install git
ipkg-opt install nano
ipkg-opt install python27
ipkg-opt install py27-setuptools

easy_install-2.7 tornado

cd /mnt
wget http://www.secdev.org/projects/scapy/files/scapy-2.1.0.tar.gz
tar xzf scapy-2.1.0.tar.gz
cd scapy-2.1.0
python2.7 setup.py install
cd /mnt
rm -rf scapy-2.1.0
rm scapy-2.1.0.tar.gz