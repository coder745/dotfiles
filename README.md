# dotfiles
Dot Config Files

This repository houses all of my dot files for Vim, Git, Bash, and other configurations. If you see any useful configuration settings here, feel free to integrate them into your configuration files.

# Vim Color Schemes referenced in config file:
* [bubblegum](https://github.com/baskerville/bubblegum)
* [sorcerer](https://github.com/adlawson/vim-sorcerer)
* [vim-tomorrow-theme](https://github.com/chriskempson/vim-tomorrow-theme)
* [codeschool](https://github.com/antlypls/vim-colors-codeschool)
* [vim-color-spring-night](https://github.com/rhysd/vim-color-spring-night)

### Using the vimrc config:
 * Setup Vundle by running through the setup [here](https://github.com/VundleVim/Vundle.vim)
 * Launch a vim edit session and run `:PluginInstall` to install the plugins references in the `.vimrc` file.

### Copy config to home directory instructions:
* Run the `copy_config.sh` file to create symbolic links for `.vimrc` and `.aliases`
  * `./copy_config.sh`
* Reference `.git_aliases` from ~/.gitconfig file:
  * Add this section to your .gitconfig file to load the aliases stored here:
  * ```
    [include]
      path = /path/to/.git_aliases
    ```

### Updates To Do:
* Double check the values in tmux config.
* Add other config to tmux.
* Add tmuxinator config.
* Add instructions to 'stash' script (i.e. 'press "q" to exit, etc.).
* Make 'stash' script more resiliant to errors (i.e. prevent from continuing when there are no stashes, prevent it continuing if a file number is selected for which there is no stashed file).
* Make a bash function to create symbolic links in the `copy_config.sh` file.
* Add a section to your .gitconfig file where you can reference the config in your `.gitconfig` file.
  * Add notes to your readme file about how to do this.
