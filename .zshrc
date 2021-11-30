#sujith's minimal zshrc config(manipulated regularly)

#cd into folder without cd cmd
setopt autocd

#History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

eval "$(starship init zsh)"


#source aliases standalone file
source ~/.zsh_aliases

#autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh


#I use arch btw
[[ "$(cat /proc/$PPID/comm)" =~ "(konsole|urxvt|xterm)" ]] && neofetch
[[ "$(cat /proc/$PPID/comm)" =~ "(yakuake|electron)" ]] && pfetch 

#should be last
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

