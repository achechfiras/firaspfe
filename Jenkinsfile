pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                script {
                    git credentialsId: 'pfecred', url: 'https://github.com/achechfiras/firaspfe.git'
                }
            }
        }
         
        stage ('Releasing Docker Image') {
            steps {
                script {
                    sh 'make Makefile deliver_image_to_dockerhub'
                }
            }
        }
    } 
}
