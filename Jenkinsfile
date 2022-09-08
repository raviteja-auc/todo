pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                sh 'npm -v'
                sh 'echo "SUCCESS" > testim.txt'
                sh 'git commit -am "testim report"'
                sh 'git push'
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

