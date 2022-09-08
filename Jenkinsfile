pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                sh 'npm -v'
                sh 'echo "SUCCESS" > testim.txt'
                sh 'git config user.name "Ravi Teja Natchireddi"'
                sh 'git config user.email ravi@authorcafe.com'
                sh 'git add .'
                sh 'git commit -m "testim report"'
                sh 'git push origin HEAD:master'
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

