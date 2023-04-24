#!/bin/bash
echo "======================================="
echo "Startup Minikube"

minikube delete && minikube start --kubernetes-version=v1.24.13 \
--cpus=4 \
--memory=8g \
--bootstrapper=kubeadm \
--extra-config=kubelet.authentication-token-webhook=true \
--extra-config=kubelet.authorization-mode=Webhook \
--extra-config=scheduler.bind-address=0.0.0.0 \
--extra-config=controller-manager.bind-address=0.0.0.0
 
BASE=$(pwd)
 