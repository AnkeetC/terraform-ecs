pipeline {
    agent any
    
    environment {
        action = 'apply' // Set the default action
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    sh "${tool 'terraform'}/terraform init-reconfigure"
                }
            }
        }
        
        stage("Terraform Action") {
            steps {
                script {
                    echo "Terraform action is --> ${action}"
                    sh "terraform ${action} --auto-approve"
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
