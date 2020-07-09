#!/bin/bash

yum -y install wget git

mkdir -p ~/.vim/colors

wget https://www.vim.org/scripts/download_script.php?src_id=6657 -O ~/.vim/colors/wombat.vim
sleep 2
wget https://www.vim.org/scripts/download_script.php?src_id=2038 -O ~/.vim/colors/desert.vim 

mkdir -p ~/.vim/syntax/

wget https://www.vim.org/scripts/script.php?script_id=1571 -O ~/.vim/syntax/php.vim

mkdir -p ~/.vim/bundle/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

