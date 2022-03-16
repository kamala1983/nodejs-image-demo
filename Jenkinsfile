pipeline {
    agent {
        docker { image 'kkhuntia/docker-demo' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
