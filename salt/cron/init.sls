/usr/local/bin/dokku run slacktappd node index.js > /tmp/cron.slacktappd:
  cron.present:
    - user: root
    - minute: '*/10'

/usr/local/bin/dokku run slacktappd-localytics node index.js > /tmp/cron.slacktappd-localytics:
  cron.present:
    - user: root
    - minute: '*/10'

/usr/local/bin/dokku cleanup > /tmp/cron.dokku-cleanup:
  cron.present:
    - user: root
    - minute: 0

/usr/local/bin/dokku run slacktocracy-amara iojs index.js > /tmp/cron.slacktocracy-amara:
  cron.present:
    - user: root
    - minute: '*/10'

/usr/local/bin/dokku run slacktocracy-siftie iojs index.js > /tmp/cron.slacktocracy-siftie:
  cron.present:
    - user: root
    - minute: '*/10'

/usr/local/bin/dokku run slacktocracy-localytics iojs index.js > /tmp/cron.slacktocracy-localytics:
  cron.present:
    - user: root
    - minute: '*/10'
