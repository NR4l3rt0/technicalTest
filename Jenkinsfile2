pipeline {

	agent any
	tools {
		maven 'Maven'
	}
	
	environment {
		DOCKER_HUB_LOGIN = credentials('dockerhub-token')
	}
	
	stages{
		stage("packaging the app") {
			steps {
				sh "mvn clean package && echo 'jar packaged'"
			}
		}
		stage("build docker image") {
			steps {
				sh "docker build -t 4lb3rt0/technical-test-docker.jar:v2.0 ." 
				sh 'docker login --username=$DOCKER_HUB_LOGIN_USR --password=$DOCKER_HUB_LOGIN_PSW'
			}
		}
		stage("deploying in k8s") {
			steps {
			    sh "minikube start"
				sh "kubectl apply -f deployment.yaml && kubectl apply -f service.yaml"
			}
		}
	}
}