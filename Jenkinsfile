pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        #stage('Build and Push Docker Image') {
           # steps {
              #  script {
                 #   docker.withRegistry('https://index.docker.io/v1/', 'dockertoken') {
                      #  def customImage = docker.build("my-node-app")
                       # customImage.push()
                   # }
               # }
           # }
       # }
        
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform init -backend-config=config/backend.tfvars'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
    
    post {
        success {
            echo 'Deployment successful!'
        }
    }
}
