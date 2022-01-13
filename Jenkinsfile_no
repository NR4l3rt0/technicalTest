pipeline {

	agent any
	tools {
		maven 'Maven'
	}
	

	stages{
		stage("run an executable with all the instructions") {
			steps {
				sh "./executable.sh"
			}
		}

	}
}