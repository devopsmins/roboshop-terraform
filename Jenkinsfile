pipeline {
  agent {
    node {
      label "workstation"
    }
  }

  options {
    ansiColor('xterm')
  }

  parameters {
    choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Choose TF Action')
  }

  stages {

    stage('TF Action') {
      parallel {

        stage('DEV Env') {
          steps {
            dir('DEV') {
              git branch: 'main', url: 'https://github.com/devopsmins/roboshop-terraform'
              sh 'terraform init -backend-config=env-dev/state.tfvars'
              sh 'terraform ${ACTION} -auto-approve -var-file=env-dev/main.tfvars'
            }
          }
        }
      }
    }
  }

  post {
    always {
      cleanWs()
    }
  }

}