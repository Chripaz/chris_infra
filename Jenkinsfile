pipeline {
    agent any 
    stages {
        stage ('apply') {
        environment {
            AWS_ACCESS_KEY_ID = credentials ("ACCESS_KEY")
            AWS_SECRET_KEY_ID = credentials ("SECRET_KEY")
            }
            steps {
             sh 'terraform init'
             sh 'terraform apply -auto-approve'
            }
        }
    
    }

}