*my personal dot files / ricing  
install with GNUstow*


# *Dot! Dot!*
▒▒▒░░░░░░░░░░▄▐░░░░  
▒░░░░░░▄▄▄░░▄██▄░░░  
░░░░░░▐▀█▀▌░░░░▀█▄░  
░░░░░░▐█▄█▌░░░░░░▀█▄  
░░░░░░░▀▄▀░░░▄▄▄▄▄▀▀  
░░░░░▄▄▄██▀▀▀▀░░░░░  
░░░░█▀▄▄▄█░▀▀░░░░░░  
░░░░▌░▄▄▄▐▌▀▀▀░░░░░  
░▄░▐░░░▄▄░█░▀▀░░░░░  
░▀█▌░░░▄░▀█▀░▀░░░░░  
░░░░░░░░▄▄▐▌▄▄░░░░░  
░░░░░░░░▀███▀█░▄░░░  
░░░░░░░▐▌▀▄▀▄▀▐▄░░░  
░░░░░░░▐▀░░░░░░▐▌░░  
░░░░░░░█░░░░░░░░█░░  
░░░░░░▐▌░░░░░░░░░█░  

### Notes:

- I use dvorak keyboard layout, so if some configured hotkeys seem weird, you know why

# TODO:

- [ ] Add keyboard configs
- [ ] Add task warrior configs
- [ ] Add `/etc/` customizations



## Install

- Clone the repo somewhere into `$HOME`. *NOTE*: if you clone somewhere else, `stow` will not work as expected (stow automatically copies files into `../`)
- `cd` into the repository and run `stow stow` to install the ignore files
- `myrepos` is already configured to download, compile, and install many of the packages.  It does not manage requirements, though.  

## Set up systemd files

- If you want to use my systemd files, first run `stow systemd`, then manually enable each one you want
- For example, you probably want sxhkd to start on boot, so run `systemctl --user enable sxhkd` to enable it on boot

## Individual Package and Theme Information:

- LightDM theme is [GlitchDM](https://github.com/bryanbecker/glitchdm)
- [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) for plugins with theme [powerlevel9k](https://github.com/bhilburn/powerlevel9k)
- Vim is installed with `sudo apt-get install vim-gtk`.  Install [ Vundle ](https://github.com/VundleVim/Vundle.vim) first for the rc file to work
- Terminal is [ Termite ](https://github.com/thestinger/termite/).  For ubuntu users, this [this script](https://github.com/xiouy/termite-install_ubuntu16.04.1) to compile easily
- Launcher is [Rofi](https://davedavenport.github.io/rofi/)
- [Polybar](git@github.com:jaagr/polybar.git) - make sure you edit the github token in the configs to match your own
- Gui Theming:
  - GTK Theme: [Arc Dark](https://github.com/horst3180/arc-theme)
  - Icons: [Xenlism Wildfire](http://xenlism.github.io/wildfire/)
  - Cursor: [Breeze Hacked](https://www.gnome-look.org/content/show.php/Breeze+Serie?content=169316)
- Notifier is [Dunst](https://github.com/knopwob/dunst)
- Window manager is [bspwm](https://github.com/baskerville/bspwm) with sxhkd
- Firefox is installed with the following add-ons:
  - Stylish
    - [ Twily's Powerline Firefox CSS ]( https://userstyles.org/styles/102262/twily-s-powerline-firefox-css )
    - [ Nyan Cat progress bar video player theme ]( https://userstyles.org/styles/95033/youtube-nyan-cat-progress-bar-video-player-theme) - absoluted mandatory!
  - Greasemonkey
  - uBlock Origin
  - Vimperator
  
## Fonts:

- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) - mostly used for polybar
- [Awesome Terminal Fonts](https://github.com/gabrielelana/awesome-terminal-fonts) - used in terminal / powerlevel9k
- [Powerline Fonts](https://github.com/powerline/fonts) - favorite is Sauce Code Pro
  
## Other Cool Software
- **xcape** for adding extra functionality to modifier keys (`ctrl` as `esc` when pressed alone)
- **[ mosh ](https://mosh.org/)** replaces SSH.  Keeps the connection up and fixes input lag.  Useful for poor connections
- **thefuck**
- **tldr**
- **asdf** like `rvm` but for everything
- **glances**
- **pass**
- **i3lock-color**
- **xdo**
- ~~[ lsp ](https://github.com/dborzov/lsp) - a more human friendly ls~~  * too slow *
- **expect** - http://blog.robertelder.org/don-libes-expect-unix-automation-tool/
- ~~[ vcspull ](https://github.com/tony/vcspull) - automatically keep multiple repos up to date~~  * changed for myrepos
- [ myrepos ](https://myrepos.branchable.com/) - run `mr update` inside $HOME to update all tracked repos (first run `stow myrepos`)
- **[ task spooler ](http://vicerveza.homeunix.net/~viric/soft/ts/article_linux_com.html) - `ts` (`tsp` on ubuntu) -- queues tasks to run one-at-a-time.  Useful for youtube-dl

## Hints:
- use `xprop`, then click on a window to get information about it.  This is useful for configuring compton, sxhkd, bspwm, etc.
- use `xev` to get information on key or button names for use in sxhkd

