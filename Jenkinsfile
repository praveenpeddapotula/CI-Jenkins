pipeline {
    agent {
        label 'AGENT-1'
    }
    options {
        timeout (time: 2, unit: 'MINUTES')
        disableConcurrentBuilds()
    }
    stages {
        stage('Init') {
            steps {
               sh """
               ls -ltr
               """
            }
        }
        stage('Test') {
            steps {
                sh ' echo this is test stage'
                sh ' sleep 10'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo this is deploy stage'
            }

        }
    }
    post {
            always {
                echo " i will say hello to praveen again "
            }
            success { 
                echo " i will run when pipeline is success"

            }
            failure {
                echo " i will run when pipeline is failure"
            }
    }
}