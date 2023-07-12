#!/usr/bin/env bash

# Git config
if [ ! -z "$GIT_USER_NAME" ] && [ ! -z "$GIT_USER_EMAIL" ]; then
    git config --global user.name "$GIT_USER_NAME"
    git config --global user.email "$GIT_USER_EMAIL"
fi


if [ ! -z ${http_proxy+x} ]; then 
    git config --global http.proxy "$http_proxy"
    git config --global https.proxy "$http_proxy"
fi
