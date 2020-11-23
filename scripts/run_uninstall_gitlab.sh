#!bin/sh

printf "\nRunning \"run_uninstall_gitlab\" STARTED\n\n"

helm uninstall gitlab

printf "\nRunning \"run_uninstall_gitlab\" ENDED\n\n"
