pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                script {
                    git credentialsId: 'pfecred', url: 'https://github.com/achechfiras/firaspfe.git'
                    echo 'Repository cloned successfully'
                }
            }
        }
         
        stage ('Releasing Docker Image') {
            steps {
                script {
                    sh 'docker build -t img_react .'
                    sh 'make Makefile deliver_image_to_dockerhub'
                }
            }
        }
    } 
}
