pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
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
