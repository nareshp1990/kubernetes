
#run a container or POD
kubectl run hello-minikube

#get cluster info
kubectl cluster-info

#get nodes in a cluster
kubectl get nodes

#run nginx container with image option
kubectl run nginx --image nginx

#get pods in a default namespace
kubectl get pods

#get pods with more information
kubectl get pods -o wide

#create a pod form a definition file
kubectl create -f pod-definition.yml

#update a pod from a definition file
kubectl apply -f pod-definition.yml

#to view complete pod information
kubectl describe pod pod-name

#delete a pod
kubectl delete pod pod-name

#to edit or modify a pod
kubectl edit pod pod-name

#to update the existing replicaset from definition file
kubectl replace -f replicaset-definition.yml

#to scale pods in commandline from definition file
kubectl scale --replicas=6 -f replicaset-definition.yml

#to scale pods in commandline with replicaset name
kubectl scale --replicas=6 replicaset replicaset-name

#get replicaset info of default namespace
kubectl get replicaset

#to delete replicaset
kubectl delete replicaset replicaset-name

#to view replicaset
kubectl describe replicaset replicaset-name

#get replicaset
kubectl get rs

#to view replicaset
kubectl describe rs replicaset-name

#to get services
kubectl get svc

#to get pod information
kubectl get po -o wide

#to delete replicaset
kubectl delete rs replicaset-name

#to edit or modify replicaset
kubectl edit rs replicaset-name

#Export existing replicaset to a file
kubectl get rs replicaset-name -o yaml > replicaset-definition.yaml

#to scale pods
kubectl scale rs replicaset-name --replicas=5

#to get deployments
kubectl get deployments

#to get all deployments
kubectl get all

#to get pods with specified namespace
kubectl get pods --namespace=namespace-name

#to create a namespace
kubectl create namespace namespace-name

#Set current context namespace, so that no need to use --namespace option for every command
kubectl config set-context $(kubectl config current-context) --namespace=namespace-name

kubectl get pods --all-namespaces

# to get configmaps
kubectl get configmaps

#to view configmaps
kubectl describe configmaps

#convert specified string to base64 format
echo -n 'mysql' | base64

#convert specified base64 string to actual string
echo -n 'bXlzcWw=' | base64 --decode

#get secrets
kubectl get secrets

#to view secrets info
kubectl describe secrets

#get secrets info in yaml format
kubectl get secrets secret-name -o yaml

#Craete secret
kubectl create secret docker-registry private-docker-registry --docker-server=http://192.168.1.50:5000 --docker-username=admin --docker-password=admin123 --docker-email=patchipulusu.naresh@gmail.com

#Get secret info as json format
kubectl get secret private-docker-registry --output="jsonpath={.data.\.dockerconfigjson}" | base64 --decode



kubectl create serviceaccount dashboard-sa

kubectl get serviceaccount

kubectl describe serviceaccount dashboard-sa

kubectl describe secret secret-name

curl https://localhost:6443/api -insecure --header "Authorization: Bearer token"

Taints are set on nodes

Tollerents are set on pods

kubectl taint nodes node-name key=value:taint-effect

NoSchedule | PreferNoSchedule | NoExecute

Example: kubectl taint nodes node1 app=blue:NoSchedule

#Label Nodes
kubectl label nodes node-name label-key=label-value

#Node Affinity Types Available
# 1. requiredDuringSchedulingIgnoredDuringExecution
# 2. preferedDuringSchedulingIgnoredDuringExecution

#Planned
# 1. requiredDuringSchedulingRequiredDuringExecution


kubectl logs -f pod-name container-name

kubectl top node

kubectl top pod

kubectl get pods --selector app=nginx

kubectl rollout status deployment/deployment-name

kubectl rollout history deployment/deployment-name

# Deployment Strategies
# 1. recreate
# 2. Rolling Update

kubectl set image deployment/deployment-name nginx=nginx:1.9.1

#undo previous deployment
kubectl rollout undo deployment/deployment-name

kubectl get jobs

kubectl delete job job-name

kubectl get cronjob

# NodePort Range : 30000-32767
















