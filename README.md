ln -s /home/robert/code/dotfiles/bashrc /home/robert/.bashrc
ln -s /home/robert/code/dotfiles/gitconfig /home/robert/.gitconfig
ln -s /home/robert/code/dotfiles/gitignore /home/robert/.gitignore
ln -s /home/robert/code/dotfiles/i3 /home/robert/.config/i3/config
ln -s /home/robert/code/dotfiles/tmux /home/robert/.tmux.conf
ln -s /home/robert/code/dotfiles/tmuxinator /home/robert/.config/tmuxinator/home.yml
ln -s /home/robert/code/dotfiles/zshrc /home/robert/.zshrc

unlink /home/robert/.bashrc
unlink /home/robert/.gitconfig
unlink /home/robert/.gitignore
unlink /home/robert/.config/i3/config
unlink /home/robert/.tmux.conf
unlink /home/robert/.config/tmuxinator/home.yml
unlink /home/robert/.zshrc
