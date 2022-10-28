## What this does?
This repo along with https://github.com/htaylor777/kubernetesmanifest creates a Jenkins pipeline with GitOps to deploy code into a Kubernetes cluster. CI part is done via Jenkins and CD part via ArgoCD (GitOps).

1. Install Docker (minikube) after Jenkins is installed: instructions on: 
  https://minikube.sigs.k8s.io/docs/start/

2. Install Git 

### Jenkins plugins installed:

- Docker plugin  
- Docker Pipeline
- GitHub Integration Plugin
- Parameterized trigger Plugin

## ArgoCD installation 

Install ArgoCD in Kubernetes cluster following this link - https://argo-cd.readthedocs.io/en/stable/getting_started/