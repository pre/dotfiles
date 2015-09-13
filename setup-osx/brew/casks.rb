#!/usr/bin/env ruby

packages = [
  "texpad",
  "skitch",
  "p4merge",
  "google-chrome",
  "alfred",
  "vlc",
  "flowdock",
  "sourcetree",
  "skype",
  "genymotion",
  "virtualbox",
  "atom",
  "disk-inventory-x",
  "spotify",
  "cinch",
  "caffeine",
  "carbon-copy-cloner",
  "iterm2",
  "sublime-text",
  "intellij-idea",
  "caskroom/homebrew-versions/java6",
  "moom",
  "witch",
  "android-studio",
  "rowanj-gitx",
  "logitech-control-center",
  "java7",
  "insync",
  "imageoptim"
]

for package in packages do
  system("brew cask install #{package}")
end
