.PHONY: setup-minikube \
install-gitlab \
get-url \
get-pw \
get-login \
uninstall-gitlab \
delete-minikube

setup-minikube:
	sh ./scripts/run_setup_minikube.sh

install-gitlab:
	sh ./scripts/run_install_gitlab.sh

get-login:
	sh ./scripts/run_get_login.sh

uninstall-gitlab:
	sh ./scripts/run_uninstall_gitlab.sh

delete-minikube:
	sh ./scripts/run_delete_minikube.sh
