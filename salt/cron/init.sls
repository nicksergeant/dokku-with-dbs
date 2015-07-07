/usr/local/bin/dokku cleanup > /tmp/cron.dokku-cleanup:
  cron.present:
    - user: root
    - minute: 0

/usr/local/bin/dokku run elfpowered.com python manage.py process_hits > /tmp/cron.elfpowered:
  cron.present:
    - user: root
    - minute: '0,10,20,30,40,50'

/usr/local/bin/dokku run slacktappd-pixelbots node index.js > /tmp/cron.slacktappd-pixelbots:
  cron.present:
    - user: root
    - minute: '1,11,21,31,41,51'

/usr/local/bin/dokku run slacktappd-localytics node index.js > /tmp/cron.slacktappd-localytics:
  cron.present:
    - user: root
    - minute: '2,12,22,32,42,52'

/usr/local/bin/dokku run slacktocracy-amara iojs index.js > /tmp/cron.slacktocracy-amara:
  cron.present:
    - user: root
    - minute: '3,13,23,33,43,53'

/usr/local/bin/dokku run slacktocracy-siftie iojs index.js > /tmp/cron.slacktocracy-siftie:
  cron.present:
    - user: root
    - minute: '4,14,24,34,44,54'

/usr/local/bin/dokku run slacktocracy-localytics iojs index.js > /tmp/cron.slacktocracy-localytics:
  cron.present:
    - user: root
    - minute: '5,15,25,35,45,55'
