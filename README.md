# docker
Dockerfiles respository

## to create a image by yourself
1 - choose a image (e.g. sonar: docker/sonar)
2 - create a image repo in dockerhub (https://hub.docker.com/)
3 - build in your computer your dockerfile (example in https://github.com/natmourajr/docker/blob/main/sonar/Dockerfile)
```
$ docker build . --tag=<login in dockerhub>/sonar:lastest
```
## pushing a created image to dockerhub
 ```
$ docker push <login in dockerhub>/sonar:lastest
```
## to use in LPS infra
 ```
$ singularity pull docker://<login in dockerhub>/sonar:lastest
$ singularity run --nv sonar_lastest.sif
```
