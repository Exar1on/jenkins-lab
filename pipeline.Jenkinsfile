pipeline {
	agent none
	stages { 
		stage ('Build') {
			agent { label 'jenkins-dev'
			}
			steps {
				echo 'TODO APP TO BUILD'
			}
		}
		stage ('Test') {
			agent { label 'jenkins-test'
			}
			steps {
				echo 'TODO LINTER/SECURITY/AUTOTESTS'
			}
		}
		stage ('Prod') {
			agent { label 'jenkins-prod'
			}
			steps {
				echo 'TODO DEPLOYMENT'
			}
		}
	}
}
