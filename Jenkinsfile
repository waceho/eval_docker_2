node {
    checkout scm
    withEnv(['MYTOOL_HOME=/usr/local/mytool']) {
        docker.image("postgres:9.2").withRun() { db ->
            withEnv(['DB_USERNAME=postgres', 'DB_PASSWORD=', "DB_HOST=db", "DB_PORT=5432"]) {
                docker.image("redis:X").withRun() { redis ->
                    withEnv(["REDIS_URL=redis://redis"]) {
                        docker.build(imageName, "--file .woloxci/Dockerfile .").inside("--link ${db.id}:postgres --link ${redis.id}:redis") {
                            sh "rake db:create"
                            sh "rake db:migrate"
                            sh "bundle exec rspec spec"
                        }
                    }
                }
            }
        }
    }
}
