pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                sh 'npioiom -v'
                
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

