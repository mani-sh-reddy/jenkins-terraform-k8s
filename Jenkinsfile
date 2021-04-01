pipeline {
  agent any
  stages {
    stage('Install dependencies') {
      steps {
        sh "chmod +x install_script.sh"
        sh "install_script.sh"
      }
    }
    
    stage('Run eks') {
      steps {
        sh "chmod +x k8s_script.sh"
        sh "k8s_script.sh"
      }
    }   
  }
}