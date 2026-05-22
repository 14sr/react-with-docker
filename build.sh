#!/bin/bash

#login into DockerHub:
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS

#stopping existing container:
docker stop react
docker rm react

#building a image:
docker build -t summer .

#running a container from the created image:
docker run -d -it --name react -p 80:80 summer

#pushing the image to dockerhub:
docker tag summer srilekhadevops10/summer-app
docker push srilekhadevops10/summer-app
