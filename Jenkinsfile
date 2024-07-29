pipeline {
    agent any

    stages {
        stage('Clone repository') {
            steps {
                git branch: 'master', url: 'git@github.com:deManrrique/Infrastructure.git'
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
