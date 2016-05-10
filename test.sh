#!/bin/bash
rvm --default use 1.9.3
bundle install

echo '-----start--------'
/usr/local/bin/gauge specs
