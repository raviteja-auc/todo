pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'ci-credentials', passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {
                    
                    sh 'npm -v'
                    
                    // deleteDir()
                    // checkout([$class: 'GitSCM',
                    //         branches: [[name: 'master']],
                    //         userRemoteConfigs: [[credentialsId: 'ci-credentials',
                    //         url: 'https://github.com/raviteja-auc/todo.git']]])
                    // sh 'git config user.name "Ravi Teja Natchireddi"'
                    // sh 'git config user.email ravi@authorcafe.com'
                    // sh 'git checkout master'
                    // sh 'echo "SUCCESS" > testim.txt'
                    // sh 'git add .'
                    // sh 'git commit -m "testim report"'
                    // sh 'git push git@github.com:raviteja-auc/todo.git'

                    // sh "cd /var/jenkins_home/jobs/${env.JOB_NAME}/branches/${env.BRANCH_NAME}/builds/"
                    // sh "echo ${env.BUILD_NUMBER} > build-log.txt"

                    sh 'echo "Success" > testim.txt'
                    sh "if [ -d ${env.JENKINS_HOME}/testim-results ]; then echo 'Folder Present'; else mkdir -p ${env.JENKINS_HOME}/testim-results; fi"
                    sh "cp testim.txt ${env.JENKINS_HOME}/testim-results"
                    sh "cat ${env.JENKINS_HOME}/testim-results/testim.txt"
                    sh "if [ $(< ${env.JENKINS_HOME}/testim-results/testim.txt) != 'SUCCESS' ]; then cat stopthisprogram.txt; fi"
                    
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

