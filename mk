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


scripted
pipeline {
    agent any
    tools{
        maven 'MAVEN_HOME'
    }
    stages {
        stage('git repo & clean') {
            steps {
                //bat "rmdir  /s /q mavenjava"
                bat "git clone provide your github link"
                bat "mvn clean -f mavenjava"
            }
        }
        stage('install') {
            steps {
                bat "mvn install -f mavenjava" #project name#
            }
        }
        stage('test') {
            steps {
                bat "mvn test -f mavenjava"
            }
        }
        stage('package') {
            steps {
                bat "mvn package -f mavenjava"
            }
        }
    }
}
