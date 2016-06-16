# dokku-with-dbs

A SaltStack configuration for running a private Dokku server with some databases.

The following databases are included:

- PostgreSQL
- MongoDB

These databases reside on the host machine itself and are not managed with Dokku
or Docker. It's up to you to manage users and databases.

Setup
-----

1. Deploy a new Ubuntu 14.04 instance.
2. Log in to the server as `root`.
3. [Install Dokku](http://dokku.viewdocs.io/dokku/installation/).
4. If required, edit `/etc/hostname` and `/etc/hosts` (the 127.0.1.1 entry) with your hostname.
5. Log out of the server.
6. If required, change hostname in `pillar/production.sls` and `Makefile`.
7. Run `make server`.
