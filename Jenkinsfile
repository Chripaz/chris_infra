pipeline {
    agent any 
    stages {
        stage ('apply') {
            environment {
                AWS_ACCESS_KEY_ID = credetials ("ACCESS_KEY")
                AWS_SECRET_KEY_ID = credetials ("SECRET_KEY")
            }
            steps {
                
                sh 'terraform init'
                sh 'terraform apply -auto-approve'
            }
        }

    }

}