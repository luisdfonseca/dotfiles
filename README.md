# dotfiles

Config and scripts files used to setup a new personal system. 

## Portable IDE

```
docker build --build-arg HTTP_PROXY="" --no-cache -t ide .

cd /your_projects/

docker run -it -v $(pwd):/workspace \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e GIT_USER_NAME="My Name" \
    -e GIT_USER_EMAIL="me@email.com" \
    --name my-ide ide

### Restarting Container
docker ps -a

docker container a54a617919fd start

docker exec -it my-ide bash
```

V0.1
