# dotfiles

Config and scripts files used to setup a new personal system. 

## Portable IDE

```
docker build --no-cache -t ide .

cd /your_projects/

docker run -it -v $(pwd):/workspace -v /var/run/docker.sock:/var/run/docker.sock --name my-ide ide
```


V0.1
