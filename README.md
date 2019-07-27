# dotfiles
Dot Config Files

This repository houses all of my dot files for Vim, Git, Bash, and other configurations. If you see any useful configuration settings here, feel free to integrate them into your configuration files.

# Vim Color Schemes referenced in config file:
* [bubblegum](https://github.com/baskerville/bubblegum)
* [sorcerer](https://github.com/adlawson/vim-sorcerer)
* [vim-tomorrow-theme](https://github.com/chriskempson/vim-tomorrow-theme)
* [codeschool](https://github.com/antlypls/vim-colors-codeschool)
* [vim-color-spring-night](https://github.com/rhysd/vim-color-spring-night)

### Copy config to home directory instructions:
* Run the `copy_config.sh` file to create symbolic links for `.vimrc` and `.aliases`
  * `./copy_config.sh`
* Add `source $HOME/.aliases` to the bottom of your `.bashrc` file.
  * Run `source ~/.bashrc` to reload your aliases (or restart your terminal).
* Install 'tmux' for some of the aliases to work (look up installation instructions for your OS).
* Reference `.git_aliases` from ~/.gitconfig file:
  * Instructions for creating a '.gitconfig' file listed below.
  * Add this section to your .gitconfig file to load the aliases stored here:
  * ```
    [include]
      path = /path/to/.git_aliases
    ```

### Using the vimrc config:
 * Setup Vundle by running through the setup [here](https://github.com/VundleVim/Vundle.vim)
 * Launch a vim edit session and run `:PluginInstall` to install the plugins references in the `.vimrc` file.

### Files Here:
* Files that must be copied over directly
  * `.rubocop.yml`
  * `settings.json` (some settings here require specific VS Code plugins to be installed)
  * `.git_aliases` (load it inside your '.gitconfig')
* Files that are loaded via `copy_config.sh` script:
  * `.vimrc`
  * `.aliases`
  * `.tmux.conf`

### Updates To Do:
* Figure out how to copy .vimrc to init.vim (the neovim config file).
* Add a symbolic link creation of 'init.vim' to your 'copy_config' script.
* Double check the values in tmux config.
* Add tmuxinator config.
* Add auto-save plugin to .vimrc.
* Make a bash function to create symbolic links in the `copy_config.sh` file.

#### *Creating a `.gitconfig` file:
* Usually your .gitconfig file will be located in your home folder: `~/.gitconfig`. If not:
* Run this command to create the initial file `git config --global user.email "youremail@example.com"`