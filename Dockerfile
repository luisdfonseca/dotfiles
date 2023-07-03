FROM ubuntu:latest

RUN apt-get update && apt-get install -y sudo vim git curl 

RUN git clone https://github.com/luisdfonseca/dotfiles.git ~/dotfiles

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

RUN chmod +x ~/dotfiles/docker/setup_cli.sh && ~/dotfiles/docker/setup_cli.sh
RUN chmod +x ~/dotfiles/neovim/setup.sh && ~/dotfiles/neovim/setup.sh

ENV PATH="$HOME/neovim/bin:$PATH"

WORKDIR /workspace
