# UR Simulator for Linux
This repo contains the files needed to run the ursim with networking
## Building Container
This will build a new container make sure you update `<version>`. It will use the `Dockerfile` contained in this archive to build the image 
```
docker build -t ursim-linux:<version> .
```
## Create a new network to run the docker container
```
docker network create --subnet=192.168.0.0/16 ursim
```
This will create a new network called `ursim` and all instances will be in the 192.168.0.0 subnet
## Run the Container
```
docker run -d --net ursim --ip 192.168.0.100 ursim-linux:<version></version>
```

