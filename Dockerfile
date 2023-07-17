FROM ubuntu:latest

ENV http_proxy=$HTTP_PROXY
ENV https_proxy=$HTTP_PROXY
ENV HTTP_PROXY=$HTTP_PROXY
ENV HTTPS_PROXY=$HTTP_PROXY

RUN apt-get update && apt-get install -y sudo vim git curl 

RUN git clone https://github.com/luisdfonseca/dotfiles.git ~/dotfiles

RUN chmod +x ~/dotfiles/git/config.sh && ~/dotfiles/git/config.sh
RUN chmod +x ~/dotfiles/git/gh_setup.sh && ~/dotfiles/git/gh_setup.sh

RUN chmod +x ~/dotfiles/nvm/setup.sh && ~/dotfiles/nvm/setup.sh
RUN chmod +x ~/dotfiles/docker/pre.sh && ~/dotfiles/docker/pre.sh
RUN chmod +x ~/dotfiles/docker/setup_cli.sh && ~/dotfiles/docker/setup_cli.sh
RUN chmod +x ~/dotfiles/neovim/setup.sh && ~/dotfiles/neovim/setup.sh

ENV PATH="$HOME/neovim/bin:$PATH"

WORKDIR /workspace
