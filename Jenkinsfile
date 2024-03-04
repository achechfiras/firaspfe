pipeline {
    agent any

     stages {
        stage('clone') {
            steps {
                script {
                    sh 'make clone'
                }
            }
        }
         
    stages {
        stage('Build') {
            steps {
                script {
                    // Appel du Makefile pour exécuter la règle 'build'
                    sh 'make build'
                }
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    // Appel du Makefile pour exécuter la règle 'deploy'
                    sh 'make deploy'
                }
            }
        }

         stages {
        stage('clean') {
            steps {
                script {
                    
                    sh 'make clean'
                }
            }
        }
    }
}
