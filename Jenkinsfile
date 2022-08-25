pipeline {
    agent any

    triggers {
        pollSCM 'H/5 * * * *'
    }


    stages {
        stage('checkout') {
            steps {
                sh 'npm -v'
                
            }

            post {
                success {
                    echo 'Checkout is successful'
                }
            }
        }
    }
}

