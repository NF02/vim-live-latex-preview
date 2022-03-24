# LaTeX Live Preview for NVIM
This plugin allows you to have the live preview in LaTeX for Vim/NeoVim, it is 
simple, it only works on X11, it is perfect for all those who need an efficient
solution and also for all those who are used to Microsoft / LibreOfficie.
Honestly there are no problems the dependencies are as follows:
- zathura;
- xdotool;
- zsh;
- vim.
## Install
The advice is to use the plugin for vim ([https://github.com/NF02/vim-live-latex-preview](Vim plug)) and you have to import the library with:
### Vim
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### NeoVim
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
Now import the library
### Vim
We need to edit the `.vimrc` file by adding:
```vim
call plug#begin()
	...
	Plug 'nf02/vim-live-latex-preview'
	...
call plug#end()
```

## Warning:
- For licence info and more details please visit https://aur.archlinux.org/packages/vim-live-latex-preview.

