/usr/local/bin/dokku run slacktappd node index.js > /tmp/cron.slacktappd:
  cron.present:
    - user: root
    - minute: '*/10'

/usr/local/bin/dokku run slacktappd-localytics node index.js > /tmp/cron.slacktappd-localytics:
  cron.present:
    - user: root
    - minute: '*/10'

/usr/local/bin/dokku cleanup:
  cron.present:
    - user: root
    - minute: 0
