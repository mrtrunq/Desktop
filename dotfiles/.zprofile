[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

if command -v Xorg >/dev/null 2>&1 && [ -z "$TMUX" ]; then
	# exec startx
fi
