pipeline {
     agent any
     stages {
        stage("Build") {
            steps {
                sh "npm install"
                //sh "npm run build"
                sh "npm run deploy"
            }
        }
        //stage("Deploy") {
        //    steps {
        //        script {
        //            sh 'sudo chmod +x /var/lib/jenkins/deploy/deploy.sh'
        //            sh 'sudo /var/lib/jenkins/deploy/deploy.sh'
        //        }
        //    }
        //}
    }
}