#!/bin/bash 

echo "Instalando sw base" 

yum -y install epel-release zsh git vim vim-enhanced wget curl 

echo "Instalando oh-my-zsh"

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

which zsh

chsh -s /usr/bin/zsh

echo "plugins zsh"

cd ~/.oh-my-zsh/custom/plugins

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
sleep 2
git clone https://github.com/zsh-users/zsh-autosuggestions.git


mkdir -p ~/.vim/colors

wget https://www.vim.org/scripts/download_script.php?src_id=6657 -O ~/.vim/colors/wombat.vim
sleep 2
wget https://www.vim.org/scripts/download_script.php?src_id=2038 -O ~/.vim/colors/desert.vim

mkdir -p ~/.vim/syntax/

wget https://www.vim.org/scripts/script.php?script_id=1571 -O ~/.vim/syntax/php.vim

mkdir -p ~/.vim/bundle/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


echo "copiando files"

cp -r /root/zshconfig/.vimrc /root/
cp -r /root/zshconfig/.zshrc /root/
