# Alice-VimFiles
Alice's Vim config file

## How to install
Add vimrc to your home directory and rename vimrc to .vimrc  
Create a new directory in your home directory called .vim  
Within the .vim directory add the following directories autoload, backup, colors, plugged

install the vim-plug plugin manager using  
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim into the .vimrc file and run  
:source ~/.vimrc  
:PlugInstall  
