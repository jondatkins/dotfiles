# dotfiles

These are my dotfiles, based on the dotfiles-starter-kit tutorial linked below.
This is mainly for an Arch Linux desktp PC, but also for an WSL2 Ubuntu set up.
For WSL, set up your user as described here:

<https://gist.github.com/ld100/3376435a4bb62ca0906b0cff9de4f94b>

## Setup

- Clone the dotfiles repo to your home directory with 'git clone <https://github.com/jondatkins/dotfiles> ~/dotfiles'
- Run 'cd ~/dotfiles', then './install -l' to symlink the dotfiles.
- Run 'install -u' to unlink the files. Use the 't' flag to only symlink terminal config.
- Update the [files](https://github.com/jondatkins/dotfiles/tree/main/opt) that you want to keep synced between your systems.
- In /opt there is config for the terminal, e.g. tmux, zsh, neovim, and Arch linux deskop config.
- The opt/files-* files should have the relative path to the actual config file
  or dir in your dotfiles, followed by a space, followed by where you want the symlink to be made, relative to your home directory, e.g.

configs/git .config/git

This will create a symlink from ./configs/git to /home/$USER/.config/git

### This is based on the tutorial at

<https://freddiecarthy.com/blog/make-your-dotfiles-portable-with-git-and-a-simple-bash-script>
