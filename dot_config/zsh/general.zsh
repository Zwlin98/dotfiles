alias cat="bat"
alias catp="bat -p"

alias vim="nvim"
alias vi="nvim"

plugins=(
	colored-man-pages
	git
	rsync
	tmux
	zsh-autosuggestions
	zsh-syntax-highlighting
)

export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export VISUAL=nvim

export PATH=${HOME}/go/bin:$PATH
export PATH=${HOME}/.local/bin:$PATH

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

alias docker_rm_all_none_images="docker images | rg '<none>' | awk '{print $3}' | xargs docker rmi"

alias source_zshrc="source ${HOME}/.zshrc"
