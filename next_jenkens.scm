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
                    sh '/var/lib/jenkins/deploy/deploy.sh'
                }
            }
        }
    }
}