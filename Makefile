deploy: salt

salt:
	@scp -q -P 55555 -r ./salt/ nick@dokku.nicksergeant.com:salt
	@scp -q -P 55555 -r ./pillar/ nick@dokku.nicksergeant.com:pillar
	@ssh nick@dokku.nicksergeant.com -p 55555 'sudo rm -rf /srv'
	@ssh nick@dokku.nicksergeant.com -p 55555 'sudo mkdir /srv'
	@ssh nick@dokku.nicksergeant.com -p 55555 'sudo mv ~/salt /srv/salt'
	@ssh nick@dokku.nicksergeant.com -p 55555 'sudo mv ~/pillar /srv/pillar'
	@ssh nick@dokku.nicksergeant.com -p 55555 'sudo salt-call --local state.highstate'

server:
	ssh root@dokku.nicksergeant.com 'ssh-keygen'
	@scp -q -P 22 -r ~/.ssh/id_dsa.pub root@dokku.nicksergeant.com:/root/.ssh/authorized_keys
	@ssh root@dokku.nicksergeant.com 'apt-get update'
	@ssh root@dokku.nicksergeant.com 'apt-get -y upgrade'
	@ssh root@dokku.nicksergeant.com 'apt-get install -y apache2-utils python-software-properties software-properties-common'
	@ssh root@dokku.nicksergeant.com 'add-apt-repository -y ppa:saltstack/salt'
	@ssh root@dokku.nicksergeant.com 'apt-get update'
	@ssh root@dokku.nicksergeant.com 'apt-get install -y salt-minion'
	ssh -t root@dokku.nicksergeant.com 'htpasswd -c /etc/.htpasswd rethinkdb'
	@scp -q -P 22 -r ./salt/ root@dokku.nicksergeant.com:salt
	@scp -q -P 22 -r ./pillar/ root@dokku.nicksergeant.com:pillar
	@ssh root@dokku.nicksergeant.com 'rm -rf /srv'
	@ssh root@dokku.nicksergeant.com 'mkdir /srv'
	@ssh root@dokku.nicksergeant.com 'mv ~/salt /srv/salt'
	@ssh root@dokku.nicksergeant.com 'mv ~/pillar /srv/pillar'
	@ssh root@dokku.nicksergeant.com 'salt-call --local state.highstate'

.PHONY: deploy salt server
