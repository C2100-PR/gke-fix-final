#!/bin/bash
gcloud container clusters update private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --logging=SYSTEM,WORKLOAD \
    --monitoring=SYSTEM,WORKLOAD