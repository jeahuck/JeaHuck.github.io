node {
  agent none 
  stages {
    //init stage 시작
    stage("init") {
      sh "echo init"
    }

    //build stage 시작
    stage("build") {
      sh "echo 'start build' "
    }
 
    //deploy stage 시작
    stage("deploy") {
      sh "echo 'start deploy' "
    }
  }
  post{
	  always {
    	echo 'always 문구'
    }
    changed {
      echo 'changed 문구'
    }
    failure {
      echo 'failure 문구'
    }
    success {
      echo 'success 문구'
    }
  }
}