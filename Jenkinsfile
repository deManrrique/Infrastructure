pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }

    stages {
        stage('Clone repository') {
            steps {
                git branch: 'master', url: 'https://github.com/deManrrique/application.git'
            }
        }
        stage('Initialize Terraform') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Plan Terraform') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('Apply Terraform') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}
