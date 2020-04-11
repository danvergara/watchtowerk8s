.PHONY: start
## start: starts the local K8s cluster
start:
	minikube start

.PHONY: stop
## stop: stops and deletes the local K8s cluster
stop:
	minikube stop
	minikube delete
	# rm /usr/local/bin/minikube
	# rm -rf ~/.minikube

.PHONY: host
## host: set the local host for the project
host:
	 echo "$(minikube ip) watchtower.soydanielvergara.com" | sudo tee -a /etc/hosts

.PHONY: help
## help: Prints this help message
help:
	@echo "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'
