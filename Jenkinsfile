pipeline {

    agent any

    stages {
        stage('Lint') {
            steps {
                sh 'docker run --name htmllint --rm -v /var/lib/docker/volumes/jenkins_home/_data/workspace/$(basename "$PWD"):/mnt -w /mnt cyb3rjak3/html5validator:latest-alpine html5validator --root . --log INFO'
            }
        }
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker container stop home && docker container rm home'
                sh 'docker-compose up -d'
            }
        }
        stage('Cleanup') {
            steps {
                sh 'docker image prune --force'
            }
        }
    }
}