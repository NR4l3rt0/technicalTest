pipeline {

	agent any
	tools {
		maven 'Maven'
	}
	
	environment {
		DOCKER_CREDENTIAL_ID = 'dockerhub-token'
	}
	
	stages{
		stage("packaging the app") {
			steps {
				sh "mvn clean package && echo 'jar built'"
			}
		}
		stage("build docker image") {
			steps {
				sh "docker build -t technical-test-docker.jar:v2.0 ." 
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