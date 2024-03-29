# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/share:$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

. ~/z/z.sh

export EDITOR=nvim
export PAGER=bat
# SETTING the STARSHIP PROMPT
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship.toml

# ALIASES
alias e=nvim
alias config="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
alias pk-add="sudo dnf install"
alias pk-rem="sudo dnf uninstall"
alias do-release-upgrade="sudo dnf --refresh upgrade;sudo dnf system-upgrade --releasever="

# GIT
alias gd="git diff"
alias gst="git status"
alias ga="git add"
alias gcm="git commit"
alias gp="git push"
