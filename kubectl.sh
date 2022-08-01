#!/bin/bash
aws sts get-caller-identity --profile=minfy
aws eks --region $1 update-kubeconfig --name $2 --profile=minfy
# kubectl patch deployment coredns --namespace kube-system  -p '{"spec": {"template": {"metadata": {"annotations": { "eks.amazonaws.com/compute-type": "fargate"}}}}}'
# kubectl apply -f ingress.yml
#kubectl patch deployment aws-alb-ingress-controller --namespace kube-system  -p '{"spec": {"template": {"metadata": {"annotations": { "eks.amazonaws.com/compute-type": "fargate"}}}}}'