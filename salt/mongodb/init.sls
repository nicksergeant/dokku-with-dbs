/data/db:
  file.directory:
    - makedirs: true

mongodb:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/mongodb.conf

/etc/mongodb.conf:
  file.managed:
    - source: salt://mongodb/mongodb.conf
    - mode: 644
    - template: jinja
    - require:
      - pkg: mongodb
