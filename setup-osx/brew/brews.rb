#!/usr/bin/env ruby

def system_verbose(cmd)
  puts cmd
  success = system(cmd)

  raise "command was not executed successfully" unless success
end

def brew_reinstall(package, opts={})
  opts_with_mode = opts.merge({mode: :reinstall})
  brew_install(package, opts_with_mode)
end

def brew_install(package, opts={})
  if package.is_a? Array
    package.each do |p|
      brew_install p, opts
    end

    return
  end

  mode = if opts[:mode]
    opts[:mode].to_s
  else
    "install"
  end

  puts "--[ #{package} ]".ljust(80,"-")
  if opts[:loads] && mode == "reinstall"
    launchctl_unload_cmd = "launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.#{package}.plist"
    system_verbose(launchctl_unload_cmd)
  end

  install_cmd = "brew #{mode} #{package}"
  system_verbose(install_cmd)

  if opts[:loads]
    link_cmd = "ln -sfv /usr/local/opt/#{package}/*.plist ~/Library/LaunchAgents"
    system_verbose(link_cmd)

    launchctl_load_cmd = "launchctl load ~/Library/LaunchAgents/homebrew.mxcl.#{package}.plist"
    system_verbose(launchctl_load_cmd)
  end

  puts
end

doctor_says_ok = system("brew doctor")
raise "doctor is not happy" unless doctor_says_ok

mode = ARGV[0]

if mode == "reinstall"
  alias :brew :brew_reinstall
else
  alias :brew :brew_install
end

system_verbose "sudo -v"

brew "git"

brew ["postgresql", "redis"], loads: false
brew "mongodb", loads: false
brew "imagemagick"
brew ["youtube-dl", "ffmpeg"]
brew "yle-dl"
brew "homebrew/dupes/rsync"
brew "wget"
brew "heroku-toolbelt"

brew "htop-osx"
puts "Setting suid for htop"
system_verbose "sudo chown root:wheel /usr/local/bin/htop"
system_verbose "sudo chmod u+s /usr/local/bin/htop"

brew "tree"
brew "autojump"
brew "shellcheck"
brew "kube-ps1"
brew "fzf"
brew "ipcalc"
brew "ccat"
