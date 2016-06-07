/usr/local/bin/dokku --rm-container run elfpowered.com python manage.py process_hits > /tmp/cron.elfpowered:
  cron.present:
    - user: root
    - minute: '0,10,20,30,40,50'

/usr/local/bin/dokku --rm-container run slacktappd-hopdropclub node index.js > /tmp/cron.slacktappd-hopdropclub:
  cron.present:
    - user: root
    - minute: '1,11,21,31,41,51'

/usr/local/bin/dokku --rm-container run slacktappd-desk node index.js > /tmp/cron.slacktappd-desk:
  cron.present:
    - user: root
    - minute: '2,12,22,32,42,52'

/usr/local/bin/dokku --rm-container run humanitybox.com node scripts/make/stats.js > /tmp/cron.humanitybox-stats:
  cron.present:
    - minute: 6

/usr/local/bin/dokku --rm-container run humanitybox.com node scripts/make/build.js > /tmp/cron.humanitybox-build:
  cron.present:
    - hour: 3
    - minute: 7

/usr/local/bin/dokku --rm-container run humanitybox.com node scripts/make/reset.js > /tmp/cron.humanitybox-reset:
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

/usr/local/bin/dokku letsencrypt elfpowered.com > /tmp/cron.dokku-letsencrypt-elfpowered.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 14
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt nicksergeant.com > /tmp/cron.dokku-letsencrypt-nicksergeant.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 15
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt ratedbeer.com > /tmp/cron.dokku-letsencrypt-ratedbeer.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 16
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt siftie.com > /tmp/cron.dokku-letsencrypt-siftie.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 17
    - month: '1,3,5,7,9,11'

/usr/local/bin/dokku letsencrypt slack.siftie.com > /tmp/cron.dokku-letsencrypt-slack.siftie.com:
  cron.present:
    - user: root
    - daymonth: 1
    - hour: 1
    - minute: 18
    - month: '1,3,5,7,9,11'
