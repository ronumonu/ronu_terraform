pipeline
{
    agent any
    
    stages
    {
        stage("version check")
        {
            steps{
                
                sh '''
                    terraform --version
                '''
                
            }
            
        }
        stage("checkout")
        {
            steps
            {
            checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github_token', url: 'https://github.com/ronumonu/ronu_terraform.git']]]
            }
        }
        
        stage("init")
        {
            steps
            {
                sh '''
                    terraform init
                '''
            }
            
        }
        
        stage("apply")
        {
            steps
            {
                sh '''
                    terraform apply --auto-approve
                '''
                
            }
            
        }
    }
}