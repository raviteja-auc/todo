pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'ci-credentials', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {
                    
                    sh 'npm -v'
                    sh 'git config user.name "Ravi Teja Natchireddi"'
                    sh 'git config user.email ravi@authorcafe.com'
                    deleteDir()
                    checkout([$class: 'GitSCM',
                            branches: [[name: 'master']],
                            userRemoteConfigs: [[credentialsId: 'ci-credentials',
                            url: 'https://github.com/raviteja-auc/todo.git']]])
                    sh 'git checkout master'
                    sh 'echo "SUCCESS" > testim.txt'
                    sh 'git add .'
                    sh 'git commit -m "testim report"'
                    sh 'git push'
                    
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

