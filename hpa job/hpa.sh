#!/bin/bash

HPA_NAME="$app"
DEPLOYMENT_NAME="$app"
NEW_MIN_REPLICAS="$min"
NEW_MAX_REPLICAS="$max"

if kubectl get hpa "${HPA_NAME}" >/dev/null 2>&1; then
    kubectl patch hpa "${HPA_NAME}" \
        --type='json' \
        -p='[{"op": "replace", "path": "/spec/minReplicas", "value": '"${NEW_MIN_REPLICAS}"'}, {"op": "replace", "path": "/spec/maxReplicas", "value": '"${NEW_MAX_REPLICAS}"'}]'
else
    kubectl autoscale deployment "${DEPLOYMENT_NAME}" --min="${NEW_MIN_REPLICAS}" --max="${NEW_MAX_REPLICAS}"
fi
kubectl rollout status deployments/"$app"