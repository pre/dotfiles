#!/usr/bin/env ruby

files=[
".gitconfig",
".nanorc",
".zshrc"
]

puts "install oh-my-zsh, nvm, rvm, brew + brew cask packages, scm breeze before running this"
gets

for file in files do
  system("rm #{ENV['HOME']}/#{file}")
  system("ln -s #{Dir.pwd}/#{file} #{ENV['HOME']}/#{file}")
end
