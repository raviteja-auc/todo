pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                script {
                    // env.COMMITTER_NAME = sh( script: "git show -s --format='%cn' ${env.GIT_COMMIT}", returnStdout: true).trim()
                    // def block = sh( script: "./committerName.sh", returnStdout: true)
                    // echo "COMMITTER_NAME: ${env.COMMITTER_NAME}"
                    // echo "BLOCKS: ${env.BLOCKS}"

                    def publisher = LastChanges.getLastChangesPublisher "LAST_SUCCESSFUL_BUILD", "SIDE", "LINE", true, true, "", "", "", "", ""
                    publisher.publishLastChanges()
                    def changes = publisher.getLastChanges()
                    def textString = ""
                    // println(changes.getEscapedDiff())
                    for (commit in changes.getCommits()) {
                        // println(commit)
                        def commitInfo = commit.getCommitInfo()
                        // println(commitInfo.getCommitId())
                        // println(commitInfo.getCommitMessage())
                        // println(commit.getChanges())

                        def fullCommitId = commitInfo.getCommitId()
                        def commitId = commitInfo.getFormatedCommitId()
                        def committerName = commitInfo.getCommitterName()
                        def commitMsg = commitInfo.getCommitMessage()
                        def tempurl = "${env.GIT_URL}"[0..-5]
                        def commiturl = "$tempurl" + "/commit/" + "$fullCommitId"

                        textString += "*$committerName*\n <$commiturl|`$commitId`> $commitMsg\n"
                    }
                    blocks = [ 
                                [ 
                                    "type": "section", 
                                    "text": [ 
                                        "type": "mrkdwn", 
                                        "text": ":white_check_mark: <${env.BUILD_URL}|${env.JOB_NAME} #${env.BUILD_NUMBER}> is *${currentBuild.currentResult}*"
                                    ],
                                ],
                                [ 
                                    "type": "divider"
                                ],
                                [ 
                                    "type": "section", 
                                    "text": [ 
                                        "type": "mrkdwn", 
                                        "text": "$textString" 
                                    ],
                                ]  
                            ]
                    // slackSend(color: "good", channel: "#general", message: "(<${env.BUILD_URL}|${env.JOB_NAME}-${env.BUILD_NUMBER}>) passed")
                    slackSend(channel: "#general", blocks: blocks)
                }
                    // sh 'npm -v'
                    // // sh "abc=git show -s --format='%cn' ${env.GIT_COMMIT}"
                    // sh "echo ${env.GIT_COMMIT} > commit.txt"
                    // // sh "cp commit.txt ${env.JENKINS_HOME}/workspace/todo_master"
                    // sh "chmod u+r+x committerName.sh"
                    // //  abc = ""
                    // // sh "\"${abc}\"<./committerName.sh"
                    // // sh "cat ./committerName.sh"
                    // echo "${env.COMMITTER_NAME}"
                    // lastChanges since: 'LAST_SUCCESSFUL_BUILD', format:'SIDE',matching: 'LINE'
                    // // slackSend(channel: "#general", blocks: """${env.BLOCKS}""")
                    


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
                
                    // sh "cat testim.txt > testim.txt"
                    // sh 'if [ "$(< testim.txt)" != "SUCCESS" ]; then cat RegressionFailure.txt; fi'
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
        stage('testim-check') {
            steps {
                script {
                    def testim_result = sh( script: "cat ${env.JENKINS_HOME}/testim-results/testim.txt", returnStdout: true).trim()
                }
                    // sh "cat ${env.JENKINS_HOME}/testim-results/testim.txt > testim-result.txt"
                    // sh "if [ ${env.TESTIM_RESULT} != 'SUCCESS' ]; then cat RegressionFailure.txt; fi"

                    echo "$testim_result"

                    // sh "cat testim.txt > testim.txt"
                    // sh 'if [ "$(< testim.txt)" != "SUCCESS" ]; then cat RegressionFailure.txt; fi'
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

