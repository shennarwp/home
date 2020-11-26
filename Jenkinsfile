pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker run --name htmllint --rm -v /var/lib/docker/volumes/jenkins_home/_data/workspace/$(basename "$PWD"):/mnt -w /mnt cyb3rjak3/html5validator:latest-alpine html5validator --root public/ --also-check-css --log INFO'
            }
        }
    }
}