#!/bin/bash

echo '----prepare----'
if [[ -s "$HOME/.rvm/bin/rvm" ]] ; then
  source "$HOME/.rvm/bin/rvm"
else
  sudo yum update
  sudo yum install curl
  curl -L get.rvm.io | bash -s stable
  source ~/.rvm/bin/rvm
fi

rvm install 1.9.3
rvm --default use 1.9.3

# bundle install
#
# echo '-----start--------'
# /usr/local/bin/gauge specs
