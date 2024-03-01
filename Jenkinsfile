pipeline {
    agent any
    
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
    }
}
