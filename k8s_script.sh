#! /bin/bash

eksctl create cluster \
--name DemoCluster \
--region eu-west-2 \
--nodegroup-name DemoNodes \
--nodes 2 \
--nodes-min 2 \
--nodes-max 3 \
--node-type t2.micro \
--with-oidc \
--ssh-access \
--ssh-public-key AWS-MAC \
--managed

kubectl apply -f mysql.yaml
