def committerName = ""

pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                script {
                    env.COMMITTER_NAME = sh( script: "git show -s --format='%cn' ${env.GIT_COMMIT}", returnStdout: true).trim()
                    env.BLOCKS = sh( script: "./committerName.sh", returnStdout: true)
                    echo "COMMITTER_NAME: ${env.COMMITTER_NAME}"
                    echo "BLOCKS: ${env.BLOCKS}"
                }
                    sh 'npm -v'
                    // sh "abc=git show -s --format='%cn' ${env.GIT_COMMIT}"
                    sh "echo ${env.GIT_COMMIT} > commit.txt"
                    // sh "cp commit.txt ${env.JENKINS_HOME}/workspace/todo_master"
                    sh "chmod u+r+x committerName.sh"
                    //  abc = ""
                    // sh "\"${abc}\"<./committerName.sh"
                    // sh "cat ./committerName.sh"
                    echo "${env.COMMITTER_NAME}"
                    lastChanges since: 'LAST_SUCCESSFUL_BUILD', format:'SIDE',matching: 'LINE'
                    // slackSend(channel: "#general", blocks: """${env.BLOCKS}""")
                    
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

                    // sh 'echo "Success" > testim.txt'
                    // sh "if [ -d ${env.JENKINS_HOME}/testim-results ]; then echo 'Folder Present'; else mkdir -p ${env.JENKINS_HOME}/testim-results; fi"
                    // sh "cp testim.txt ${env.JENKINS_HOME}/testim-results"
                    // sh "cat ${env.JENKINS_HOME}/testim-results/testim.txt"
                    // // sh "if [ $(< ${env.JENKINS_HOME}/testim-results/testim.txt) != 'SUCCESS' ]; then echo 'hello'; fi"
                    // sh "cat ${env.JENKINS_HOME}/testim-results/testim.txt > testim-result.txt"
                    // sh 'if [ "$(< testim-result.txt)" != "SUCCESS" ]; then cat RegressionFailure.txt; fi'
                
                
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

