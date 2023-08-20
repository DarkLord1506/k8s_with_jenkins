## create a service to expose application
kubectl expose deployment myapp --type=NodePort --name=myapp-service