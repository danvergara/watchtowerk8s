# Watchtower K8s

This project contains all the Kubernetes manifests to build the necessary infrastructure for the Watchtower project.

## Usage



This repository provides a Makefile that creates the local k8s cluster using minikube:

To get more information run:


```shell
$ make help
```
and the command description will be displayed

```shell
Usage: \n
  start   starts the local K8s cluster
  stop    stops and deletes the local K8s cluster
  help    Prints this help message
```


Also, a bash script called deploy.sh is provided to automate the building of the K8s objects.

Run:

```shell
$ sh deploy.sh
```
