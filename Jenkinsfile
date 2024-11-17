pipeline {
    agent { label 'agent-1' }

    stages {
        stage('build') {
            steps {
                sh "docker build -t youssef138/jenkins:${env.BUILD_NUMBER} ."
            }

        }
        stage('login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh "docker login -u $USERNAME -p $PASSWORD "
                    sh "docker push youssef138/jenkins:${env.BUILD_NUMBER}"
                }
            }

        }
    }
}