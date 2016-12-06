# Liquibase example based on Vagrant

This repo contains `ansible`-provisioned `vagrant` box with `liquibase` and example changelog, so:

    $ vagrant up
    $ vagrant ssh
    $ cd /vagrant
    $ ./bin/liquibase-migrate  # migrates up
    $ ./bin/liquibase-rollback # rollbacks

DB settings:
    
    ip: 10.0.0.20
    USERNAME=app 
    PASSWORD=app
    URL=jdbc:postgresql://localhost:5432/app
    driver=org.postgresql.Driver
