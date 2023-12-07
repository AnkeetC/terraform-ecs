pipeline {
    agent any
    
    tools {
        terraform 'Terraform'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    sh '${tool "Terraform"}/terraform init -backend-config=config/backend.tfvars'
                    sh '${tool "Terraform"}/terraform apply -auto-approve'
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
