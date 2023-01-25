pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage("build jar") {
            steps {
                script {
                    echo "building the application"
                    sh 'mvn package -DskipTests'
                }
            }
        }
        stage("build image") {
            steps {
                script {
                    echo "building docker image ...."
                    withCredentials([usernamePassword(credentialsId: 'dockerhub_id', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'docker build -t groversamay/java-springboot:v1 .'
                    sh "echo $PASSWORD | docker login -u $USERNAME --password-stdin"
                    sh ' docker push groversamay/java-springboot:v1'
                    }
                }
            }
        }
    }
}
