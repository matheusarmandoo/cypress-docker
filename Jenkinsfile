pipeline {
    agent {
        docker {
            image 'cypress/base:latest'
        }
    }
    stages {
        stage('build'){
            steps {
                sh "npm install && npm run cucumber TAGS=$tags"
            }
        }
        stage('teste'){
            steps {
                sh "npm run cucumber TAGS=$tags"
            }
        }
    }
}