#!/bin/bash

#install bundler
gem install bundler:2.0.1

#install gems
bundle install

sleep 2

#run cucumber
rake cucumber

