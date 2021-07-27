pipeline {
    agent {
        docker {
            image 'cypress/base:latest'
        }
    }
    stages {
        stage('build'){
            steps {
                sh "npm ci"
            }
        }
        stage('teste'){
            steps {
                sh "npm run cucumber TAGS=$tags"
            }
        }
    }
    post {
        always {
            script{
                cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'report', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
            }
        }
    }
}