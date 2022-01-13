pipeline {

	agent any
	tools {
		maven 'Maven'
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