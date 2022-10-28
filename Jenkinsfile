node {
    def app

    stage('Clone repository') {      

        checkout scm
    }

    stage('Build image') {
  
       app = docker.build("ltartsmusic/gitopswebproject")
    }

    stage('Test image') {

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'DockerHub') {
            app.push("${env.BUILD_NUMBER}")
        }
    }
    
    stage('Trigger ManifestUpdate') {
                echo "triggering updatemanifestjob"
                build job: 'gitops_manifest_local', parameters: [string(name: 'DOCKERTAG', value: env.BUILD_NUMBER)]
        }
    stage('Displaying app file') {
                echo "cat app.py:" 
                sh 'cat app.py'
        }    
        
}

