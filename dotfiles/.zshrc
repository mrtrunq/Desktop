# boot
	export PATH=$PATH:/usr/bin
	export HOMEBREW_NO_AUTO_UPDATE=1
	export PATH=$PATH:/opt/nvim-linux-x86_64/bin
	export PATH=$PATH:/opt/homebrew/Cellar/llvm/20.1.3/bin
	export PATH=$PATH:/opt/homebrew/Cellar/bat/0.25.0_1/bin
	export PATH=$PATH:/opt/homebrew/Cellar/mysql@8.0/8.0.42/bin
# ······························
	if [ -z "$TMUX" ]; then
		if tmux ls &>/dev/null; then
			tmux attach-session
		else
			exec tmux new -s Desktop
		fi
	fi
# ······························
	if command -v Xorg >/dev/null 2>&1 && [ -z "$TMUX" ] && [ -z "$DISPLAY" ]; then
		exec startx
	fi
# ------------------------------
# history
	HISTFILE=~/.zsh_history
	HISTSIZE=10000
	SAVEHIST=10000
	setopt share_history
	setopt hist_expire_dups_first
	setopt hist_ignore_dups
	setopt hist_verify
# ------------------------------
# git branch
	autoload -Uz vcs_info
	precmd() { vcs_info }
	setopt PROMPT_SUBST
	zstyle ':vcs_info:git:*' formats ' %b '
	PROMPT='%F{green}%n@%m %F{yellow}%1~ %F{magenta}${vcs_info_msg_0_}%F{reset}%% '
# ------------------------------
# node version manager
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# ------------------------------
# suggest, highlight for terminal
	[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	[ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# ------------------------------
# alt+left, alt+right
	bindkey "^[[1;3C" forward-word
	bindkey "^[[1;3D" backward-word
# ------------------------------
# alias
	alias nv='nvim'
	alias bat='batcat'
	alias ll='tree -L 1 -a'
	alias fzfhome='vi $(find ~ -type f | fzf)'
	alias fzfroot='vi $(find / 2>/dev/null -type f | fzf)'

