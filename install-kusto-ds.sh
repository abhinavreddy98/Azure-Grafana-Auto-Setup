#!/bin/bash
cd ~/
sudo apt-get update
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install git-core
cd /var/lib/grafana/plugins/
sudo git clone https://github.com/abhinavreddy98/kustodb-for-grafana.git
cd kustodb-for-grafana
sudo npm install
sudo npm install -g grunt
sudo npm install -g grunt-cli
sudo npm run build
sudo service grafana-server restart
