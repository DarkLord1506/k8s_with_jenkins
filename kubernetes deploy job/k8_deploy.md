# K8 Deploy Job

In this we take the docker image from parameter and deploy in kubernetes cluster.
We need to provide kubectl access to jenkins installation.

We can do that using this command
```bash
sudo cp ~/.kube/config ~jenkins/.kube/
sudo chown -R jenkins ~jenkins/.kube 
```
Here for this version app name is fixed, but we can configure as string
parameter to fetch relevant docker image.

First we check if deployment is present or not, if not present we create deployment,
else we set the image and rollout the changes, it will rollout without affecting end user.
