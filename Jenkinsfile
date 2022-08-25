pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                sh 'npm -v'
                
            }

            post {
                success {
                    echo 'Checkout is successful'
                }

                failure {
                    echo "Checkout is unsuccessful"
                }
            }
        }
    }
}

