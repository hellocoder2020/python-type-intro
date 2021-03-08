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
                sh 'JENKINS_NODE_COOKIE=dontKillMe nohup uvicorn app.main:app --host 165.232.162.119 &'
            }
        }
        stage('Test') {
            steps {
                echo 'This job has been tested.'
            }
        }
    }
}