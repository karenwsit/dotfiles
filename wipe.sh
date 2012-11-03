git pull
read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
  shopt -s dotglob;
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "elianderson.zsh-theme" --exclude "wipe.sh" --exclude "README.md" -av ./dotfiles/** ~;
  rsync ./elianderson.zsh-theme ~/.oh-my-zsh/themes/elianderson.zsh-theme
fi
