cmd 
>minikube start
kubecetl create deployment mynginx --image=nginx
>kubectl create deployment newnginx --image=nginx
kubectl expose deployment newnginx --type=NodePort --port=80
kubectl port-forward service/newnginx 8090:80

localhost:8090

nagios
docker pull jasonrivers/nagios
docker run -d --name nagios -p 9090:80 jasonrivers/nagios

localhost:9090
servecies->currentload


sudo apt update
sudo apt-get install docker.io
sudo apt install git
git clone https://github.com/ruchithachakilam/ms.git
cd ms
sudo docker build -t myapp .
sudo docker run -t -p 8883:80 newapp

