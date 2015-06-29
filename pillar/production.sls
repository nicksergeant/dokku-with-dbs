env_name: production
hostname: dokku.nicksergeant.com
deploy_user: deploy

users:
  -
    name: deploy
    groups:
      - deploy
  -
    name: nick
    groups:
      - deploy
      - wheel

ssh:
    port: 55555
