# dotfiles
These are my dotfiles, based on the dotfiles-starter-kit tutorial linked below. It assumes you are running Arch for WSL, and that you have set up a user as described here:

https://gist.github.com/ld100/3376435a4bb62ca0906b0cff9de4f94b


### Setup

- Open up the [install](https://github.com/gjunkie/dotfiles-starter-kit/blob/main/install) script and change the `GITHUB_USER` variable to your username.
- Update the [files](https://github.com/gjunkie/dotfiles-starter-kit/blob/main/opt/files) that you want to keep synced between your systems.
- And that you have installed git. Clone the repo, and run ./install -l to symlink the config files. You can run ./install -i to install the edependencies, or just run ./installDeps.sh.

### One-line Install

Make sure to update the username in the command below with your GitHub username.
N.B. This approach is not well tested, just clone and install as described above.

bash -c "$(curl -#fL raw.github.com/jonkinz/dotfiles-starter-kit/main/install)"
```
### This is based on the tutorial at :

https://freddiecarthy.com/blog/make-your-dotfiles-portable-with-git-and-a-simple-bash-script
