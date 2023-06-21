pipeline {
    agent any
    stages {
        stage("clone code") {
            steps {
                sh "rm -r *"
                git url: 'https://github.com/Nagendra2140/node-js-sample.git'
            }
        }
        stage("deploy"){
            steps {
                sshagent(['Nodejs']) {
                    sh "scp -r -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/<jenkins_jobname>/* ubuntu@<remote_server_ip>:/var/www/html/"
                    sh "ssh ubuntu@<remote_server_ip> /var/www/html/npm.sh"
                }
            }
        }  
    }
}
