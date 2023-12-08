pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage("terraform init") {
            steps {
                sh 'terraform init -reconfigure'
            }
        }
        
        stage("terraform plan") {
            steps {
                sh 'terraform plan'
            }
        }
                
        stage("terraform Action") {
    steps {
        echo "Terraform action is --> ${action}"
        sh 'terraform ${action} --auto-approve'
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
