# Dot Files

This repository houses my dot files. If you see any useful configuration settings here, feel free to integrate them into your configuration files.

## - Usage Instructions -

### 1. Install Git, Vim, and Tmux:
* If you do not have `git`, `vim`, and `tmux` installed, lookup installation directions for your operating system.

### 2. Setup Vundle and FZF and YouCompleteMe
 * Setup Vundle by running through the setup [here](https://github.com/VundleVim/Vundle.vim).
 * Setup FZF by walking through these two links:
   * https://github.com/junegunn/fzf
   * https://github.com/junegunn/fzf.vim
  * Setup YouCompleteMe by walking through the installation instructions here:
    * https://github.com/ycm-core/YouCompleteMeinding.pry

### 3. Copy Config  and Install Plugins:
* Clone this repo and run the `./copy_config.sh` file to create symbolic links.
 * Launch a vim edit session by typing `vim` in the terminal, and run `:PluginInstall` to install the plugins referenced in the `~/.vimrc` file.
* Add `source $HOME/.aliases` to the bottom of your `~/.bashrc` file.
  * Run `source ~/.bashrc` to reload your aliases (or restart your terminal).

### 4. Add a Reference the Git Config:
* Reference `.git_aliases` from `~/.gitconfig` file:
  * Instructions for creating a '.gitconfig' file is listed below.
  * Add this section to your .gitconfig file to load the aliases stored in `.git_aliases`:
  * ```
    [include]
      path = /path/to/.git_aliases
    ```

---

### Files Stored in Repo:
* Files that the `copy_config.sh` script does not setup:
  * `.rubocop.yml`
  * `settings.json` (some settings here require specific VS Code plugins to be installed)
  * `.git_aliases` (load it inside your '.gitconfig')
* Files that are loaded via `copy_config.sh` script:
  * `.vimrc`
  * `.aliases`
  * `.tmux.conf`

### To Do:
* Figure out how to copy `.vimrc` to init.vim (the neovim config file).
* Add a symbolic link creation of `init.vim` to your `copy_config.sh` script.
* Double check the values in `.tmux.config`.
* Add tmuxinator config.

### Vim Color Schemes Referenced in Config File:
* [bubblegum](https://github.com/baskerville/bubblegum)
* [sorcerer](https://github.com/adlawson/vim-sorcerer)
* [vim-tomorrow-theme](https://github.com/chriskempson/vim-tomorrow-theme)
* [codeschool](https://github.com/antlypls/vim-colors-codeschool)
* [vim-color-spring-night](https://github.com/rhysd/vim-color-spring-night)

### Instructions:

* *Create a `.gitconfig` file:
  * Usually your .gitconfig file will be located in your home folder: `~/.gitconfig`. If not:
  * Run this command to create the initial file `git config --global user.email "youremail@example.com"`
