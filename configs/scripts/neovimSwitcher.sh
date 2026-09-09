alias nvim-jon="NVIM_APPNAME=nvim-jon nvim"
alias nvim-lazy="NVIM_APPNAME=nvim-lazy nvim"
alias nvim-kick="NVIM_APPNAME=nvim-kickstart nvim"
# alias nvim-chad="NVIM_APPNAME=NvChad nvim"
alias nvim-astro="NVIM_APPNAME=nvim-astro nvim"
alias lazyvim-java="NVIM_APPNAME=lazyvim-java nvim"

function nvims() {
  items=("default" "nvim-jon" "nvim-kickstart" "nvim-lazy" "nvim-astro" "lazyvim-java")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

bindkey -s ^a "nvims\n"
