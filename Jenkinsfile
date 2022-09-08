pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'GitHub-credentials', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {
                    script {
                    env.encodedPass=URLEncoder.encode(GIT_PASSWORD, "UTF-8")
                    env.encodedUser=URLEncoder.encode(GIT_USERNAME, "UTF-8")
                    }
                    sh 'npm -v'
                    sh 'echo "SUCCESS" > testim.txt'
                    sh 'git config user.name "Ravi Teja Natchireddi"'
                    sh 'git config user.email ravi@authorcafe.com'
                    sh 'git add .'
                    sh 'git commit -m "testim report"'
                    sh 'git push https://${encodedUser}:${encodedPass}@github.com/raviteja-auc/snow-leopard.git HEAD:master'
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

