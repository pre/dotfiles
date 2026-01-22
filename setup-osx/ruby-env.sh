#!/usr/bin/env bash

set -euo pipefail

echo "Bundler"
rvm gemset use @global

gem install bundler

# set number of parallel jobs to bet 1 less than number of CPU cores
# https://robots.thoughtbot.com/parallel-gem-installing-using-bundler
total_cores=$(sysctl -n hw.ncpu)
allocated_cores=$(( total_cores - 1))

bundle config --global jobs $allocated_cores
