pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                sh 'npm install'
                echo ${currentBuild.currentResult}
                echo 'Done'
            }
        }
    }
}

