pipeline {
    agent any

      stages {
        stage('Clone') {
            steps {
                script{
                    git credentialsId: 'pfe', url: 'https://github.com/achechfiras/firaspfe.git'
                }
            }
        }
         
        stage ('Releasing Docker Image'){
            steps{
                script{
                    sh 'make makefile deliver_image_to_dockerhub'
                }
            }
        }
