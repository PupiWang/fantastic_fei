#!/bin/bash
rvm --default use 1.9.3
bundle install

echo '-----run test--------'
/usr/local/bin/gauge specs
