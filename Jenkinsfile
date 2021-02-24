pipeline {
    agent any
    
    tools {
        maven 'maven3'
    }
    stages {
        stage('SCM Checkout') {
            steps {
                //git 'https://github.com/gourip092/petclinic.git'
				git 'https://github.com/dgp999/Janarirepo.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Code Quality') {
            steps {
                withSonarQubeEnv('sonar-server') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
        stage('Nexus Upload') {
            steps {
                //nexusArtifactUploader artifacts: [[artifactId: 'spring-petclinic', classifier: '', file: 'target/petclinic.war', type: 'war']], credentialsId: 'nexus', groupId: 'org.springframework.samples', nexusUrl: '172.31.44.147:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-snapshots', version: '4.2.5-SNAPSHOT'
				nexusArtifactUploader artifacts: [[artifactId: 'IKnow', classifier: '', file: 'target/IKnow.war', type: 'war']], credentialsId: 'nexus', groupId: 'Dontknow', nexusUrl: '172.31.44.147:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-snapshots', version: '1.0-SNAPSHOT'
            }
        }
    }
}
