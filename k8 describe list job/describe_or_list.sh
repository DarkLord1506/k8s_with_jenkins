#!/bin/bash

if [ "$choice" = "describe" ]; then
    kubectl describe po "$pod"
else
    kubectl get po --selector=app="$app"
fi