pipeline {
    agent any
    tools {
  maven 'maven_home'
}
        stages {
            stage ("checkout from git") {
                steps {
                    git 'https://github.com/suneel-sagi/onlinebookstore.git'
            }
        }
            stage ("build"){
                steps {
                    sh "mvn clean install package"
                }
                
            }
            stage ("Deploy to web server"){
                steps {
                    deploy adapters: [tomcat8(credentialsId: 'deployer', path: '', url: 'http://54.173.16.117:8080/')], war: '**/*.war'
                }
            }
        }
	}