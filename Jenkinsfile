pipeline {

    agent any

    stages {

        stage("build") {
            
            steps{
                echo 'building the application...'
            }
        }
        
        stage("test") {
            
            steps{
                echo 'testing the application...'
             }
        }

        stage("deploy") {
            
            steps{
                echo 'deploying the app...'
        }
        }
    }
}

//Script or declaritve
//1. Scripted
//node {
//  groovy script
//}
//2. Declarative
//This example
//agent is node, can have master/slave..any is any
//stages, when the work happens
// define stage and steps