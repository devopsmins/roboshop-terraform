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
    stage('Parameter Store Update') {
      steps {
        dir('PS') {
          git branch: 'main', url: 'https://github.com/devopsmins/aws-parameter-store'
          sh 'terraform init'
          sh 'terraform apply -auto-approve'
        }
      }
    }

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