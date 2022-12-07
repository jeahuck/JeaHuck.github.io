pipeline {
     agent any
     stages {
        stage("Build") {
            steps {
                sh "npm install"
                sh "npm run build"
            }
        }
        stage("Deploy") {
            steps {
                script {
                    sh 'chmod +x /var/lib/jenkins/deploy/deploy.sh'
                    sh '/var/lib/jenkins/deploy/deploy.sh'
                }
            }
        }
    }
}