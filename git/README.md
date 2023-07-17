# GIT

## Install

### Ubuntu

```
sudo apt-get update
sudo apt-get install git
```

### Mac

```
brew install git
```

## Configure

```
git config --global user.name "$GIT_USER_NAME"
git config --global user.email "$GIT_USER_EMAIL"
```

### Cache git credentials

Used after using github personal access tokens [using personal access token on CLI](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#using-a-personal-access-token-on-the-command-line)

```
git config --global credential.helper cache
```

## GitHub CLI

[https://github.com/cli/cli](https://github.com/cli/cli)

### Install

**Mac**

```
brew install gh
```

**Ubuntu**

[https://github.com/cli/cli/blob/trunk/docs/install_linux.md](https://github.com/cli/cli/blob/trunk/docs/install_linux.md)

```
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
```

### AUTH

[https://cli.github.com/manual/gh_auth_login](https://cli.github.com/manual/gh_auth_login)

```
# start interactive setup
$ gh auth login

# authenticate against github.com by reading the token from a file
$ gh auth login --with-token < mytoken.txt

```
