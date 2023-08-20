# HPA Job
Horizontal Pod Autoscaling
This is going to be used to autoscale the pods based on cpu metric (for now)
We have used the app name as parameter as well as the min and max replicas needed.
If  hpa is present for app, then we update the replicas, otherwise we create hpa with given min and max values.
