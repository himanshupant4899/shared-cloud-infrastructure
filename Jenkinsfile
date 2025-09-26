make_command = "make"

pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('Terraform init') {
            steps {
                sh make_command + "terraform_init"
            }
        }
        stage('Terraform validate') {
            steps {
                sh make_command + "terraform_validate"
            }
        }
        stage('Terraform plan') {
            steps {
                sh make_command + "terraform_plan"
            }
        }

        stage('Approval') {

        }

        stage('Terraform apply') {
            steps {
                sh make_command + "terraform_approve"
            }
        }
    }

    post {
        always {
            script {
                sh make_command + "clean"
            }
        }
    }
}