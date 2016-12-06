# Liquibase example based on Vagrant

This repo contains `ansible`-provisioned `vagrant` box with `liquibase` and example changelog, so:

    $ vagrant up
    $ vagrant ssh
    $ cd /vagrant
    $ ./bin/liquibase-migrate  # migrates up
    $ ./bin/liquibase-rollback # rollbacks
