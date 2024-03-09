pipeline {
    agent any

      stages {
        stage('Clone') {
            steps {
                script{
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'pfe', url: 'https://github.com/achechfiras/firaspfe.git']])
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
