#!/bin/bash

# Repair the cluster
gcloud container clusters repair private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive

# Verify status
gcloud container clusters describe private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --format="json(status,statusMessage)"