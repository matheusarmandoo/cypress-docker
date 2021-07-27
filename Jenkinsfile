pipeline {
    agent {
        docker {
            image 'cypress/base:latest'
        }
    }
    stages {
        stage('build'){
            steps {
                sh "npm install"
            }
        }
        stage('teste'){
            steps {
                sh "npm run cucumber TAGS=$tags"
            }
        }
    }
}