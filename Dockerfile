FROM ubuntu:latest

RUN apt-get update && apt-get install -y sudo vim git curl 

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=America/Los_Angeles

COPY . /dotfiles

RUN chmod +x /dotfiles/git/config.sh && /dotfiles/git/config.sh
RUN chmod +x /dotfiles/git/gh_setup.sh && /dotfiles/git/gh_setup.sh

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN chmod +x /dotfiles/python/setup.sh && /dotfiles/python/setup.sh
RUN chmod +x /dotfiles/nvm/setup.sh && /dotfiles/nvm/setup.sh
RUN chmod +x /dotfiles/docker/pre.sh && /dotfiles/docker/pre.sh
RUN chmod +x /dotfiles/docker/setup_cli.sh && /dotfiles/docker/setup_cli.sh
RUN chmod +x /dotfiles/neovim/setup.sh && /dotfiles/neovim/setup.sh

COPY /dotfiles/bash/.bashrc /root/

ENV PATH="$HOME/neovim/bin:$PATH"

WORKDIR /workspace
