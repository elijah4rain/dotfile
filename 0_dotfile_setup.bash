sudo apt install -y vim tmux build-essential cmake python-dev python3-dev
rm ~/.bashrc
cp .bashrc ~/.
cp .bash_aliases ~/.
cp .tmux.conf ~/.
cp -r .vim ~/.
cp .vimrc ~/.
git clone http://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo --------------------------------
echo Now type "vim" and PluginInstall
echo --------------------------------
