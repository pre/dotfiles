# run under the current zsh shell:

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle

./symlink-dotfiles.sh

# ls: unrecognized option `--group-directories-first'
sudo ln -s $(brew --prefix)/opt/coreutils/libexec/gnubin/ls /usr/local/bin/ls

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

kubectl completion zsh > "${fpath[1]}/_kubectl"

echo "Click: iTerm 2 > Install Shell Integration"
read ok
