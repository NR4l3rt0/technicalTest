pipeline {

	agent any
	tools {
		maven 'Maven'
	}
	
	stages{
		stage("packaging the app") {
			steps {
				sh "mvn clean install"
			}
		}
		stage("build docker image and push to Dockerhub") {
			steps {
				sh "docker build -t 4lb3rt0/technical-test-docker.jar:v3.0 . && docker push 4lb3rt0/technical-test-docker.jar:v3.0" 
			}
		}
		stage("deploying in k8s") {
			steps {
				sh "kubectl apply -f deployment.yaml && kubectl apply -f service.yaml"
			}
		}
	}
}