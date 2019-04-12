#!/bin/bash

#install bundler
gem install bundler:2.0.1

#install gems
bundle install

#run cucumber
cucumber

