#!bin/sh

printf "\nRunning \"run_delete_minikube\" STARTED\n\n"

minikube stop
minikube delete

printf "\nRunning \"run_delete_minikube\" ENDED\n\n"
