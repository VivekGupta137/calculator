pipeline {
   agent any

   stages {
      stage('welcome') {
         steps {
            echo 'This code is maintained by Vivek Gupta'
         }
      }
//   stage to pull from github private repository
      stage('cloning from github'){
          steps {
              echo 'cloning the NimhansDevops repository'
              git branch: 'master',
                url: 'git@github.com:VivekGupta137/calculator.git'
              sh "ls -lat"
          }
      }
      stage('building the project'){
          steps{
              echo 'starting the docker compose container'
              sh "docker-compose up app"
              echo "sleeping for 5 seconds"
          }
      }
   }
//    all stages completed now add post build options
   post {
       success {
            echo "stopping sql service forwarding this task to rundeck"
            sh "docker-compose down"
            echo 'sending success the notification to rundeck'
            build job: 'rundeck'
       }
   }
}
