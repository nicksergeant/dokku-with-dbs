deploy-group:
  group.present:
    - name: deploy

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
      {% if user.name != 'deploy' %}
      - pkg: fish
      {% endif %}
    - shell: /usr/bin/fish
  ssh_auth.present:
    - user: {{ user.name }}
    {% if user.name != 'deploy' %}
    - source: salt://users/{{ user.name }}.pub
    {% endif %}
    - makedirs: True

{% endfor %}

deploy-authorized-keys:
  file.managed:
    - name: /home/deploy/.ssh/authorized_keys
    - user: deploy
    - group: deploy
    - mode: 600
    - source: salt://users/deploy.authorized_keys
    - makedirs: True
    - require:
      - user: deploy

/etc/sudoers:
  file.managed:
    - source: salt://users/sudoers
    - mode: 440
