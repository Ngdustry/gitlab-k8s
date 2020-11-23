#!bin/sh

printf "\nRunning \"run_setup_minikube\" STARTED\n\n"

minikube start --cpus 4 --memory 10240
minikube addons enable ingress

printf "\nRunning \"run_setup_minikube\" ENDED\n\n"
