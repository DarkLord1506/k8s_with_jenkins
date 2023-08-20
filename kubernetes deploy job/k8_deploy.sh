kubectl get deployment myapp 2>/dev/null || kubectl create deployment myapp --image=${DOCKER_IMAGE} --port=8080
kubectl rollout status deploy/myapp
kubectl set image deployment/myapp myapp=${DOCKER_IMAGE}
kubectl rollout status deploy/myapp