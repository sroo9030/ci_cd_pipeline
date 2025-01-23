pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the repository
                git branch: 'main', url: 'https://github.com/username/project-repo.git'
            }
        }

        stage('Build') {
            steps {
                // Build the Docker image
                sh 'docker build -t flask-app .'
            }
        }

        stage('Test') {
            steps {
                // Run tests (add your test commands here)
                echo 'Running tests...'
                sh 'docker run --rm flask-app pytest tests/'
            }
        }

        stage('Deploy') {
            steps {
                // Push the image to Docker Hub
                withDockerRegistry([credentialsId: 'docker-hub-creds', url: 'https://index.docker.io/v1/']) {
                    sh 'docker tag flask-app username/flask-app:latest'
                    sh 'docker push username/flask-app:latest'
                }
            }
        }

        stage('Notify') {
            steps {
                // Send a notification (optional)
                echo 'Pipeline completed successfully!'
            }
        }
    }
}

