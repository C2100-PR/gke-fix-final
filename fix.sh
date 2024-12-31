#!/bin/bash

echo 'Starting GKE cluster repair...'
gcloud container clusters repair private-cluster-auto --zone us-west1 --project=api-for-warp-drive

echo 'Verifying status...'
gcloud container clusters describe private-cluster-auto --zone us-west1 --project=api-for-warp-drive --format="json(status,statusMessage)"