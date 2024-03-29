unbind-key C-b
set -g prefix 'C-o'
bind-key 'C-o' send-prefix

set-option -g default-shell /bin/zsh
set-option -g renumber-windows on
set-option -g word-separators " \/,-_+:=?"

unbind-key -T copy-mode	    M-w
bind-key   -T copy-mode	    M-w	send-keys -X copy-pipe-and-cancel "xclip -i -selection clipboard"

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'jimeh/tmux-themepack'
set -g @themepack 'powerline/double/blue'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'
