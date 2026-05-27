#!/bin/bash

#login into DockerHub:
docker login -u $DOCKER_USERNAME -p $DOCKER_PASS

#stopping existing container:
docker stop web
docker rm web

#building a image:
docker build -t flower .

#running a container from the created image:
docker run -d -it --name web -p 90:80 flower

#pushing the image to dockerhub:
docker tag flower srilekhadevops10/flower
docker push srilekhadevops10/flower
