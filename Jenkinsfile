pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/hellocoder2020/python-type-intro.git']]])
            }
        }
        stage('Deployment') {
            steps {
                sh 'sudo docker-compose build'
                sh 'sudo docker-compose up -d'
            }
        }
        stage('Test') {
            steps {
                echo 'This job has been tested.'
            }
        }
    }
}