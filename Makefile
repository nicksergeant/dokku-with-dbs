server:
	ssh root@dokku.nicksergeant.com 'ssh-keygen'
	@scp -q -P 22 -r ~/.ssh/id_dsa.pub root@dokku.nicksergeant.com:/root/.ssh/authorized_keys
	@ssh root@dokku.nicksergeant.com 'curl --silent https://get.docker.io/gpg 2> /dev/null | apt-key add - 2>&1 >/dev/null'
	@ssh root@dokku.nicksergeant.com 'curl --silent https://packagecloud.io/gpg.key 2> /dev/null | apt-key add - 2>&1 >/dev/null'
	@ssh root@dokku.nicksergeant.com 'echo "deb http://get.docker.io/ubuntu docker main" > /etc/apt/sources.list.d/docker.list'
	@ssh root@dokku.nicksergeant.com 'echo "deb https://packagecloud.io/dokku/dokku/ubuntu/ trusty main" > /etc/apt/sources.list.d/dokku.list'
	@ssh root@dokku.nicksergeant.com 'apt-get update'
	@ssh root@dokku.nicksergeant.com 'apt-get install -y apache2-utils dokku python-software-properties software-properties-common'
	@ssh root@dokku.nicksergeant.com 'add-apt-repository -y ppa:saltstack/salt'
	@ssh root@dokku.nicksergeant.com 'apt-get update'
	@ssh root@dokku.nicksergeant.com 'apt-get install -y salt-minion'
	ssh root@dokku.nicksergeant.com 'htpasswd -c /etc/.htpasswd rethinkdb'
	@scp -q -P 22 -r ./salt/ root@dokku.nicksergeant.com:salt
	@scp -q -P 22 -r ./pillar/ root@dokku.nicksergeant.com:pillar
	@ssh root@dokku.nicksergeant.com 'rm -rf /srv'
	@ssh root@dokku.nicksergeant.com 'mkdir /srv'
	@ssh root@dokku.nicksergeant.com 'mv ~/salt /srv/salt'
	@ssh root@dokku.nicksergeant.com 'mv ~/pillar /srv/pillar'
	@ssh root@dokku.nicksergeant.com 'salt-call --local state.highstate'

.PHONY: server
