
kubectl run hello-minikube

kubectl cluster-info

kubectl get nodes

kubectl run nginx --image nginx

kubectl get pods

kubectl get pods -o wide

kubectl create -f pod-definition.yml

kubectl apply -f pod-definition.yml

kubectl describe pod pod-name

kubectl delete pod pod-name

kubectl edit pod pod-name

kubectl replace -f replicaset-definition.yml

kubectl scale --replicas=6 -f replicaset-definition.yml

kubectl scale --replicas=6 replicaset replicaset-name

kubectl get replicaset

kubectl delete replicaset replicaset-name

kubectl describe replicaset replicaset-name

kubectl get rs

kubectl describe rs replicaset-name

kubectl get svc

kubectl get po -o wide

kubectl delete rs replicaset-name

kubectl edit rs replicaset-name

#Export existing replicaset to a file
kubectl get rs replicaset-name -o yaml > replicaset-definition.yaml

kubectl scale rs replicaset-name --replicas=5

kubectl get deployments

kubectl get all

kubectl get pods --namespace=namespace-name

kubectl create namespace namespace-name

#Set current context namespace, so that no need to use --namespace option for every command
kubectl config set-context $(kubectl config current-context) --namespace=namespace-name

kubectl get pods --all-namespaces














