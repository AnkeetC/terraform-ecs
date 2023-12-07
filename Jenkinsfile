pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    sh '${tool "Terraform"}/terraform init -backend-config=config/backend.tfvars'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    sh '${tool "Terraform"}/terraform apply -auto-approve'
                }
            }
        }
    }
    
    post {
        success {
            script {
                echo 'Deployment successful!'
                // You can add additional post-success steps here
            }
        }
    }
}
