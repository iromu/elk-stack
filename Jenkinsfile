pipeline {
    agent none

    stages  {

        stage('Docker') {
            parallel {
                stage('Docker elasticsearch'){
                 agent { label 'docker'  }
                 steps {
                     sh 'docker build --no-cache -t iromu/elasticsearch:latest ./elasticsearch -f ./elasticsearch/Dockerfile'
                     sh 'docker push iromu/elasticsearch:latest'
                 }
                }

                stage('Docker kibana'){
                 agent { label 'docker'  }
                 steps {
                     sh 'docker build --no-cache -t iromu/kibana:latest ./kibana -f ./kibana/Dockerfile'
                     sh 'docker push iromu/kibana:latest'
                 }
                }

                stage('Docker logstash'){
                 agent { label 'docker'  }
                 steps {
                     sh 'docker build --no-cache -t iromu/logstash:latest ./logstash -f ./logstash/Dockerfile'
                     sh 'docker push iromu/logstash:latest'
                 }
                }
            }
        }

        stage('Cleanup'){
            agent any

            steps {
              cleanWs()
            }
        }

    }
}
