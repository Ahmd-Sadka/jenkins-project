pipeline {
    agent { label 'agent-1' }

    stages {
        stage('build') {
            steps {
                sh "docker build -t sadka/jenkins/image:${env.BUILD_NUMBER} ."
            }

        }
        stage('login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh "docker push sadka/jenkins/image:${env.BUILD_NUMBER}
                }
            }

        }
    }
}