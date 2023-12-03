# dotfiles

Config and scripts files used to setup a new personal system. 

## Portable IDE

```
docker build --build-arg HTTP_PROXY="" \
        --no-cache -t ide .

cd /your_projects/

docker run -it -v $(pwd):/workspace \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e GIT_USER_NAME="" \
    -e GIT_USER_EMAIL="" \
    -e GH_TOKEN=""        \
    --name my-ide ide

# Notes
- run git config
- run gh status
- load nvim
if behind a proxy:
- run image without proxy
- load everything explained before
- setup proxy

### Restarting Container
docker ps -a

docker container start a54a617919fd

docker exec -it my-ide bash
```

V0.1
