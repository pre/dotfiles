#!/usr/bin/env bash

set -e

echo "Bundler"
rvm gemset use @global

gem install bundler

# set number of parallel jobs to bet 1 less than number of CPU cores
# https://robots.thoughtbot.com/parallel-gem-installing-using-bundler
number_of_cores=`sysctl -n hw.ncpu` && \
  bundle config --global jobs `expr $number_of_cores - 1`
