![image](https://miro.medium.com/max/2704/1*4ErEpyZmmyaMC9cWNmBiXQ.png)

# K8s with Gitlab & Helm

This repo generates a local k8s cluster using Minikube and installs Gitlab using Helm.

## Resources

- [Kubernetes install tools](https://kubernetes.io/docs/tasks/tools/)
- [Developing for Kubernetes with Minikube](https://docs.gitlab.com/charts/development/minikube/)

## Before getting started

To use this repo, ensure you have the following installed:

- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

## Setup

This repo uses pre-defined configuration for Minikube per Gitlab docs (i.e. 4 CPU cores and 10GB of memory).

To start Minikube cluster:

```
  make setup-minikube
```

To install Gitlab Helm chart:

```
  make install-gitlab
```

NOTE: The gitlab installation takes a bit of time to spin up all pods (average 7-8 minutes).

## Using Gitlab

Once all the pods are up and running (specifically `gitlab-webservice`), fetch login details:

```
  make get-login
```

Navigate to the URL & use credentials from the above command to log in.

## Clean up

To uninstall Gitlab Helm chart:

```
  make uninstall-gitlab
```

To stop & delete Minikube cluster:

```
  make delete-minikube
```
