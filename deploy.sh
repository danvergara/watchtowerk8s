#!/bin/bash


echo "Creating the database credentials..."

kubectl apply -f ./kubernetes/secret.yml


echo "Creating the dashboardserver deployment and service..."

kubectl create -f ./kubernetes/dashboardserver-deployment.yml
kubectl create -f ./kubernetes/dashboardserver-service.yml


echo "Adding the ingress..."

minikube addons enable ingress
kubectl apply -f ./kubernetes/dashboard-ingress.yml


echo "Creating the vue deployment and service..."

kubectl create -f ./kubernetes/dashboard-deployment.yml
kubectl create -f ./kubernetes/dashboard-service.yml


echo "Retrieving the ip of the local cluster"
echo "$(minikube ip) dashboard.soydanielvergara.com" | sudo tee -a /etc/hosts
