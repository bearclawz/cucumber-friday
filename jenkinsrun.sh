#!/bin/bash

#install bundler
gem install bundler:2.0.1

#install gems
bundle install


echo "sleeping"
sleep 2

#cd
cd /Users/kevin/workspace/Friday

echo "run cucumber:"

#run cucumber
rake cucumber

#return successful run
exit 0
