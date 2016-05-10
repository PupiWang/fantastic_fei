#!/bin/bash
echo '----prepare----'
sudo yum update
sudo yum install curl
curl -L get.rvm.io | bash -s stable
source ~/.rvm/rvm.sh

# rvm --default use 1.9.3
# bundle install
#
# echo '-----start--------'
# /usr/local/bin/gauge specs
