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
              sh "ls -lat"
          }
      }
      stage('building and testing project'){
          steps{
              echo 'starting the docker compose container'
              sh "docker-compose up appbuild"
          }
      }
   }
//    all stages completed now add post build options
   post {
       success {
            echo "build and tests are successful"
            sh "docker-compose down"
            echo 'sending success the notification to rundeck'
            build job: 'rundeck-calculator'
       }
   }
}
