pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {
        stage('terraform started') {
            steps {
                sh 'echo "Started ....!"'
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo rm -r *;git clone https://github.com/subudear/jenkin-terraform.git'
            }
        }
        stage('tfsvars create') {
            steps {
                sh 'cp /home/subudear/vars.tf ./jenkins/'
            }
        }
        stage('terraform init') {
            steps {
                sh '/home/subudear/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; /home/subudear/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended.....!"'
            }
        }

    }
}