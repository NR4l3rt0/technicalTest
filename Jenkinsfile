pipeline {

	agent any
	tools {
		maven 'Maven'
	}
	
	stages{
		stage("packaging the app") {
			steps {
				sh "mvn clean install && echo 'jar built'"
			}
		}
		stage("build docker image") {
			steps {
				sh "docker build -t technical-test-docker.jar:v3.0 ." 
			}
		}
		stage("deploying in k8s") {
			steps {
				sh "kubectl apply -f deployment.yaml && kubectl apply -f service.yaml"
			}
		}
	}
}