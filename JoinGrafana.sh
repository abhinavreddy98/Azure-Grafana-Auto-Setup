#!/bin/bash
wget https://gallery.azure.com/artifact/20151001/grafana-labs.grafana_ossstable.1.0.2/Artifacts/scripts/install-grafana.sh
sudo bash install-grafana.sh $6
sudo bash setup-grafana-vm.sh $1 $2 $3 $4 $5
grafana-cli plugins install grafana-azure-monitor-datasource
sudo service grafana-server restart
sudo bash install-kusto-ds.sh
