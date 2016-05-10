#!/bin/bash

if [[ -s "$HOME/.rvm/bin/rvm" ]] ; then
  source "$HOME/.rvm/bin/rvm"
else
  sudo yum update
  sudo yum install curl
  curl -L get.rvm.io | bash -s stable
  source ~/.rvm/bin/rvm
fi

if test -f "$HOME/.rvm/scripts/rvm"; then
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
fi

if ! hash ruby >/dev/null 2>&1
then
  rvm install 1.9.3
  rvm --default use 1.9.3
  gem install bundle
fi

if ! type /usr/local/bin/gauge >/dev/null 2>&1
then
  sudo ./install.sh
  /usr/local/bin/gauge --install ruby
fi

bundle install

/usr/local/bin/gauge specs
