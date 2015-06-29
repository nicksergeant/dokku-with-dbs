wheel-group:
  group.present:
    - name: wheel

{% for user in pillar.users %}

{{ user.name }}:
  user.present:
    - name: {{ user.name }}
    - home: /home/{{ user.name }}
    - groups: {{ user.groups }}
    - require:
      {% for group in user.groups %}
      - group: {{ group }}
      {% endfor %}
      - pkg: fish
    - shell: /usr/bin/fish
  ssh_auth.present:
    - user: {{ user.name }}
    - source: salt://users/{{ user.name }}.pub
    - makedirs: True

{% endfor %}

/etc/sudoers:
  file.managed:
    - source: salt://users/sudoers
    - mode: 440
