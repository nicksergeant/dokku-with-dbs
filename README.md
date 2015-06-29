# dokku-with-dbs

A SaltStack configuration for running a private Dokku server with some databases.

The following databases are included:

- PostgreSQL
- MongoDB
- RethinKDB

These databases reside on the host machine itself and are not managed with Dokku
or Docker. It's up to you to manage users and databases.

Setup
-----

1.  Deploy a new Linode.
2.  Log in to the server as `root`.
3.  Edit `/etc/hostname` and `/etc/hosts` (the 127.0.1.1 entry) with your hostname.
4.  Change hostname in `pillar/production.sls` and `Makefile`.
5.  Run `make server`.
6.  When asked 'Use the web-based config page?': `no`.
7.  When asked 'Machine's hostname or IP': your hostname.
8.  When asked 'Use vhost based deployments?': `yes`.
9.  When asked 'Keyfile for initial user': `/root/.ssh/authorized_keys` (your DSA public key is copied here).
10. Reboot the server.
