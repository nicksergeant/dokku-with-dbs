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

/usr/local/bin/dokku run humanitybox.com node scripts/make/stats.js > /tmp/cron.humanitybox-stats:
  cron.present:
    - minute: 6

/usr/local/bin/dokku run humanitybox.com node scripts/make/build.js > /tmp/cron.humanitybox-build:
  cron.present:
    - hour: 3
    - minute: 7

/usr/local/bin/dokku run humanitybox.com node scripts/make/reset.js > /tmp/cron.humanitybox-reset:
  cron.present:
    - dayweek: 0
    - hour: 0
    - minute: 6

/usr/local/bin/dokku cleanup > /tmp/cron.dokku-cleanup:
  cron.present:
    - user: root
    - minute: '8,18,28,38,48,58'

/usr/local/bin/dokku letsencrypt fingerlakescomfort.com > /tmp/cron.dokku-letsencrypt-fingerlakescomfort.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 9
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt fitzlimo.com > /tmp/cron.dokku-letsencrypt-fitzlimo.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 10
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt humanitybox.com > /tmp/cron.dokku-letsencrypt-humanitybox.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 11
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt nickandashley.com > /tmp/cron.dokku-letsencrypt-nickandashley.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 12
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt salmon-tracker.com > /tmp/cron.dokku-letsencrypt-salmon-tracker.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 13
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt slacktappd-localytics > /tmp/cron.dokku-letsencrypt-slacktappd-localytics:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 14
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt slacktappd-pixelbots > /tmp/cron.dokku-letsencrypt-slacktappd-pixelbots:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 15
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt slacktocracy-amara > /tmp/cron.dokku-letsencrypt-slacktocracy-amara:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 16
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt slacktocracy-localytics > /tmp/cron.dokku-letsencrypt-slacktocracy-localytics:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 17
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt slacktocracy-siftie > /tmp/cron.dokku-letsencrypt-slacktocracy-siftie:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 18
    - month: '1,3,5,7,9,11'
