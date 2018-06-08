node {
    
    stage("phpunit_install") {
        sh 'yum --enablerepo=remi install phpunit'
    }
    stage("php_lint") {
        sh 'find . -name "*.php" -print0 | xargs -0 -n1 php -l'
    }

    stage("phpunit") {
        sh 'vendor/bin/phpunit'
    }

    stage("codeception") {
        sh 'vendor/bin/codecept run'
    }
}
