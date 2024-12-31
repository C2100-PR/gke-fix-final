# GKE Cluster Repair Guide

## Checking Cluster Status
```bash
gcloud container clusters describe private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --format="json(status,statusMessage)"
```

## Common Issues and Solutions
1. Network Issues
2. Node Pool Problems
3. Control Plane Issues
4. Resource Constraints

## Repair Commands

### Basic Repair
```bash
gcloud container clusters repair private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive
```

### Advanced Repair Options
```bash
# Update cluster if needed
gcloud container clusters upgrade private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive

# Check logs
gcloud logging read "resource.type=container AND resource.labels.cluster_name=private-cluster-auto" \
    --project=api-for-warp-drive \
    --format="table(timestamp,textPayload)"
```

## Verification Steps
After repair, verify:
1. Cluster Status
2. Node Health
3. Workload Status
4. Network Connectivity