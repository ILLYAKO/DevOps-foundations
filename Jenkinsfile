pipeline {    //
  agent any  // what kind of Jenkins slaves to build this job on
  stages {  // stages define the actual stages that need to run. And these run serially by default, so they run step-by-step. You can configure it to run in parallel. 
    stage('Build our website'){  // part of the CI
      steps {  // Run sh script
        sh "$PWD/scripts/build.sh" // invoce the shell and run script
      }
    }
    stage('Run unit tests'){  // part of the CI
      steps {  // Run sh script
        sh "$PWD/scripts/unit_test.sh" // invoce the shell and run script
      }
    }
    // stage('Run integration test'){}  // part of the CI

    stage('Deploy website'){  // part of the CI
      steps {  // Run sh script
        sh "$PWD/scripts/deploy_website.sh" // invoce the shell and run script
      }
    }
  }
}