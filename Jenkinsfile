pipeline {
    agent none
        environment {
                        ISITFRIDAY = 'false'
                    }
    stages {
                stage ('Git fetch')
                                    {
                                        agent { label '' }
                                        steps {
                                                git poll: false, changelog: false, url: 'https://github.com/bearclawz/cucumber-friday', branch: 'report-portal'
                                              }

                                    }
    }
}  

//                 stage ('run cucumber on Docker')
//                                     {
//                                         agent { docker { image 'docker_ruby_v2' } }
//                                                         steps {
//                                                         echo 'run cucumber'
//                                                         try {
//                                                         // ###############################
//                                                         // ### HERE PUT cucumber tests ###
//                                                         // ###############################

//                                                             sh 'cucumber'
//                                                             //sh 'cucumber desiredCapabilities=\'{\"applicationName\": \"iPhone7\"}\' --tags "@test_search_bar" | tee /tmp/cucumber_log.txt'


//                                                             }
//                                                         catch (exc) {
//                                                                     cucumber '**/*.json'
//                                                                     }
                                        
//                                                                 }

                                                                
//                                                                 // post {
//                                                                 //         always {
//                                                                 //                 // generate cucumber reports
//                                                                 //                 cucumber fileIncludePattern: '**/*.json', sortingMethod: 'ALPHABETICAL'
//                                                                 //                 }
//                                                                 // }
//                                     }


//             }
// }