pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'ci-credentials', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {
                    
                    sh 'npm -v'
                    sh 'echo "SUCCESS" > testim.txt'
                    sh 'git config user.name "Ravi Teja Natchireddi"'
                    sh 'git config user.email ravi@authorcafe.com'
                    sh 'git checkout master'
                    sh 'git add .'
                    sh 'git commit -m "testim report"'
                    // sh 'git push https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com/raviteja-auc/todo.git'
                    gitPush()
                }
                
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

