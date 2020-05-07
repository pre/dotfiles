#!/usr/bin/env ruby

packages = [
  "p4v",
  "sublime-text",
  "witch",
  "imageoptim"
]

for package in packages do
  system("brew cask install #{package}")
end
