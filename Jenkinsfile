pipeline {
    agent {
        node {
            label 'server1-fikri'
        }
    }

    stages {
        stage('Build Apps') {
            steps {
              sh '''cd apps
              npm install
              '''
            }
        }

        stage('Test Apps') {
            steps {
              sh '''cd apps
              cp -r /root/simple-apps/apps/.env .
              npm test
              '''
            }
        }

        stage('Scanning Sonar') {
            steps {
              sh ''' 
              cd apps
              sonar-scanner \
              -Dsonar.projectKey=Simple-Apps \
              -Dsonar.sources=. \
              -Dsonar.host.url=http://172.23.1.2:9000 \
              -Dsonar.login=sqp_417fd6469c008461fa7b807daffb020d37f723c8
              '''
            }
        }

        stage('Build Image') {
            steps {
              echo "Build Image"
            }
        }

        stage('Push Image') {
            steps {
              echo "Push Image"
            }
        }

        stage('Deploy Apps') {
            steps {
              echo "Deploy Apps"
            }
        }
    }
    
}

