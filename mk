>minikube start
kubecetl create deployment mynginx --image=nginx
>kubectl create deployment newnginx --image=nginx
kubectl expose deployment newnginx --type=NodePort --port=80
kubectl port-forward service/newnginx 8090:80

localhost:8090
