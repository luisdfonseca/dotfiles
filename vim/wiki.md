yum install vim

### Install Pathogen

Pathogen.vim makes it super easy to install plugins and runtime files in their own private directories.

```
  https://github.com/tpope/vim-pathogen
  
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

```

```
  vim ~/.vimrc
  execute pathogen#infect()
  syntax on
  filetype plugin indent on
```

### Install Nerdtree

```
  git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
  
  https://github.com/preservim/nerdtree
```
