pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                sh "npm -v"
                sh "echo ${env.GIT_AUTHOR_NAME} ${env.GIT_COMMIT}"
            }
        }
    }
}

