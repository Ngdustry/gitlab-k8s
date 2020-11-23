#!bin/sh

printf "\nRunning \"run_get_login\" STARTED\n\n"

PASSWORD=$(kubectl get secret gitlab-gitlab-initial-root-password -ojsonpath='{.data.password}' | base64 --decode)

printf "URL: gitlab.$(minikube ip).nip.io\n"
printf "User: root\n"
printf "Password: $PASSWORD\n"

printf "\nRunning \"run_get_login\" ENDED\n\n"