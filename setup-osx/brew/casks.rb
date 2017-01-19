#!/usr/bin/env ruby

packages = [
  "p4merge",
  "disk-inventory-x",
  "sublime-text",
  "caskroom/homebrew-versions/java7",
  "moom",
  "witch",
  "logitech-control-center",
  "java7",
  "java",
  "insync",
  "imageoptim"
]

for package in packages do
  system("brew cask install #{package}")
end
