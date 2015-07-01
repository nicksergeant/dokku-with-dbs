/usr/local/bin/dokku run slacktappd node index.js > /tmp/cron.slacktappd:
  cron.present:
    - user: root
    - minute: '*/10'
