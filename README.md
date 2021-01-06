# Dot Files

This repository houses my dot files. If you see any useful configuration settings here, feel free to integrate them into your configuration files.

## - Usage Instructions -

### 1. Install Git, Vim, and Tmux:

- If you do not have `git`, `vim`, `ctags` `the_silver_searcher`, and `tmux` installed, lookup installation directions for your operating system.

### 2. Setup Vundle and FZF and YouCompleteMe

- Setup Vundle by running through the setup here:
  - https://github.com/VundleVim/Vundle.vim
- Setup FZF by walking through these two links:
  - https://github.com/junegunn/fzf
  - https://github.com/junegunn/fzf.vim

### 3. Copy Config and Install Plugins:

- Clone this repo and run the `./copy_config.sh` file to create symbolic links.
- Launch a vim edit session by typing `vim` in the terminal, and run `:PluginInstall` to install the plugins referenced in the `~/.vimrc` file.
- Add this to the bottom of your `~/.bashrc` file.
   ```bash
   if [ -f ~/.bash_aliases ]; then
      source ~/.bash_aliases
    fi
    
   if [ -f ~/.functions ]; then
      source ~/.functions
    fi

   if [ -f ~/.terminal_changes ]; then
      source ~/.terminal_changes
    fi
   ```
  - If you are running another shell like 'zsh', you will need to add it to it's config file as well.
  - Run `source ~/.bashrc` or `source ~/.zshrc` to reload your aliases (or restart your terminal).
- Make sure these are added in the correct order (bottom to top): `.functions`, `.aliases`, `.terminal_changes`.

### 4. Add a Reference the Git Config:

- Reference `.git_aliases` from `~/.gitconfig` file:
  - Instructions for creating a '.gitconfig' file is listed below.
  - Add this section to your .gitconfig file to load the aliases stored in `.git_aliases`:
  - ```
    [include]
      path = /path/to/.git_aliases
    ```

### 5. Add VS Code Config (if applicable):

- If you want to setup your VS Code editor with my config, copy the files under the `vscode` folder to the appropriate folder on your machine.
  - Mac: `~/Library/Application Support/Code/User/`
  - Linux: `~/.config/Code/User`
  - Windows: `C:\Users\username\AppData\Roaming\Code\User`
- Then install the plugins that I have listed in the `vscode_plugins.md` file.

### 6. Add the scripts repo to your file path:

- If you want access to the scripts in the `scripts` repo, add that to your file path by editing your `~/.bashrc` and adding a line like this:
  - `export PATH="$PATH:$HOME/path/to/scripts"`

### 7. Add the git container to your file path:
  - `cd /path/to/repos`
  - `git clone git@github.com:joshayoung/git-container.git`
  - `export PATH="$PATH:$HOME/path/to/git-container"`

---

### Files Stored in Repo:

- Files that the `copy_config.sh` script does not setup:
  - `.rubocop.yml`
  - `vscode/settings.json`
    - My VS Code editor settings (these are settings that I have changed from the defaults). Some settings here require specific VS Code plugins to be installed.
  - `vscode/keybindings.json`
    - My VS Code keybindings
  - `vscode_plugins.md`
    - A list of the plugins I am using in VS Code.
  - `.git_aliases` (load it inside your '.gitconfig')
- Files that are loaded via `copy_config.sh` script:
  - `.vimrc`
  - `.aliases`
  - `.functions`
  - `.terminal_changes`
  - `.tmux.conf`

### Vim Color Schemes Referenced in Config File:

- [bubblegum](https://github.com/baskerville/bubblegum)
- [sorcerer](https://github.com/adlawson/vim-sorcerer)
- [vim-tomorrow-theme](https://github.com/chriskempson/vim-tomorrow-theme)
- [codeschool](https://github.com/antlypls/vim-colors-codeschool)
- [vim-color-spring-night](https://github.com/rhysd/vim-color-spring-night)

### Instructions:

- \*Create a `.gitconfig` file:
  - Usually your .gitconfig file will be located in your home folder: `~/.gitconfig`. If not:
  - Run this command to create the initial file `git config --global user.email "youremail@example.com"`
