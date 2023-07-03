FROM ubuntu:latest

RUN apt-get update && apt-get install -y sudo vim git curl 

RUN git clone https://github.com/luisdfonseca/dotfiles.git ~/dotfiles

RUN chmod +x ~/dotfiles/nvm/setup.sh && ~/dotfiles/nvm/setup.sh
RUN chmod +x ~/dotfiles/docker/setup_cli.sh && ~/dotfiles/docker/setup_cli.sh
RUN chmod +x ~/dotfiles/neovim/setup.sh && ~/dotfiles/neovim/setup.sh

ENV PATH="$HOME/neovim/bin:$PATH"

WORKDIR /workspace
