node {
  agent any
  stages {
    //init stage 시작
    stage("init") {
      steps {
        sh "echo init"
      }
    }

    //build stage 시작
    stage("build") {
      steps {
        sh "echo 'start build' "
      }
    }
 
    //deploy stage 시작
    stage("deploy") {
      steps {
        sh "echo 'start deploy' "
      }
    }
  }
}