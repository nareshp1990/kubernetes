
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














