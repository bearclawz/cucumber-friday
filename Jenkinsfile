pipeline {
    agent none
        environment {
                        ISITFRIDAY = 'false'
                    }
    stages {
                stage ('Clone sources'){
                    git url: https://github.com/bearclawz/cucumber-friday

                }


                stage ('run cucumber on Docker')
                                    {
                                        agent { docker { image 'docker_ruby_v2' } }
                                                        steps {
                                                        echo 'run cucumber'
                                                        script {


                                                        try {
                                                        // ###############################
                                                        // ### HERE PUT cucumber tests ###
                                                        // ###############################

                                                            sh 'cucumber'
                                                            //sh 'cucumber desiredCapabilities=\'{\"applicationName\": \"iPhone7\"}\' --tags "@test_search_bar" | tee /tmp/cucumber_log.txt'


                                                            }
                                                        catch (exc) {
                                                                    cucumber '**/*.json'
                                                                    }
                                        
                                                                }
                                                                }
                                                                post {
                                                                        always {
                                                                                // generate cucumber reports
                                                                                cucumber fileIncludePattern: '**/*.json', sortingMethod: 'ALPHABETICAL'
                                                                                }
                                                                }
                                    }

            }
            post {
                always  {
                            echo 'I will always say Hello again!'

                        }
                    }

        }