# Zwlin’s dotfiles

Include the following configuration files:

+ ohmyzsh
    + edit  `~/.config/zsh/host.zsh` to custom specific configurations
+ ideavim
+ starship

## Usage

```shell
# ensure that starship/zsh/git were installed
# init `ohmyzsh` 
curl https://raw.githubusercontent.com/Zwlin98/dotfiles/main/init-omz.sh | sh

chezmoi init --apply --verbose https://github.com/Zwlin98/dotfiles.git
```

