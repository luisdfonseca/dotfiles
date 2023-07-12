#!/usr/bin/env bash

type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

if [ -z ${GH_KEY+x} ]; then
    echo "GH_KEY is not set";
else
    echo "$GH_KEY" > ~/gh_key.txt
    gh auth login --with-token < ~/gh_key.txt
    rm ~/gh_key.txt
    unset GH_KEY
fi
