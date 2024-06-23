wget https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz
tar xvf node_exporter-1.8.1.linux-amd64.tar.gz
mv ./node_exporter-1.8.1.linux-amd64/node_exporter /usr/bin/
chmod +x /usr/bin/node_exporter
wget https://raw.githubusercontent.com/tekkisse/installnodeexporter/main/node-exporter.service
mv node-exporter.service /etc/systemd/system/node-exporter.service
chmod +x /etc/systemd/system/node-exporter.service
systemctl start node-exporter
systemctl enable node-exporter
systemctl status node-exporter
