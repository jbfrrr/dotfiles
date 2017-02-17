# dotfiles
> ...The idea of a portable kit that has everything you might need ignites something inside me. It's like Batman's utility belt... - A. Savage

### Installation

At the moment, I haven't made a good install script yet that will take care of everything in a single run.

For now complete installation can be done by following these steps:

(_note: this is under the assumption that you're using Ubuntu or something alike_)


**Part 1: Resolve Initial Dependencies**

1. Upgrade your vim to the latest version (here's [how to upgrade to vim 8.0](http://tipsonubuntu.com/2016/09/13/vim-8-0-released-install-ubuntu-16-04/))
2. Install `vim-nox` and `vim-nox-py2` by doing `sudo apt-get install vim-nox && sudo apt-get install vim-nox-py2`

**Part 2: Install `dotfiles`**

1. Clone this repository,  `git clone https://github.com/jbfrrr/dotfiles`
2. Go to the dotfiles directory, `cd dotfiles` (you could optionally rename the directory to `.dotfiles/` to hide it if you wish)
3. Run the install script, `./install.sh`

**Part 3: Resolve Post-Run-Script Dependencies**

1. [Install Vundle](https://github.com/VundleVim/Vundle.vim) (make sure to clone Vundle's repo in `dotfiles/.vim/bundle/Vundle.vim`)
2. Open vim on your terminal by typing `vim`
3. Install plugins by hitting `<esc>: PluginInstall`.

And Voila! You should be good to go!
