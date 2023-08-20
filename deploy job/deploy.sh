## DOCKER_IMAGE taken from image tag parameter in jenkins job
docker run -d --name myapp -p 8080:8080 ${DOCKER_IMAGE}