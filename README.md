# dotfiles

Config and scripts files used to setup a new personal system. 

## Portable IDE

```
docker build --build-arg HTTP_PROXY="" \
        --no-cache -t ide .

cd /your_projects/

docker run -it -v $(pwd):/workspace \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -p 8080:8080    \         
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

# If you have an app or server you need to run, make sure to use the port exposed above "8080".
# Example:

export FLASK_RUN_HOST=0.0.0.0
flask run --debug --port 8080
```

V0.1
