#!bin/sh

printf "\nRunning \"run_install_gitlab\" STARTED\n\n"

helm repo add gitlab https://charts.gitlab.io/
helm repo update
helm upgrade --install gitlab gitlab/gitlab \
  --timeout 600s \
  -f gitlab-config.yml \
  --set global.hosts.domain=$(minikube ip).nip.io \
  --set global.hosts.externalIP=$(minikube ip)

printf "\nRunning \"run_install_gitlab\" COMPLETED\n\n"
