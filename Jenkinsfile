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
                    sh "${tool 'terraform'}/terraform init"
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    sh "${tool 'terraform'}/terraform apply -auto-approve"
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
