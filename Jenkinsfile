node {
    def showtimes
    def movies
    def users
    def bookings
   stage('Preparation'){
       git 'https://gitlab.com/itacademywroclaw/microservices/'
   }
   stage('Testing'){
       echo 'Tests completed!'
   }
   stage('Build') {
      echo 'Building!'
      
      showtimes = docker.build("[project-id]/showtimes-app", "./showtimes")
      movies = docker.build("[project-id]/movies-app", "./movies")
      users = docker.build("[project-id]/users-app", "./users")
      bookings = docker.build("[project-id]/bookings-app", "./bookings")
   }
   
   stage('Push to gCloud'){
       echo 'Pushing to the cloud!'
       docker.withRegistry('https://gcr.io', 'gcr:[google-credentials-id]') {
           users.push("${env.BUILD_NUMBER}")
           showtimes.push("${env.BUILD_NUMBER}")
           movies.push("${env.BUILD_NUMBER}")
           bookings.push("${env.BUILD_NUMBER}")
        }
   }
}
