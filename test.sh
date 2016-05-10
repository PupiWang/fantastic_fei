#!/bin/bash
rvm --default use 1.9.3

echo '-----run test--------'
/usr/local/bin/gauge specs
