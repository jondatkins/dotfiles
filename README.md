# dotfiles

These are my dotfiles, based on the dotfiles-starter-kit tutorial linked below.
It assumes you are running Arch for WSL, and that you have set up a user as described here:

<https://gist.github.com/ld100/3376435a4bb62ca0906b0cff9de4f94b>

## Setup

- Open up the [install](https://github.com/gjunkie/dotfiles-starter-kit/blob/main/install) script and change the `GITHUB_USER` variable to your username.
- Update the [files](https://github.com/gjunkie/dotfiles-starter-kit/blob/main/opt/files) that you want to keep synced between your systems. The opt/files file should have the relative path to the actual config file / dir in your dotfiles, followed by a space, followed by where you want the symlink to be made, relative to your home directory, e.g.

configs/git .config/git

This will create a symlink from ./configs/git to /home/$USER/.config/git

- To install, clone the repo, and run ./install -l to symlink the config files. You can run ./install -i to install the dependencies, or just run, for example, ./installBasicTerminalPackages.sh. This will install terminal only programs, such as are used in a WSL2 arch linux system. Run the desktopLinuxDependencies.sh script for a full Arch / i3 OS install.

I've changed opt/files to opt/wsl-files and opt/desktop-files. This means in WSL, where I only have a terminal, I only symlink terminal specific software, while desktop-files is specific only to my i3 desktop.

### One-line Install

Make sure to update the username in the command below with your GitHub username.
N.B. This approach is not well tested, just clone and install as described above.

bash -c "$(curl -#fL raw.github.com/[ yourGitUsername ]/dotfiles-starter-kit/main/install)"

```
### This is based on the tutorial at :

https://freddiecarthy.com/blog/make-your-dotfiles-portable-with-git-and-a-simple-bash-script
# Python Projects
# Python Projects
# Python Projects
# Python Projects
# Python Projects
