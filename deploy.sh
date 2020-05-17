#!/bin/bash

echo "Creating the database credentials..."
kubectl apply -f ./kubernetes/secret.yml

echo "Creating the dashboardserver deployment and service..."
kubectl apply -f ./kubernetes/dashboardserver.yml

echo "Creating the vue deployment and service..."
kubectl apply -f ./kubernetes/dashboard.yml

echo "Adding the ingress..."
kubectl apply -f ./kubernetes/prod-issuer.yaml
kubectl apply -f ./kubernetes/staging-issuer.yaml
kubectl apply -f ./kubernetes/watchtower-ingress.yml
kubectl apply -f ./kubernetes/cloud-generic.yaml
